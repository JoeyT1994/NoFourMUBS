#!/usr/bin/env python3
"""Exact identities and controls for QuadraticPhaseCone.md.

Run with cwd = this folder:  python3 QuadraticPhaseCone.py
Exits nonzero on any failed check. No receipt is read or written.
"""
from itertools import combinations
import json
import sys
import sympy as S


def zero(x):
    assert S.expand(x) == 0


def matrix_zero(a):
    for x in a:
        assert S.simplify(x) == 0


def wedge(a):
    pairs = list(combinations(range(a.rows), 2))
    return S.Matrix([[a[i, k]*a[j, l]-a[i, l]*a[j, k]
                      for k, l in pairs] for i, j in pairs])


def differential(b):
    pairs = list(combinations(range(b.rows), 2))
    return S.Matrix([[b[i, k]*int(j == l)+b[j, l]*int(i == k)
                      -b[i, l]*int(j == k)-b[j, k]*int(i == l)
                      for k, l in pairs] for i, j in pairs])


def W(a):
    a2 = (a*a).applyfunc(S.expand)
    return 20*wedge(a)+5*differential(a2)-S.trace(a2)*S.eye(15)


def L(Vr, Vs, A):
    """L_rs(A)_jk = sum_{p!=q} conj(Vr[p,j]) Vr[q,j] Vs[p,k] conj(Vs[q,k]) A[p,q].

    Identical to the map A_(H,K0) of RelativePhaseCompatibility.md with H=Vr, K0=Vs.
    """
    n = Vr.rows
    return S.Matrix(n, n, lambda j, k: sum(
        S.conjugate(Vr[p, j])*Vr[q, j]*Vs[p, k]*S.conjugate(Vs[q, k])*A[p, q]
        for p in range(n) for q in range(n) if p != q))


