"""N1 second-order Stage-C bin test. All arguments and radii use CYCLES.

This module leaves StageCCert and the original Stage-C implementation alone.
The mathematical inequalities are proved in REPORT.md. Benchmark output is
NUMERICAL; it is not a new kernel certificate or an atlas recertification.

Install as SC.tangent_tests = tangent_tests2, or pass it to the survey driver.
"""
from functools import lru_cache
import itertools
import math
import numpy as np
import stagec as SC

PI = math.pi
SQ6 = math.sqrt(6.0)
SIGNS = np.array(list(itertools.product((-1., 1.), repeat=5)))
PA, PB = np.triu_indices(6, 1)
FULL_SIGNS = np.concatenate([np.zeros((32, 1)), SIGNS], axis=1)
VERTEX_DIFF3 = np.abs(FULL_SIGNS[:, PA]-FULL_SIGNS[:, PB])**3
MARGIN2 = 1e-7


@lru_cache(maxsize=64)
def _frame(raw, k):
    T = np.frombuffer(raw, dtype=np.float64).reshape(6, 6, k)
    TT = (T[..., :, None] * T[..., None, :]).reshape(36, k*k)
    return T, TT


def _data(U, eP, T, h, M):
    """The least-squares direction is a proposal, used as an exact real vector."""
    a = 1.0/(2*M)
    eU = SC.cis_table(np.concatenate([np.zeros((len(U), 1), int), SC._toint(U)], 1))
    S = eU @ eP / SQ6
    q = eU[:, :, None]*eP[None, :, :]/SQ6
    alpha = (np.conj(S)[:, None, :]*q).real
    J = -(np.conj(S)[:, None, :]*q).imag
    c = (np.abs(S)**2-1)/(4*PI)
    k = T.shape[1]
    Tji, TT = _frame(np.asarray(T, dtype=np.float64).tobytes(), k)
    B = np.einsum('nji,jik->nik', J, Tji)
    AA = np.concatenate([a*J[:, 1:, :], h*np.transpose(B, (0, 2, 1))], 1)
    G = np.einsum('nri,nrl->nil', AA, AA)+1e-12*np.eye(6)[None]
    z = np.linalg.solve(G, c[..., None])[..., 0]
    y = z/np.maximum(np.abs(z).max(1), 1e-300)[:, None]
    y = np.clip(y, -1., 1.)
    return dict(S=S, q=q, alpha=alpha, J=J, c=c, B=B, y=y, Tji=Tji, TT=TT)


def _weighted_square_bound(v, X, r, rF, rowsum_bound):
    """For v>=0, bounds sum_i v_i ||x-delta_i||^2.

    rowsum_bound bounds ||sum_i delta_i||, including every Admissible normal
    error, so this does not assume a horizontal delta or change StageCCert.
    """
    vmax = v.max(1)
    total = v.sum(1)
    centered = np.linalg.norm(v-v.mean(1, keepdims=True), axis=1)
    return np.minimum(np.minimum(vmax*(6*X*X+2*X*rowsum_bound+rF*rF), total*(X+r)**2),
                      total*X*X+2*X*(rF*centered+total*rowsum_bound/6)+vmax*rF*rF)


def quadratic_blocks(data, weights):
    """Exact formulas for A, C, D in d^T A d + 2 d^T C eta + eta^T D eta.

    H_i = Re(q_i q_i*) - diag(Re(conj(S_i) q_i)); H_i 1=0.
    H_i has operator norm at most 1. Coefficient rounding is in MARGIN2.
    """
    q, alpha, Tji, TT = (data[k] for k in ('q', 'alpha', 'Tji', 'TT'))
    n = len(q); k = Tji.shape[2]
    Z = np.einsum('nji,jik->nik', q, Tji)
    aw = alpha*weights[:, None, :]
    A = ((q[:, 1:, :]*weights[:, None, :]) @ q[:, 1:, :].conj().transpose(0, 2, 1)).real
    ix = np.arange(5)
    A[:, ix, ix] -= aw[:, 1:, :].sum(2)
    C = -((q[:, 1:, :]*weights[:, None, :]) @ Z.conj()).real
    C += np.einsum('nji,jik->njk', aw[:, 1:, :], Tji[1:, :, :])
    D = ((Z.transpose(0, 2, 1)*weights[:, None, :]) @ Z.conj()).real
    D -= (aw.reshape(n, 36) @ TT).reshape(n, k, k)
    # Symmetrization also fixes an evaluation convention for the float budget.
    return PI*(A+A.transpose(0, 2, 1))/2, PI*C, PI*(D+D.transpose(0, 2, 1))/2


