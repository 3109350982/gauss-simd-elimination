#include <algorithm>
#include <chrono>
#include <cmath>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <random>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vector>

#if defined(_WIN32)
#include <malloc.h>
#endif

#if defined(__SSE2__) || defined(__AVX__) || defined(__AVX2__)
#include <immintrin.h>
#endif

struct Matrix {
    int n = 0;
    int stride = 0;
    double* data = nullptr;

    Matrix() = default;

    explicit Matrix(int n_) : n(n_) {
        stride = ((n + 3) / 4) * 4;
        std::size_t bytes = static_cast<std::size_t>(n) * stride * sizeof(double);
#if defined(_WIN32)
        data = static_cast<double*>(_aligned_malloc(bytes, 32));
        if (!data) throw std::bad_alloc();
#else
        if (posix_memalign(reinterpret_cast<void**>(&data), 32, bytes) != 0) {
            throw std::bad_alloc();
        }
#endif
        std::fill(data, data + static_cast<std::size_t>(n) * stride, 0.0);
    }

    Matrix(const Matrix& other) : Matrix(other.n) {
        std::copy(other.data, other.data + static_cast<std::size_t>(other.n) * other.stride, data);
    }

    Matrix& operator=(const Matrix& other) {
        if (this == &other) return *this;
        Matrix tmp(other);
        swap(tmp);
        return *this;
    }

    Matrix(Matrix&& other) noexcept {
        n = other.n;
        stride = other.stride;
        data = other.data;
        other.n = 0;
        other.stride = 0;
        other.data = nullptr;
    }

    Matrix& operator=(Matrix&& other) noexcept {
        if (this == &other) return *this;
        release();
        n = other.n;
        stride = other.stride;
        data = other.data;
        other.n = 0;
        other.stride = 0;
        other.data = nullptr;
        return *this;
    }

    ~Matrix() { release(); }

    void release() {
        if (data) {
#if defined(_WIN32)
            _aligned_free(data);
#else
            free(data);
#endif
            data = nullptr;
        }
    }

    void swap(Matrix& other) noexcept {
        std::swap(n, other.n);
        std::swap(stride, other.stride);
        std::swap(data, other.data);
    }

    inline double& operator()(int i, int j) { return data[static_cast<std::size_t>(i) * stride + j]; }
    inline const double& operator()(int i, int j) const { return data[static_cast<std::size_t>(i) * stride + j]; }
};

static Matrix generate_lu_like_matrix(int n, std::uint32_t seed) {
    std::mt19937 rng(seed);
    std::uniform_real_distribution<double> diag_dist(1.0, 3.0);
    std::uniform_real_distribution<double> upper_dist(-0.5, 0.5);
    std::uniform_real_distribution<double> lower_dist(-0.25, 0.25);

    Matrix a(n);

    for (int i = 0; i < n; ++i) {
        for (int j = i; j < n; ++j) {
            a(i, j) = (i == j) ? diag_dist(rng) : upper_dist(rng);
        }
    }

    // 只把编号更小的行加到编号更大的行，等价于 A = L * U。
    // 这样可以保持不选主元高斯消去过程中的主元非零，同时矩阵逐渐变成普通稠密矩阵。
    for (int i = 1; i < n; ++i) {
        for (int r = 0; r < i; ++r) {
            double c = lower_dist(rng);
            if (std::abs(c) < 1e-12) continue;
            for (int j = 0; j < n; ++j) {
                a(i, j) += c * a(r, j);
            }
        }
    }

    return a;
}

static double max_abs_diff(const Matrix& a, const Matrix& b) {
    if (a.n != b.n) throw std::runtime_error("matrix size mismatch");
    double ans = 0.0;
    for (int i = 0; i < a.n; ++i) {
        for (int j = 0; j < a.n; ++j) {
            ans = std::max(ans, std::abs(a(i, j) - b(i, j)));
        }
    }
    return ans;
}

