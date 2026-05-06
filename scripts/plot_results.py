import csv
import sys
from collections import defaultdict

import matplotlib.pyplot as plt

if len(sys.argv) < 2:
    print("Usage: python3 plot_results.py results.csv")
    sys.exit(1)

inp = sys.argv[1]
data = defaultdict(list)
with open(inp, newline='', encoding='utf-8') as f:
    reader = csv.DictReader(f)
    for row in reader:
        data[row['version']].append((int(row['n']), float(row['time_ms']), float(row['speedup'])))

plt.figure()
for version, vals in data.items():
    vals.sort()
    xs = [v[0] for v in vals]
    ys = [v[1] for v in vals]
    plt.plot(xs, ys, marker='o', label=version)
plt.xlabel('Matrix size n')
plt.ylabel('Time (ms)')
plt.title('Gaussian Elimination Runtime')
plt.legend()
plt.grid(True)
plt.savefig('time_curve.png', dpi=200, bbox_inches='tight')

plt.figure()
for version, vals in data.items():
    if version == 'serial':
        continue
    vals.sort()
    xs = [v[0] for v in vals]
    ys = [v[2] for v in vals]
    plt.plot(xs, ys, marker='o', label=version)
plt.xlabel('Matrix size n')
plt.ylabel('Speedup over serial')
plt.title('SIMD Speedup')
plt.legend()
plt.grid(True)
plt.savefig('speedup_curve.png', dpi=200, bbox_inches='tight')

print('Saved time_curve.png and speedup_curve.png')
