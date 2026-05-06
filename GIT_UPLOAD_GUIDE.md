# GitHub 上传说明

## 1. 在 GitHub 新建仓库

仓库名建议：

```text
gauss-simd-elimination
```

选择 Public，不要勾选自动创建 README。

## 2. 在 VSCode 终端进入本项目根目录

确认当前目录中能看到 `src`、`docs`、`README.md`：

```powershell
dir
```

## 3. 初始化并上传

把下面命令里的仓库地址替换成你自己的 GitHub 地址：

```powershell
git init
git add .
git commit -m "Complete SIMD Gaussian elimination experiment"
git branch -M main
git remote add origin https://github.com/你的用户名/gauss-simd-elimination.git
git push -u origin main
```

## 4. 报告中填写 GitHub 链接

上传成功后，打开仓库主页，把地址填到报告首页的 GitHub 项目链接处，例如：

```text
https://github.com/你的用户名/gauss-simd-elimination
```

如果已经生成 PDF，可直接在 LaTeX 源码 `docs/report_林科融_2413121.tex` 中替换首页横线，再重新编译。

## 5. 如果提示 remote 已存在

```powershell
git remote -v
git remote set-url origin https://github.com/你的用户名/gauss-simd-elimination.git
git push -u origin main
```