def _lambda_upper(D):
    """Two elementary upper bounds; no numerical eigensolver is trusted."""
    k = D.shape[1]
    if k == 0:
        return np.zeros(len(D))
    diagonal = np.diagonal(D, axis1=1, axis2=2)
    g = (diagonal+np.abs(D).sum(2)-np.abs(diagonal)).max(1)
    trace_mean = diagonal.mean(1)
    traceless = D-trace_mean[:, None, None]*np.eye(k)[None]
    f = trace_mean+math.sqrt((k-1)/k)*np.linalg.norm(traceless, axis=(1, 2))
    return np.minimum(g, f)


def support_bound(A, C, D, linear_d, linear_eta, a, h, mode='cheap'):
    """Rigorous upper support on [-a,a]^5 x B_2(h), not an absolute range.

    'cheap': block bounds with signed diagonal/eigenvalue contributions.
    'vertices': also couple d's linear, quadratic-offdiagonal, and eta-linear
    terms at all 32 vertices after dropping negative pure-d diagonal terms.
    """
    diag = np.diagonal(A, axis1=1, axis2=2)
    positive_diagonal = np.maximum(diag, 0).sum(1)*a*a
    off = A.copy()
    off[:, np.arange(5), np.arange(5)] = 0.
    qxx = positive_diagonal + a*a*np.abs(off).sum((1, 2))
    if D.shape[1]:
        qee = h*h*np.maximum(_lambda_upper(D), 0.)
        c2 = np.linalg.norm(np.abs(C).sum(1), axis=1)
        cross = 2*a*h*c2
        leta = h*np.linalg.norm(linear_eta, axis=1)
    else:
        qee = cross = leta = np.zeros(len(A))
    bound = a*np.abs(linear_d).sum(1)+leta+qxx+cross+qee
    if mode == 'vertices':
        boxq = a*a*np.einsum('vj,njk,vk->nv', SIGNS, off, SIGNS)
        boxl = a*linear_d @ SIGNS.T
        if D.shape[1]:
            etal = linear_eta[:, None, :]+2*a*np.einsum('vj,njk->nvk', SIGNS, C)
            coupled = h*np.linalg.norm(etal, axis=2)
        else:
            coupled = 0.
        # A sufficiently dominant linear derivative fixes a coordinate to an
        # endpoint of every maximum. The 1e-8 guard dominates all derivative
        # coefficient roundoff. Other coordinates retain the diagonal lift.
        deriv_budget = 2*a*np.abs(A).sum(2)
        if D.shape[1]:
            deriv_budget += 2*h*np.linalg.norm(C, axis=2)
        forced = np.abs(linear_d) > deriv_budget+1e-8
        signs_ok = np.all((~forced[:, None, :]) |
                          (SIGNS[None, :, :]*linear_d[:, None, :] >= 0), axis=2)
        diagonal_lift = a*a*(np.maximum(diag, 0)+np.where(forced, np.minimum(diag, 0), 0)).sum(1)
        vals = np.where(signs_ok, boxq+boxl+coupled, -np.inf)
        vertex = diagonal_lift+vals.max(1)+qee
        bound = np.minimum(bound, vertex)
    return bound