#if defined(__GNUC__) && !defined(__clang__)
__attribute__((optimize("no-tree-vectorize")))
#endif
static void gauss_serial(Matrix& a) {
    int n = a.n;
    for (int k = 0; k < n; ++k) {
        double pivot = a(k, k);
        for (int j = k + 1; j < n; ++j) {
            a(k, j) /= pivot;
        }
        a(k, k) = 1.0;

        for (int i = k + 1; i < n; ++i) {
            double factor = a(i, k);
            for (int j = k + 1; j < n; ++j) {
                a(i, j) -= factor * a(k, j);
            }
            a(i, k) = 0.0;
        }
    }
}

#if defined(__SSE2__)
static inline __m128d fmsub_pd128(__m128d factor, __m128d pivot_row, __m128d target_row) {
    return _mm_sub_pd(target_row, _mm_mul_pd(factor, pivot_row));
}

static void gauss_sse_unaligned(Matrix& a) {
    int n = a.n;
    for (int k = 0; k < n; ++k) {
        double pivot = a(k, k);
        __m128d vpivot = _mm_set1_pd(pivot);
        int j = k + 1;
        for (; j <= n - 2; j += 2) {
            __m128d row = _mm_loadu_pd(&a(k, j));
            row = _mm_div_pd(row, vpivot);
            _mm_storeu_pd(&a(k, j), row);
        }
        for (; j < n; ++j) a(k, j) /= pivot;
        a(k, k) = 1.0;

        for (int i = k + 1; i < n; ++i) {
            double factor = a(i, k);
            __m128d vfactor = _mm_set1_pd(factor);
            j = k + 1;
            for (; j <= n - 2; j += 2) {
                __m128d target = _mm_loadu_pd(&a(i, j));
                __m128d prow = _mm_loadu_pd(&a(k, j));
                __m128d res = fmsub_pd128(vfactor, prow, target);
                _mm_storeu_pd(&a(i, j), res);
            }
            for (; j < n; ++j) a(i, j) -= factor * a(k, j);
            a(i, k) = 0.0;
        }
    }
}
#endif

#if defined(__AVX__)
static inline __m256d fmsub_pd256(__m256d factor, __m256d pivot_row, __m256d target_row) {
#if defined(__FMA__)
    return _mm256_fnmadd_pd(factor, pivot_row, target_row);
#else
    return _mm256_sub_pd(target_row, _mm256_mul_pd(factor, pivot_row));
#endif
}

static void gauss_avx_unaligned(Matrix& a) {
    int n = a.n;
    for (int k = 0; k < n; ++k) {
        double pivot = a(k, k);
        __m256d vpivot = _mm256_set1_pd(pivot);
        int j = k + 1;
        for (; j <= n - 4; j += 4) {
            __m256d row = _mm256_loadu_pd(&a(k, j));
            row = _mm256_div_pd(row, vpivot);
            _mm256_storeu_pd(&a(k, j), row);
        }
        for (; j < n; ++j) a(k, j) /= pivot;
        a(k, k) = 1.0;

        for (int i = k + 1; i < n; ++i) {
            double factor = a(i, k);
            __m256d vfactor = _mm256_set1_pd(factor);
            j = k + 1;
            for (; j <= n - 4; j += 4) {
                __m256d target = _mm256_loadu_pd(&a(i, j));
                __m256d prow = _mm256_loadu_pd(&a(k, j));
                __m256d res = fmsub_pd256(vfactor, prow, target);
                _mm256_storeu_pd(&a(i, j), res);
            }
            for (; j < n; ++j) a(i, j) -= factor * a(k, j);
            a(i, k) = 0.0;
        }
    }
}

static void gauss_avx_aligned(Matrix& a) {
    int n = a.n;
    for (int k = 0; k < n; ++k) {
        double pivot = a(k, k);
        __m256d vpivot = _mm256_set1_pd(pivot);
        int j = k + 1;
        while (j < n && (j % 4 != 0)) {
            a(k, j) /= pivot;
            ++j;
        }
        for (; j <= n - 4; j += 4) {
            __m256d row = _mm256_load_pd(&a(k, j));
            row = _mm256_div_pd(row, vpivot);
            _mm256_store_pd(&a(k, j), row);
        }
        for (; j < n; ++j) a(k, j) /= pivot;
        a(k, k) = 1.0;

        for (int i = k + 1; i < n; ++i) {
            double factor = a(i, k);
            __m256d vfactor = _mm256_set1_pd(factor);
            j = k + 1;
            while (j < n && (j % 4 != 0)) {
                a(i, j) -= factor * a(k, j);
                ++j;
            }
            for (; j <= n - 4; j += 4) {
                __m256d target = _mm256_load_pd(&a(i, j));
                __m256d prow = _mm256_load_pd(&a(k, j));
                __m256d res = fmsub_pd256(vfactor, prow, target);
                _mm256_store_pd(&a(i, j), res);
            }
            for (; j < n; ++j) a(i, j) -= factor * a(k, j);
            a(i, k) = 0.0;
        }
    }
}

