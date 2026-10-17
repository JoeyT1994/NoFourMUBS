"""Vector-bin Stage C (after openai/math, Section 6), applied to one Record cell.  Exponentials come from Arb-certified
tables; all other operations are IEEE float with the explicit margin MARGIN applied conservatively (RIGOUR.md).

Setting.  The cell is the set of Hadamards e(P + delta) (phases in CYCLES, e(t) = exp(2 pi i t)) with every column of
delta of Euclidean norm <= r and ||delta||_F <= rF (cycles; rF <= sqrt6 r).  Terms bounded per column use r; terms that
sum over columns use rF, or the l1 form with r, whichever is smaller (STAGEC.md).  Two further bases would consist of twelve unit vectors e(beta)/sqrt6 unbiased to
the standard basis and to the columns of e(P + delta)/sqrt6, pairwise orthogonal within each basis and unbiased across.

 1. Bins (Lemma 6.1).  Five free phases beta_1..5 in closed bins [b/M, (b+1)/M]; with midpoints u and a = 1/(2M) the
    centred displacement x satisfies ||x|| <= X = sqrt(29/6) a, ||x||_1 <= L = 5a.
 2. Single-vector test (Lemma 6.2).  q_ji = e(u_j - P_ji)/sqrt6, S_i = sum_j q_ji.  An actual vector in the bin unbiased
    to column i has |S_i'| = 1 and |S_i' - S_i| <= 2 pi (L/sqrt6 + r) =: tau, and sum_i (|S_i| - 1)^2 <= (2 pi (K X + r))^2
    with K >= ||e(P)/sqrt6||_op.  Bins failing either test are dropped; survivors are split 32-fold, M = 12, 24, 48, 96.
 3. Labels (Lemmas 6.4, 6.5).  Retained bins are grouped into balls B(v, s) = {e(v + x): sum x = 0, ||x|| <= s}, s < 0.1;
    twelve distinct balls are needed.
 4. Edges (6.16).  For balls (u, s_u), (v, s_v): S = sum_j e(u_j - v_j), r_e = s_u + s_v.  Orthogonality needs
    |S| <= 2 pi sqrt6 r_e; unbiasedness needs ||S| - sqrt6| <= 2 pi sqrt6 r_e.
 5. Graph: two disjoint 6-cliques in O with all 36 cross pairs in U (bitset search).  None => no two further bases.
"""
import math, time
import numpy as np

TWO_PI = 2 * math.pi
SQ6 = math.sqrt(6)
MARGIN = 1e-7   # dominates the float error of every compared quantity (see RIGOUR.md)
# ---------------------------------------------------------------- certified exponentials
# Every bin midpoint is k/192 (resolutions 12, 24, 48, 96), so e(u) = EXP192[k mod 192]; the table entries are the
# float roundings of Arb enclosures (error <= 2^-52 per real coordinate).  e(-P) is computed the same way per centre.
from flint import arb as _arb, acb as _acb, ctx as _ctx
_ctx.prec = 120
DEN = 192
def _cis_float(x_arb):
    z = (_acb(0, 2) * _arb.pi() * x_arb).exp()
    return complex(float(z.real.mid()), float(z.imag.mid()))
EXP192 = np.array([_cis_float(_arb(k) / DEN) for k in range(DEN)])
def cis_table(K):
    """e(K/192) for an integer array K."""
    return EXP192[np.mod(K, DEN)]
def cis_centre(P):
    """e(-P) for the float matrix P (cycles), via Arb."""
    return np.array([[_cis_float(-_arb(float(P[j, i]))) for i in range(6)] for j in range(6)])
def opnorm_bound(P):
    """Rigorous upper bound of ||e(P)/sqrt6||_2 via ||A||_2^2 <= max row sum of |A^* A| (Arb)."""
    from flint import acb_mat
    A = acb_mat([[(_acb(0, 2) * _arb.pi() * _arb(float(P[j, i]))).exp() / _arb(6).sqrt() for i in range(6)] for j in range(6)])
    B = A.conjugate().transpose() * A
    row = max(sum((abs(B[i, j]) for j in range(6)), _arb(0)).upper() for i in range(6))
    return float(_arb(row).sqrt().upper()) * (1 + 1e-12)


def _toint(U):
    Kq = np.rint(np.asarray(U) * DEN).astype(np.int64)
    assert np.abs(np.asarray(U) * DEN - Kq).max() < 1e-6, 'bin midpoints must be multiples of 1/192'
    return Kq


