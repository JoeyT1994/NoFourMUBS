#!/usr/bin/env python3
"""Exact controls for CovarianceContraction.md.

Run with cwd = this folder:  python3 CovarianceContraction.py
Exits nonzero on failure. Nothing is read from or written to disk.

Part A recomputes, from scratch, N_full for the exact product triangle
I, H2(x)F3, [[1,1],[i,-i]](x)(dF3) (a zero3 control, outside the quartet
domain), and checks the map identities (2)-(5), (7), (11) and (13)'s constants
on it. Part B replays the controls of the full-minor completion lemma.
Part C contains the small dimension-4 and qutrit controls of the contraction
note. None of this is a census; the universal statements are the written proofs.
"""
import itertools as it
import json
import sympy as s
from sympy.polys.matrices import DomainMatrix as D

checks = []


def need(name, ok):
    if not bool(ok):
        raise AssertionError(name)
    checks.append(name)


F = s.QQ.algebraic_field(s.sqrt(3), s.I)
CG = F.from_sympy(s.conjugate(F.ext.as_expr()))


def dm(a):
    return D.from_Matrix(s.Matrix(a)).convert_to(F).to_dense()


def scalar(a):
    return F.from_sympy(s.sympify(a))


def conj_entry(v):
    out = F.zero
    for c in v.to_list():
        out = out*CG+F.convert(c, s.QQ)
    return out


def adj(a):
    return D([[conj_entry(v) for v in row] for row in a.to_list()], a.shape, F).transpose()


def tr(a):
    return sum((a[i, i].element for i in range(a.shape[0])), F.zero)


def add(xs, n=6):
    return sum(xs, dm(s.zeros(n)))


def comm(X, Y):
    return X*Y-Y*X


# ---------------------------------------------------------------- Part A
w = (-1+s.I*s.sqrt(3))/2
f3 = s.Matrix([[s.expand(w**(i*j)) for j in range(3)] for i in range(3)])
dph = s.diag(1, w, w)
qutrit = [s.eye(3), f3, dph*f3, dph*dph*f3]
qb = []
for j, b in enumerate(qutrit):
    den = 1 if j == 0 else 3
    pr = [(b[:, i]*b[:, i].H/den).applyfunc(s.expand) for i in range(3)]
    qb.append([pr[0]-pr[1], pr[0]+pr[1]-2*pr[2]])
paulis = [s.diag(1, -1), s.Matrix([[0, 1], [1, 0]]), s.Matrix([[0, -s.I], [s.I, 0]])]
Wb = [dm(s.kronecker_product(s.eye(2), q)) for q in qb[3]]
for a, pauli in enumerate(paulis):
    for j in range(4):
        if a != j:
            Wb += [dm(s.kronecker_product(pauli, q)) for q in qb[j]]
H = dm(s.kronecker_product(s.Matrix([[1, 1], [1, -1]]), f3))
Kb = dm(s.kronecker_product(s.Matrix([[1, 1], [s.I, -s.I]]), dph*f3))
unit = dm(s.eye(6))
T = adj(H)*Kb
need('two actual phase Hadamards', adj(H)*H == unit*scalar(6) and adj(Kb)*Kb == unit*scalar(6))
need('actual phase entries', all(v*conj_entry(v) == F.one for M in (H, Kb) for row in M.to_list() for v in row))
need('actual MU transition', all(v*conj_entry(v) == scalar(6) for row in T.to_list() for v in row))
need('control has a zero3 (outside the quartet domain)', H.extract([0, 1, 2], [0, 1, 3]).det() == F.zero)
for z in Wb:
    need('Hermitian coordinate', adj(z) == z)
    for b in (unit, H, Kb):
        tz = adj(b)*z*b
        need('zero diagonal in I, H, K', all(tz[j, j].element == F.zero for j in range(6)))