static void gauss_avx_unroll4(Matrix& a) {
    int n = a.n;
    for (int k = 0; k < n; ++k) {
        double pivot = a(k, k);
        __m256d vpivot = _mm256_set1_pd(pivot);
        int j = k + 1;
        for (; j <= n - 16; j += 16) {
            __m256d r0 = _mm256_div_pd(_mm256_loadu_pd(&a(k, j)), vpivot);
            __m256d r1 = _mm256_div_pd(_mm256_loadu_pd(&a(k, j + 4)), vpivot);
            __m256d r2 = _mm256_div_pd(_mm256_loadu_pd(&a(k, j + 8)), vpivot);
            __m256d r3 = _mm256_div_pd(_mm256_loadu_pd(&a(k, j + 12)), vpivot);
            _mm256_storeu_pd(&a(k, j), r0);
            _mm256_storeu_pd(&a(k, j + 4), r1);
            _mm256_storeu_pd(&a(k, j + 8), r2);
            _mm256_storeu_pd(&a(k, j + 12), r3);
        }
        for (; j <= n - 4; j += 4) {
            __m256d row = _mm256_loadu_pd(&a(k, j));
            row = _mm256_div_pd(row, vpivot);
            _mm256_storeu_pd(&a(k, j), row);
        }
        for (; j < n; ++j) a(k, j) /= pivot;
        a(k, k) = 1.0;

        for (int i = k + 1; i < n; ++i) {
            double factor = a(i, k);
            __m256d vfactor = _mm256_set1_pd(factor);
            j = k + 1;
            for (; j <= n - 16; j += 16) {
                __m256d t0 = _mm256_loadu_pd(&a(i, j));
                __m256d t1 = _mm256_loadu_pd(&a(i, j + 4));
                __m256d t2 = _mm256_loadu_pd(&a(i, j + 8));
                __m256d t3 = _mm256_loadu_pd(&a(i, j + 12));
                __m256d p0 = _mm256_loadu_pd(&a(k, j));
                __m256d p1 = _mm256_loadu_pd(&a(k, j + 4));
                __m256d p2 = _mm256_loadu_pd(&a(k, j + 8));
                __m256d p3 = _mm256_loadu_pd(&a(k, j + 12));
                _mm256_storeu_pd(&a(i, j), fmsub_pd256(vfactor, p0, t0));
                _mm256_storeu_pd(&a(i, j + 4), fmsub_pd256(vfactor, p1, t1));
                _mm256_storeu_pd(&a(i, j + 8), fmsub_pd256(vfactor, p2, t2));
                _mm256_storeu_pd(&a(i, j + 12), fmsub_pd256(vfactor, p3, t3));
            }
            for (; j <= n - 4; j += 4) {
                __m256d target = _mm256_loadu_pd(&a(i, j));
                __m256d prow = _mm256_loadu_pd(&a(k, j));
                _mm256_storeu_pd(&a(i, j), fmsub_pd256(vfactor, prow, target));
            }
            for (; j < n; ++j) a(i, j) -= factor * a(k, j);
            a(i, k) = 0.0;
        }
    }
}
#endif

using Kernel = void (*)(Matrix&);

static double median(std::vector<double> xs) {
    std::sort(xs.begin(), xs.end());
    if (xs.empty()) return 0.0;
    return xs[xs.size() / 2];
}

