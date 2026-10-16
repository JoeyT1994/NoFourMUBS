"""Which Stage C sharpening settles the Records the kernel checker cannot (exploratory, floats).

The kernel checker (kernel_atlas/) runs the per-column and Frobenius tests of Lemma 6.2 and the tangent test of
Lemma 6.3 with the fixed direction y = c.  certify.py (Arb) also runs the scalar test (6.12) and takes a least-squares
direction y per bin.  Any y gives a valid tangent test, so the direction is a free choice.  This script reruns Stage C
in floats (stagec.py, with the Record's Arb radii) under the variants in VARIANTS below.

Usage: python3 variants.py [--only=v1,v2] <out.jsonl> <idx> ...
"""
import gzip, json, math, os, sys, time

import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
sys.path.insert(0, os.path.join(ROOT, 'proof', 'atlas'))
import stagec as SC                                                     # noqa: E402
from ballrecord import BallRecord                                       # noqa: E402

# variant: (scalar test, y, pure-x, cross, delta^2, N_y)
#   y: 'ls' least squares (stagec), 'c', 'menu' (best of c, e_1..e_6), 'diag' (c_i / G_ii, the diagonal of the
#      least-squares system), 'lsq4' / 'lsq8' (least squares rounded to multiples of 1/16 / 1/256 of its largest
#      entry)
#   pure: 'min' (min of G_y X^2 and K ||S o y|| I X) or 'kix' (the second only, as in the kernel)
#   cross, dd: 'min' (Frobenius or per-column, the smaller), 'F' (Frobenius with ||S o y||_2, as in the kernel) or
#      'lin' (per-column, with |S_i| <= 1 + tau from the direct test: no square roots)
#   ny: 'exact' N_y, 'Sy' (bounded by ||S o y||_2, as in the kernel), or 'cs': exact N_y merged with the kernel's
#       ||S o y|| terms (pure 'kix', cross and dd 'F', coefficient P = pi c3) by weighted Cauchy-Schwarz,
#       nN N_y + P ||S o y|| <= sqrt((nN + P)(nN N_y^2 + P ||S o y||^2)), so the checker keeps one square root
VARIANTS = dict(
    arb=(True, 'ls', 'min', 'min', 'min', 'exact'),
    kern=(False, 'c', 'kix', 'F', 'F', 'Sy'),          # float model of the kernel checker today
    kern_ls=(False, 'ls', 'kix', 'F', 'F', 'Sy'),       # ... with the least-squares direction
    kern_rem=(False, 'c', 'min', 'min', 'min', 'exact'),  # ... with Arb's remainder, y = c
    kern_pure=(False, 'c', 'min', 'F', 'F', 'Sy'),
    kern_cd=(False, 'c', 'kix', 'min', 'min', 'Sy'),
    kern_ny=(False, 'c', 'kix', 'F', 'F', 'exact'),
    kern_menu=(False, 'menu', 'kix', 'F', 'F', 'Sy'),
    kern_ny_ls=(False, 'ls', 'kix', 'F', 'F', 'exact'),
    kern_ny_cd=(False, 'c', 'kix', 'min', 'min', 'exact'),
    kern_ny_pure=(False, 'c', 'min', 'F', 'F', 'exact'),
    kern_ny_cd_ls=(False, 'ls', 'kix', 'min', 'min', 'exact'),
    kern_cs=(False, 'c', 'kix', 'F', 'F', 'cs'),
    kern_cs_ls=(False, 'ls', 'kix', 'F', 'F', 'cs'),
    kern_cs_ls_lin=(False, 'ls', 'kix', 'lin', 'lin', 'cs'),
    kern_cs_lsq4_lin=(False, 'lsq4', 'kix', 'lin', 'lin', 'cs'),
    kern_cs_diag_lin=(False, 'diag', 'kix', 'lin', 'lin', 'cs'),
    kern_cs_diag=(False, 'diag', 'kix', 'F', 'F', 'cs'),
    full=(False, 'ls', 'min', 'min', 'min', 'exact'),            # Arb's tangent test, no scalar test
    full_q4=(False, 'lsq4', 'min', 'min', 'min', 'exact'),       # ... with the direction rounded to 4 bits
    full_q8=(False, 'lsq8', 'min', 'min', 'min', 'exact'),       # ... to 8 bits
)
_orig_single, _orig_tangent = SC.single_tests, SC.tangent_tests


def single_no_scalar(U, P, r, M, K, eP, rF):
    """Lemma 6.2 only: the per-column and Frobenius tests of single_tests, without the scalar test (6.12)."""
    a = 1.0 / (2 * M); X = math.sqrt(29 / 6) * a; L = 5 * a
    eU = SC.cis_table(np.concatenate([np.zeros((len(U), 1), int), SC._toint(U)], axis=1))
    absS = np.abs(eU @ eP / SC.SQ6)
    tau = SC.TWO_PI * (L / SC.SQ6 + r) + SC.MARGIN
    ok = np.all(~((absS > 1 + tau) | (absS < 1 - tau)), axis=1)
    return ok & ~(((absS - 1) ** 2).sum(axis=1) > (SC.TWO_PI * (K * X + rF)) ** 2 + SC.MARGIN)


