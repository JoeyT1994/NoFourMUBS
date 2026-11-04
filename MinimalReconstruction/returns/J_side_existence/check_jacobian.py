# Independent check of identity (J): det d(Re s,Im s,Re t,Im t,Re r,Im r)/d(phi) = (1/4) Im Psi(B),
# B = [[1,1,1],[x],[y]], x_j=e^{i a_j}, y_j=e^{i b_j}, s=sum x, t=sum y, r=sum conj(x) y,
# Psi = perm(B) det(B)^2 / prod(B).  Also symbolic check of det M = conj(Psi)-Psi as Laurent polys.
import numpy as np, itertools, sympy as sp
rng = np.random.default_rng(1)
def perm3(M): return sum(np.prod([M[i,p[i]] for i in range(3)]) for p in itertools.permutations(range(3)))
worst = 0
for _ in range(5000):
    a, b = rng.uniform(0, 2*np.pi, 3), rng.uniform(0, 2*np.pi, 3)
    x, y = np.exp(1j*a), np.exp(1j*b)
    B = np.array([np.ones(3), x, y])
    Psi = perm3(B) * np.linalg.det(B)**2 / np.prod(B)
    # columns: d/da_j then d/db_j; ds/da_j = i x_j, dr/da_j = -i conj(x_j) y_j, dt/db_j = i y_j, dr/db_j = i conj(x_j) y_j
    cols = []
    for j in range(3):
        cols.append([1j*x[j], 0, -1j*np.conj(x[j])*y[j]])
    for j in range(3):
        cols.append([0, 1j*y[j], 1j*np.conj(x[j])*y[j]])
    Jc = np.array(cols).T                     # 3 complex rows x 6
    Jr = np.vstack([Jc[0].real, Jc[0].imag, Jc[1].real, Jc[1].imag, Jc[2].real, Jc[2].imag])
    worst = max(worst, abs(np.linalg.det(Jr) - 0.25*Psi.imag))
print("numeric: max |det J - Im(Psi)/4| over 5000 random sides =", worst)
assert worst < 1e-9, "identity (J) fails numerically"
# symbolic Laurent check: det M = conj(Psi) - Psi with M_ab = i v_b dF_a/dv_b, F = (s,t,r,sbar,tbar,rbar)
v = sp.symbols('x0 x1 x2 y0 y1 y2'); X, Y = v[:3], v[3:]
s, t, r = sum(X), sum(Y), sum(Y[j]/X[j] for j in range(3))
sb, tb, rb = sum(1/q for q in X), sum(1/q for q in Y), sum(X[j]/Y[j] for j in range(3))
F = [s, t, r, sb, tb, rb]
M = sp.Matrix(6, 6, lambda i, k: sp.I*v[k]*sp.diff(F[i], v[k]))
Bm = sp.Matrix([[1,1,1], list(X), list(Y)])
perm = sum(sp.prod([Bm[i, p[i]] for i in range(3)]) for p in itertools.permutations(range(3)))
Psi = perm*Bm.det()**2/sp.prod(list(X)+list(Y))
Psibar = Psi.subs({q: 1/q for q in v}, simultaneous=True)
diff = sp.simplify(sp.together(M.det() - (Psibar - Psi)))
print("symbolic: det M - (conj Psi - Psi) simplifies to", diff)
assert diff == 0, "identity (J) fails symbolically"
print("PASS: identity (J)")
