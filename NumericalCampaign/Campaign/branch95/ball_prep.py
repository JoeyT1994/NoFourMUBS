#!/usr/bin/env python3
"""Ring rows (class 2,4,4,2, seed distance <= 0.07-1e-6) that may lie inside the 1/40 punctured ball -> exact box list.
Centres are the inventory's binary64 values written as exact rationals; radius is an exact rational upper bound of
pi/2^level + 2^-40 (nextafter(pi) / 2^level + 2^-40).  Membership itself is decided exactly by the module."""
import gzip, json, math, sys
from fractions import Fraction as Q
PI_HI = Q(math.nextafter(math.pi, 4.0)); out = gzip.open(sys.argv[1], 'wt'); n = 0; i = 0
with gzip.open('postE/inventory.txt.gz', 'rt') as f:
    for line in f:
        if not line.strip() or line.startswith('#'):
            continue
        r = line.split()
        if r[7] == '2,4,4,2':
            lev = int(r[0]); d = float(r[8]); h = math.pi / 2 ** lev + 2 ** -40
            if d <= 0.07 - 1e-6 and d + h <= 0.0251:
                rad = PI_HI / 2 ** lev + Q(1, 2 ** 40)
                out.write(json.dumps(dict(id=i, centers=[str(Q(float(x))) for x in r[1:5]], radii=[str(rad)] * 4)) + '\n'); n += 1
        i += 1
out.close(); print('rows', i, 'ball candidates', n)