static double time_kernel(const Matrix& base, Kernel kernel, int reps, Matrix* last_result = nullptr) {
    std::vector<double> times;
    times.reserve(reps);
    Matrix last;
    for (int r = 0; r < reps; ++r) {
        Matrix a = base;
        auto t1 = std::chrono::high_resolution_clock::now();
        kernel(a);
        auto t2 = std::chrono::high_resolution_clock::now();
        std::chrono::duration<double, std::milli> dt = t2 - t1;
        times.push_back(dt.count());
        if (r == reps - 1) last = std::move(a);
    }
    if (last_result) *last_result = std::move(last);
    return median(times);
}

static std::vector<int> parse_sizes(const std::string& s) {
    std::vector<int> ans;
    std::stringstream ss(s);
    std::string item;
    while (std::getline(ss, item, ',')) {
        if (!item.empty()) ans.push_back(std::stoi(item));
    }
    return ans;
}

int main(int argc, char** argv) {
    std::vector<int> sizes = {128, 256, 512, 1024};
    int reps = 3;
    std::string csv_path = "results.csv";
    std::uint32_t seed = 20260505u;

    for (int i = 1; i < argc; ++i) {
        std::string arg = argv[i];
        if (arg == "--sizes" && i + 1 < argc) sizes = parse_sizes(argv[++i]);
        else if (arg == "--reps" && i + 1 < argc) reps = std::stoi(argv[++i]);
        else if (arg == "--csv" && i + 1 < argc) csv_path = argv[++i];
        else if (arg == "--seed" && i + 1 < argc) seed = static_cast<std::uint32_t>(std::stoul(argv[++i]));
        else {
            std::cerr << "Usage: " << argv[0] << " [--sizes 128,256,512] [--reps 3] [--csv results.csv] [--seed 20260505]\n";
            return 1;
        }
    }

    std::ofstream csv(csv_path);
    csv << "n,version,time_ms,speedup,max_abs_diff\n";

    std::cout << std::fixed << std::setprecision(6);
    std::cout << "SIMD support: "
#if defined(__AVX2__)
              << "AVX2 ";
#elif defined(__AVX__)
              << "AVX ";
#else
              << "no-AVX ";
#endif
#if defined(__FMA__)
    std::cout << "FMA ";
#endif
#if defined(__SSE2__)
    std::cout << "SSE2 ";
#endif
    std::cout << "\n";

    for (int n : sizes) {
        Matrix base = generate_lu_like_matrix(n, seed + static_cast<std::uint32_t>(n));
        Matrix ref;
        double serial_ms = time_kernel(base, gauss_serial, reps, &ref);

        std::cout << "\nN = " << n << "\n";
        std::cout << std::left << std::setw(20) << "version"
                  << std::right << std::setw(14) << "time(ms)"
                  << std::setw(14) << "speedup"
                  << std::setw(18) << "max_abs_diff" << "\n";

        auto emit = [&](const std::string& name, double t, double diff) {
            double speed = serial_ms / t;
            std::cout << std::left << std::setw(20) << name
                      << std::right << std::setw(14) << t
                      << std::setw(14) << speed
                      << std::setw(18) << diff << "\n";
            csv << n << ',' << name << ',' << t << ',' << speed << ',' << diff << '\n';
        };

        emit("serial", serial_ms, 0.0);

#if defined(__SSE2__)
        {
            Matrix out;
            double t = time_kernel(base, gauss_sse_unaligned, reps, &out);
            emit("sse_unaligned", t, max_abs_diff(ref, out));
        }
#endif
#if defined(__AVX__)
        {
            Matrix out;
            double t = time_kernel(base, gauss_avx_unaligned, reps, &out);
            emit("avx_unaligned", t, max_abs_diff(ref, out));
        }
        {
            Matrix out;
            double t = time_kernel(base, gauss_avx_aligned, reps, &out);
            emit("avx_aligned", t, max_abs_diff(ref, out));
        }
        {
            Matrix out;
            double t = time_kernel(base, gauss_avx_unroll4, reps, &out);
            emit("avx_unroll4", t, max_abs_diff(ref, out));
        }
#endif
    }

    std::cout << "\nCSV saved to " << csv_path << "\n";
    return 0;
}
