"""Exact check of the invariances behind the canonical-domain reduction (NumericalCampaign/REDUCTION.md).

R(E) is the strict-corner invariant of MinimalConstruction/RECONSTRUCTION.md, computed from the
dephased 3x3 corner E = [[1,1,1],[1,a,b],[1,c,d]].  We verify, as identities of Laurent
polynomials in the unit phases a,b,c,d (conj(z) = 1/z):
  1. R is unchanged by every reordering of the corner's rows and columns (after re-dephasing);
  2. R(E^T) = R(E)  (transpose, i.e. passing to H^T);
  3. R(conj E) = R(E);
  5. negating the Gram off-diagonals maps R(p, J, W) to R(p, -J, W) (radical-free corners, bc_test).
Together these say R is a function of the positional corner alone, invariant under the operations
H -> P H Q (monomial), H -> H^T and H -> conj H, all of which preserve extendability to four MUBs.
The pair moduli X,Y,Z of Gh are permuted by row orders, fixed by column orders, and swapped with
those of Gv by transposition, which is what the fundamental domain uses (checked as well)."""
import itertools, sympy as sp
a, b, c, d = sp.symbols('a b c d', nonzero=True)
cj = {a: 1/a, b: 1/b, c: 1/c, d: 1/d}
def conj(e): return sp.conjugate(e) if False else e.subs(cj, simultaneous=True)
def dephase(E):
    return sp.Matrix(3, 3, lambda i, j: sp.cancel(E[i, j]*E[0, 0]/(E[i, 0]*E[0, j])))
def gram_mods(E):
    Eh = E.applyfunc(conj).T
    G = 6*sp.eye(3) - E*Eh
    s, t, r = G[1, 0], G[2, 0], G[2, 1]
    ab = lambda z: sp.expand(z*conj(z))
    return G, ab(s), ab(t), ab(r)
def R_of(E):
    G, X, Y, Z = gram_mods(E)
    s, t, r = G[1, 0], G[2, 0], G[2, 1]
    p = X + Y + Z; J = sp.expand(s*r*conj(t) + conj(s*r*conj(t)))
    W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3*p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J
    return sp.expand(4*g*g*eta - chi*chi)
E = sp.Matrix([[1, 1, 1], [1, a, b], [1, c, d]])
R0 = R_of(E)
print("R has", len(R0.as_ordered_terms()), "Laurent terms")
ok = True
for pr in itertools.permutations(range(3)):
    for pc in itertools.permutations(range(3)):
        E2 = dephase(E[list(pr), list(pc)])
        ok &= sp.expand(R_of(E2) - R0) == 0
print("1. invariant under all 36 row/column orders:", ok)
t = sp.expand(R_of(dephase(E.T)) - R0) == 0; print("2. R(E^T) = R(E):", t); ok &= t
t = sp.expand(R_of(E.applyfunc(conj)) - R0) == 0; print("3. R(conj E) = R(E):", t); ok &= t
# moduli bookkeeping for the fundamental domain
def mods(E):
    E = dephase(E); h = gram_mods(E)[1:]; v = gram_mods(E.T)[1:]; return h, v
h0, v0 = mods(E)
same = lambda u, w: all(sp.expand(x - y) == 0 for x, y in zip(u, w))
def is_perm(u, w): return any(same([u[i] for i in p], w) for p in itertools.permutations(range(3)))
t = True; seen_h = set(); seen_v = set()
for pr in itertools.permutations(range(3)):
    for pc in itertools.permutations(range(3)):
        h, v = mods(E[list(pr), list(pc)])
        t &= is_perm(h0, h) and is_perm(v0, v)
        if pc == (0, 1, 2): t &= same(v, v0); seen_h.add(next(p for p in itertools.permutations(range(3)) if same([h0[i] for i in p], h)))
        if pr == (0, 1, 2): t &= same(h, h0); seen_v.add(next(p for p in itertools.permutations(range(3)) if same([v0[i] for i in p], v)))
t &= len(seen_h) == 6 and len(seen_v) == 6
ht, vt = mods(E.T); t &= same(ht, v0) and same(vt, h0)
hc, vc = mods(E.applyfunc(conj)); t &= same(hc, h0) and same(vc, v0)
print("4. row orders realise all of S3 on the Gh moduli and fix the Gv moduli; column orders the reverse;")
print("   transpose swaps the two triples; conj fixes both:", t)
ok &= t
# 5. radical-free corners (domain.jl bc_test).  For a Hadamard H with top-left corner E, row orthogonality
# E E† + B B† = 6I gives 6I - B B† = E E† for B = H[0:3, 3:6], whose off-diagonals are those of Gh = 6I - E E†
# negated.  R depends on the off-diagonals (s, t, r) only through p, J, W (the formula in R_of), so
# R(B) = R(p, -J, W).  Checked as a polynomial identity in s, t, r and their conjugates (independent symbols).
S = sp.symbols('s t r sb tb rb')
def R_st(s, t, r, sb, tb, rb, sgnJ=1):
    X, Y, Z = s*sb, t*tb, r*rb; p = X + Y + Z; J = sgnJ*(s*r*tb + sb*rb*t)
    W = X*Y + X*Z + Y*Z - X*Y*Z
    g = 27 - 3*p + J; eta = 9 - p + J; chi = W - (p - 9)*(p - 18) + (p - 15)*J
    return sp.expand(4*g*g*eta - chi*chi)
t = sp.expand(R_st(*[-x for x in S]) - R_st(*S, sgnJ=-1)) == 0
print("5. negating the Gram off-diagonals maps R(p, J, W) to R(p, -J, W):", t); ok &= t
assert ok
print("PASS")