def tangent_with(ymode, pure, cross, dd, ny):
    """stagec.tangent_tests (Lemma 6.3) with switchable direction and remainder forms."""
    def test(U, P, r, M, K, eP, rF, T, rH, nN):
        a = 1.0 / (2 * M); X = math.sqrt(29 / 6) * a; I = 1.5 * a
        eU = SC.cis_table(np.concatenate([np.zeros((len(U), 1), int), SC._toint(U)], axis=1))
        S = eU @ eP / SC.SQ6
        q = eU[:, :, None] * eP[None, :, :] / SC.SQ6
        J = -(np.conj(S)[:, None, :] * q).imag
        c = (np.abs(S) ** 2 - 1) / (2 * SC.TWO_PI)
        Tji = T.reshape(6, 6, T.shape[1])
        Bm = np.einsum('nji,jik->nik', J, Tji)
        tau = SC.TWO_PI * (5 * a / SC.SQ6 + r)                           # |S_i| <= 1 + tau after the direct test
        if ymode in ('ls', 'lsq4', 'lsq8', 'diag'):
            A = np.concatenate([a * J[:, 1:, :], rH * np.transpose(Bm, (0, 2, 1))], axis=1)
            G = np.einsum('nri,nrl->nil', A, A) + 1e-12 * np.eye(6)[None]
            if ymode == 'diag':
                ys = [c / np.einsum('nii->ni', G)]
            else:
                z = np.linalg.solve(G, c[..., None])[..., 0]
                if ymode in ('lsq4', 'lsq8'):
                    m = 16 if ymode == 'lsq4' else 256
                    z = np.round(m * z / np.abs(z).max(1, keepdims=True))
                ys = [z]
        elif ymode == 'c':
            ys = [c]
        else:
            ys = [c] + [np.eye(6)[k][None, :].repeat(len(U), 0) for k in range(6)]
        keep = np.ones(len(U), bool)
        for y in ys:
            y = y / np.maximum(np.abs(y).max(axis=1), 1e-300)[:, None]
            lhs = np.abs(np.einsum('ni,ni->n', y, c))
            Sy = np.abs(S * y); nSy = np.linalg.norm(Sy, axis=1)
            Ny = np.sqrt(np.einsum('ni,nji->n', y ** 2, J ** 2)) if ny in ('exact', 'cs') else nSy
            Gy = np.abs(np.einsum('ni,ni,nji->nj', y, np.conj(S), q)).max(axis=1)
            sq = np.minimum(np.abs(y).max(1) * (K * X + rF) ** 2, np.abs(y).sum(1) * (K * X + r) ** 2)
            pu = np.minimum(Gy * X * X, K * nSy * I * X) if pure == 'min' else K * nSy * I * X
            y1 = (1 + tau) * np.abs(y).sum(1)                                # >= ||S o y||_1
            cr = 2 / SC.SQ6 * X * dict(min=np.minimum(nSy * rF, Sy.sum(1) * r), F=nSy * rF, lin=y1 * r)[cross]
            de = dict(min=np.minimum(Sy.max(1) * rF * rF, Sy.sum(1) * r * r), F=nSy * rF * rF, lin=y1 * r * r)[dd] / SC.SQ6
            if ny == 'cs':                                                  # merge the ||S o y||_2 terms with N_y
                Pc = math.pi * (K * I * X + (2 / SC.SQ6 * X * rF if cross == 'F' else 0) + (rF * rF / SC.SQ6 if dd == 'F' else 0))
                E = np.sqrt((nN + Pc) * (nN * Ny ** 2 + Pc * nSy ** 2)) + math.pi * (sq + (cr if cross != 'F' else 0) + (de if dd != 'F' else 0))
            else:
                E = nN * Ny + math.pi * (sq + pu + cr + de)
            rhs = a * np.abs(np.einsum('nji,ni->nj', J[:, 1:, :], y)).sum(1) + \
                rH * np.linalg.norm(np.einsum('nik,ni->nk', Bm, y), axis=1) + E
            keep &= ~(lhs > rhs + SC.MARGIN)
        return keep
    return test


def run(B, rec, variant):
    scalar, *rest = VARIANTS[variant]
    SC.single_tests = _orig_single if scalar else single_no_scalar
    SC.tangent_tests = _orig_tangent if variant == 'arb' else tangent_with(*rest)
    try:
        o = B.stage_c(rec['R'], radius=rec['label_radius'])
    finally:
        SC.single_tests, SC.tangent_tests = _orig_single, _orig_tangent
    return {k: o.get(k) for k in ('ok', 'reason', 'bins', 'labels', 'O', 'U', 'steps')}


def main():
    args = sys.argv[1:]
    only = None
    if args and args[0].startswith('--only='):
        only = args.pop(0)[7:].split(',')
    out, idxs = args[0], [int(x) for x in args[1:]]
    names = [v for v in VARIANTS if only is None or v in only]
    recs = json.load(gzip.open(os.path.join(ROOT, 'proof/atlas/results/atlas_certificate.json.gz'), 'rt'))['records']
    done = {json.loads(l)['idx'] for l in open(out)} if os.path.exists(out) else set()
    with open(out, 'a') as f:
        for idx in idxs:
            if idx in done:
                continue
            t0 = time.time()
            rec = recs[idx]
            B = BallRecord(np.array([float.fromhex(x) for x in rec['phi']]), Tint=rec.get('Tint'))
            row = dict(idx=idx)
            for v in names:
                try:
                    row[v] = run(B, rec, v)
                except Exception as e:                                  # noqa: BLE001
                    row[v] = dict(ok=False, reason=repr(e)[:200])
            row['wall_s'] = round(time.time() - t0, 1)
            f.write(json.dumps(row) + '\n'); f.flush()
            print(idx, {v: row[v].get('ok') for v in names}, row['wall_s'], flush=True)


if __name__ == '__main__':
    main()