def remainder(y, S, K, X, r, rF, Gy, I=None):
    """pi * [squared increment + pure-x + cross + pure-delta] bound of STAGEC.md (C2b), valid for every real y.
    Each term is the smaller of its two valid forms: Frobenius (rF, with ||y||_inf / ||S o y||_2 / ||S o y||_inf) or
    per-column (r, with ||y||_1 / ||S o y||_1)."""
    Sy = np.abs(S * y)
    sq = np.minimum(np.abs(y).max(1) * (K * X + rF) ** 2, np.abs(y).sum(1) * (K * X + r) ** 2)
    pure = Gy * X * X if I is None else np.minimum(Gy * X * X, K * np.linalg.norm(Sy, axis=1) * I * X)
    cross = 2 / SQ6 * X * np.minimum(np.linalg.norm(Sy, axis=1) * rF, Sy.sum(1) * r)
    dd = np.minimum(Sy.max(1) * rF * rF, Sy.sum(1) * r * r) / SQ6
    return math.pi * (sq + pure + cross + dd)


def single_tests(U, P, r, M, K, eP, rF):
    """U: (n, 5) bin midpoints (cycles).  Boolean mask of bins surviving Lemma 6.2 (6.7) and the scalar test (6.12)."""
    a = 1.0 / (2 * M); X = math.sqrt(29 / 6) * a; L = 5 * a; I = 1.5 * a
    eU = cis_table(np.concatenate([np.zeros((len(U), 1), int), _toint(U)], axis=1))                     # u_0 = 0; q_ji = e(u_j - P_ji)/sqrt6
    S = eU @ eP / SQ6                                                     # (n, 6): S_i
    absS = np.abs(S)
    tau = TWO_PI * (L / SQ6 + r) + MARGIN
    ok = np.all(~((absS > 1 + tau) | (absS < 1 - tau)), axis=1)
    ok &= ~(((absS - 1) ** 2).sum(axis=1) > (TWO_PI * (K * X + rF)) ** 2 + MARGIN)     # ||S'-S|| <= 2 pi (K X + rF)
    # scalar test (6.12): |c_i| <= a sum_{j>0} |J_ij| + r ||J_i,:|| + rho,  c_i = (|S_i|^2 - 1)/(4 pi),
    # J_ij = -Im(conj(S_i) q_ji)
    idx = np.where(ok)[0]
    if len(idx):
        Sk = S[idx]; q = eU[idx][:, :, None] * eP[None, :, :] / SQ6          # (m, 6j, 6i)
        Jm = -(np.conj(Sk)[:, None, :] * q).imag                              # (m, j, i)
        c = (np.abs(Sk) ** 2 - 1) / (2 * TWO_PI)
        Smax = np.abs(Sk).max(axis=1)
        rho = np.minimum(math.pi * ((K * X + r) ** 2 + Smax * (K * I * X + (2 * X * r + r * r) / SQ6)),
                         math.pi * ((L / SQ6 + r) ** 2 + Smax * (X + r) ** 2 / SQ6))
        rhs = a * np.abs(Jm[:, 1:, :]).sum(axis=1) + r * np.linalg.norm(Jm, axis=1) + rho[:, None] + MARGIN
        ok[idx] = np.all(~(np.abs(c) > rhs), axis=1)
    return ok