def identities():
    out = {}
    # (2.2): trace identity in five independent eigenvalues (unitary covariance
    # reduces the general Hermitian case to this; see the written proof).
    x = list(S.symbols('x0:5'))
    x.append(-sum(x))
    p2, p4 = sum(t*t for t in x), sum(t**4 for t in x)
    zero(sum((20*x[i]*x[j]+5*(x[i]**2+x[j]**2)-p2)**2
             for i, j in combinations(range(6), 2))-30*(7*p2*p2-10*p4))
    out['trace_identity'] = 'Tr W^2 = 30(7 Tr(A^2)^2 - 10 Tr A^4), five free eigenvalues'

    # Eigenvalues of W in an eigenbasis: W is diagonal with the stated entries.
    lam = S.symbols('l0:6', real=True)
    D = S.diag(*lam)
    WD = W(D)
    pairs = list(combinations(range(6), 2))
    q2 = sum(l*l for l in lam)
    for a, (i, j) in enumerate(pairs):
        zero(WD[a, a]-(20*lam[i]*lam[j]+5*(lam[i]**2+lam[j]**2)-q2))
        for b in range(15):
            if b != a:
                assert WD[a, b] == 0
    out['diagonal_W_spectrum'] = True

    # Equality characterisation control: the spectrum c(5,-1,...,-1) gives W=0.
    c = S.symbols('c', real=True)
    matrix_zero(W(S.diag(5*c, *([-c]*5))))
    # ...and a traceless spectrum with only four equal eigenvalues does not.
    assert any(S.expand(v) != 0 for v in W(S.diag(3, 1, -1, -1, -1, -1)))
    spectrum = [5*c]+[-c]*5
    zero(8*sum(t*t for t in spectrum)**3-15*sum(t**3 for t in spectrum)**2)
    zero(7*sum(t*t for t in spectrum)**2-10*sum(t**4 for t in spectrum))
    out['equality_spectrum_controls'] = True

    # Nontrivial exact phase correlation: W=0, projector quadratic, recovery.
    d = S.Matrix([1, (3+4*S.I)/5, S.I, -1, (5+12*S.I)/13, -S.I])
    a = (d*d.conjugate().T-S.eye(6)).applyfunc(S.simplify)
    matrix_zero(W(a))
    matrix_zero(W(-3*a))
    matrix_zero(a*a-4*a-5*S.eye(6))
    matrix_zero((a+S.eye(6))[:, 0]-d)
    assert S.simplify(S.trace(a*a)) == 30
    assert S.simplify(S.trace(a*a*a)) == 120
    # scale formula (2.5): lambda_A = 4 Tr(A^2)/Tr(A^3) recovers the scale.
    b = -3*a
    lam_b = S.simplify(4*S.trace(b*b)/S.trace(b*b*b))
    assert lam_b == -S.Rational(1, 3)
    matrix_zero((S.eye(6)+lam_b*b)[:, 0]-d)
    out['phase_control'] = 'Q(i), six phases, W=0 on the whole real line through dd*-I'

    # Self-overlap subspace U: full ten-variable SOS (6.2)-(6.3).
    alpha, beta = list(S.symbols('a0:5', real=True)), list(S.symbols('b0:5', real=True))
    alpha.append(-sum(alpha))
    beta.append(-sum(beta))
    P, Q = sum(t*t for t in alpha), sum(t*t for t in beta)
    R = sum(s*t for s, t in zip(alpha, beta))
    qa, qab = [], []
    for i, j, k, l in combinations(range(6), 4):
        for i1, j1, k1, l1 in ((i, j, k, l), (i, k, j, l), (i, l, j, k)):
            qa.append((alpha[i1]-alpha[j1])*(alpha[k1]-alpha[l1]))
            qab.append((alpha[i1]-alpha[j1])*(beta[k1]-beta[l1])
                       +(beta[i1]-beta[j1])*(alpha[k1]-alpha[l1]))
    rij = [alpha[i]*beta[j]-alpha[j]*beta[i] for i, j in combinations(range(6), 2)]
    assert len(qa) == len(qab) == 45 and len(rij) == 15
    zero(S.Rational(7, 10)*P*P-sum(t**4 for t in alpha)-sum(t*t for t in qa)/15)
    zero(S.Rational(7, 10)*P*Q-sum(s*s*t*t for s, t in zip(alpha, beta))
         -sum(t*t for t in qab)/60-S.Rational(11, 30)*sum(t*t for t in rij))
    A = S.Matrix(6, 6, lambda i, j: 0 if i == j else
                 alpha[i]+alpha[j]+S.I*(beta[i]-beta[j]))
    A2 = (A*A).applyfunc(S.expand)
    t2 = S.expand(S.trace(A2))
    t4 = S.expand(sum(A2[i, j]*A2[j, i] for i in range(6) for j in range(6)))
    zero(t2-8*P-12*Q)
    zero(t4-(8*P*P+64*P*Q+72*Q*Q+48*sum(t**4 for t in alpha)
             +96*sum(s*s*t*t for s, t in zip(alpha, beta))-16*R*R))
    zero(7*t2*t2-10*t4-S.Rational(35, 78)*t2*t2
         -S.Rational(8, 39)*(4*P-33*Q)**2-32*sum(t*t for t in qa)
         -16*sum(t*t for t in qab)-352*sum(t*t for t in rij)-160*R*R)
    # Same subspace in the parametrisation E_alpha + F_beta (Section 6.3).
    one = S.ones(6, 1)
    av, bv = S.Matrix(alpha), S.Matrix(beta)
    E = av*one.T+one*av.T-2*S.diag(*alpha)
    F = S.I*(bv*one.T-one*bv.T)
    matrix_zero(E+F-A)
    out['self_overlap_sos'] = 'ten real coordinates; 45 pairings, 15 minors; constant 35/78'

    # U is contained in ker L_VV: exact check for V = F6 with symbolic alpha,beta.
    root = (1+S.I*S.sqrt(3))/2
    F6 = S.Matrix(6, 6, lambda i, j: S.expand(root**((i*j) % 6)))
    LA = L(F6, F6, A)
    for v in LA:
        assert S.simplify(S.expand(v)) == 0
    out['U_in_ker_L_VV_for_F6'] = True

    # Quartet expansion (Section 1): for V2,V3 and phases d,e,
    # |((diag(d)V2)^* diag(e)V3)_jk|^2 - 6 = L23(conj(X) o Y)_jk, X=dd*-I, Y=ee*-I.
    D6 = S.diag(1, S.I, -1, (3+4*S.I)/5, 1, -S.I)
    V2 = F6
    V3 = (D6*F6.T).applyfunc(S.expand)
    dd = S.Matrix([1, (5+12*S.I)/13, -S.I, (3-4*S.I)/5, 1, S.I])
    ee = S.Matrix([1, -1, (8+15*S.I)/17, S.I, (4+3*S.I)/5, -1])
    X = dd*dd.H-S.eye(6)
    Y = ee*ee.H-S.eye(6)
    lhs = (S.diag(*dd)*V2).H*(S.diag(*ee)*V3)
    XY = S.Matrix(6, 6, lambda p, q: S.conjugate(X[p, q])*Y[p, q])
    rhs = L(V2, V3, XY)
    for j in range(6):
        for k in range(6):
            assert S.simplify(S.expand(lhs[j, k]*S.conjugate(lhs[j, k])-6-rhs[j, k])) == 0
    out['quartet_overlap_expansion'] = 'exact identity at a sample (V2,V3,d,e)'

    # Rank-two binary adjugate formula and rank-one discriminant controls.
    cc = S.Matrix(2, 3, S.symbols('c0:6'))
    v = cc[0, :].T.cross(cc[1, :].T)
    g = cc.T*cc
    matrix_zero(g.adjugate()-v*v.T)
    for row in ([1, 0, 1], [1, 0, -1], [1, 2, 1], [0, 0, 1], [0, 1, 0]):
        cm = S.Matrix([row])
        g = cm.T*cm
        assert g.rank() == 1
        zero(g[1, 1]-4*g[0, 2]-(row[1]**2-4*row[0]*row[2]))
    for rows in ([[1, 0, -1], [0, 1, -1]], [[1, 0, 1], [0, 1, 0]], [[1, 0, 0], [0, 1, 0]]):
        cm = S.Matrix(rows)
        g = cm.T*cm
        assert g.rank() == 2
        v = cm.nullspace()[0]
        assert (v[0]*v[2]-v[1]**2 == 0) == (g.adjugate()[0, 2]-g.adjugate()[1, 1] == 0)
    out['binary_controls'] = {'rank_one': 5, 'rank_two': 3, 'symbolic_adjugate': True}

    # Segre (rank-one) minors vanish on t s^T.
    t = S.Matrix(S.symbols('t0:3', real=True))
    s = S.Matrix(S.symbols('s0:4', real=True))
    z = t*s.T
    for i, j in combinations(range(3), 2):
        for k, l in combinations(range(4), 2):
            zero(z[i, k]*z[j, l]-z[i, l]*z[j, k])
    out['segre_minors'] = True

    # Sextic note (5): 900 delta^2 identity, checked with k=l=2 generic data.
    m = S.Matrix(4, 4, S.symbols('m0:16'))
    tt, ss = S.symbols('t0:2'), S.symbols('s0:2')
    ge = S.Matrix(2, 2, lambda i, j: S.Symbol(f'e{min(i,j)}{max(i,j)}'))
    gf = S.Matrix(2, 2, lambda i, j: S.Symbol(f'f{min(i,j)}{max(i,j)}'))
    ts = S.Matrix([tt[0]*ss[0], tt[0]*ss[1], tt[1]*ss[0], tt[1]*ss[1]])
    pvec = m*ts
    delta = m.det()
    y = m.adjugate()*pvec
    TX = (S.Matrix(tt).T*ge*S.Matrix(tt))[0]
    TY = (S.Matrix(ss).T*gf*S.Matrix(ss))[0]
    rhs = (y.T*S.kronecker_product(ge, gf)*y)[0]-delta**2*((TX-30)*TY+30*(TY-30))
    zero(rhs-900*delta**2)
    out['injective_coupling_quartic_identity'] = True

    # General-n trace lemma constant (Section 2.4): max of (n-2m)^2/(n m (n-m)).
    for n in range(3, 10):
        vals = [S.Rational((n-2*k)**2, n*k*(n-k)) for k in range(1, n)]
        assert max(vals) == S.Rational((n-2)**2, n*(n-1))
        assert [k for k in range(1, n) if vals[k-1] == max(vals)] == [1, n-1]
    out['general_n_trace_lemma_extremes'] = 'n=3..9'
    return out


def main():
    if sys.flags.optimize:
        raise SystemExit('Do not disable assertions with -O.')
    result = identities()
    print(json.dumps({'status': 'PASS', 'checks': result,
                      'scope': 'Exact identities and controls supporting the written universal proofs; '
                               'no global carrier-locus exclusion'}, indent=2, sort_keys=True))
    print('PASS quadratic phase cone: trace identity, cone controls, U SOS 35/78, quartet expansion, binary tests')


if __name__ == '__main__':
    main()
