# Windows + TDM-GCC / MinGW
# 在 VSCode 终端 PowerShell 中进入本项目根目录后执行：

g++ --version

# 推荐：根据本机 CPU 自动开启可用指令集。
g++ -std=c++17 -O3 -march=native .\src\main.cpp -o gauss_simd.exe
.\gauss_simd.exe --sizes 128,256,512,1024 --reps 3 --csv results.csv

# 如果确认 CPU 支持 AVX2/FMA，也可以使用下面这一行替代上面的编译命令：
# g++ -std=c++17 -O3 -march=native -mavx2 -mfma .\src\main.cpp -o gauss_simd.exe
