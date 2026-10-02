"""Independent exact checks for SixValue.md (referee implementation).

Every identity is recomputed from the normal form written in SixValue.md,
not from archive code.  calculate() returns named results; raises on failure.
"""
import itertools
import sympy as S
from pauli import I2, X, Y, Z, PAULI, NAMES, kron, J, require, is_zero, sig, theta, pcoef, cross


def theta_spaces():
    even = [(a, b) for a in range(4) for b in range(4)
            if is_zero(theta(kron(PAULI[a], PAULI[b])) - kron(PAULI[a], PAULI[b]))]
    odd = [(a, b) for a in range(4) for b in range(4)
           if is_zero(theta(kron(PAULI[a], PAULI[b])) + kron(PAULI[a], PAULI[b]))]
    require(len(even) == 6 and len(odd) == 10, 'Theta parity dimensions 6/10')
    require(set(odd) == {(0, 1), (0, 2), (0, 3), (1, 1), (1, 2), (1, 3), (3, 1), (3, 2), (3, 3), (2, 0)},
            'Theta-odd Hermitian space = I.s, X.s, Z.s, Y.I')
    cs = S.symbols('c0:5', real=True)
    E5 = [kron(PAULI[a], PAULI[b]) for (a, b) in even if (a, b) != (0, 0)]
    F = sum((c*E for c, E in zip(cs, E5)), S.zeros(4))
    require(is_zero(F*F - sum(c**2 for c in cs)*S.eye(4)), 'Clifford five-space')
    return {'theta_even_traceless': [NAMES[a]+NAMES[b] for (a, b) in even if (a, b) != (0, 0)],
            'theta_odd_dim': 10}


def twisted_cubic():
    t = S.Symbol('t')
    xs = S.symbols('x0:4')
    q = [xs[0]*xs[2]-xs[1]**2, xs[0]*xs[3]-xs[1]*xs[2], xs[1]*xs[3]-xs[2]**2]
    pt = {xs[0]: 1, xs[1]: t, xs[2]: t**2, xs[3]: t**3}
    require(all(S.expand(qq.subs(pt)) == 0 for qq in q), 'quadrics vanish on the cubic')
    quads = [xs[i]*xs[j] for i, j in itertools.combinations_with_replacement(range(4), 2)]
    Mq = S.Matrix([[S.Poly(S.expand(qq.subs(pt)), t).coeff_monomial(t**k) for k in range(7)] for qq in quads])
    require(Mq.rank() == 7, 'quadratic ideal of the cubic is exactly three-dimensional')
    grads = [S.Matrix([S.diff(qq, xi) for xi in xs]).subs(pt) for qq in q]
    require(is_zero(grads[2] - t*grads[1] + t**2*grads[0]), 'n3 = t n2 - t^2 n1')
    require(S.Matrix.hstack(grads[0], grads[1])[2:, :].det() == 1, 'n1,n2 independent at every t')
    aa = S.symbols('p1:4'); bb = S.symbols('r1:4')
    cA = [aa[0]-aa[2]*t**2, aa[1]+aa[2]*t]; cB = [bb[0]-bb[2]*t**2, bb[1]+bb[2]*t]
    require(is_zero(aa[0]*grads[0]+aa[1]*grads[1]+aa[2]*grads[2] - (cA[0]*grads[0]+cA[1]*grads[1])), 'a.n reduction')
    p4 = (aa[0]*bb[1]-aa[1]*bb[0])+(aa[0]*bb[2]-aa[2]*bb[0])*t+(aa[1]*bb[2]-aa[2]*bb[1])*t**2
    require(S.expand(cA[0]*cB[1]-cA[1]*cB[0]-p4) == 0, 'good-slice polynomial (Section 4)')
    prods = [S.Poly(S.expand(q[i]*q[j]), *xs) for i, j in itertools.combinations_with_replacement(range(3), 2)]
    mons = sorted(set().union(*[set(p.monoms()) for p in prods]))
    require(S.Matrix([[p.coeff_monomial(m) for m in mons] for p in prods]).rank() == 6,
            'six quartics q_a q_b independent')
    g0 = [g.subs(t, 0) for g in grads]
    require(g0[2] == S.zeros(4, 1) and S.Matrix.hstack(g0[0], g0[1]).rank() == 2, 'zero-differential generator at t=0')
    H = S.hessian(q[2], xs)
    require(H[0, :] == S.zeros(1, 4) and H[1:, 1:].rank() == 3, 'x1x3-x2^2 has rank three and no x0')
    al, be, ga, de = S.symbols('alpha beta gamma delta', real=True)
    require(S.expand(S.Matrix([[al, be, 0], [be, ga, de/2], [0, de/2, 0]]).det()+al*de**2/4) == 0,
            'cone determinant -alpha delta^2/4')
    return {'ideal_dim': 3, 'quartic_products_independent': 6}


