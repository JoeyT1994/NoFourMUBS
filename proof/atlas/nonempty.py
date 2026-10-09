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


def check(A, maxtry=200):
    """Walk the records in order of signature distance to F6 (sorted corner invariants) and return at the first one
    that provably contains F6.  The search order is only a heuristic; the acceptance test is the Arb inequality."""
    R400 = AT.corner_census(np.exp(1j * F6))[0]
    Rq = {g: AT.corner_census(np.exp(1j * AT.gmap(g, F6)))[0] for g in AT.GAMMA}
    dd = np.linalg.norm(A._F[:len(A.recs)] - np.sort(R400), axis=1)
    for t in np.argsort(dd)[:maxtry]:
        rt = A.recs[t]
        for (g, r, c, D0, dist) in sorted(AT.align(F6, Rq, rt['phi'], rt['R400'], rt['R'], 1e9, top=3), key=lambda z: z[4]):
            Al = AT.to_sp(g, r, c); sign, pi = Al
            W = AT.amap(Al, F6) - rt['phi']; D = AT.wrapD(Al, F6, rt['phi'])
            N = np.rint((D - (W - W[:1, :] - W[:, :1] + W[0, 0])) / (2 * math.pi))
            Wa = [[sign * 2 * PI * ((pi[6 * i + j] // 6) * (pi[6 * i + j] % 6) % 6) / 6 - arb(float(rt['phi'][i, j])) + 2 * PI * int(N[i, j])
                   for j in range(6)] for i in range(6)]
            c_ = harb(Wa)
            nrm = sum((c_[i][j] ** 2 for i in range(6) for j in range(6)), arb(0)).sqrt()
            if nrm < arb(rt['R']):
                print('F6 lies in the interior of Record %d: ||h(A F6 - P_t)|| <= %.3e < R_t = %.3f' % (t, float(nrm.upper()), rt['R']))
                return True
    return False


if __name__ == '__main__':
    if sys.argv[1].endswith('.json.gz'):
        from export import load_certificate
        A = load_certificate(sys.argv[1])
    else:
        A = AT.load(sys.argv[1])
    ok = check(A)
    print('NONEMPTY PASS' if ok else 'NONEMPTY FAIL'); sys.exit(0 if ok else 1)