G = D([[tr(adj(x)*y) for y in Wb] for x in Wb], (20, 20), F).to_dense()
g = [G[i, i].element for i in range(20)]
need('orthogonal exact Gram (4,12)x10', G == D.diag(g, F).to_dense() and g == [scalar(v) for v in [4, 12]*10])
pairs = list(it.combinations_with_replacement(range(20), 2))
wl = [x.to_list() for x in Wb]
rows = []
for i, k in it.combinations(range(6), 2):
    for j, l in it.combinations(range(6), 2):
        row = []
        for a, b in pairs:
            v = wl[a][i][j]*wl[b][k][l]-wl[a][i][l]*wl[b][k][j]
            if a != b:
                v += wl[b][i][j]*wl[a][k][l]-wl[b][i][l]*wl[a][k][j]
            row.append(v)
        rows.append(row)
Qm = D(rows, (225, 210), F).to_sparse()
ker = Qm.nullspace().to_list()
ks = []
for row in ker:
    pivot = next(v for v in row if v != F.zero)
    row = [v/pivot for v in row]
    Km = [[F.zero]*20 for _ in range(20)]
    for (a, b), v in zip(pairs, row):
        Km[a][b] = v
        Km[b][a] = v
    Km = D(Km, (20, 20), F).to_dense()
    need('real symmetric covariance basis', adj(Km) == Km)
    ks.append(Km.to_Matrix())
need('N_full has dimension 12 (full-minor rank 198)', len(ks) == 12)

Ksum = s.zeros(20)
for a, Ka in enumerate(ks):
    Ksum += (a+1)*Ka
terms = [(a, b, F.from_sympy(Ksum[a, b])) for a, b in it.product(range(20), repeat=2) if Ksum[a, b] != 0]


def gamma(X):
    tx = [tr(B*X) for B in Wb]
    return add(Wb[a]*(c*tx[b]) for a, b, c in terms)


def phi(X):
    return add((Wb[a]*X*Wb[b])*c for a, b, c in terms)


R = add((Wb[a]*Wb[b])*c for a, b, c in terms)
need('(2) full-minor signed square sum R_J=0', R == dm(s.zeros(6)))
units = []
for i, j in it.product(range(6), repeat=2):
    X = s.zeros(6)
    X[i, j] = 1
    units.append(dm(X))
phis = [phi(X) for X in units]
gammas = [gamma(X) for X in units]
need('(3) Phi_J=Gamma_J on all matrix units', all(P == Gm for P, Gm in zip(phis, gammas)))
need('(4) signed commutator identity on all matrix units',
     all(R*X+X*R-P*2 == Gm*(-2) for X, P, Gm in zip(units, phis, gammas)))
X = units[1]+units[6]
need('(4) direct nested-bracket sign', add(comm(Wb[a], comm(Wb[b], X))*c for a, b, c in terms) == gamma(X)*(-2))
need('(5) three-frame Casimir on W equals 6',
     all(add(comm(B, comm(B, X))*gi**-1 for B, gi in zip(Wb, g)) == X*6 for X in Wb))
need('sum of squares of an orthonormal W basis is (10/3) I',
     add((B*B)*gi**-1 for B, gi in zip(Wb, g)) == dm(s.eye(6))*F.from_sympy(s.Rational(10, 3)))
metric_w = s.diag(*[F.to_sympy(v) for v in g])
small_cov = Ksum/s.Integer(10**6)
shift = metric_w.inv()+small_cov
need('nonzero point of the body K: I+J>=0 by strict diagonal dominance',
     all(shift[i, i] > sum(abs(shift[i, j]) for j in range(20) if j != i) for i in range(20)))
small_J = small_cov*metric_w
need('that point has 0<tr J^2<60', 0 < s.trace(small_J**2) < 60)
need('(11) commutator-defect normalisation at that point',
     s.trace((s.eye(20)+small_J)*(6*s.eye(20)-2*small_J)) == 2*(60-s.trace(small_J**2)))

# Polynomial identities used in Sections 3 and 5.
t = s.symbols('t')
need('(9) endpoint quadratic', s.expand((t+1)*(3-t)-(3+2*t-t*t)) == 0)
need('target spectrum 3^[5],-1^[15]: trace 0 and tr J^2=60', 5*3-15 == 0 and 5*9+15 == 60)
need('(11) trace polynomial', s.expand((1+t)*(6-2*t)-(6+4*t-2*t*t)) == 0)
for k in range(21):
    need('trace zero on {3,-1} spectra fixes five copies of 3', ((3*k-(20-k)) == 0) == (k == 5))
