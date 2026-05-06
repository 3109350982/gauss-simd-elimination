CXX ?= g++
SRC := src/main.cpp
BIN := gauss_simd

# 推荐用于 x86-64 AVX2/FMA 平台
CXXFLAGS ?= -std=c++17 -O3 -march=native -mavx2 -mfma -Wall -Wextra

all: $(BIN)

$(BIN): $(SRC)
	$(CXX) $(CXXFLAGS) $< -o $@

# 仅用于观察编译器优化力度影响；在不支持 AVX2 的机器上可用这些目标编译串行/SSE部分。
o0:
	$(CXX) -std=c++17 -O0 $(SRC) -o gauss_o0

o1:
	$(CXX) -std=c++17 -O1 $(SRC) -o gauss_o1

o2:
	$(CXX) -std=c++17 -O2 $(SRC) -o gauss_o2

o3:
	$(CXX) -std=c++17 -O3 $(SRC) -o gauss_o3

vec-report:
	$(CXX) $(CXXFLAGS) -fopt-info-vec-optimized -fopt-info-vec-missed $(SRC) -o $(BIN) 2> vectorization_report.txt

asm:
	$(CXX) $(CXXFLAGS) -S $(SRC) -o gauss_simd.s

run: $(BIN)
	./$(BIN) --sizes 128,256,512,1024 --reps 3 --csv results.csv

clean:
	rm -f $(BIN) gauss_o0 gauss_o1 gauss_o2 gauss_o3 *.csv *.s vectorization_report.txt