def budgets(data, r, rF, h, nN, M, mode='cheap'):
    """Return exact-formula floating budgets for validation/replay."""
    a = 1.0/(2*M); X = math.sqrt(29/6)*a
    y, c, J, B = (data[k] for k in ('y', 'c', 'J', 'B'))
    yc = np.einsum('ni,ni->n', y, c)
    # If F=0, support of this orientation must reach abs(y.c) minus errors.
    weights = -np.where(yc >= 0., 1., -1.)[:, None]*y
    A, C, D = quadratic_blocks(data, weights)
    ld = np.einsum('nji,ni->nj', J[:, 1:, :], weights)
    le = -np.einsum('nik,ni->nk', B, weights)
    support = support_bound(A, C, D, ld, le, a, h, mode)
    m = np.abs(y).max(1)
    Ny = np.sqrt(np.einsum('ni,nji->n', y*y, J*J))
    # This is valid for all Admissible delta, not just horizontal Hadamards.
    # For a float frame, the 1e-12 inflation bounds summation roundoff as well.
    row_frame = np.linalg.norm(data['Tji'].sum(1))+1e-12
    rowsum_bound = h*row_frame+SQ6*nN
    W2 = _weighted_square_bound(y*y, X, r, rF, rowsum_bound)
    Enu = nN*Ny+2*PI*nN*np.sqrt(np.maximum(W2, 0.))+PI*nN*nN*m
    W1 = _weighted_square_bound(np.abs(y), X, r, rF, rowsum_bound)
    diffmax = 2*a+math.sqrt(2)*r
    E3_uniform = (2*PI*PI/3)*diffmax*W1
    # Split the exponential remainder in x and delta before absolute values.
    # This preserves all cancellation across columns in the pure-x cubic.
    gram = (data['q']*y[:, None, :]) @ data['q'].conj().transpose(0, 2, 1)
    g = np.abs(gram[:, PA, PB])
    Ex = (2*PI*PI/3)*a**3*(g @ VERTEX_DIFF3.T).max(1)
    Edd = (2*math.sqrt(2)*PI*PI/3)*m*r*rF*rF
    Exxd = (PI*PI/3)*math.sqrt(606)*np.linalg.norm(y, axis=1)*a*a*rF
    Exdd = 4*PI*PI*a*m*rF*rF
    E3_split = Ex+Edd+Exxd+Exdd
    E3 = np.minimum(E3_uniform, E3_split)
    return dict(lhs=np.abs(yc), support=support, cubic=E3, normal=Enu,
                rhs=support+E3+Enu, cubic_uniform=E3_uniform, cubic_split=E3_split,
                A=A, C=C, D=D, weights=weights,
                linear_d=ld, linear_eta=le)


def _old_rhs(data, r, rF, h, nN, M, K):
    a = 1.0/(2*M); X = math.sqrt(29/6)*a
    y, S, q, J, B = (data[k] for k in ('y', 'S', 'q', 'J', 'B'))
    Ny = np.sqrt(np.einsum('ni,nji->n', y*y, J*J))
    Gy = np.abs(np.einsum('ni,ni,nji->nj', y, S.conj(), q)).max(1)
    return (a*np.abs(np.einsum('nji,ni->nj', J[:, 1:, :], y)).sum(1)
            +h*np.linalg.norm(np.einsum('nik,ni->nk', B, y), axis=1)
            +nN*Ny+SC.remainder(y, S, K, X, r, rF, Gy, I=1.5*a))


def _test(U, P, r, M, K, eP, rF, T, rH, nN, mode, fallback):
    if len(U) == 0:
        return np.ones(0, dtype=bool)
    # The stated binary64 budget uses this envelope. Unsupported inputs are
    # retained, never rejected through an unbudgeted extension of the test.
    scalars = np.array([r, rF, rH, nN, K], dtype=float)
    if (T.ndim != 2 or T.shape[0] != 36 or T.shape[1] > 4
            or M not in (6, 12, 24, 48, 96) or not np.isfinite(scalars).all()
            or np.any(scalars < 0) or np.any(scalars[:4] > .03)
            or K > 1.01 or not np.isfinite(T).all() or np.max(np.abs(T), initial=0) > 1):
        return np.ones(len(U), dtype=bool)
    data = _data(U, eP, T, rH, M)
    lhs = np.abs(np.einsum('ni,ni->n', data['y'], data['c']))
    keep = np.ones(len(U), dtype=bool)
    if fallback:
        keep = ~(lhs > _old_rhs(data, r, rF, rH, nN, M, K)+SC.MARGIN)
    ii = np.flatnonzero(keep)
    if len(ii):
        sub = {key: (value[ii] if key not in ('Tji', 'TT') else value)
               for key, value in data.items()}
        terms = budgets(sub, r, rF, rH, nN, M, mode)
        keep[ii] = ~(terms['lhs'] > terms['rhs']+MARGIN2)
    return keep


def tangent_tests2(U, P, r, M, K, eP, rF, T, rH, nN):
    return _test(U, P, r, M, K, eP, rF, T, rH, nN, 'vertices', True)


def tangent_tests2_cheap(U, P, r, M, K, eP, rF, T, rH, nN):
    return _test(U, P, r, M, K, eP, rF, T, rH, nN, 'cheap', True)


def tangent_tests2_vertices(U, P, r, M, K, eP, rF, T, rH, nN):
    return _test(U, P, r, M, K, eP, rF, T, rH, nN, 'vertices', True)


def tangent_tests2_only(U, P, r, M, K, eP, rF, T, rH, nN):
    return _test(U, P, r, M, K, eP, rF, T, rH, nN, 'cheap', False)
