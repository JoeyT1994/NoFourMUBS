# Independent spot-checks of return K's key identities (written here, not taken from the return).
import itertools, numpy as np, sympy as sp
# (6): conj(A) B C - A conj(B) conj(C) = (1+k^2 p)(s r tb - sb rb t)(X-Y)(Y-Z)(Z-X), formal in s,t,r,sb,tb,rb,k
s,t,r,sb,tb,rb,k = sp.symbols('s t r sb tb rb k')
X,Y,Z = s*sb, t*tb, r*rb; p = X+Y+Z
A  = r*s**2 + rb*t**2 - k*(X+Y)*s*t;      Ab = rb*sb**2 + r*tb**2 - k*(X+Y)*sb*tb
B  = tb*s**2 + rb**2*t - k*(X+Z)*s*rb;    Bb = t*sb**2 + r**2*tb - k*(X+Z)*sb*r
C  = sb*t**2 + r**2*s - k*(Y+Z)*t*r;      Cb = s*tb**2 + rb**2*sb - k*(Y+Z)*tb*rb
lhs = Ab*B*C - A*Bb*Cb
rhs = (1+k**2*p)*(s*r*tb - sb*rb*t)*(X-Y)*(Y-Z)*(Z-X)
print("(6) universal identity holds:", sp.expand(lhs - rhs) == 0)
# (3),(4) on actual orthogonal strips: 3 rows of Fourier-family Hadamards F6(a,b), column-normalised to (1; x; y)
def F6(a, b):
    w = np.exp(2j*np.pi/6); F = np.array([[w**(i*j) for j in range(6)] for i in range(6)])
    E = np.ones((6,6), complex); 
    for (i,j) in [(1,1),(1,4),(3,1),(3,4),(5,1),(5,4)]: E[i,j] = np.exp(1j*a)
    for (i,j) in [(1,2),(1,5),(3,2),(3,5),(5,2),(5,5)]: E[i,j] = np.exp(1j*b)
    return F*E
def perm3(M): return sum(np.prod([M[i,q[i]] for i in range(3)]) for q in itertools.permutations(range(3)))
rng = np.random.default_rng(7); worst3 = worst4 = 0
for trial in range(400):
    H = F6(*rng.uniform(0, 2*np.pi, 2))
    assert np.allclose(H @ H.conj().T, 6*np.eye(6))
    rows = rng.choice(6, 3, replace=False); S = H[rows] / H[rows][0]      # rows (1; x; y), still orthogonal
    x, y = S[1], S[2]; M = lambda a_, b_: np.sum(x**a_ * y**b_)
    a, b, c = M(1,1), M(2,-1), M(-1,2)
    sumD = 0; T = 0
    for Cset in itertools.combinations(range(6), 3):
        E = S[:, Cset]; Psi = perm3(E) * np.linalg.det(E)**2 / np.prod(E); D = Psi - np.conj(Psi)
        sumD += D; T += np.sum(x[list(Cset)]*y[list(Cset)]) * D
    worst3 = max(worst3, abs(sumD - (np.conj(a)*b*c - a*np.conj(b)*np.conj(c))))
    T_rhs = 6*b*c + np.conj(a)*c*M(3,0) + np.conj(a)*b*M(0,3) - np.conj(b)*np.conj(c)*M(2,2) - a*(b*np.conj(b) + c*np.conj(c))
    worst4 = max(worst4, abs(T - T_rhs))
print(f"(3) sum_C D_C = conj(a)bc - a conj(b)conj(c): max error over 400 strips {worst3:.2e}")
print(f"(4) weighted sum T: max error over 400 strips {worst4:.2e}")
# N2 window arithmetic
u = sp.symbols('u'); G = 9*u**3 + 5*u**2 + 3*u - 1
print("G(1/5) =", G.subs(u, sp.Rational(1,5)), " G(1/4) =", G.subs(u, sp.Rational(1,4)))
