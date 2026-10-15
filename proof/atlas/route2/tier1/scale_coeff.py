"""How large a coefficient box (A-style certificate, scaled up from 2^-25) can one 252-root Krawczyk certificate cover?
For each root: the largest w (coefficient half-width) at which the constant-centre and the affine-centre Krawczyk tests
pass; equivalent Hadamard-ball radius rho = sqrt6 * w (a ball ||delta|| <= rho lies in the box: |e^{-i d} - 1| <= |d|).
Usage: scale_coeff.py id ...  (floating point evaluation of the exact bound formulas)"""
import sys, math, json, numpy as np
from centres import load
from roots import hc_roots
from bilin import roots_from_log, kraw_constant, kraw_affine
phi, _, _ = load()
WS = [2.0 ** -25, 1e-4, 3e-4, 1e-3, 2e-3, 4e-3, 0.02 / math.sqrt(6), 0.05 / math.sqrt(6), 0.08 / math.sqrt(6), 0.16 / math.sqrt(6)]
for i in [int(a) for a in sys.argv[1:]]:
    H = np.exp(1j * phi[i].reshape(6, 6)); U = hc_roots([H], [i])[i]
    A0, R = roots_from_log(H, U)
    tor = np.array([np.max(abs(abs(r.x) / abs(r.x).max() - 1)) < 1e-9 for r in R])
    out = dict(rec=i, roots=len(R), torus=int(tor.sum()))
    for name, fn in (('const', kraw_constant), ('affine', kraw_affine)):
        row = []
        for w in WS:
            res = [fn(r, A0, w) for r in R]
            rr = [x[0] if isinstance(x, tuple) else x for x in res]
            npass = sum(x is not None for x in rr); ntp = sum(x is not None for x, t in zip(rr, tor) if t)
            rt = [x for x, t in zip(rr, tor) if t and x is not None]
            row.append(dict(rho=round(w * math.sqrt(6), 6), w=w, pass_all=npass, pass_torus=ntp, tube_torus_max=max(rt) if rt else None))
        out[name] = row
    print(json.dumps(out), flush=True)
