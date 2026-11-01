"""The 144 corner symmetries (rows, cols orderings of (0,1,2); g in id, conj, T, conjT) as integer maps of the seed
theta in T^4 (FORMAT.md T1 remark), their orientation sign, and the group they form."""
import itertools, numpy as np
POS = [(1, 1), (1, 2), (2, 1), (2, 2)]
def g_matrix(g):
    sgn = -1 if g in ('conj', 'conjT') else 1; tr = g in ('T', 'conjT')
    M = np.zeros((36, 36), int)
    for a in range(6):
        for b in range(6): M[6 * a + b, 6 * b + a if tr else 6 * a + b] = sgn
    return M
def corner_L(rows, cols):
    i0, i1, i2 = rows; j0, j1, j2 = cols; L = np.zeros((4, 36), int)
    for k, (i, j) in enumerate(((i1, j1), (i1, j2), (i2, j1), (i2, j2))):
        L[k, 6 * i + j] += 1; L[k, 6 * i + j0] -= 1; L[k, 6 * i0 + j] -= 1; L[k, 6 * i0 + j0] += 1
    return L
Emb = np.zeros((36, 4), int)
for k, (i, j) in enumerate(POS): Emb[6 * i + j, k] = 1
def ops():
    out = []
    for rows in itertools.permutations([0, 1, 2]):
        for cols in itertools.permutations([0, 1, 2]):
            for g in ('id', 'conj', 'T', 'conjT'):
                L = corner_L(list(rows), list(cols)) @ g_matrix(g) @ Emb
                out.append(dict(rows=list(rows), cols=list(cols), g=g, L=L, s=1 if g in ('id', 'conjT') else -1))
    return out
if __name__ == '__main__':
    O = ops()
    keys = {}
    for o in O: keys.setdefault((o['L'].tobytes(), o['s']), []).append(o)
    Ls = {o['L'].tobytes() for o in O}
    print('ops', len(O), 'distinct (L,s)', len(keys), 'distinct L', len(Ls))
    print('det', sorted({round(np.linalg.det(o['L'])) for o in O}))
    # closure
    S = {o['L'].tobytes() for o in O}
    cl = all((a['L'] @ b['L']).tobytes() in S for a in O for b in O)
    print('closed under composition', cl)
    plus = {o['L'].tobytes() for o in O if o['s'] == 1}; print('orientation-preserving distinct L', len(plus))
    print('-I in group', (-np.eye(4, dtype=int)).tobytes() in S, ' with s=', [o['s'] for o in O if (o['L'] == -np.eye(4, dtype=int)).all()][:1])
