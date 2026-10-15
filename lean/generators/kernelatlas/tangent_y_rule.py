import sys, gzip, json, math
sys.path.insert(0, '/Users/jtindall/Files/NoFourMUBS/proof/atlas')
import numpy as np
import stagec as SC
from ballrecord import BallRecord
d = json.load(gzip.open('/Users/jtindall/Files/NoFourMUBS/proof/atlas/results/atlas_certificate.json.gz','rt'))
rule = sys.argv[1]
orig = SC.tangent_tests
def tang_rule(U, P, r, M, K, eP, rF, T, rH, nN):
    a = 1.0 / (2 * M); X = math.sqrt(29 / 6) * a; I = 1.5 * a
    eU = SC.cis_table(np.concatenate([np.zeros((len(U), 1), int), SC._toint(U)], axis=1))
    S = eU @ eP / SC.SQ6; q = eU[:, :, None] * eP[None, :, :] / SC.SQ6
    J = -(np.conj(S)[:, None, :] * q).imag; c = (np.abs(S) ** 2 - 1) / (2 * SC.TWO_PI)
    k = T.shape[1]; B = np.einsum('nji,jik->nik', J, T.reshape(6, 6, k))
    if rule == 'c':
        y = c / np.maximum(np.abs(c).max(1), 1e-300)[:, None]
    elif rule == 'sign':
        y = np.sign(c)
    elif rule == 'ls8':   # least squares, then rounded to 8 bits
        A1 = a * J[:, 1:, :]; A2 = rH * np.transpose(B, (0, 2, 1)); A = np.concatenate([A1, A2], 1)
        G = np.einsum('nri,nrl->nil', A, A) + 1e-12 * np.eye(6)[None]
        z = np.linalg.solve(G, c[..., None])[..., 0]; y = z / np.maximum(np.abs(z).max(1), 1e-300)[:, None]
        y = np.round(y * 127) / 127
    lhs = np.abs(np.einsum('ni,ni->n', y, c)); Sy = np.abs(S * y)
    Ny = np.sqrt(np.einsum('ni,nji->n', y ** 2, J ** 2))
    Gy = np.abs(np.einsum('ni,ni,nji->nj', y, np.conj(S), q)).max(axis=1)
    E = nN * Ny + SC.remainder(y, S, K, X, r, rF, Gy, I=I)
    rhs = a * np.abs(np.einsum('nji,ni->nj', J[:, 1:, :], y)).sum(1) + rH * np.linalg.norm(np.einsum('nik,ni->nk', B, y), axis=1) + E
    return ~(lhs > rhs + SC.MARGIN)
cnt = {}
def wrap(U, *a):
    ok = (tang_rule if rule != 'ls' else orig)(U, *a); cnt['in'] = cnt.get('in', 0) + len(U); cnt['out'] = cnt.get('out', 0) + int(ok.sum()); return ok
SC.tangent_tests = wrap
for s in (100, 5305, 2471):
    r = d['records'][s]; cnt.clear()
    B = BallRecord(np.array([float.fromhex(x) for x in r['phi']]), Tint=r.get('Tint'))
    o = B.stage_c(r['R'], radius=r['label_radius'])
    print(rule, s, o.get('ok'), o.get('reason', ''), 'bins', o.get('bins'), 'labels', o.get('labels'), 'tang in/out', cnt)