def tangent_tests(U, P, r, M, K, eP, rF, T, rH, nN):
    """Lemma 6.3 / (6.11): for a proposed direction y in R^6 (one per bin, least-squares), keep the bin only if
        |y.c| <= a sum_{j>0} |(J^T y)_j| + rH ||B^T y|| + E(y; X, I),
    E(y) = nN N_y + pi [ ||y||_inf (K X + r)^2 + min(G_y X^2, K ||S o y|| I X) + (2/sqrt6) ||S o y|| X r + (1/sqrt6) ||S o y||_inf r^2 ],
    c_i = (|S_i|^2 - 1)/(4 pi), J_ij = -Im(conj(S_i) q_ji), B_ik = sum_j J_ij T[(j,i), k], N_y = (sum y_i^2 J_ij^2)^{1/2},
    G_y = max_j |sum_i y_i conj(S_i) q_ji|.  delta = T eta + nu with ||eta|| <= rH, ||nu|| <= nN, ||delta col|| <= r."""
    a = 1.0 / (2 * M); X = math.sqrt(29 / 6) * a; I = 1.5 * a
    eU = cis_table(np.concatenate([np.zeros((len(U), 1), int), _toint(U)], axis=1))
    S = eU @ eP / SQ6                                                     # (n, 6) over i
    q = eU[:, :, None] * eP[None, :, :] / SQ6                             # (n, j, i)
    J = -(np.conj(S)[:, None, :] * q).imag                                # (n, j, i)
    c = (np.abs(S) ** 2 - 1) / (2 * TWO_PI)                               # (n, i)
    k = T.shape[1]
    Tji = T.reshape(6, 6, k)                                              # T[(row j, col i), k]
    B = np.einsum('nji,jik->nik', J, Tji)                                 # (n, i, k)
    # proposal: minimise ||a J[:,1:,:] y||^2 + ||rH B^T y||^2 subject to y.c = 1
    A1 = a * J[:, 1:, :]                                                  # (n, 5, 6) rows j, cols i
    A2 = rH * np.transpose(B, (0, 2, 1))                                  # (n, k, 6)
    A = np.concatenate([A1, A2], axis=1)
    G = np.einsum('nri,nrl->nil', A, A) + 1e-12 * np.eye(6)[None]
    z = np.linalg.solve(G, c[..., None])[..., 0]
    y = z / np.maximum(np.abs(z).max(axis=1), 1e-300)[:, None]           # any direction is valid; |y| <= 1
    lhs = np.abs(np.einsum('ni,ni->n', y, c))
    Sy = np.abs(S * y)
    Ny = np.sqrt(np.einsum('ni,nji->n', y ** 2, J ** 2))
    Gy = np.abs(np.einsum('ni,ni,nji->nj', y, np.conj(S), q)).max(axis=1)
    E = nN * Ny + remainder(y, S, K, X, r, rF, Gy, I=I)
    rhs = a * np.abs(np.einsum('nji,ni->nj', J[:, 1:, :], y)).sum(1) + rH * np.linalg.norm(np.einsum('nik,ni->nk', B, y), axis=1) + E
    return ~(lhs > rhs + MARGIN)


def bins(P, r, levels=(12, 24, 48, 96), cap=2_000_000, tang=None, rF=None, trace=None):
    """trace (optional dict): receives the surviving bin count per level and a SHA-1 of every level's bin array."""
    rF = math.sqrt(6) * r if rF is None else min(rF, math.sqrt(6) * r)
    K = opnorm_bound(P); eP = cis_centre(P)
    M = levels[0]
    g = (np.arange(M) + 0.5) / M
    U = np.stack(np.meshgrid(g, g, g, g, g, indexing='ij'), -1).reshape(-1, 5)
    U = U[single_tests(U, P, r, M, K, eP, rF)]
    if tang is not None and len(U): U = U[tangent_tests(U, P, r, M, K, eP, rF, *tang)]
    if trace is not None: _trace_bins(trace, U)
    for M2 in levels[1:]:
        f = M2 // M
        off = (np.arange(f) + 0.5) / M2 - 0.5 / M                          # child midpoint offsets
        O = np.stack(np.meshgrid(*([off] * 5), indexing='ij'), -1).reshape(-1, 5)
        kept, total = [], 0
        for i0 in range(0, len(U), 4096):                                  # refine in chunks: bounded memory
            Uc = (U[i0:i0 + 4096, None, :] + O[None, :, :]).reshape(-1, 5)
            Uc = Uc[single_tests(Uc, P, r, M2, K, eP, rF)]
            if tang is not None and len(Uc): Uc = Uc[tangent_tests(Uc, P, r, M2, K, eP, rF, *tang)]
            kept.append(Uc); total += len(Uc)
            if total > cap: return None, M2
        U = np.concatenate(kept) if kept else np.zeros((0, 5))
        M = M2
        if trace is not None: _trace_bins(trace, U)
    return U, M


def _sha(*arrays):
    import hashlib
    h = hashlib.sha1()
    for a in arrays: a = np.ascontiguousarray(a); h.update(str((a.dtype.str, a.shape)).encode()); h.update(a.tobytes())
    return h.hexdigest()[:16]


def _trace_bins(trace, U):
    trace.setdefault('bins', []).append(len(U)); trace['bins_sha'] = _sha(np.array([trace.get('bins_sha', '')], 'S16'), U)