bad = s.diag(19, *([-1]*19))
need('without N_full the upper bound fails (trace-zero PSD-shift control)',
     s.trace(bad) == 0 and min((bad+s.eye(20)).diagonal()) == 0 and max(bad.diagonal()) > 3)
need('(15) central-block trace constants n=1..6',
     all(s.Rational(10, 3)-4*(s.Rational(1, n)-s.Rational(1, 6)) == 4-s.Rational(4, n) for n in range(1, 7)))

# ---------------------------------------------------------------- Part B


def eq(a, b):
    return a.shape == b.shape and all(s.simplify(v) == 0 for v in a-b)


def simp(a):
    return a.applyfunc(s.simplify)


def swap(d):
    f = s.zeros(d*d)
    for i, j in it.product(range(d), repeat=2):
        f[i*d+j, j*d+i] = 1
    return f


def ptr2(tt, d):
    return s.Matrix(d, d, lambda i, j: sum(tt[i*d+k, j*d+k] for k in range(d)))


def plane_data(bs):
    d = bs[0].rows
    r = len(bs)
    I = s.eye(d)
    Fs = swap(d)
    need('Hermitian traceless plane', all(eq(b, b.H) and s.trace(b) == 0 for b in bs))
    Gm = s.Matrix([[s.trace(a*b) for b in bs] for a in bs])
    Gi = simp(Gm.inv())
    Tt = s.kronecker_product(I, I)/d
    for i, j in it.product(range(r), repeat=2):
        Tt += Gi[i, j]*s.kronecker_product(bs[i], bs[j])
    Tt = simp(Tt)
    Km = I/d+sum((Gi[i, j]*bs[i]*bs[j] for i, j in it.product(range(r), repeat=2)), s.zeros(d))
    need('partial trace of the subspace projector tensor is I', eq(ptr2(Tt, d), I))
    need('crossed partial trace equals the sum of squares', eq(ptr2(Tt*Fs, d), Km))
    need('HS norm of the projector tensor', s.simplify(s.trace(Tt*Tt)) == r+1)
    direct = 0
    for i, j, k, l in it.product(range(r), repeat=4):
        a = bs[i]*bs[k]-bs[k]*bs[i]
        b = bs[j]*bs[l]-bs[l]*bs[j]
        direct += Gi[i, j]*Gi[k, l]*s.trace(a.H*b)
    direct = s.simplify(direct)
    need('(5) of the lemma: weighted commutator norm sum', direct == s.simplify(2*s.trace(Km*Km)-2*s.trace(Fs*Tt*Tt)))
    symmetric = eq(Tt*Fs, Tt)
    commuting = all(eq(a*b, b*a) for a, b in it.product(bs, repeat=2))
    if r == d-1 and symmetric:
        need('crossed covariance forces a Cartan', commuting and direct == 0)
    return {'d': d, 'plane_dimension': r, 'symmetric_tensor': symmetric, 'commuting': commuting}


def diagonal_plane(C):
    d = C.rows
    need('unitary eigenbasis', eq(C.H*C, s.eye(d)))
    rho = [C[:, j]*C[:, j].H for j in range(d)]
    return [simp(rho[j]-rho[-1]) for j in range(d-1)]


bases = [s.eye(3), f3/s.sqrt(3), dph*f3/s.sqrt(3), dph*dph*f3/s.sqrt(3)]
for A, B in it.combinations(bases, 2):
    ov = simp(A.H*B)
    need('actual qutrit MU quartet', all(s.simplify(z*s.conjugate(z)) == s.Rational(1, 3) for z in ov))
bs = diagonal_plane(bases[-1])
need('recovered plane lies in the common-zero-diagonal space of the first three',
     all(eq(s.diag(*(A.H*b*A).diagonal()), s.zeros(3)) for b, A in it.product(bs, bases[:3])))
positive = plane_data(bs)
need('actual positive control', positive['symmetric_tensor'] and positive['commuting'])
Hc = s.Matrix([[1 if i == 0 or j == 0 else -1 if i == j else
                s.I if (i-j) % 5 in (1, 4) else -s.I for j in range(6)] for i in range(6)])
