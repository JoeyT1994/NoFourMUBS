"""Independent numeric check of the R2 closed form for W11 on actual phase sides.

Conventions from FLATNESS.md: E corner, G_h = 6I - E E^*, G_v = 6I - E^T conj(E),
sides A = (1; x; y) with A A^* = G, label Theta(A), K = -E^* G_h^{-1}, D = V^T K B,
Delta = |D|^2 - 1, W = conj(V) Delta conj(B)^T.  W11 = W[1,1] (zero-based).
Closed form: W11 = J10/(dh dv g) (z+w-h) + J11/(dh dv) (zw - eta), with H0/H1/U from the return.
"""
import numpy as np, itertools, sys

rng = np.random.default_rng(int(sys.argv[1]) if len(sys.argv) > 1 else 1)

def inv_data(G):
    s, t, r = G[1, 0], G[2, 0], G[2, 1]
    S, T, Q = np.conj(s), np.conj(t), np.conj(r)
    X, Y, Z = (s*S).real, (t*T).real, (r*Q).real
    p, J = X+Y+Z, (s*r*T + S*Q*t)
    g, eta = 27-3*p+J, 9-p+J
    chi = X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
    return dict(s=s, t=t, r=r, S=S, T=T, Q=Q, X=X, Y=Y, Z=Z, p=p, J=J, g=g.real, eta=eta.real, chi=chi.real,
                gi=abs(g.imag)+abs(eta.imag)+abs(chi.imag))

def HH(G):
    d_ = inv_data(G); s, t, r, S, T = d_['s'], d_['t'], d_['r'], d_['S'], d_['T']
    X, Y, Z, g, eta, chi = d_['X'], d_['Y'], d_['Z'], d_['g'], d_['eta'], d_['chi']
    Q = d_['Q']
    P0 = r*s*s + Q*t*t + (3-Z)*s*t
    P1 = t*S*S + r*r*T + (3-Y)*r*S
    c0, c1 = 9-Z, 9-Y
    d = P0*np.conj(P1)
    H0 = np.array([[S*d, S*S*d-2*s*(g*g+c1*chi+c0*c1*eta), S*T*d-(chi+c0*eta)*np.conj(P1)],
                   [3*d, S*d, T*d], [r*d, S*r*d-c1*eta*P0, S*d]])
    H1 = np.array([[0, -2*s*(c0-c1), np.conj(P1)], [0, 0, 0], [0, -P0, 0]], dtype=complex)
    return H0, H1, d

def adjugate(A):
    C = np.zeros((3, 3), dtype=complex)
    for i in range(3):
        for j in range(3):
            m = np.delete(np.delete(A, j, 0), i, 1)
            C[i, j] = (-1)**(i+j)*(m[0, 0]*m[1, 1]-m[0, 1]*m[1, 0])
    return C

def theta(A):
    x, y = A[1], A[2]
    perm = sum(np.prod([A[i, s[i]] for i in range(3)]) for s in itertools.permutations(range(3)))
    det = np.linalg.det(A)
    return -perm*det/(np.conj(det)*np.prod(x)*np.prod(y))

def side_eqs(ang, s, t, r):
    x, y = np.exp(1j*ang[:3]), np.exp(1j*ang[3:])
    e = np.array([x.sum()-s, y.sum()-t, (y*np.conj(x)).sum()-r])
    return np.concatenate([e.real, e.imag])

def solve_side(G, tries=400):
    s, t, r = G[1, 0], G[2, 0], G[2, 1]
    sols = []
    for _ in range(tries):
        ang = rng.uniform(0, 2*np.pi, 6)
        for it in range(80):
            f = side_eqs(ang, s, t, r)
            if np.linalg.norm(f) < 1e-13:
                break
            Jm = np.zeros((6, 6))
            for k in range(6):
                dd = np.zeros(6); dd[k] = 1e-7
                Jm[:, k] = (side_eqs(ang+dd, s, t, r)-f)/1e-7
            step = np.linalg.lstsq(Jm, -f, rcond=None)[0]
            ang = ang + step
        if np.linalg.norm(side_eqs(ang, s, t, r)) < 1e-11:
            A = np.vstack([np.ones(3), np.exp(1j*ang[:3]), np.exp(1j*ang[3:])])
            if abs(np.linalg.det(A)) > 1e-6:
                sols.append(A)
    return sols

worst = 0.0; count = {'matched': 0, 'unmatched': 0}; seeds_used = 0; maxW = {'matched': 0, 'unmatched': 0}
while seeds_used < int(sys.argv[2]) if len(sys.argv) > 2 else 6:
    a, b, c, d = np.exp(1j*rng.uniform(0, 2*np.pi, 4))
    E = np.array([[1, 1, 1], [1, a, b], [1, c, d]])
    Gh = 6*np.eye(3)-E@E.conj().T
    Gv = 6*np.eye(3)-E.T@E.conj()
    ih, iv = inv_data(Gh), inv_data(Gv)
    g, eta, chi = ih['g'], ih['eta'], ih['chi']
    R = 4*g*g*eta-chi*chi
    if R <= 1e-3:
        continue
    assert abs(g-iv['g']) + abs(eta-iv['eta']) + abs(chi-iv['chi']) < 1e-9
    h = chi/g
    Bs, Vs = solve_side(Gh), solve_side(Gv)
    if not Bs or not Vs:
        continue
    seeds_used += 1
    K = -E.conj().T@np.linalg.inv(Gh)
    U = E.conj().T@adjugate(Gh)
    assert np.allclose(U, -g*K)
    H0, H1, dh = HH(Gh); V0, V1, dv = HH(Gv)
    T0, T1 = U@H0@U.conj().T, U@H1@U.conj().T
    J = {(0, 0): np.sum(V0*T0), (0, 1): np.sum(V0*T1), (1, 0): np.sum(V1*T0), (1, 1): np.sum(V1*T1)}
    F1 = J[0, 1]-J[1, 0]
    F0 = J[0, 0]+chi*J[1, 0]+eta*g*g*J[1, 1]-dh*dv*g*g*Gv[0, 1]*Gh[0, 1]
    scale = abs(J[0, 0])
    print(f"seed R={R:.3f} |F1|/|J00|={abs(F1)/scale:.1e} |F0|/|J00|={abs(F0)/scale:.1e} "
          f"#B={len(Bs)} #V={len(Vs)}")
    for B in Bs:
        z = theta(B)
        assert abs(z*z-h*z+eta) < 1e-8*(1+abs(eta))
        for V in Vs:
            w = theta(V)
            Dm = V.T@K@B
            Delta = np.abs(Dm)**2-1
            W = V.conj()@Delta@B.conj().T
            closed = J[1, 0]/(dh*dv*g)*(z+w-h)+J[1, 1]/(dh*dv)*(z*w-eta)
            kind = 'matched' if abs(w-np.conj(z)) < 1e-6 else 'unmatched'
            err = abs(W[1, 1]-closed)/(1+abs(W[1, 1]))
            worst = max(worst, err); count[kind] += 1; maxW[kind] = max(maxW[kind], abs(W[1, 1]))
print('pairs', count, 'max |W11|', maxW, 'worst rel err direct vs closed form', worst)