def rank_two_normal_space():
    h1, h2, x = S.symbols('h1 h2 x', real=True)
    av = S.symbols('a0:3', real=True); bv = S.symbols('b0:3', real=True)
    cv = S.symbols('c_0:3', real=True); d = S.Symbol('d', real=True)
    vv = S.symbols('v0:3', real=True)
    H0 = h1*Z + h2*X
    A = kron(I2, sig(av)) + kron(X, sig(bv)) + kron(Z, sig(cv)) + d*kron(Y, I2)
    com = kron(H0, I2)*A - A*kron(H0, I2)
    want = 2*S.I*(kron(Y, sig([h1*bv[i]-h2*cv[i] for i in range(3)])) - h1*d*kron(X, I2) + h2*d*kron(Z, I2))
    require(is_zero(com - want), 'commutator Pauli coefficients h1 b - h2 c, h1 d, h2 d')
    A2 = kron(I2, sig(av)) + kron(H0, sig(vv))
    M = x*S.eye(4) + kron(H0, I2) + S.I*A2
    Qin = M.H*M - (M.H*M).trace()/4*S.eye(4)
    require(is_zero(Qin - 2*(x+sum(a*v for a, v in zip(av, vv)))*kron(H0, I2)), 'Q_in = 2(x+a.v) H0 x I')
    require(is_zero(M*M.H - M.H*M) and is_zero(M*J - J*M.conjugate()), 'normal and quaternionic-linear')
    return {'rank_two_defect_factor': '2(x+a.v)'}


