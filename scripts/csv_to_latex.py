import csv
import sys
from collections import defaultdict

if len(sys.argv) < 3:
    print("Usage: python3 csv_to_latex.py results.csv results_table.tex")
    sys.exit(1)

inp, outp = sys.argv[1], sys.argv[2]
rows = []
with open(inp, newline='', encoding='utf-8') as f:
    reader = csv.DictReader(f)
    for row in reader:
        rows.append(row)

with open(outp, 'w', encoding='utf-8') as f:
    f.write('\\begin{table}[H]\n')
    f.write('\\centering\n')
    f.write('\\caption{不同规模与不同算法版本的运行结果}\n')
    f.write('\\begin{tabular}{ccccc}\n')
    f.write('\\toprule\n')
    f.write('$n$ & 版本 & 运行时间/ms & 加速比 & 最大绝对误差 \\\\\n')
    f.write('\\midrule\n')
    for r in rows:
        f.write(f"{r['n']} & {r['version'].replace('_', '\\_')} & {float(r['time_ms']):.4f} & {float(r['speedup']):.4f} & {float(r['max_abs_diff']):.2e} \\\\\n")
    f.write('\\bottomrule\n')
    f.write('\\end{tabular}\n')
    f.write('\\end{table}\n')
