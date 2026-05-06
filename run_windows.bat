@echo off
chcp 65001 >nul
g++ --version
g++ -std=c++17 -O3 -march=native .\src\main.cpp -o gauss_simd.exe
if errorlevel 1 pause & exit /b 1
gauss_simd.exe --sizes 128,256,512,1024 --reps 3 --csv results.csv
pause
