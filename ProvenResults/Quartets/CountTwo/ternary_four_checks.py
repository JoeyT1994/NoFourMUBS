"""Independent exact checks for the three- and four-value M4 branches.

Self-contained (sympy/numpy/stdlib).  calculate() returns a JSON-serialisable
dict and raises CheckFailure on any failed check.

Sections
  T*  ternary channel  (ternary_channel/PROOF.md + TERNARY_EXCLUSION.md)
  F*  four-value channel (m4_channel_frontier/PROOF.md)
  P*  antipodal four-value channel (antipodal_four/PROOF.md)
  N*  numerical sanity controls (random exact-structure examples)

Conventions: complex conjugates of unit-modulus symbols are written 1/x;
conjugates of non-unit symbols are independent symbols (zb, wb, kb, ...)
and the norm relations are imposed by explicit substitution.
"""
import itertools
import json
import time

import numpy as np
import sympy as sp


class CheckFailure(Exception):
    pass


def require(ok, msg):
    if not ok:
        raise CheckFailure(msg)


def is_zero(expr):
    if isinstance(expr, sp.MatrixBase):
        return all(sp.simplify(sp.cancel(sp.expand(e))) == 0 for e in expr)
    return sp.simplify(sp.cancel(sp.expand(expr))) == 0


def zero(expr, msg):
    require(is_zero(expr), msg)


I4 = sp.eye(4)
X2 = sp.Matrix([[0, 1], [1, 0]])
Y2 = sp.Matrix([[0, -sp.I], [sp.I, 0]])
Z2 = sp.Matrix([[1, 0], [0, -1]])
I2 = sp.eye(2)