cartan = plane_data(diagonal_plane(Hc/s.sqrt(6)))
need('order-six Cartan control', cartan['symmetric_tensor'] and cartan['commuting'])
I6 = s.eye(6)
badp = [I6[:, j]*I6[:, j].T-I6[:, 5]*I6[:, 5].T for j in range(4)]
badp.append(I6[:, 0]*I6[:, 1].T+I6[:, 1]*I6[:, 0].T)
negative = plane_data(badp)
need('noncommuting five-plane is rejected', not negative['symmetric_tensor'] and not negative['commuting'])
J = s.diag(*([3]*5+[-1]*15))
Sp = (s.eye(20)+J)/4
need('J^2-2J-3I=0 and S=(I+J)/4 is a rank-5 projector', J*J-2*J-3*s.eye(20) == s.zeros(20) and Sp*Sp == Sp and s.trace(Sp) == 5)
need('isotropic point is not a projection', (s.eye(20)/4)**2 != s.eye(20)/4)
# Moment identity (2) of the lemma at d=6: omega(y y^T)=I/24 gives tr H_nu=-24 a_nu,
# because d(d-2)=24 and (1/36+(2/6)/24)=1/24.
need('lemma moment constant', s.Rational(1, 36)+s.Rational(2, 6)/24 == s.Rational(1, 24) and 6*(6-2) == 24)

# ---------------------------------------------------------------- Part C
I2 = s.eye(2)
Z, Xp, Yp = paulis
measured = [[(0, 3), (3, 0), (3, 3)], [(0, 1), (1, 0), (1, 1)], [(0, 2), (2, 0), (2, 2)]]
P2 = [I2, Xp, Yp, Z]
used = {p for grp in measured for p in grp}
W4 = [s.kronecker_product(P2[a], P2[b])/2 for a, b in it.product(range(4), repeat=2)
      if (a, b) != (0, 0) and (a, b) not in used]
C4 = [s.kronecker_product(P2[a], P2[b])/2 for a, b in [(1, 2), (2, 3), (3, 1)]]
need('d=4 fourth-basis Cartan commutes', all(A*B == B*A for A, B in it.product(C4, repeat=2)))
need('d=4 Cartan lies in W', all(any(A == B for B in W4) for A in C4))
J4 = s.diag(*[1 if any(A == B for B in C4) else -1 for A in W4])
need('d=4 target spectrum', s.trace(J4) == 0 and J4**2 == s.eye(6))
need('d=4 Casimir normalisation', all(
    sum((A*(A*B-B*A)-(A*B-B*A)*A for A in W4), s.zeros(4)) == 2*B for B in W4))
Lq = []
for i, j in [(0, 1), (0, 2), (1, 2)]:
    A = s.zeros(3)
    A[i, j] = s.I
    A[j, i] = -s.I
    Lq.append(A)
spin = sum((s.kronecker_product(A, A)/3 for A in Lq), s.zeros(9))+s.eye(9)/3
sw = swap(3)
need('fractional qutrit full-minor tensor', spin*sw == spin)
need('fractional qutrit square normalisation', s.eye(3)/3+sum((A*A/3 for A in Lq), s.zeros(3)) == s.eye(3))
need('fractional qutrit tensor is not a Cartan', any(A*B != B*A for A, B in it.product(Lq, repeat=2)))
om = s.Matrix([int(i == j) for i, j in it.product(range(3), repeat=2)])
need('fractional full-minor tensor need not be PSD', spin*om == -om/3)

print(json.dumps({'status': 'PASS', 'count': len(checks), 'distinct_checks': sorted(set(checks)),
                  'product_control': {'N_full_dimension': len(ks), 'zero3_control': True},
                  'lemma_controls': {'qutrit': positive, 'cartan6': cartan, 'noncommuting6': negative},
                  'scope': 'exact controls; universal statements are the written proofs'}, indent=1, sort_keys=True))
print('PASS covariance contraction: N_full product control, map identities, completion-lemma controls')
