"""Sample level-L dyadic cells of T^4 whose centre lies in F ∩ {0 < R < C0} (confinement pilot) (estimation sample for Step 4)."""
import numpy as np, sys, json
L, n, C0, seed = int(sys.argv[1]), int(sys.argv[2]), float(sys.argv[3]), int(sys.argv[4])
rng = np.random.default_rng(seed); out = []
def inv(E):
    G = 6*np.eye(3) - E @ E.conj().T; s, t, r = G[1, 0], G[2, 0], G[2, 1]; X, Y, Z = abs(s)**2, abs(t)**2, abs(r)**2
    p = X+Y+Z; J = 2*(s*r*np.conj(t)).real; g = 27-3*p+J; eta = 9-p+J; chi = X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
    return 4*g*g*eta-chi*chi, X, Y, Z
tried = 0
while len(out) < n:
    k = rng.integers(0, 2**L, 4); th = -np.pi + (2*k+1)*np.pi/2**L; tried += 1
    E = np.ones((3, 3), complex); E[1:, 1:] = np.exp(1j*th.reshape(2, 2))
    R, Xh, Yh, Zh = inv(E); _, Xv, Yv, Zv = inv(E.T)
    if 0 < R < C0 and Xh >= Yh >= Zh and Xv >= Yv >= Zv and (Xh, Yh, Zh) >= (Xv, Yv, Zv):
        out.append([float(x) for x in th])
open('cells_L%d.txt' % L, 'w').write(''.join(' '.join('%.17g' % x for x in t) + '\n' for t in out)); json.dump(dict(level=L, C0=C0, n=len(out), tried=tried, frac=len(out)/tried), open('cells_L%d.meta.json' % L, 'w'))
print(len(out), 'cells; fraction of all level-%d cells with centre in Omega: %.4e' % (L, len(out)/tried))