def rank_three_normal_form():
    x, t, h1, h2 = S.symbols('x t h1 h2', real=True)
    n, v, w = S.symbols('n v w', real=True)
    a, b, c, d, e, f, g, h, k = S.symbols('a b c d e f g h k', real=True)
    avec = [t*a+h1*d+h2*g, t*b+h1*e+h2*h, t*c+h1*f+h2*k]
    nvec = [0, 0, n]; vvec = [v, 0, w]
    H0 = h1*Z + h2*X; G0 = t*Z + h1*X
    M = x*S.eye(4) + kron(H0, I2) + S.I*(kron(I2, sig(avec)) + kron(H0, sig(vvec)) + kron(G0, sig(nvec)))
    require(is_zero(M*J - J*M.conjugate()), 'normal form is quaternionic-linear')
    q = h1**2 - h2*t
    vxn = cross(vvec, nvec)
    base = 2*(x+sum(avec[i]*vvec[i] for i in range(3)))*kron(H0, I2) + 2*avec[2]*n*kron(G0, I2)
    Qin = M.H*M - (M.H*M).trace()/4*S.eye(4)
    Qout = M*M.H - (M*M.H).trace()/4*S.eye(4)
    require(is_zero(Qin - (base - 2*q*kron(Y, sig([vxn[i]+nvec[i] for i in range(3)])))), 'input defect (5.2)')
    require(is_zero(Qout - (base - 2*q*kron(Y, sig([vxn[i]-nvec[i] for i in range(3)])))), 'output defect (5.2)')
    vg = S.symbols('vg0:3', real=True); ng = S.symbols('ng0:3', real=True); ag = S.symbols('ag0:3', real=True)
    Mg = x*S.eye(4) + kron(H0, I2) + S.I*(kron(I2, sig(ag)) + kron(H0, sig(vg)) + kron(G0, sig(ng)))
    vxng = cross(vg, ng)
    baseg = 2*(x+sum(ag[i]*vg[i] for i in range(3)))*kron(H0, I2) + 2*sum(ag[i]*ng[i] for i in range(3))*kron(G0, I2)
    require(is_zero(Mg.H*Mg - (Mg.H*Mg).trace()/4*S.eye(4) - (baseg - 2*q*kron(Y, sig([vxng[i]+ng[i] for i in range(3)])))),
            'input defect with general v,n')
    require(is_zero(Mg*Mg.H - (Mg*Mg.H).trace()/4*S.eye(4) - (baseg - 2*q*kron(Y, sig([vxng[i]-ng[i] for i in range(3)])))),
            'output defect with general v,n')
    sub = {h1: 0, h2: 0, c: 0}
    require(is_zero(Qin.subs(sub)) and is_zero(Qout.subs(sub)), 'a_t.n=0 gives a two-plane of zero defect')
    Et, E1, E2 = M.diff(t), M.diff(h1), M.diff(h2)
    require(is_zero(M.diff(x) - S.eye(4)), 'x-coefficient is I')
    require(is_zero(Et - S.I*(kron(I2, a*X+b*Y+c*Z)+n*kron(Z, Z))), 'E_t')
    require(is_zero(E1 - (kron(Z, I2)+S.I*(kron(I2, d*X+e*Y+f*Z)+kron(Z, v*X+w*Z)+n*kron(X, Z)))), 'E_1')
    require(is_zero(E2 - (kron(X, I2)+S.I*(kron(I2, g*X+h*Y+k*Z)+kron(X, v*X+w*Z)))), 'E_2')
    Es = [Et, E1, E2]
    require(all(S.expand(E.trace()) == 0 for E in Es), 'E orthogonal to I')
    Gram = S.Matrix(3, 3, lambda i, j: S.expand((Es[i].H*Es[j]).trace()/4))
    AA = S.Matrix([a, d, g]); BB = S.Matrix([b, e, h]); CC = S.Matrix([c, f, k])
    Q = 1+v**2; V = Q+w**2
    N = S.Matrix([[n*n, n*w, 0], [n*w, n*n+V, n*w], [0, n*w, V]])
    require(is_zero(Gram - (AA*AA.T+BB*BB.T+CC*CC.T+N)), 'Gram = AA^T+BB^T+CC^T+N')
    b0 = S.Matrix([n, w, 0]); b1 = S.Matrix([0, n, w]); e1 = S.Matrix([0, 1, 0]); e2 = S.Matrix([0, 0, 1])
    require(is_zero(N - b0*b0.T - b1*b1.T - Q*(e1*e1.T+e2*e2.T)), 'N sum-of-squares decomposition')
    require(S.expand(N.det() - n**2*Q*(V+n**2)) == 0, 'det N')
    r = S.symbols('r00 r01 r02 r11 r12 r22', real=True)
    R = S.Matrix([[r[0], r[1], r[2]], [r[1], r[3], r[4]], [r[2], r[4], r[5]]])

    def phi(RR, P, adj=False):
        if adj:
            return P + sum((RR[i, j]*Es[i].H*P*Es[j] for i in range(3) for j in range(3)), S.zeros(4))
        return P + sum((RR[i, j]*Es[i]*P*Es[j].H for i in range(3) for j in range(3)), S.zeros(4))
    cu = pcoef(phi(R, S.eye(4)) - 4*S.eye(4))
    require(S.expand(cu['YZ'] + 2*n*(r[2]-r[3])) == 0, 'Phi(I)=4I forces R02=R11')
    Rh = R.subs(r[2], r[3])
    Win = [kron(Z, I2), kron(X, I2), kron(Y, -v*Y+Z)]; Wout = [kron(Z, I2), kron(X, I2), kron(Y, v*Y+Z)]
    Kin = [kron(Y, X), kron(Y, Y+v*Z)]; Kout = [kron(Y, X), kron(Y, Y-v*Z)]
    hs = lambda F, G: S.expand((F.H*G).trace())
    require(all(hs(F, G) == 0 for F in Win for G in Kin) and all(hs(F, G) == 0 for F in Wout for G in Kout),
            'defect complements')
    xx = Rh*AA; yy = Rh*BB
    p1 = pcoef(phi(Rh, Kin[0])); p2 = pcoef(phi(Rh, Kin[1])); o1 = pcoef(phi(Rh, Kout[0], adj=True))
    pairs = [(p1['XI'], -2*(xx[1]-w*yy[1]-n*yy[0])), (p1['ZI'], 2*(xx[2]-w*yy[2]-n*yy[1])),
             (p2['XI'], -2*(n*xx[0]+w*xx[1]+Q*yy[1])), (p2['ZI'], 2*(n*xx[1]+w*xx[2]+Q*yy[2])),
             (o1['XI'], 2*(xx[1]+w*yy[1]+n*yy[0])), (o1['ZI'], -2*(xx[2]+w*yy[2]+n*yy[1]))]
    for lhs, rhs in pairs:
        require(S.expand(lhs - rhs) == 0, 'kernel equation (6.1)')
    x0, x1, x2, y0, y1, y2 = S.symbols('x0 x1 x2 y0 y1 y2')
    lin = [x1-w*y1-n*y0, x2-w*y2-n*y1, n*x0+w*x1+Q*y1, n*x1+w*x2+Q*y2, x1+w*y1+n*y0, x2+w*y2+n*y1]
    Ml, _ = S.linear_eq_to_matrix(lin, [x0, x1, x2, y0, y1, y2])
    require(S.expand(Ml.det() - 4*n**3*Q) == 0, 'determinant 4 n^3 (1+v^2)')
    require(S.expand(p2['YZ'] + v*p1['YX'] - 2*((BB.T*Rh*CC)[0] + v*(1-(BB.T*Rh*BB)[0]))) == 0, 'identity (6.2)')
    sub = {a: 0, d: 0, g: 0, b: 0, e: 0, h: 0, v: 0}
    require(all(is_zero(E.subs(sub)*kron(I2, Z) - kron(I2, Z)*E.subs(sub)) for E in Es), 'A=B=0,v=0 reducible')
    return {'determinant': '4*n**3*(1+v**2)', 'kernel_equations': 6}


