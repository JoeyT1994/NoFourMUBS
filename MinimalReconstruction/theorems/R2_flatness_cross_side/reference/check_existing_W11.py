#!/usr/bin/env python3
"""Reference replay of FLATNESS.md §4 by exact expansion in Q(a,b,c,d).

This deliberately uses the existing seed-expansion method. It is not a
structural solution of Handoff R and does not import a flatness certificate.
The generic arithmetic helper is copied unchanged from the supplied source.
"""
import json
import sys
import time

if sys.flags.optimize:
    raise SystemExit("Assertions are required. Run Python without -O or -OO.")

from rational_helper import F, CTX, tr, adj, mul


def determinant(M):
    return (M[0][0] * (M[1][1] * M[2][2] - M[1][2] * M[2][1])
            - M[0][1] * (M[1][0] * M[2][2] - M[1][2] * M[2][0])
            + M[0][2] * (M[1][0] * M[2][1] - M[1][1] * M[2][0]))


def complement_gram(A):
    AAstar = mul(A, adj(A))
    return [[6 * (i == j) - AAstar[i][j] for j in range(3)]
            for i in range(3)]


def side_q1(G):
    s, t, r = G[1][0], G[2][0], G[2][1]
    S, T, Q = s.star(), t.star(), r.star()
    X, Y, Z = s*S, t*T, r*Q
    p, J = X+Y+Z, s*r*T+S*Q*t
    g, eta = 27-3*p+J, 9-p+J
    chi = X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
    P0 = r*s*s+Q*t*t+(3-Z)*s*t
    P1 = t*S*S+r*r*T+(3-Y)*r*S
    c0, c1 = 9-Z, 9-Y
    denominator = P0*P1.star()
    # Each tuple is the constant and linear coefficient in this side's label.
    u1 = ((g*g+c1*chi+c0*c1*eta)/denominator,
          g*(c0-c1)/denominator)
    beta = ((chi+c0*eta)/P0, -g/P0)
    ell1 = (c1*eta/P1.star(), g/P1.star())
    Qconstant = [[S, S*S-2*s*u1[0], S*T-beta[0]],
                 [F(3), S, T], [r, S*r-ell1[0], S]]
    Qlinear = [[F(0), -2*s*u1[1], -beta[1]],
               [F(0), F(0), F(0)], [F(0), -ell1[1], F(0)]]
    assert not (determinant(G)-g).n
    return [Qconstant, Qlinear], (g, eta, chi)


def inverse_with_det(M, determinant_value):
    out = []
    for i in range(3):
        row = []
        for j in range(3):
            rows = [k for k in range(3) if k != j]
            cols = [k for k in range(3) if k != i]
            minor = (M[rows[0]][cols[0]]*M[rows[1]][cols[1]]
                     - M[rows[0]][cols[1]]*M[rows[1]][cols[0]])
            row.append((-1)**(i+j)*minor/determinant_value)
        out.append(row)
    return out


def contraction(X, Y):
    # sum_ac X_ac Y_ac = tr(X^T Y), with no conjugation on X.
    return sum(x*y for row_x, row_y in zip(X, Y)
               for x, y in zip(row_x, row_y))


started = time.perf_counter()
a, b, c, d = map(F, CTX.gens())
E = [[F(1)]*3, [F(1), a, b], [F(1), c, d]]
Gh, Gv = complement_gram(E), complement_gram(tr(E))
Qh, (g, eta, chi) = side_q1(Gh)
Qv, vertical_invariants = side_q1(Gv)
for horizontal, vertical in zip((g, eta, chi), vertical_invariants):
    assert not (horizontal-vertical).n
print("PASS: horizontal/vertical g, eta, chi agree; det(Gh)=det(Gv)=g.")

invH = inverse_with_det(Gh, g)
K = [[-entry for entry in row] for row in mul(adj(E), invH)]
transported = [mul(K, mul(Q, adj(K))) for Q in Qh]
A0 = contraction(Qv[0], transported[0])-Gv[0][1]*Gh[0][1]
B0 = contraction(Qv[0], transported[1])
C0 = contraction(Qv[1], transported[0])
D0 = contraction(Qv[1], transported[1])

assert not (B0-C0).n
assert not (A0+(chi/g)*C0+eta*D0).n
print("PASS: B0-C0 = 0 exactly in Q(a,b,c,d).")
print("PASS: A0+(chi/g)*C0+eta*D0 = 0 exactly in Q(a,b,c,d).")
print("Thus W11 = B0*(z+w-chi/g) + D0*(z*w-eta).")
print(json.dumps({
    "method": "existing rational seed expansion",
    "coefficient_term_counts": {
        name: {"numerator": len(value.n), "denominator": len(value.d)}
        for name, value in zip(("A0", "B0", "C0", "D0"), (A0, B0, C0, D0))
    },
    "elapsed_seconds": round(time.perf_counter()-started, 6),
}, sort_keys=True))
print("REFERENCE METHOD PASS; structural Handoff R remains NOT ESTABLISHED.")