def cluster(U, M, radius=0.042, smax=0.1):
    """Greedy assignment of bin midpoints to centres (Lemma 6.4); radii s >= ||h|| + X_M with a float margin."""
    X = math.sqrt(29 / 6) / (2 * M)
    Ki = _toint(U); centres, radii = [], []
    left = np.ones(len(Ki), bool)
    while left.any():
        i0 = np.argmax(left); v = Ki[i0]
        D = np.mod(Ki - v + DEN // 2, DEN) - DEN // 2                         # exact integer wrap, units 1/192
        D6 = np.concatenate([np.zeros((len(D), 1)), D], 1) / DEN
        D6 = D6 - D6.mean(1, keepdims=True)
        nrm = np.linalg.norm(D6, axis=1)
        take = left & (nrm <= radius)
        s = nrm[take].max() * (1 + 1e-12) + X + 1e-9
        if s >= smax: return None
        centres.append(U[i0]); radii.append(s); left &= ~take
    return np.array(centres), np.array(radii)


def edges(C, s, chunk=256):
    """Direct tests (6.16) and the second-order support tests (6.20), (6.21) of Lemma 6.6 (row-chunked)."""
    n = len(C)
    E = cis_table(np.concatenate([np.zeros((len(C), 1), int), _toint(C)], axis=1))
    O = np.zeros((n, n), bool); Ub = np.zeros((n, n), bool)
    for a0 in range(0, n, chunk):
        a1 = min(n, a0 + chunk)
        Q = E[a0:a1, None, :] * E.conj()[None, :, :]                       # Q_j = e(u_j - v_j)
        S = Q.sum(-1); aS = np.abs(S)
        re = s[a0:a1, None] + s[None, :]
        lim = TWO_PI * SQ6 * re + MARGIN
        o = aS <= lim; u = np.abs(aS - SQ6) <= lim
        DU = (S.real[..., None] * (-Q.imag) + S.imag[..., None] * Q.real) / 6
        DU = DU - DU.mean(-1, keepdims=True)
        nDU = np.linalg.norm(DU, axis=-1)
        EO = math.pi * re ** 2; EU = math.pi * re ** 2 * (1 + aS / 6)
        o &= aS ** 2 / TWO_PI <= 6 * re * nDU + EO * aS + MARGIN
        u &= np.abs((aS ** 2 / 6 - 1) / (2 * TWO_PI)) <= re * nDU + EU + MARGIN
        O[a0:a1] = o; Ub[a0:a1] = u
    np.fill_diagonal(O, False); np.fill_diagonal(Ub, False)
    return O, Ub


def joint_filter(C, s, O, Ub, P, r, K, eP, rF, T, rH, nN):
    """Joint necessary support (openai/math Lemma 6.7, eq. 6.23) with the common tangent variable eta.
    For an edge of type E (O: l = 2, U: l = 1) between balls t = 0, 1 and any directions y0, y1 in R^6, ye in R^l:
      |y0.c0 + y1.c1 + ye.qE| <= sum_t [ s_t ||J_t^T y_t + (-1)^t D_E^T ye|| + Eball_t(y_t) ] + rH ||B_0^T y0 + B_1^T y1|| + E_E ||ye||,
    Eball_t(y) = nN N_y + pi [ ||y||_inf (K s_t + r)^2 + s_t^2 G_y + (2/sqrt6) ||S o y|| s_t r + (1/sqrt6) ||S o y||_inf r^2 ].
    Edges violating it (strictly, with MARGIN) are removed.  Directions are proposed by a weighted least-squares solve."""
    n = len(C); k = T.shape[1]
    eU = cis_table(np.concatenate([np.zeros((n, 1), int), _toint(C)], axis=1))                  # (n, 6) e(u_j)
    S = eU @ eP / SQ6                                                                            # (n, i)
    q = eU[:, :, None] * eP[None, :, :] / SQ6                                                    # (n, j, i)
    J = -(np.conj(S)[:, None, :] * q).imag                                                       # (n, j, i)  J[i, j] stored as [j, i]
    c = (np.abs(S) ** 2 - 1) / (2 * TWO_PI)
    B = np.einsum('nji,jik->nik', J, T.reshape(6, 6, k))                                         # (n, i, k)
    O2, U2 = O.copy(), Ub.copy()
    for typ, G0 in (('O', O), ('U', Ub)):
        a_, b_ = np.where(np.triu(G0, 1))
        if len(a_) == 0: continue
        Q = eU[a_] * eU[b_].conj(); Ssum = Q.sum(-1); aS = np.abs(Ssum); re = s[a_] + s[b_]
        DO = np.stack([-Q.imag, Q.real], 1)                                                      # (m, 2, 6)
        if typ == 'O':
            D = DO; qE = np.stack([Ssum.real, Ssum.imag], 1) / TWO_PI; EE = math.pi * re ** 2
        else:
            D = ((Ssum.real[:, None] * DO[:, 0] + Ssum.imag[:, None] * DO[:, 1]) / 6)[:, None, :]
            qE = ((aS ** 2 / 6 - 1) / (2 * TWO_PI))[:, None]; EE = math.pi * re ** 2 * (1 + aS / 6)
        l = D.shape[1]; m = len(a_)
        # linear maps of w = (y0, y1, ye):  A w = [s0 (J0^T y0 + D^T ye); s1 (J1^T y1 - D^T ye); rH (B0^T y0 + B1^T y1); EE ye]
        J0 = J[a_]; J1 = J[b_]                                                                   # (m, j, i): J^T y = einsum('mji,mi->mj')
        A = np.zeros((m, 12 + k + l, 12 + l))
        A[:, 0:6, 0:6] = s[a_][:, None, None] * J0; A[:, 0:6, 12:] = s[a_][:, None, None] * np.transpose(D, (0, 2, 1))
        A[:, 6:12, 6:12] = s[b_][:, None, None] * J1; A[:, 6:12, 12:] = -s[b_][:, None, None] * np.transpose(D, (0, 2, 1))
        A[:, 12:12 + k, 0:6] = rH * np.transpose(B[a_], (0, 2, 1)); A[:, 12:12 + k, 6:12] = rH * np.transpose(B[b_], (0, 2, 1))
        A[:, 12 + k:, 12:] = EE[:, None, None] * np.eye(l)[None]
        G = np.einsum('mra,mrb->mab', A, A) + 1e-12 * np.eye(12 + l)[None]
        rhs_vec = np.concatenate([c[a_], c[b_], qE], 1)
        z = np.linalg.solve(G, rhs_vec[..., None])[..., 0]
        w = z / np.maximum(np.abs(z).max(1), 1e-300)[:, None]
        y0, y1, ye = w[:, :6], w[:, 6:12], w[:, 12:]
        lhs = np.abs((y0 * c[a_]).sum(1) + (y1 * c[b_]).sum(1) + (ye * qE).sum(1))
        def eball(y, t, st):
            Sy = np.abs(S[t] * y)
            Ny = np.sqrt(np.einsum('mi,mji->m', y ** 2, J[t] ** 2))
            Gy = np.abs(np.einsum('mi,mi,mji->mj', y, np.conj(S[t]), q[t])).max(1)
            return nN * Ny + remainder(y, S[t], K, st, r, rF, Gy)          # X = s_t (whole label ball), G_y form
        DTe = np.einsum('mlj,ml->mj', D, ye)
        rhs = (s[a_] * np.linalg.norm(np.einsum('mji,mi->mj', J0, y0) + DTe, axis=1) + eball(y0, a_, s[a_])
               + s[b_] * np.linalg.norm(np.einsum('mji,mi->mj', J1, y1) - DTe, axis=1) + eball(y1, b_, s[b_])
               + rH * np.linalg.norm(np.einsum('mik,mi->mk', B[a_], y0) + np.einsum('mik,mi->mk', B[b_], y1), axis=1)
               + EE * np.linalg.norm(ye, axis=1))
        kill = lhs > rhs + MARGIN
        Gt = O2 if typ == 'O' else U2
        Gt[a_[kill], b_[kill]] = False; Gt[b_[kill], a_[kill]] = False
    return O2, U2


def two_cliques(O, Ub, cap=5_000_000):
    """True iff the pattern (two disjoint O-6-cliques, all cross pairs U) is impossible (complete search)."""
    n = len(O)
    orth = [int(''.join('1' if O[i, j] else '0' for j in reversed(range(n))), 2) for i in range(n)]
    ub = [int(''.join('1' if Ub[i, j] else '0' for j in reversed(range(n))), 2) for i in range(n)]
    steps = [0]
    def cliques(pool, need):
        if need == 0:
            yield (); return
        while pool.bit_count() >= need:
            steps[0] += 1
            if steps[0] > cap: raise RuntimeError('cap')
            bit = pool & -pool; i = bit.bit_length() - 1; pool ^= bit
            for tail in cliques(pool & orth[i], need - 1):
                yield (i, *tail)
    for A in cliques((1 << n) - 1, 6):
        D = (1 << n) - 1
        for i in A: D &= ub[i]
        for B in cliques(D, 6):
            return False, steps[0]
    return True, steps[0]


def stage_c(P, r, tang=None, radius=0.03, rF=None, trace=None):
    """r: per-column bound on delta; rF: Frobenius bound (defaults to sqrt6 r, always valid).
    trace (optional dict): receives the intermediates (bin counts per level, labels, edge counts before and after the
    joint filter, SHA-1s of the arrays), so that two runs can be compared Record by Record."""
    t0 = time.time()
    rF = math.sqrt(6) * r if rF is None else min(rF, math.sqrt(6) * r)
    U, M = bins(P, r, tang=tang, rF=rF, trace=trace)
    if U is None: return dict(ok=False, reason='bin cap')
    cl = cluster(U, M, radius=radius)
    if cl is None: return dict(ok=False, reason='cluster', bins=len(U))
    C, s = cl
    O, Ub = edges(C, s)
    if trace is not None:
        trace.update(labels=len(C), labels_sha=_sha(C, s), O=int(O.sum() // 2), U=int(Ub.sum() // 2), edges_sha=_sha(O, Ub))
    if tang is not None:
        O, Ub = joint_filter(C, s, O, Ub, P, r, opnorm_bound(P), cis_centre(P), rF, *tang)
    if trace is not None: trace.update(jO=int(O.sum() // 2), jU=int(Ub.sum() // 2), joint_sha=_sha(O, Ub))
    try:
        ok, steps = two_cliques(O, Ub)
    except RuntimeError:
        return dict(ok=False, reason='graph cap', bins=len(U), labels=len(C))
    return dict(ok=ok, bins=len(U), labels=len(C), O=int(O.sum() // 2), U=int(Ub.sum() // 2), steps=steps, t=round(time.time() - t0, 3))


if __name__ == '__main__':
    import json, sys
    F6 = np.array([[(j * k) / 6 for k in range(6)] for j in range(6)])
    for r in (0.0, 0.002, 0.005):
        print('F6 r=%.3f' % r, stage_c(F6, r), flush=True)
    if len(sys.argv) > 1:
        phi = np.array(json.load(open(sys.argv[1]))['phi']).reshape(6, 6) / TWO_PI
        for r in (0.0, 0.002, 0.005, 0.008):
            print('centre r=%.3f' % r, stage_c(phi, r), flush=True)


# ---------------------------------------------------------------- MUB triples
def one_clique(O, cap=5_000_000):
    """True iff the orthogonality graph O has NO 6-clique (complete search; a cap hit raises RuntimeError)."""
    n = len(O)
    orth = [int(''.join('1' if O[i, j] else '0' for j in reversed(range(n))), 2) for i in range(n)]
    steps = [0]
    def has(pool, need):
        if need == 0: return True
        while pool.bit_count() >= need:
            steps[0] += 1
            if steps[0] > cap: raise RuntimeError('cap')
            bit = pool & -pool; i = bit.bit_length() - 1; pool ^= bit
            if has(pool & orth[i], need - 1): return True
        return False
    return (not has((1 << n) - 1, 6)), steps[0]


def stage_c_triple(P, r, tang=None, radius=0.03, rF=None):
    """Exclusion of MUB triples on a Record: a third basis would be six pairwise orthogonal vectors, each unbiased to I
    and to the columns of e(P + delta)/sqrt6, hence (distinct labels, STAGEC.md C3) a 6-clique of the O graph.
    ok = True means no Hadamard in the ball extends to a MUB triple."""
    t0 = time.time()
    rF = math.sqrt(6) * r if rF is None else min(rF, math.sqrt(6) * r)
    U, M = bins(P, r, tang=tang, rF=rF)
    if U is None: return dict(ok=False, reason='bin cap')
    cl = cluster(U, M, radius=radius)
    if cl is None: return dict(ok=False, reason='cluster', bins=len(U))
    C, s = cl
    O, Ub = edges(C, s)
    if tang is not None:
        O, Ub = joint_filter(C, s, O, Ub, P, r, opnorm_bound(P), cis_centre(P), rF, *tang)
    try:
        ok, steps = one_clique(O)
    except RuntimeError:
        return dict(ok=False, reason='graph cap', bins=len(U), labels=len(C))
    return dict(ok=ok, bins=len(U), labels=len(C), O=int(O.sum() // 2), steps=steps, t=round(time.time() - t0, 3))