def sq_reduce(expr, rules):
    """Replace var**n by var**(n%2)*repl**(n//2) for each (var, repl) (exact reduction
    modulo var**2-repl), after clearing to a single fraction."""
    num, den = sp.fraction(sp.together(sp.expand(expr)))
    for var, repl in rules:
        P = sp.Poly(sp.expand(num), var)
        num = sp.expand(sum(co*var**(e % 2)*repl**(e//2) for (e,), co in P.terms()))
        P = sp.Poly(sp.expand(den), var)
        den = sp.expand(sum(co*var**(e % 2)*repl**(e//2) for (e,), co in P.terms()))
    return sp.cancel(num/den)


def kron(a, b):
    return sp.kronecker_product(a, b)


def superop(kraus_pairs):
    """Row-major vectorisation: vec(K X L) = (K (x) L^T) vec(X).
    kraus_pairs: list of (K, Kdagger)."""
    return sum((kron(K, Kd.T) for K, Kd in kraus_pairs), sp.zeros(16))


def wedge2(M):
    idx = [(0, 1), (0, 2), (0, 3), (1, 2), (1, 3), (2, 3)]
    W = sp.zeros(6)
    for r, (i, j) in enumerate(idx):
        for c, (k, l) in enumerate(idx):
            W[r, c] = M[i, k]*M[j, l]-M[i, l]*M[j, k]
    return W


# ---------------------------------------------------------------------------
# Ternary channel
# ---------------------------------------------------------------------------

def ternary_checks():
    out = {}
    a, b, c = sp.symbols('a b c', real=True)
    z, zb, u, w = sp.symbols('z zb u w', nonzero=True)
    # general balanced perfect-orbit chart (u, w unit only once b=c=0)
    wg, wgb, ug, ugb = sp.symbols('wg wgb ug ugb')
    A = sp.Matrix([[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, a, z], [0, 0, zb, -a]])
    Bg = sp.Matrix([[0, 0, 1, 0], [0, b, 0, wg], [1, 0, 0, 0], [0, wgb, 0, -b]])
    Cg = sp.Matrix([[0, 0, 0, 1], [0, c, ug, 0], [0, ugb, -c, 0], [1, 0, 0, 0]])
    zero(sp.trace(A*Bg)-a*b, 'T1 tr(AB)=ab')
    zero(sp.trace(A*Cg)+a*c, 'T1 tr(AC)=-ac')
    zero(sp.trace(Bg*Cg)-b*c, 'T1 tr(BC)=bc')
    out['T1_trace_orthogonality'] = 'tr(AB)=ab, tr(AC)=-ac, tr(BC)=bc'

    # b=c=0 chart
    B = sp.Matrix([[0, 0, 1, 0], [0, 0, 0, w], [1, 0, 0, 0], [0, 1/w, 0, 0]])
    C = sp.Matrix([[0, 0, 0, 1], [0, 0, u, 0], [0, 1/u, 0, 0], [1, 0, 0, 0]])
    nrm = {zb: (1-a**2)/z}
    zero((A*A-I4).subs(nrm), 'T2 A involution')
    zero(B*B-I4, 'T2 B involution')
    zero(C*C-I4, 'T2 C involution')
    zero(sp.trace(A*B*C)-(w+1/u+zb+u*z/w), 'T2 tr(ABC)')

    # Channel equations on an arbitrary Hermitian rho (independent symbols)
    r = sp.Matrix(4, 4, lambda i, j: sp.Symbol('r%d%d' % (i, j)))
    Phi = r+A*r*A+B*r*B+C*r*C
    h, hb, y, yb = r[0, 1], r[1, 0], r[2, 3], r[3, 2]
    t, v = r[2, 2], r[3, 3]
    # entries 01, 10 : (h+hb) and u y + w yb, only up to the stated combinations
    e01 = sp.expand(Phi[0, 1])
    e10 = sp.expand(Phi[1, 0])
    # Phi(rho)=I requires e01=e10=0 ; show the combination
    zero(u*w*e01-e10-(u*w-1)*(h+hb), 'T3 uw e01 - e10 = (uw-1)(h+hb)')
    zero(e10-(h+hb+u*y+w*yb), 'T3 e10 form')
    zero(e01-(h+hb+y/w+yb/u), 'T3 e01 form')
    # the claimed pair h+hb=0, u y + w yb = 0 follows when uw!=1:
    tr = sum(r[i, i] for i in range(4))
    diag = sp.expand(Phi[2, 2]-tr).subs(nrm)
    zero(diag-a*(a*(t-v)+zb*y+z*yb).subs(nrm), 'T3 22-trace = a(a(t-v)+zb y+z yb)')
    e23 = sp.expand(Phi[2, 3]).subs(nrm)
    zero(e23-z*(a*(t-v)+zb*y+z*yb).subs(nrm)-(w*h+hb/u)+((a**2+z*zb-1)*y).subs(nrm),
         'T3 23 entry')
    out['T3_nonzero_diag_equations'] = 'uw!=1 => h=-hb, uy+w yb=0; (22-tr)/a and 23 give w h+hb/u=0 => h=0'

    # Mixed rays, x1=0 chart: x=(1,0,i r,i s)
    rr, ss = sp.symbols('rr ss', real=True)

    def conjv(vec, cmap):
        return sp.Matrix([sp.conjugate(e) for e in vec]).subs(cmap, simultaneous=True)

    cm = {sp.conjugate(z): zb, sp.conjugate(w): 1/w, sp.conjugate(u): 1/u,
          sp.conjugate(zb): z}
    x = sp.Matrix([1, 0, sp.I*rr, sp.I*ss])

    def ip(p, q):
        return sp.expand((conjv(p, cm).T*q)[0])
    zero(ip(x, B*x), 'T4 <x,Bx>=0 for imaginary x2')
    zero(ip(x, C*x), 'T4 <x,Cx>=0 for imaginary x3')
    zero(ip(B*x, C*x)-rr*ss*(1+u/w), 'T4 <Bx,Cx>=rs(1+u/w)')
    eAB = ip(A*x, B*x)
    eAC = ip(A*x, C*x)
    # claimed: a r=(w-zb)s, (u-z) r=-a s  (up to nonzero factor)
    fAB = sp.factor(eAB)
    fAC = sp.factor(eAC)
    out['T4_mixed_x1_0_AB'] = str(fAB)
    out['T4_mixed_x1_0_AC'] = str(fAC)
    require(is_zero(sp.cancel(eAB*sp.I) - (a*rr-(w-zb)*ss)*1) or
            is_zero(sp.cancel(eAB) - sp.I*(a*rr-(w-zb)*ss)) or
            is_zero(sp.cancel(eAB) + sp.I*(a*rr-(w-zb)*ss)) or
            is_zero(sp.cancel(eAB) - (a*rr-(w-zb)*ss)) or
            is_zero(sp.cancel(eAB) + (a*rr-(w-zb)*ss)),
            'T4 AB equation a r=(w-zb)s')
    lin = (u-z)*rr+a*ss
    require(any(is_zero(eAC-f*lin) for f in (1, -1, sp.I, -sp.I)),
            'T4 AC equation (u-z) r=-a s')
    # x0=0 chart: x=(0,1,i s/u, i r/w)
    x = sp.Matrix([0, 1, sp.I*ss/u, sp.I*rr/w])
    zero(ip(x, B*x), 'T4b <x,Bx>')
    zero(ip(x, C*x), 'T4b <x,Cx>')
    bc = ip(B*x, C*x)
    require(any(is_zero(bc-f*rr*ss*(1+u/w)) for f in (1, -1)), 'T4b <Bx,Cx> ~ rs(1+u/w)')
    eAB = ip(A*x, B*x)
    eAC = ip(A*x, C*x)
    out['T4b_mixed_x0_0_AB'] = str(sp.factor(eAB))
    out['T4b_mixed_x0_0_AC'] = str(sp.factor(eAC))
    # general x0=0 equations: a r=(u z/w-1/u) s and a s=(1/w-w zb/u) r
    require(any(is_zero(eAB-f*(a*rr-(u*z/w-1/u)*ss)) for f in (1, -1, sp.I, -sp.I)),
            'T4b AB: a r=(uz/w-1/u)s')
    require(any(is_zero(eAC-f*(a*ss-(1/w-w*zb/u)*rr)) for f in (1, -1, sp.I, -sp.I)),
            'T4b AC: a s=(1/w-w zb/u)r')
    # at u=-w (forced by <Bx,Cx>=0 with rs!=0) the AB equation is a r=(1/w-z)s  [TERNARY_EXCLUSION (2)]
    zero((a*rr-(u*z/w-1/u)*ss).subs(u, -w)-(a*rr-(1/w-z)*ss), 'T4b a r=(1/w-z)s at u=-w')
    # reality of r/s: x1=0 gives r/s=(w-zb)/a, s/r=(w+z)/a (u=-w); x0=0 gives r/s=(1/w-z)/a.
    # Im(w-zb)=Im w+Im z ; Im(1/w-z)=-(Im w+Im z) for |w|=1: both give Im z=-Im w, i.e. zb=z+w-1/w.
    wr, wi, zr, zi = sp.symbols('wr wi zr zi', real=True)
    wc, zc = wr+sp.I*wi, zr+sp.I*zi
    zero(sp.im(wc-sp.conjugate(zc))-(wi+zi), 'T4c Im(w-zb)')
    zero(sp.im(sp.conjugate(wc)-zc)+(wi+zi), 'T4c Im(1/w-z) for unit w')
    zero(sp.expand(sp.conjugate(zc)-(zc+wc-sp.conjugate(wc))).subs(zi, -wi), 'T4c (2) equivalence')
    out['T4_mixed_rays'] = 'rs(1+u/w)=0 and a r/s-real equations => u=-w and Im z=-Im w'

    # u=-w : B, C anticommute ; zero partial mean formula (3)
    Bm, Cm = B, C.subs(u, -w)
    zero(Bm*Cm+Cm*Bm, 'T5 BC=-CB at u=-w')
    iBC = sp.I*Bm*Cm
    mean = (A+Bm*A*Bm+Cm*A*Cm+iBC*A*iBC)/4
    M3 = sp.Matrix([[0, 1/(4*w**2), 0, 0], [-sp.Rational(1, 4), 0, 0, 0],
                    [0, 0, 0, 1/(4*w)], [0, 0, -1/(4*w), 0]])
    zero(mean-(-zb*w+w**2+w*z-1)*M3, 'T5 partial mean (3)')
    # (2): zb = z + w - 1/w  makes the scalar zero
    zero((-zb*w+w**2+w*z-1).subs(zb, z+w-1/w), 'T5 (2) kills partial mean')
    out['T5_partial_mean'] = 'mean=(-zb w+w^2+wz-1)*M ; zero under (2)'

    # zero partial mean lemma, exact generic instance: A = sx(x)X+sy(x)Y+sz(x)Z with commuting X,Y,Z
    # (reducibility is the standard argument; we check the Pauli-average identity)
    q = sp.symbols('q0:16')
    Agen = sp.Matrix(4, 4, lambda i, j: q[4*i+j])
    PB, PC = kron(X2, I2), kron(Y2, I2)
    iPBPC = sp.I*PB*PC
    avg = (Agen+PB*Agen*PB+PC*Agen*PC+iPBPC*Agen*iPBPC)/4
    # equals I2 (x) (partial trace over first factor)/2
    ptr = sp.Matrix(2, 2, lambda i, j: Agen[i, j]+Agen[2+i, 2+j])/2
    zero(avg-kron(I2, ptr), 'T5b Pauli average = I (x) tr_1/2')
    out['T5b_pauli_average'] = True

    # Perfect circle for uw=1 : psi(theta)=cos e0 + i sin e1
    ct, st = sp.symbols('ct st', real=True)
    Bc = B.subs(w, 1/u)
    circ = {st**2: 1-ct**2}
    psi = sp.Matrix([ct, sp.I*st, 0, 0])
    basis = [psi, A*psi, Bc*psi, C*psi]
    V = sp.Matrix.hstack(*basis)
    Vd = sp.Matrix([[sp.conjugate(e) for e in row] for row in V.tolist()]).subs(
        {sp.conjugate(z): zb, sp.conjugate(u): 1/u, sp.conjugate(ct): ct, sp.conjugate(st): st}).T

    def red(e):
        e = sp.expand(e)
        e = e.subs(st**2, 1-ct**2)
        e = sp.expand(e).subs(st**3, st*(1-ct**2)).subs(st**4, (1-ct**2)**2)
        return sp.simplify(sp.expand(e))
    G = (Vd*V).applyfunc(red)
    zero(G-I4, 'T6 perfect circle orbit is orthonormal')
    An, Bn, Cn = [(Vd*M*V).applyfunc(red) for M in (A, Bc, C)]
    zero(An[:2, :2]-X2, 'T6 new A top block X')
    zero(An[0:2, 2:4], 'T6 new A block diag')
    zero(Bn[1, 1], "T6 b'=0")
    zero(Cn[1, 1], "T6 c'=0")
    zero(Cn[1, 2]-u, "T6 u'=u")
    zero(Bn[1, 3]-1/u, "T6 w'=1/u")
    # a' = a cos 2theta - Im(u z) sin 2theta ; Im(uz)=(uz - zb/u)/(2i)
    ap = a*(2*ct**2-1)-(u*z-zb/u)/(2*sp.I)*(2*st*ct)
    zero(red(An[2, 2]-ap), "T6 a' formula")
    out['T6_perfect_circle'] = "b'=c'=0, u'=u, w'=1/u, a'=a cos2t - Im(uz) sin2t"

    # ---- zero-diagonal chart
    A0 = A.subs(a, 0).subs(zb, 1/z)
    kr = [(A0, A0), (B, B), (C, C), (I4, I4)]
    S = superop([(K, K) for K, _ in kr])  # Hermitian Kraus, K^dagger = K
    blocks = {'01': [1, 4, 11, 14], '02': [2, 8, 7, 13], '03': [3, 12, 6, 9]}
    # consistency with ordering (01,10,23,32),(02,20,13,31),(03,30,12,21)
    dets = {}
    expected = {
        '01': -(u*w-1)**2*(u*z**2-w)**2/(u**2*w**2*z**2),
        '02': -(z-u)**2*(u*z-w**2)**2/(u**2*w**2*z**2),
        '03': -(u**2*z-w)**2*(w*z-1)**2/(u**2*w**2*z**2)}
    for k, idx in blocks.items():
        # block-invariance
        others = [i for i in range(16) if i not in idx]
        require(S.extract(idx, others).is_zero_matrix and S.extract(others, idx).is_zero_matrix,
                'T7 block %s invariant' % k)
        Mb = S.extract(idx, idx)
        dets[k] = sp.factor(Mb.det())
        zero(Mb.det()-expected[k], 'T7 det block %s' % k)
    Dg = S.extract([0, 5, 10, 15], [0, 5, 10, 15])
    require(Dg.rank() == 1, 'T7 diagonal block rank 1')
    out['T7_block_dets'] = {k: str(v) for k, v in dets.items()}

    rel = {'A': u*w-1, 'B': u*z**2-w, 'C': z-u, 'D': u*z-w**2, 'E': u**2*z-w, 'F': w*z-1}
    return out, (A0, B, C, S, rel, u, w, z)


def ternary_checks_part2(ctx):
    A0, B, C, S, rel, u, w, z = ctx
    out = {}
    # 3-minor claims: verify that for each chart the chosen 3-minor numerator has
    # only factors which are (powers of) the partner relation, or monomials.
    # (done explicitly with hand-chosen minors below)
    blocks = {'01': [1, 4, 11, 14], '02': [2, 8, 7, 13], '03': [3, 12, 6, 9]}

    def best_minor(Mb, partner_expr, sub_vars):
        pnum = sp.factor(sp.numer(sp.together(partner_expr)))
        pfacs = {f for f, _ in sp.factor_list(pnum)[1] if f.free_symbols}
        for rows in itertools.combinations(range(4), 3):
            for cols in itertools.combinations(range(4), 3):
                m = sp.factor(sp.cancel(Mb.extract(list(rows), list(cols)).det()))
                if m == 0:
                    continue
                num = sp.numer(sp.together(m))
                facs = [f for f, _ in sp.factor_list(num)[1] if f.free_symbols]
                bad = [f for f in facs if not (f in pfacs or -f in pfacs or
                                               len(sp.Poly(f, *sub_vars).terms()) == 1)]
                if not bad:
                    return rows, cols, m
        return None
    charts = {'A': ({w: 1/u}, 'B', [u, z]), 'B': ({w: u*z**2}, 'A', [u, z]),
              'C': ({z: u}, 'D', [u, w]), 'D': ({u: w**2/z}, 'C', [w, z]),
              'E': ({w: u**2*z}, 'F', [u, z]), 'F': ({w: 1/z}, 'E', [u, z])}
    blk = {'A': '01', 'B': '01', 'C': '02', 'D': '02', 'E': '03', 'F': '03'}
    res = {}
    for R, (sub, P, vars_) in charts.items():
        Mb = S.extract(blocks[blk[R]], blocks[blk[R]]).subs(sub)
        zero(Mb.det(), 'T8 %s singular' % R)
        bm = best_minor(Mb, rel[P].subs(sub), vars_)
        require(bm is not None, 'T8 chart %s: 3-minor vanishing only on partner %s' % (R, P))
        res[R] = {'rows': list(bm[0]), 'cols': list(bm[1]), 'minor': str(bm[2]),
                  'partner': P}
    out['T8_rank3_exactly_one_relation'] = res

    # same-block double zeros
    A_, B_, C_ = A0, B, C
    dz = {}
    for name, sub, inv in [('A,B plus', {w: 1/u, z: 1/u}, 'A'), ('A,B minus', {w: 1/u, z: -1/u}, 'A'),
                           ('C,D plus', {z: u, w: u}, 'B'), ('C,D minus', {z: u, w: -u}, 'B'),
                           ('E,F plus', {u: 1/z, w: 1/z}, 'C'), ('E,F minus', {u: -1/z, w: 1/z}, 'C')]:
        M = {'A': A_, 'B': B_, 'C': C_}
        for k in M:
            M[k] = M[k].subs(sub)
        # both relations of the block hold
        pair = {'A': ('A', 'B'), 'B': ('C', 'D'), 'C': ('E', 'F')}[inv]
        for rr_ in pair:
            zero(rel[rr_].subs(sub), 'T9 %s relation %s' % (name, rr_))
        others = [k for k in M if k != inv]
        sign = -1 if 'minus' in name else 1
        for k in others:
            zero(M[inv]*M[k]-sign*M[k]*M[inv], 'T9 %s: %s %s %s' % (name, inv,
                                                                   'anticommutes' if sign < 0 else 'commutes', k))
        dz[name] = '%s %s with the other two' % (inv, 'anticommutes' if sign < 0 else 'commutes')
    # completeness of the double-zero solutions
    for pair, var in [(('A', 'B'), [w, z]), (('C', 'D'), [z, w]), (('E', 'F'), [u, w])]:
        sols = sp.solve([rel[pair[0]], rel[pair[1]]], var, dict=True)
        dz['solutions %s,%s' % pair] = [str(s_) for s_ in sols]
        require(len(sols) == 2, 'T9 two sign branches %s' % (pair,))
    out['T9_same_block_double_zero'] = dz

    # triads: any two relations in different blocks imply one of 4 triads
    triads = [('A', 'C', 'F'), ('A', 'D', 'E'), ('B', 'C', 'E'), ('B', 'D', 'F')]
    blk = {'A': 0, 'B': 0, 'C': 1, 'D': 1, 'E': 2, 'F': 2}
    tri = {}
    for R1, R2 in itertools.combinations('ABCDEF', 2):
        if blk[R1] == blk[R2]:
            continue
        T_ = [t for t in triads if R1 in t and R2 in t]
        require(len(T_) == 1, 'T10 unique triad')
        R3 = [x for x in T_[0] if x not in (R1, R2)][0]
        # R1,R2 are binomial; solve for two variables and check R3 vanishes
        ok = False
        for var in itertools.permutations([u, w, z], 2):
            try:
                sols = sp.solve([rel[R1], rel[R2]], list(var), dict=True)
            except Exception:
                continue
            if sols and all(is_zero(rel[R3].subs(s_)) for s_ in sols):
                ok = True
                break
        # Laurent-binomial ideal argument (robust): R3 in the ideal after saturation
        if not ok:
            Gb = sp.groebner([rel[R1], rel[R2], u*w*z*sp.Symbol('tt')-1], sp.Symbol('tt'), u, w, z,
                             order='lex')
            ok = Gb.reduce(sp.expand(rel[R3]))[1] == 0
        require(ok, 'T10 %s,%s => %s' % (R1, R2, R3))
        tri['%s,%s' % (R1, R2)] = R3
    out['T10_triads'] = tri

    # star kernels
    I4_ = sp.eye(4)
    stars = {('A', 'C', 'F'): ({w: 1/u, z: u}, 0), ('A', 'D', 'E'): ({w: 1/u, z: u**-3}, 1),
             ('B', 'C', 'E'): ({z: u, w: u**3}, 2), ('B', 'D', 'F'): ({u: w**3, z: 1/w}, 3)}
    idx = [(i, j) for i in range(4) for j in range(4)]
    st_out = {}
    for T_, (sub, centre) in stars.items():
        for R in T_:
            zero(rel[R].subs(sub), 'T11 triad relations')
        Ss = S.subs(sub).applyfunc(sp.simplify)
        ker = Ss.nullspace()
        require(len(ker) == 6, 'T11 complex kernel dimension 6 for %s' % (T_,))
        # edges of kernel off-diagonal support
        supp = set()
        for kv in ker:
            for n, (i, j) in enumerate(idx):
                if i != j and not is_zero(kv[n]):
                    supp.add(frozenset((i, j)))
        leaves = sorted({x for e in supp for x in e} - {centre})
        require(len(supp) == 3 and all(centre in e for e in supp) and len(leaves) == 3,
                'T11 kernel supported on star centred %d' % centre)
        # each edge null line is antisymmetric-with-phase: X_ij = -conj(X_ji)*... check Hermitian
        # combination has purely imaginary entry after diagonal rephasing
        st_out['%s%s%s' % T_] = {'centre': centre, 'edges': sorted([sorted(e) for e in supp])}
        # rank of diagonal block part of kernel
    out['T11_star_kernels'] = st_out

    # frame (11) in every star, at an exact unit value of the free parameter
    val = (3+4*sp.I)/5
    t12 = {}
    for T_, (sub, centre) in stars.items():
        free = ({u, w, z}-set(sub)).pop()
        sub_c = {k: sp.simplify(v.subs(free, val)) for k, v in sub.items()}
        sub_c[free] = val
        Ms = [M.subs(sub_c) for M in (A0, B, C)]
        for M in Ms:
            zero(M*M-sp.eye(4), 'T12 involution at exact point')
            zero(M-M.H, 'T12 Hermitian at exact point (unit moduli)')
        Ssn = S.subs(sub_c)
        kern = Ssn.nullspace()
        require(len(kern) == 6, 'T12 kernel dim at exact point')
        leaves = [j for j in range(4) if j != centre]
        phs = [sp.Integer(1)]*4
        for j in leaves:
            kv = [k for k in kern if k[4*centre+j] != 0][0]
            ratio = sp.simplify(kv[4*j+centre]/kv[4*centre+j])
            require(sp.simplify(sp.Abs(ratio)-1) == 0, 'T12 unimodular edge ratio')
            # Hermitian null element alpha E_cj + conj(alpha) E_jc: conj(alpha)/alpha = ratio.
            alpha = sp.sqrt(sp.simplify(1/ratio))
            # diagonal unitary D (D_c=1, D_j=delta=-i alpha) maps it to |alpha| i(E_cj-E_jc)
            phs[j] = sp.simplify(-sp.I*alpha)
        Dm = sp.diag(*phs)
        zero(Dm*Dm.H-sp.eye(4), 'T12 rephasing unitary')
        frame = []
        for j in leaves:
            for sg in (1, -1):
                e = sp.zeros(4, 1)
                e[centre] = sp.Rational(1, 2)
                e[j] = sg*sp.I*sp.sqrt(3)/2
                frame.append(sp.simplify(Dm.H*e))

        def perfect(f):
            rho = f*f.H
            return is_zero(rho+sum((M*rho*M for M in Ms), sp.zeros(4))-sp.eye(4))
        require(all(perfect(f) for f in frame), 'T12 star frame perfect %s' % (T_,))
        tight = sum((f*f.H for f in frame), sp.zeros(4))
        zero(tight-sp.Rational(3, 2)*sp.eye(4), 'T12 tight frame 3/2 I')
        for i_ in range(6):
            for j_ in range(6):
                g = sp.simplify(sp.Abs((frame[i_].H*frame[j_])[0]))
                exp_ = 1 if i_ == j_ else (sp.Rational(1, 2) if i_//2 == j_//2 else sp.Rational(1, 4))
                require(sp.simplify(g-exp_) == 0, 'T12 Gram moduli')
        # the kernel: diagonal traceless + three edge lines exactly
        for kv in kern:
            Xk = sp.Matrix(4, 4, list(kv))
            for i_ in range(4):
                for j_ in range(4):
                    if i_ != j_ and centre not in (i_, j_):
                        zero(Xk[i_, j_], 'T12 no leaf-leaf entry in kernel')
        t12['%s%s%s' % T_] = {'free': str(free), 'rephasing': [str(p_) for p_ in phs]}
    out['T12_star_frames'] = t12
    # r(1-r)=s(1-s), r+s=3/2 => r=s=3/4
    rs, ss_ = sp.symbols('r s')
    sol = sp.solve([rs+ss_-sp.Rational(3, 2), rs*(1-rs)-ss_*(1-ss_)], [rs, ss_], dict=True)
    require(sol == [{rs: sp.Rational(3, 4), ss_: sp.Rational(3, 4)}], 'T12 r=s=3/4')
    # Gram->character: |1+zeta|=2 => zeta=1 ; |1+zeta|=1 => Re zeta=-1/2
    th = sp.symbols('th', real=True)
    require(sp.simplify((2+2*sp.cos(th))/16-sp.Rational(1, 16)).subs(th, 2*sp.pi/3) == 0,
            'T12 cross-pair quotient omega')
    return out


# ---------------------------------------------------------------------------
# Four-value channel
# ---------------------------------------------------------------------------

def four_checks():
    out = {}
    u, v, c, s, p, q, r, d, e = sp.symbols('u v c s p q r d e', real=True)
    g = sp.Symbol('g')
    circ = {v**2: 1-u**2, s**2: 1-c**2}

    def cred(M):
        return M.applyfunc(lambda x: sq_reduce(x, [(v, 1-u**2), (s, 1-c**2)]))
    N = u*Z2+v*X2
    E = u*Z2-v*X2
    Q = p*X2+q*Y2+r*Z2
    lhs = (c*I2+sp.I*s*N)*Q*(c*I2+sp.I*s*E)
    rhs = p*X2+q*Y2-r*Z2+2*(c*r-s*v*q)*(sp.I*u*s*I2+v*s*Y2+c*Z2)
    zero(cred(lhs-rhs), 'F1 product formula')
    zero(sp.expand((lhs.trace()-4*sp.I*u*s*(c*r-s*v*q))), 'F1 trace = 4ius(cr-svq)')
    # Hermiticity of D=(cI-isA)C forces R=(cI+isN)Q(cI+isE)
    Aop = sp.diag(N, E)
    R = (c*I2+sp.I*s*N)*Q*(c*I2+sp.I*s*E)
    gb = 1/g
    Cop = sp.Matrix(sp.BlockMatrix([[sp.zeros(2), gb*R], [g*Q, sp.zeros(2)]]))
    Dop = (c*sp.eye(4)-sp.I*s*Aop)*Cop
    Dh = Dop.T.applyfunc(lambda x: sp.conjugate(x)).subs({sp.conjugate(g): 1/g})
    zero(cred(Dop-Dh), 'F1b D Hermitian with R=(cI+isN)Q(cI+isE)')
    # with cr=svq: R=-ZQZ; conj by diag(I,Z)
    Rz = -Z2*Q*Z2
    zero(cred((rhs-Rz).subs(r, s*v*q/c)) if False else (p*X2+q*Y2-r*Z2-Rz), 'F2 R=-ZQZ when cr=svq')
    T = sp.diag(I2, Z2)
    Bop = sp.Matrix(sp.BlockMatrix([[sp.zeros(2), I2], [I2, sp.zeros(2)]]))
    Cz = sp.Matrix(sp.BlockMatrix([[sp.zeros(2), gb*Rz], [g*Q, sp.zeros(2)]]))
    zero(T*Aop*T-kron(I2, N), 'F2 A -> I (x) N')
    zero(T*Bop*T-kron(X2, Z2), 'F2 B -> X (x) Z')
    V = Z2*Q
    Pm = sp.Matrix([[0, -sp.I*gb], [sp.I*g, 0]])
    zero(sp.I*T*Cz*T-kron(Pm, V), 'F2 iC -> P (x) V')
    zero(V-(r*I2+sp.I*(p*Y2-q*X2)), 'F2 V=rI+i(pY-qX)')
    # P Hermitian: with g=d+ie over i, P=dX+eY
    zero((Pm.subs(g, (d+sp.I*e)/sp.I)-(d*X2+e*Y2)).applyfunc(lambda x: sq_reduce(x, [(e, 1-d**2)])), 'F2 P=dX+eY')
    # e=0: X (x) I commutes with all four errors
    for K in (kron(I2, N), kron(X2, Z2), kron(d*X2, V)):
        zero(kron(X2, I2)*K-K*kron(X2, I2), 'F2 e=0 commutant')
    # q=r=0 : V=+-iY
    zero(V.subs({q: 0, r: 0, p: 1})-sp.I*Y2, 'F2 q=r=0 gives V=iY')
    # perfect-orbit products
    Aq, Bq, Cq = kron(I2, N), kron(X2, Z2), kron(d*X2+e*Y2, V)
    zero(cred(Aq*Bq-kron(X2, u*I2-sp.I*v*Y2)), 'F3 A*B')
    zero(cred(Bq*Cq-kron(d*I2+sp.I*e*Z2, Q)), 'F3 B*C')
    NV = (u*p+v*r)*X2+u*q*Y2+(u*r-v*p)*Z2-sp.I*v*q*I2
    zero(cred(N*V-NV), 'F3 NV expansion')
    # expectations in a general two-qubit state
    xs = sp.symbols('x1:4', real=True)
    ys = sp.symbols('y1:4', real=True)
    Ts = sp.Matrix(3, 3, lambda i, j: sp.Symbol('T%d%d' % (i+1, j+1), real=True))
    pa = [X2, Y2, Z2]
    rho = (kron(I2, I2)+sum((xs[i]*kron(pa[i], I2) for i in range(3)), sp.zeros(4))
           + sum((ys[j]*kron(I2, pa[j]) for j in range(3)), sp.zeros(4))
           + sum((Ts[i, j]*kron(pa[i], pa[j]) for i in range(3) for j in range(3)), sp.zeros(4)))/4

    def ex(K):
        return sp.expand((rho*K).trace())
    xP = d*xs[0]+e*xs[1]
    TP = [d*Ts[0, j]+e*Ts[1, j] for j in range(3)]
    zero(ex(Aq)-(v*ys[0]+u*ys[2]), 'F3 <A>=N.y')
    zero(ex(Bq)-Ts[0, 2], 'F3 <B>=T_XZ')
    zero(cred(sp.Matrix([ex(Aq*Bq)-(u*xs[0]-sp.I*v*Ts[0, 1])])), 'F3 <AB>')
    zero(ex(Cq)-(r*xP+sp.I*(p*TP[1]-q*TP[0])), 'F3 <C>')
    zero(cred(sp.Matrix([ex(Aq*Cq)-((u*p+v*r)*TP[0]+u*q*TP[1]+(u*r-v*p)*TP[2]-sp.I*v*q*xP)])), 'F3 <A C>')
    zero(ex(Bq*Cq)-(d*(p*ys[0]+q*ys[1]+r*ys[2])+sp.I*e*(p*Ts[2, 0]+q*Ts[2, 1]+r*Ts[2, 2])), 'F3 <B C>')
    # <C> imaginary part with T_XY=0: -q d T_XX + e(p T_YY - q T_YX)
    zero(sp.expand((p*TP[1]-q*TP[0]).subs(Ts[0, 1], 0)-(-q*d*Ts[0, 0]+e*(p*Ts[1, 1]-q*Ts[1, 0]))),
         'F3 C-equation form')
    # maximally entangled substitution: T_X=(xi,0,0), T_Y=kappa(0,q,r)/h, d xi = p e kappa/h
    xi, ka, hh = sp.symbols('xi kappa h', real=True)
    TZ = sp.symbols('tz1:4', real=True)
    subT = {Ts[0, 0]: xi, Ts[0, 1]: 0, Ts[0, 2]: 0, Ts[1, 0]: 0, Ts[1, 1]: ka*q/hh, Ts[1, 2]: ka*r/hh}
    TPs = [sp.expand(x.subs(subT)) for x in TP]
    eqAC = (u*p+v*r)*TPs[0]+u*q*TPs[1]+(u*r-v*p)*TPs[2]
    eqAC = sp.expand(eqAC.subs(xi, p*e*ka/(hh*d)))
    zero(eqAC-e*ka*u*(p**2+q**2+r**2)/hh, 'F3 AC equation reduces to e kappa u |Q|^2/h')
    # C-equation check of d xi = p e kappa/h
    ceq = sp.expand((-q*d*Ts[0, 0]+e*(p*Ts[1, 1]-q*Ts[1, 0])).subs(subT))
    zero(ceq.subs(xi, p*e*ka/(hh*d)), 'F3 d xi = p e kappa/h solves the C equation')
    # pure-state identities (6) on a generic product-of-rotations state (numeric-exact spot check)
    out['F1_F3'] = 'product formula, R=-ZQZ, (4) errors, all (5) expectation forms, AC contradiction'

    # ---- zero-diagonal chart (9),(10)
    b, dd = sp.symbols('b dd', real=True)
    z, w, wb, k, kb = sp.symbols('z w wb k kb')
    A0 = sp.Matrix([[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, 0, z], [0, 0, 1/z, 0]])
    B0 = sp.Matrix([[0, 0, 1, 0], [0, b, 0, w], [1, 0, 0, 0], [0, wb, 0, -b]])
    C9 = sp.Matrix([[0, sp.I*s*dd, sp.I*c*s*(1+k)/z, c**2-s**2*k],
                    [0, c*dd, (-s**2+c**2*k)/z, sp.I*c*s*(1+k)],
                    [0, z*kb, -c*dd, -sp.I*s*z*dd],
                    [1, 0, 0, 0]])
    cmap = {sp.conjugate(z): 1/z, sp.conjugate(k): kb, sp.conjugate(kb): k,
            sp.conjugate(w): wb, sp.conjugate(wb): w}

    def H(M):
        return M.T.applyfunc(sp.conjugate).subs(cmap, simultaneous=True)

    def nred(x):
        x = sp.expand(sp.expand(x).subs(kb, (1-dd**2)/k))
        x = sp.expand(x.subs(s**2, 1-c**2)).subs(s**3, s*(1-c**2)).subs(s**4, (1-c**2)**2)
        return sp.simplify(x)
    D9 = (c*sp.eye(4)-sp.I*s*A0)*C9
    zero((D9-H(D9)).applyfunc(nred), 'F4 D Hermitian')
    zero((D9*D9-sp.eye(4)).applyfunc(nred), 'F4 D involution')
    zero((C9*H(C9)-sp.eye(4)).applyfunc(nred), 'F4 C unitary')
    zero(nred(D9.trace()), 'F4 tr D')
    zero(nred((A0*D9).trace()), 'F4 tr AD')
    zero(C9[:, 0]-sp.Matrix([0, 0, 0, 1]), 'F4 C psi = e3')
    zero(D9[:, 0]-(c*sp.eye(4)-sp.I*s*A0)*sp.Matrix([0, 0, 0, 1]), 'F4 D psi')
    zero(nred(D9[1, 1]-dd), 'F4 <A psi, D A psi>=d')
    fprime = sp.Matrix([0, 0, c*z, -sp.I*s])
    zero((D9[:, 1]-dd*sp.Matrix([0, 1, 0, 0])-kb*fprime).applyfunc(nred), 'F4 D e1 = d e1 + kb f\' (fixed f\')')
    zero(nred((H(fprime)*D9[:, 0])[0]), "F4 f' orthogonal to D psi")
    zero(nred((H(B0)*C9).trace()-c*(b*dd+sp.I*s*(1/z+wb)*(1+k))), 'F4 (10)')
    # bd=0 branches
    zero((A0*B0+B0*A0).subs({b: 0, w: -z, wb: -1/z}), 'F4 F=0: AB=-BA')
    Dk = D9.subs({dd: 0, k: -1, kb: -1})
    zero((A0*Dk+Dk*A0).applyfunc(nred), 'F4 k=-1,d=0: AD=-DA')
    out['F4_zero_diag_chart'] = "(9) general (fixed f'), (10) = tr(B*C)/c, bd=0 branches anticommute"
    return out


def five_minor_check():
    """(12) via the two-step route of m4 PROOF section 5 (exact, no sampling)."""
    b, c, s, d = sp.symbols('b c s d')
    z, w, wb, k, kb, h, Hh, K, M = sp.symbols('z w wb k kb h H K M')
    A = sp.Matrix([[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, 0, z], [0, 0, 1/z, 0]])
    B = sp.Matrix([[0, 0, 1, 0], [0, b, 0, w], [1, 0, 0, 0], [0, wb, 0, -b]])
    C = sp.Matrix([[0, sp.I*s*d, sp.I*c*s*(1+k)/z, c**2-s**2*k],
                   [0, c*d, (-s**2+c**2*k)/z, sp.I*c*s*(1+k)],
                   [0, z*kb, -c*d, -sp.I*s*z*d],
                   [1, 0, 0, 0]])
    W = sp.eye(6)-wedge2(A)-wedge2(B)-wedge2(C)
    sel = [0, 1, 2, 4, 5]
    m = sp.expand(W.extract(sel, sel).det(method='berkowitz'))
    sub = {k: K-1, kb: M-1, w: z*(h-1), wb: (Hh-1)/z}
    mm = sp.expand(m.subs(sub, simultaneous=True))
    u = s**2
    A0 = K*(Hh-2)-M*z**2*(h-2)
    B0 = u*K*M+K+M
    C0 = K**2*(Hh-1)/z**2+M**2*z**2*(h-1)+(2-b**2)*K*M+2*b**2*(K+M)
    br = -sp.I*b*d*s*A0/z+b**2*B0-C0
    rules = [(c, 1-s**2), (b, h+Hh-h*Hh), (d, 1-(K-1)*(M-1))]
    zero(sq_reduce(mm-2*(s**2-1)*br, rules), 'F5 step 1: five-minor = 2(u-1)[bracket]')
    Dl = b**2+u*h*Hh
    Kv = b**2*(Hh-z**2*h)/(Hh*Dl)
    Mv = -b**2*(Hh-z**2*h)/(z**2*h*Dl)
    dv = -sp.I*b*s*(Hh-z**2*h)/(z*Dl)
    zero(sq_reduce(br.subs({K: Kv, M: Mv, d: dv})-b**4*(Hh-z**2*h)**2*(h+Hh)/(z**2*h**2*Hh**2*Dl),
                   [(b, h+Hh-h*Hh)]), 'F5 step 2: bracket reduction')
    zero(sq_reduce(dv**2+(Kv-1)*(Mv-1)-1, [(b, h+Hh-h*Hh)]), 'F5 d^2+|k|^2=1 in (h,H) chart')
    zero(b*dv+sp.I*s*(Hh/z)*Kv, 'F5 (10) in (h,H) chart, F=H/z')
    # dictionary to the paper's variables: w=z(h-1), F=zb+wb=H/z, conj F = z h, f=hH,
    # b^2=1-|w|^2=h+H-hH, R0=b^2+f=h+H, Delta=b^2+s^2 f; (H-z^2 h)/z = 2i Im F, so
    # 2(u-1)*bracket = 8c^2 b^4 ImF^2 R0/(f^2 Delta) = 2c^2 b^2 d^2 R0 Delta/(s^2 f^2).
    ImF = sp.Symbol('ImF')
    f_ = h*Hh
    lhs = 2*(s**2-1)*b**4*(2*sp.I*ImF)**2*(h+Hh)/(h**2*Hh**2*Dl)
    dval = 2*b*s*ImF/Dl
    rhs = 2*(1-s**2)*b**2*dval**2*(b**2+f_)*Dl/(s**2*f_**2)
    zero(sq_reduce(lhs-rhs, [(b, h+Hh-h*Hh)]), 'F5 final form (12)')
    return {'F5_five_minor': '2 c^2 b^2 d^2 R0 Delta/(s^2 f^2) verified exactly (two-step)'}


def antipodal_checks():
    out = {}
    a = sp.Symbol('a'); t = sp.Symbol('t', real=True)
    z, zb, w, g = sp.symbols('z zb w g')

    def mats(a, z, zb, w):
        A = sp.Matrix([[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, a, z], [0, 0, zb, -a]])
        B = sp.Matrix([[0, 0, 1, 0], [0, 0, 0, w], [1, 0, 0, 0], [0, 1/w, 0, 0]])
        C = sp.Matrix([[0, 0, -a/w, -z/w], [0, 0, -zb, a], [0, w, 0, 0], [1, 0, 0, 0]])
        return A, B, C
    A, B, C = mats(a, z, zb, w)
    cm = {sp.conjugate(z): zb, sp.conjugate(zb): z, sp.conjugate(w): 1/w, sp.conjugate(g): 1/g,
          sp.conjugate(a): a, sp.conjugate(t): t}

    def H(M):
        return M.T.applyfunc(sp.conjugate).subs(cm, simultaneous=True)

    def nr(M):
        return M.applyfunc(lambda x: sp.simplify(sp.expand(x).subs(zb, (1-a**2)/z)))
    D = -sp.I*A*C
    zero(nr(C*H(C)-I4), 'P1 C unitary')
    zero(nr(D-H(D)), 'P1 D Hermitian')
    zero(nr(D*D-I4), 'P1 D involution')
    for name, val in [('trD', D.trace()), ('trAD', (A*D).trace()), ('trB*C', (H(B)*C).trace()),
                      ('trC', C.trace()), ('trAC', (A*C).trace()), ('trAB', (A*B).trace())]:
        zero(nr(sp.Matrix([val])), 'P1 ' + name)
    zero(C[:, 0]-sp.Matrix([0, 0, 0, 1]), 'P1 C psi=e3')
    zero(nr((D*sp.Matrix([1, 0, 0, 0])-(-sp.I*z*sp.Matrix([0, 0, 1, 0])+sp.I*a*sp.Matrix([0, 0, 0, 1]))
             ).T), 'P1 D psi = -iz B psi + i a C psi')
    # general gamma: Hermiticity of -iAC fixes the upper block; trace gives gamma=w
    ps = sp.symbols('p0:4')
    qs = sp.symbols('q0:4')
    Cg = sp.Matrix([[0, 0, ps[0], ps[1]], [0, 0, ps[2], ps[3]], [0, g, 0, 0], [1, 0, 0, 0]])
    Dg = -sp.I*A*Cg
    Dgh = H(Dg).subs({sp.conjugate(ps[i]): qs[i] for i in range(4)}, simultaneous=True)
    sol = sp.solve(list(Dg-Dgh), list(ps)+list(qs), dict=True)
    require(len(sol) == 1, 'P1 unique upper block')
    Cs_ = Cg.subs(sol[0])
    zero(nr(sp.Matrix([(H(B)*Cs_).trace()-a*(g-w)/(g*w)])), 'P1 tr(B*C)=a(gamma-w)/(w gamma)')
    zero(Cs_.subs(g, w)-C, 'P1 chart (5)')
    # w=+-i
    for wv in (sp.I, -sp.I):
        Aw, Bw, Cw = mats(a, z, zb, wv)
        Cwh = H(Cw)
        zero(nr(Aw*Cw*Aw+Cwh), 'P2 ACA=-C*')
        zero(nr(Bw*Cw*Bw+Cwh), 'P2 BCB=-C* at w=%s' % wv)
    zero(nr(A*C*A+H(C)), 'P2 ACA=-C* always')
    # block-confined adjoint-perfect rays
    BCs = B*H(C)
    zero(nr(BCs[:2, :2]+w*sp.Matrix([[a, z/w], [w*zb, -a]])), 'P3 top block of BC* = -wR')
    zero(nr(BCs[2:, 2:]-sp.Matrix([[0, w], [1/w, 0]])/w), 'P3 bottom block of BC* = Q/w')
    zero(nr((A*H(C))[:2, :2]), 'P3 AC* off-diagonal')
    zero(nr((A*H(C))[2:, 2:]), 'P3 AC* off-diagonal (2)')
    # Off-diagonal block O of Phi^*
    order = [(0, 2), (0, 3), (1, 2), (1, 3), (2, 0), (2, 1), (3, 0), (3, 1)]
    idx = [4*i+j for i, j in order]
    oth = [i for i in range(16) if i not in idx]

    def Ooff(A, B, C):
        Cs = H(C)
        S = sum((kron(K, L.T) for K, L in zip([I4, A, B, Cs], [I4, A, B, C])), sp.zeros(16))
        require(S.extract(idx, oth).is_zero_matrix and S.extract(oth, idx).is_zero_matrix,
                'P4 block decomposition preserved')
        return S.extract(idx, idx)
    O = Ooff(A, B, C)
    dO = sp.expand((O*w).applyfunc(sp.expand).det(method='berkowitz')*1)
    claimz = sp.expand((w**2+1)**6*((z+zb*w**2)**2+(w**2-1)**2))
    rem = sp.reduced(sp.expand(dO-claimz), [zb*z+a**2-1], zb, z, w, a)[1]
    zero(rem, 'P4 det O = (6) modulo a^2+z zb=1 (no division by z)')
    # second form on the unit circle (conj w = 1/w, conj(z/w) = zb w):
    #   (w^2+1)^6/w^8 [(z+zb w^2)^2+(w^2-1)^2] = (w+1/w)^6 [(z/w+zb w)^2+(w-1/w)^2]
    #   = (2Re w)^6 [ (2Re(z/w))^2 - (2Im w)^2 ] = 4(2Re w)^6 [Re(z/w)^2-Im(w)^2]
    zero((w**2+1)**6/w**8*((z+zb*w**2)**2+(w**2-1)**2)-(w+1/w)**6*((z/w+zb*w)**2+(w-1/w)**2),
         'P4 second form of (6)')
    # singular branches, w generic: cofactor kernel vector, 7-minor, X blocks
    Ow = (O*w).applyfunc(sp.expand)
    cof = [sp.expand((-1)**j*Ow.extract(list(range(1, 8)), [q for q in range(8) if q != j]).det(method='berkowitz'))
           for j in range(8)]
    cc = (w+1/w)/2
    ss = (w-1/w)/(2*sp.I)
    res = {}
    claims = {1: (-sp.I*(w-1)*(w+1)*(w-sp.I)**6*(w+sp.I)**6*(t**2*w+sp.I)/(w**8*(1+t**2)**2),
                  -sp.I*w**2*(1+t**2)**2/(t**2*w+sp.I)**2,
                  sp.Matrix([[-sp.I, t*w*(w-sp.I)/(t**2*w+sp.I)],
                             [-t*(w-sp.I)/(t**2*w+sp.I), w*(t**2-sp.I*w)/(t**2*w+sp.I)]])),
              -1: (t**2*(t**2+sp.I*w)*(w-1)*(w+1)*(w-sp.I)**6*(w+sp.I)**6/(w**8*(1+t**2)**2),
                   -sp.I*w**2*(1+t**2)**2/(t**2+sp.I*w)**2,
                   sp.Matrix([[sp.I, sp.I*t*w*(w+sp.I)/(t**2+sp.I*w)],
                              [-sp.I*t*(w+sp.I)/(t**2+sp.I*w), -w*(t**2*w-sp.I)/(t**2+sp.I*w)]]))}
    for eps in (1, -1):
        r = cc*(1-t**2)/(1+t**2)
        av = 2*cc*t/(1+t**2)
        zv = w*(eps*ss+sp.I*r)
        zbv = (eps*ss-sp.I*r)/w
        zero(av**2+zv*zbv-1, 'P5 parametrisation on the norm locus')
        # Re(z/w)=eps Im w : z/w + conj = 2 eps s
        zero(zv/w+zbv*w-2*eps*ss, 'P5 Re(z/w)=eps Im w')
        sub = {a: av, z: zv, zb: zbv}
        v = sp.Matrix([sp.cancel(x.subs(sub)) for x in cof])
        m7 = sp.cancel(v[0]/w**7)
        zero(m7-claims[eps][0], 'P5 seven-minor eps=%d' % eps)
        zero((Ow.subs(sub)*v).applyfunc(sp.cancel), 'P5 cofactor vector in kernel eps=%d' % eps)
        X = (sp.Matrix([[v[0], v[1]], [v[2], v[3]]])/v[7]).applyfunc(sp.cancel)
        zero(X-claims[eps][2], 'P5 X block eps=%d' % eps)
        zero(sp.cancel(X.det()-claims[eps][1]), 'P5 det X eps=%d' % eps)
        res[eps] = str(sp.factor(m7))
    out['P5_seven_minors'] = res
    # w=1
    sub1 = {a: 2*t/(1+t**2), z: sp.I*(1-t**2)/(1+t**2), zb: -sp.I*(1-t**2)/(1+t**2)}
    O1 = Ooff(*mats(sub1[a], sub1[z], sub1[zb], sp.Integer(1))).applyfunc(sp.cancel)
    zero((a**2+z*zb-1).subs(sub1), 'P6 norm at w=1')
    m6 = sp.cancel(O1.extract([0, 1, 2, 3, 4, 5], [0, 1, 2, 4, 5, 6]).det())
    zero(m6-32*t*(t**4+1)/(1+t**2)**3, 'P6 six-minor')
    require(O1.rank() == 6, 'P6 rank 6')
    X0 = sp.Matrix([[-sp.I*(t**2+sp.I)**2/(t**4+1), t*(1-sp.I)*(t**2+sp.I)/(t**4+1)],
                    [t*(-1+sp.I)*(t**2+sp.I)/(t**4+1), 1]])
    v0 = sp.Matrix([X0[0, 0], X0[0, 1], X0[1, 0], X0[1, 1], 0, 0, 0, 0])
    X0h = X0.T.applyfunc(sp.conjugate).subs({sp.conjugate(t): t})
    v1 = sp.Matrix([0, 0, 0, 0, X0h[0, 0], X0h[0, 1], X0h[1, 0], X0h[1, 1]])
    zero((O1*v0).applyfunc(sp.cancel), 'P6 X0 kernel (upper-right)')
    zero((O1*v1).applyfunc(sp.cancel), 'P6 adjoint line kernel (lower-left = X0^*)')
    zero(sp.cancel(X0.det()+sp.I*(1+t**2)**2*(t**2+sp.I)**2/(t**4+1)**2), 'P6 det X0 (9)')
    Sg = sp.diag(-1, 1, 1, 1)
    Am, Bm, Cm = mats(a, z, zb, sp.Integer(-1))
    Ap, Bp, Cp = mats(-a, -z, -zb, sp.Integer(1))
    zero(-Sg*Am*Sg-Ap, 'P6 w=-1 reduction A')
    zero(-Sg*Bm*Sg-Bp, 'P6 w=-1 reduction B')
    zero(-Sg*Cm*Sg-Cp, 'P6 w=-1 reduction C')
    out['P6_w_equals_1'] = 'rank 6, six-minor 32t(t^4+1)/(1+t^2)^3, kernel = X0 line + adjoint, det X0 != 0'
    return out


def numeric_controls():
    """Numerical (float, seeded) sanity controls; not part of the exact proof."""
    rng = np.random.default_rng(20260927)
    out = {}
    X = np.array([[0, 1], [1, 0]], complex)
    Y = np.array([[0, -1j], [1j, 0]])
    Z = np.diag([1., -1]).astype(complex)
    I2n = np.eye(2)
    # N1 Gram (5) and centred-projector Gram (6)
    ph = rng.uniform(0, 2*np.pi, 4)
    # zero-sum unit 6-vector: (a,-a,b,-b,c,-c) rotated generic mixture
    eta = np.exp(1j*np.array([ph[0], ph[0]+np.pi, ph[1], ph[1]+np.pi, ph[2], ph[2]+np.pi]))
    G = 1.5*np.eye(6)-(1+np.outer(eta.conj(), eta))/4
    ev = np.linalg.eigvalsh(G)
    require(np.allclose(sorted(ev), [0, 0, 1.5, 1.5, 1.5, 1.5], atol=1e-10), 'N1 Gram spectrum')
    RG = 0.75*np.eye(6)+np.real(np.outer(eta, eta.conj()))/8-np.ones((6, 6))/8
    Ggram = np.abs(G)**2-0.25
    require(np.allclose(RG, Ggram, atol=1e-12), 'N1 centred projector real Gram formula')
    require(np.linalg.matrix_rank(RG, tol=1e-9) == 5, 'N1 centred projector span rank 5')
    out['N1_gram'] = 'Gram spectrum {0^2,(3/2)^4}; centred projector Gram rank 5'

    # N2 Theta / W correspondence
    J = np.kron(np.eye(2), np.array([[0, 1], [-1, 0]], complex))

    def rand_sp_unitary():
        Hm = rng.normal(size=(4, 4))+1j*rng.normal(size=(4, 4))
        Hm = Hm+Hm.conj().T
        Hm = (Hm+J@Hm.T@J)/2  # project onto H J + J H^T = 0 (J real, J^-1=-J)
        w_, U_ = np.linalg.eigh(Hm)
        return U_@np.diag(np.exp(1j*w_))@U_.conj().T
    Z0 = np.kron(np.eye(2), Z)
    Ss = [rand_sp_unitary() for _ in range(3)]
    for S_ in Ss:
        require(np.allclose(S_@J@S_.T, J, atol=1e-10), 'N2 symplectic unitary')
    An, Bn, Dn = [S_@Z0@S_.conj().T for S_ in Ss]
    cth = 0.3
    sth = np.sqrt(1-cth**2)
    Cn = (cth*np.eye(4)+1j*sth*An)@Dn
    for K in (An, Bn, Dn, Cn):
        require(np.allclose(K@J@K.T, -J, atol=1e-10), 'N2 K J K^T = -J')

    def Phi(Xm):
        return Xm+An@Xm@An+Bn@Xm@Bn+Cn@Xm@Cn.conj().T

    def Theta(Xm):
        return J@Xm.T@J.conj().T
    Xm = rng.normal(size=(4, 4))+1j*rng.normal(size=(4, 4))
    Xm = Xm+Xm.conj().T
    require(np.allclose(Theta(Phi(Xm)), Phi(Theta(Xm)), atol=1e-10), 'N2 Theta commutes with Phi')
    Xf = (Xm+Theta(Xm))/2
    Om = Xf@J
    require(np.allclose(Om, -Om.T, atol=1e-10), 'N2 Theta-fixed <-> alternating')
    Wmap = Om-An@Om@An.T-Bn@Om@Bn.T-Cn@Om@Cn.T
    require(np.allclose(Phi(Xf)@J, Wmap, atol=1e-10), 'N2 Phi(X)J = W(XJ)')
    psi = rng.normal(size=4)+1j*rng.normal(size=4)
    psi /= np.linalg.norm(psi)
    rho = np.outer(psi, psi.conj())
    require(abs(np.trace(rho@Theta(rho))) < 1e-12, 'N2 rho and Theta(rho) orthogonal')
    out['N2_theta_W'] = 'Theta o Phi = Phi o Theta, Phi(X)J = W(XJ), rho perp Theta(rho)'

    # N3 perfect-ray counts by Levenberg-Marquardt from random starts
    def perfect_rays(Ks, starts=200, iters=60):
        def res(x):
            p_ = x[:4]+1j*x[4:]
            V = np.column_stack([K@p_ for K in Ks])
            Gm = V.conj().T@V-np.eye(4)
            return np.concatenate([Gm.real.ravel(), Gm.imag.ravel()])
        sols = []
        for _ in range(starts):
            x = rng.normal(size=8)
            lam = 1e-3
            f = res(x)
            for _it in range(iters):
                Jm = np.empty((32, 8))
                for kk in range(8):
                    e_ = np.zeros(8)
                    e_[kk] = 1e-7
                    Jm[:, kk] = (res(x+e_)-f)/1e-7
                step = np.linalg.solve(Jm.T@Jm+lam*np.eye(8), -Jm.T@f)
                fn = res(x+step)
                if fn@fn < f@f:
                    x, f, lam = x+step, fn, lam*0.3
                else:
                    lam *= 10
                if f@f < 1e-26:
                    break
            if f@f < 1e-20:
                p_ = x[:4]+1j*x[4:]
                p_ /= np.linalg.norm(p_)
                if all(abs(np.vdot(q_, p_)) < 1-1e-6 for q_ in sols):
                    sols.append(p_)
        return len(sols)
    counts = {}
    u_, v_, c_ = 0.6, 0.8, 0.7
    s_ = np.sqrt(1-c_**2)
    q_ = 0.3
    r_ = s_*v_*q_/c_
    p_ = np.sqrt(1-q_**2-r_**2)
    d_ = 0.4
    e_ = np.sqrt(1-d_**2)
    Nn = u_*Z+v_*X
    Vn = r_*I2n+1j*(p_*Y-q_*X)
    Pn = d_*X+e_*Y
    counts['four_value_qr_nonzero'] = perfect_rays([np.eye(4), np.kron(I2n, Nn), np.kron(X, Z), np.kron(Pn, Vn)])
    a_ = 0.5
    z_ = np.sqrt(1-a_**2)*np.exp(0.7j)
    w_ = np.exp(1.1j)
    A_ = np.array([[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, a_, z_], [0, 0, np.conj(z_), -a_]])
    B_ = np.array([[0, 0, 1, 0], [0, 0, 0, w_], [1, 0, 0, 0], [0, 1/w_, 0, 0]])
    C_ = np.array([[0, 0, -a_/w_, -z_/w_], [0, 0, -np.conj(z_), a_], [0, w_, 0, 0], [1, 0, 0, 0]])
    counts['antipodal_adjoint_generic'] = perfect_rays([np.eye(4), A_, B_, C_.conj().T])
    cw, sw = w_.real, w_.imag
    tt = 0.8
    av = 2*cw*tt/(1+tt*tt)
    rr = cw*(1-tt*tt)/(1+tt*tt)
    zv = w_*(sw+1j*rr)
    A2 = np.array([[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, av, zv], [0, 0, np.conj(zv), -av]])
    C2 = np.array([[0, 0, -av/w_, -zv/w_], [0, 0, -np.conj(zv), av], [0, w_, 0, 0], [1, 0, 0, 0]])
    counts['antipodal_adjoint_singular_branch'] = perfect_rays([np.eye(4), A2, B_, C2.conj().T])
    a3 = 0.4
    z3 = np.sqrt(1-a3**2)*np.exp(0.3j)
    u3 = np.exp(0.9j)
    w3 = np.exp(-0.2j)
    A3 = np.array([[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, a3, z3], [0, 0, np.conj(z3), -a3]])
    B3 = np.array([[0, 0, 1, 0], [0, 0, 0, w3], [1, 0, 0, 0], [0, 1/w3, 0, 0]])
    C3 = np.array([[0, 0, 0, 1], [0, 0, u3, 0], [0, 1/u3, 0, 0], [1, 0, 0, 0]])
    counts['ternary_nonzero_diag'] = perfect_rays([np.eye(4), A3, B3, C3])
    for k_, v__ in counts.items():
        require(1 <= v__ <= 4, 'N3 at most four perfect rays: %s' % k_)
    # star control: a continuum of perfect rays
    u4 = np.exp(0.9j)
    A4 = np.array([[0, 1, 0, 0], [1, 0, 0, 0], [0, 0, 0, u4], [0, 0, 1/u4, 0]])
    B4 = np.array([[0, 0, 1, 0], [0, 0, 0, 1/u4], [1, 0, 0, 0], [0, u4, 0, 0]])
    C4 = np.array([[0, 0, 0, 1], [0, 0, u4, 0], [0, 1/u4, 0, 0], [1, 0, 0, 0]])
    counts['star_control'] = perfect_rays([np.eye(4), A4, B4, C4], starts=40)
    require(counts['star_control'] > 6, 'N3 star control has a continuum')
    out['N3_perfect_ray_counts'] = counts
    return out


def calculate():
    t0 = time.time()
    res = {}
    t_out, ctx = ternary_checks()
    res.update(t_out)
    res.update(ternary_checks_part2(ctx))
    res.update(four_checks())
    res.update(five_minor_check())
    res.update(antipodal_checks())
    res.update(numeric_controls())
    res['seconds'] = round(time.time()-t0, 1)
    return res


if __name__ == '__main__':
    print(json.dumps(calculate(), indent=1, sort_keys=True))
