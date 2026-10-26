"""Exact evaluation of F0, F1 (and the R2 binding identity) at random rational NON-unit points.

Formal conjugation: each quantity carries (f(x), f*(x)) where f* is f with every seed replaced by its
reciprocal (integer coefficients).  This is my own implementation, independent of the return's code.
Also evaluates the return's packed_circuit.json at the same points.
"""
from fractions import Fraction as Fr
import json, random, sys

class L:
    __slots__ = ('v', 'w')
    def __init__(self, v, w=None):
        self.v = Fr(v); self.w = Fr(v) if w is None else Fr(w)
    def __add__(a, b): b = lift(b); return L(a.v+b.v, a.w+b.w)
    __radd__ = __add__
    def __sub__(a, b): b = lift(b); return L(a.v-b.v, a.w-b.w)
    def __rsub__(a, b): return lift(b)-a
    def __neg__(a): return L(-a.v, -a.w)
    def __mul__(a, b): b = lift(b); return L(a.v*b.v, a.w*b.w)
    __rmul__ = __mul__
    def star(a): return L(a.w, a.v)
    def __truediv__(a, b): b = lift(b); return L(a.v/b.v, a.w/b.w)

def lift(x): return x if isinstance(x, L) else L(x)
def T(A): return [list(r) for r in zip(*A)]
def st(A): return [[x.star() for x in r] for r in T(A)]
def mm(A, B): return [[sum((x*y for x, y in zip(r, c)), L(0)) for c in T(B)] for r in A]
def cdot(A, B): return sum((x*y for ra, rb in zip(A, B) for x, y in zip(ra, rb)), L(0))
def adj3(A):
    out = [[None]*3 for _ in range(3)]
    for i in range(3):
        for j in range(3):
            rr = [k for k in range(3) if k != j]; cc = [k for k in range(3) if k != i]
            out[i][j] = (-1)**(i+j)*(A[rr[0]][cc[0]]*A[rr[1]][cc[1]]-A[rr[0]][cc[1]]*A[rr[1]][cc[0]])
    return out
def det3(A): return sum((A[0][j]*adj3(A)[j][0] for j in range(3)), L(0))

def inv(G):
    s, t, r = G[1][0], G[2][0], G[2][1]
    S, Tt, Q = s.star(), t.star(), r.star()
    X, Y, Z = s*S, t*Tt, r*Q
    p, J = X+Y+Z, s*r*Tt+S*Q*t
    g, eta = 27-3*p+J, 9-p+J
    chi = X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
    P0 = r*s*s+Q*t*t+(3-Z)*s*t
    P1 = t*S*S+r*r*Tt+(3-Y)*r*S
    c0, c1 = 9-Z, 9-Y
    return dict(s=s, t=t, r=r, S=S, T=Tt, Q=Q, g=g, eta=eta, chi=chi, P0=P0, P1=P1, c0=c0, c1=c1)

def HH(G, I):
    s, t, r, S, Tt = I['s'], I['t'], I['r'], I['S'], I['T']
    g, eta, chi, P0, P1, c0, c1 = (I[k] for k in ('g', 'eta', 'chi', 'P0', 'P1', 'c0', 'c1'))
    d = P0*P1.star()
    H0 = [[S*d, S*S*d-2*s*(g*g+c1*chi+c0*c1*eta), S*Tt*d-(chi+c0*eta)*P1.star()],
          [3*d, S*d, Tt*d], [r*d, S*r*d-c1*eta*P0, S*d]]
    H1 = [[L(0), -2*s*(c0-c1), P1.star()], [L(0)]*3, [L(0), -P0, L(0)]]
    return H0, H1, d

def Q1_flatness(G, I, z):
    """FLATNESS.md (4.3) with the affine formulas of section 3 at label z (independent variable)."""
    s, t, r, S, Tt = I['s'], I['t'], I['r'], I['S'], I['T']
    g, eta, chi, P0, P1, c0, c1 = (I[k] for k in ('g', 'eta', 'chi', 'P0', 'P1', 'c0', 'c1'))
    u1 = (g*g+c1*chi+c0*c1*eta+g*(c0-c1)*z)/(P0*P1.star())
    beta = (chi+c0*eta-g*z)/P0
    ell1 = (c1*eta+g*z)/P1.star()
    return [[S, S*S-2*s*u1, S*Tt-beta], [L(3), S, Tt], [r, S*r-ell1, S]]