def relaxation_control():
    Rt = S.Rational
    n = Rt(15, 16); v = Rt(3, 4); w = 0
    a, d, g = 0, Rt(-1, 4), 0
    b, e, h = Rt(-18843, 10240), 0, Rt(1923, 640)
    c, f, k = Rt(5769, 2560), 0, Rt(-609, 160)
    Et = S.I*(kron(I2, a*X+b*Y+c*Z)+n*kron(Z, Z))
    E1 = kron(Z, I2)+S.I*(kron(I2, d*X+e*Y+f*Z)+kron(Z, v*X+w*Z)+n*kron(X, Z))
    E2 = kron(X, I2)+S.I*(kron(I2, g*X+h*Y+k*Z)+kron(X, v*X+w*Z))
    Es = [Et, E1, E2]
    G = S.Matrix(3, 3, lambda i, j: (Es[i].H*Es[j]).trace()/4)
    R = G.inv()
    require(R == S.Matrix([[Rt(4096, 5769), 0, Rt(256, 641)], [0, Rt(256, 641), 0],
                           [Rt(256, 641), 0, Rt(108688, 410881)]]), 'control R')
    require(all(R[:i, :i].det() > 0 for i in (1, 2, 3)), 'control R positive definite')
    phi = lambda P: P+sum((R[i, j]*Es[i]*P*Es[j].H for i in range(3) for j in range(3)), S.zeros(4))
    phiA = lambda P: P+sum((R[i, j]*Es[i].H*P*Es[j] for i in range(3) for j in range(3)), S.zeros(4))
    require(is_zero(phi(S.eye(4))-4*S.eye(4)) and is_zero(phiA(S.eye(4))-4*S.eye(4)), 'control bistochastic')
    require(is_zero(phi(kron(Y, X))) and is_zero(phi(kron(Y, Y+v*Z))), 'control input plane killed')
    require(not is_zero(phiA(kron(Y, X))), 'control fails the output equation')
    m = S.Matrix(4, 4, lambda i, j: S.Symbol('m%d%d' % (i, j)))
    eqs = []
    for E in Es+[E.H for E in Es]:
        eqs += list(m*E-E*m)
    sol = list(S.linsolve(eqs, list(m)))[0]
    free = set().union(*[s.free_symbols for s in sol])
    require(len(free) == 1, 'control is irreducible (scalar commutant)')
    return {'input_only_control': 'irreducible, input plane killed, Phi*(YxX) != 0'}


def calculate():
    return {'theta_spaces': theta_spaces(), 'twisted_cubic': twisted_cubic(),
            'rank_two_normal_space': rank_two_normal_space(),
            'rank_three': rank_three_normal_form(), 'relaxation_control': relaxation_control()}


if __name__ == '__main__':
    import json, time
    t0 = time.time()
    print(json.dumps(calculate(), indent=1, sort_keys=True))
    print('time %.1f s' % (time.time()-t0))
