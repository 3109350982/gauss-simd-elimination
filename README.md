# 普通高斯消去算法 SIMD 并行化实验

姓名：林科融  
学号：2413121

本工程实现普通高斯消去算法的串行版本与 x86 SIMD 优化版本，并对 SSE、AVX、不对齐访问、对齐访问、循环展开和不同编译器优化选项进行性能对比。

## 目录结构

```text
gauss_simd_2413121_林科融/
├── src/main.cpp
├── docs/
│   ├── report_林科融_2413121.pdf
│   ├── report_林科融_2413121.tex
│   ├── AI_QA_record.md
│   └── figures/
├── scripts/
├── results.csv
├── o0.csv / o1.csv / o2.csv / o3.csv / native.csv
├── gauss_simd.s
├── run_windows.bat
├── run_windows.ps1
├── Makefile
├── README.md
└── GIT_UPLOAD_GUIDE.md
```

## 已实现版本

| 版本 | 说明 |
|---|---|
| serial | 串行基准版本 |
| sse_unaligned | SSE2，每次处理 2 个 double，不对齐访问 |
| avx_unaligned | AVX，每次处理 4 个 double，不对齐访问 |
| avx_aligned | AVX，对齐访问版本 |
| avx_unroll4 | AVX + 4 组向量循环展开 |

## Windows + VSCode + TDM-GCC 运行方式

在 VSCode 中打开本文件夹，打开终端后运行：

```powershell
g++ -std=c++17 -O3 -march=native .\src\main.cpp -o gauss_simd.exe
.\gauss_simd.exe --sizes 128,256,512,1024 --reps 3 --csv results.csv
```

生成汇编文件：

```powershell
g++ -std=c++17 -O3 -march=native -S .\src\main.cpp -o gauss_simd.s
```

也可以直接运行：

```powershell
.\run_windows.ps1
```

如果 PowerShell 禁止运行脚本，使用：

```powershell
powershell -ExecutionPolicy Bypass -File .\run_windows.ps1
```

## 编译器优化对比

```powershell
g++ -std=c++17 -O0 .\src\main.cpp -o gauss_o0.exe
g++ -std=c++17 -O1 .\src\main.cpp -o gauss_o1.exe
g++ -std=c++17 -O2 .\src\main.cpp -o gauss_o2.exe
g++ -std=c++17 -O3 .\src\main.cpp -o gauss_o3.exe
g++ -std=c++17 -O3 -march=native .\src\main.cpp -o gauss_native.exe
```

分别运行：

```powershell
.\gauss_o0.exe --sizes 512 --reps 3 --csv o0.csv
.\gauss_o1.exe --sizes 512 --reps 3 --csv o1.csv
.\gauss_o2.exe --sizes 512 --reps 3 --csv o2.csv
.\gauss_o3.exe --sizes 512 --reps 3 --csv o3.csv
.\gauss_native.exe --sizes 512 --reps 3 --csv native.csv
```

## 报告说明

已生成报告文件：

```text
docs/report_林科融_2413121.pdf
docs/report_林科融_2413121.tex
```

报告首页已经填入姓名和学号。GitHub 链接需要在你上传仓库后填入。
