"""Nonemptiness for the coverage corollary: some Record contains the (exact) Fourier matrix F6, a non-Tao Hadamard.

F6 has phases 2 pi jk/6.  We search for a Record t and a signed permutation A with ||h(A F6 + 2 pi N - P_t)|| < R_t,
the left side evaluated in Arb (pi in Arb, N integral).  Exits nonzero if none is found.
Usage: python3 nonempty.py atlas.pkl
"""
import math, sys
import numpy as np
from flint import arb
import atlas as AT
from certify import harb

PI = arb.pi()
F6 = np.array([[2 * math.pi * ((j * k) % 6) / 6 for k in range(6)] for j in range(6)])


def check(A):
    R400 = AT.corner_census(np.exp(1j * F6))[0]
    A.topk = len(A.recs)
    for t, Al, dist in sorted(A.global_find(F6, R400, set()), key=lambda h: h[2]):
        rt = A.recs[t]; sign, pi = Al
        W = AT.amap(Al, F6) - rt['phi']; D = AT.wrapD(Al, F6, rt['phi'])
        N = np.rint((D - (W - W[:1, :] - W[:, :1] + W[0, 0])) / (2 * math.pi))
        Wa = [[sign * 2 * PI * ((pi[6 * i + j] // 6) * (pi[6 * i + j] % 6) % 6) / 6 - arb(float(rt['phi'][i, j])) + 2 * PI * int(N[i, j])
               for j in range(6)] for i in range(6)]
        c = harb(Wa)
        nrm = sum((c[i][j] ** 2 for i in range(6) for j in range(6)), arb(0)).sqrt()
        if nrm < arb(rt['R']):
            print('F6 lies in the interior of Record %d: ||h(A F6 - P_t)|| <= %.3e < R_t = %.3f' % (t, float(nrm.upper()), rt['R']))
            return True
    return False


if __name__ == '__main__':
    ok = check(AT.load(sys.argv[1]))
    print('NONEMPTY PASS' if ok else 'NONEMPTY FAIL'); sys.exit(0 if ok else 1)