def run(pt, zv, wv):
    a, b, c, d = (L(x, 1/x) for x in pt)
    one = L(1)
    E = [[one]*3, [one, a, b], [one, c, d]]
    Es = st(E)
    Gh = [[(6 if i == j else 0)-x for j, x in enumerate(r)] for i, r in enumerate(mm(E, Es))]
    ET = T(E)
    Gv = [[(6 if i == j else 0)-x for j, x in enumerate(r)] for i, r in enumerate(mm(ET, st(ET)))]
    Ih, Iv = inv(Gh), inv(Gv)
    inv_eq = [(Ih[k]-Iv[k]).v == 0 and (Ih[k]-Iv[k]).w == 0 for k in ('g', 'eta', 'chi')]
    g, eta, chi = Ih['g'], Ih['eta'], Ih['chi']
    assert (det3(Gh)-g).v == 0
    H0, H1, dh = HH(Gh, Ih); V0, V1, dv = HH(Gv, Iv)
    U = mm(Es, adj3(Gh))
    T0, T1 = mm(U, mm(H0, st(U))), mm(U, mm(H1, st(U)))
    J00, J01, J10, J11 = cdot(V0, T0), cdot(V0, T1), cdot(V1, T0), cdot(V1, T1)
    F1 = J01-J10
    F0 = J00+chi*J10+eta*g*g*J11-dh*dv*g*g*Gv[0][1]*Gh[0][1]
    # Binding: W11 from FLATNESS (4.3)/(4.5) with K = -E^* G_h^{-1}, independent labels z, w.
    z, w = L(zv), L(wv)
    adjG = adj3(Gh)
    K = [[-(x/g) for x in row] for row in mm(Es, adjG)]
    Qh = Q1_flatness(Gh, Ih, z); Qv = Q1_flatness(Gv, Iv, w)
    W11 = cdot(Qv, mm(K, mm(Qh, st(K))))-Gv[0][1]*Gh[0][1]
    h = chi/g
    lhs = dh*dv*g*g*W11
    rhs = g*J10*(z+w-h)+g*g*J11*(z*w-eta)+F0+g*z*F1
    return dict(F0=F0.v, F1=F1.v, F0s=F0.w, F1s=F1.w, binding=(lhs-rhs).v, inv_eq=inv_eq,
                J10=J10.v, J11=J11.v)

def eval_json(path, pt):
    P = json.load(open(path))
    vals = []
    for node in P['nodes']:
        op, *args = node
        if op == 'mono':
            cf, *ex = args
            v = Fr(cf)
            for x, e in zip(pt, ex):
                v *= Fr(x)**e
        elif op == 'add':
            v = vals[args[0]]+vals[args[1]]
        else:
            v = vals[args[0]]*vals[args[1]]
        vals.append(v)
    return {k: vals[i] for k, i in P['roots'].items()}

random.seed(int(sys.argv[2]) if len(sys.argv) > 2 else 3)
for trial in range(int(sys.argv[3]) if len(sys.argv) > 3 else 4):
    pt = [Fr(random.randint(-97, 97) or 5, random.randint(1, 89)) for _ in range(4)]
    zv, wv = Fr(random.randint(-50, 50), random.randint(1, 30)), Fr(random.randint(-50, 50), random.randint(1, 30))
    r = run(pt, zv, wv)
    j = eval_json(sys.argv[1], pt)
    print(pt, 'F0', r['F0'], 'F1', r['F1'], 'F0*', r['F0s'], 'F1*', r['F1s'], 'binding', r['binding'],
          'inv_eq', r['inv_eq'], 'J10!=0', r['J10'] != 0, 'J11!=0', r['J11'] != 0,
          'json', {k: v for k, v in j.items()})
