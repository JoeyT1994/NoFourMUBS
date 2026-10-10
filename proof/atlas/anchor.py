"""Anchor membership for the Lean end-to-end theorem `no_four_mubs_explicit`: some Record contains (a Gamma-image of)
the explicit positive matched completion H0 at the base anchor (`lean/NoFourMUBs/Step2/BaseAnchor.lean`; entries in
Q(i, sqrt3, sqrt5, sqrt7), listed exactly in `lean/generators/base_anchor/h0.json`).

The phases of H0 are enclosed in Arb from the exact entries (atan2 of exact real and imaginary parts).  As in
nonempty.py, we search for a Record t and a signed permutation A with ||h(A Phi(H0) + 2 pi N - P_t)|| < R_t, the left
side in Arb (N integral).  Exits nonzero if none is found.
Usage: python3 anchor.py atlas_certificate.json.gz
"""
import json, math, sys
from pathlib import Path
import numpy as np
import sympy as sp
from flint import arb
import atlas as AT
from certify import harb

H0_JSON = Path(__file__).resolve().parents[2] / 'lean/generators/base_anchor/h0.json'


def to_arb(e):
    """Exact evaluation of a real sympy expression built from rationals, +, *, and square roots."""
    if e.is_Rational:
        return arb(int(e.p)) / int(e.q)
    if e.is_Add:
        return sum((to_arb(a) for a in e.args), arb(0))
    if e.is_Mul:
        out = arb(1)
        for a in e.args: out *= to_arb(a)
        return out
    if e.is_Pow and e.exp == sp.Rational(1, 2):
        return to_arb(e.base).sqrt()
    raise ValueError('unexpected term %r' % e)


def phases_H0():
    raw = json.load(open(H0_JSON))
    Pa = [[None] * 6 for _ in range(6)]
    for i in range(6):
        for j in range(6):
            z = sp.expand(sp.sympify(raw[i][j]))
            re, im = sp.expand(sp.re(z)), sp.expand(sp.im(z))
            Pa[i][j] = arb.atan2(to_arb(im), to_arb(re))
    Pf = np.array([[float(Pa[i][j].mid()) for j in range(6)] for i in range(6)])
    return Pa, Pf


def check(A, maxtry=400):
    Pa, Pf = phases_H0()
    R400 = AT.corner_census(np.exp(1j * Pf))[0]
    Rq = {g: AT.corner_census(np.exp(1j * AT.gmap(g, Pf)))[0] for g in AT.GAMMA}
    dd = np.linalg.norm(A._F[:len(A.recs)] - np.sort(R400), axis=1)
    for t in np.argsort(dd)[:maxtry]:
        rt = A.recs[t]
        for (g, r, c, D0, dist) in sorted(AT.align(Pf, Rq, rt['phi'], rt['R400'], rt['R'], 1e9, top=3), key=lambda z: z[4]):
            Al = AT.to_sp(g, r, c); sign, pi = Al
            W = AT.amap(Al, Pf) - rt['phi']; D = AT.wrapD(Al, Pf, rt['phi'])
            N = np.rint((D - (W - W[:1, :] - W[:, :1] + W[0, 0])) / (2 * math.pi))
            Wa = [[sign * Pa[pi[6 * i + j] // 6][pi[6 * i + j] % 6] - arb(float(rt['phi'][i, j])) + 2 * arb.pi() * int(N[i, j])
                   for j in range(6)] for i in range(6)]
            c_ = harb(Wa)
            nrm = sum((c_[i][j] ** 2 for i in range(6) for j in range(6)), arb(0)).sqrt()
            if nrm < arb(rt['R']):
                print('H0 lies in the interior of Record %d: ||h(A H0 - P_t)|| <= %.3e < R_t = %.3f' % (t, float(nrm.upper()), rt['R']))
                return True
    return False


if __name__ == '__main__':
    from export import load_certificate
    A = load_certificate(sys.argv[1])
    ok = check(A)
    print('ANCHOR PASS' if ok else 'ANCHOR FAIL'); sys.exit(0 if ok else 1)
