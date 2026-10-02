"""Checks for ResidualSetup.md: exact three-involution algebra and numerical
controls of the residual structure on physical count-two triangles."""
import itertools, json
from pathlib import Path
import numpy as np
import sympy as S
from pauli import require

HERE = Path(__file__).resolve().parent
PAIRS = list(itertools.combinations(range(4), 2))


def real_form_basis():
    def E(a, b):
        M = S.zeros(4); M[a, b] = 1; M[b, a] = -1
        return M
    return [E(0, 1)+E(2, 3), S.I*(E(0, 1)-E(2, 3)), E(0, 2)-E(1, 3),
            S.I*(E(0, 2)+E(1, 3)), E(0, 3)+E(1, 2), S.I*(E(0, 3)-E(1, 2))]


def three_involution_exact():
    B = real_form_basis()
    xs = S.symbols('x0:6', real=True)
    Jm = sum((x*b for x, b in zip(xs, B)), S.zeros(4))
    require(all(S.expand(e) == 0 for e in (Jm*Jm.H - sum(x**2 for x in xs)*S.eye(4))), 'J J* = |x|^2 I on V6')
    d = S.symbols('d1:4', real=True)
    D = S.diag(d[0], d[1], d[2], -d[0]-d[1]-d[2])
    L = S.zeros(6)
    for j, b in enumerate(B):
        img = S.I*(D*b + b*D.T)
        for i, bi in enumerate(B):
            L[i, j] = S.expand((bi.H*img).trace()/4)
    require(all(S.im(e) == 0 for e in L) and S.expand(L+L.T) == S.zeros(6), 'L_D real skew on V6')
    target = -(D**3).trace()/3
    require(S.expand(L.det() - target**2) == 0, 'det L_D = (tr D^3/3)^2')
    pf = (L[0, 1]*L[2, 3]*L[4, 5])  # L is block-diagonal on this basis for diagonal D
    offblock = [L[i, j] for i in range(6) for j in range(6) if i//2 != j//2]
    require(all(S.expand(e) == 0 for e in offblock), 'L_D block diagonal for diagonal D')
    require(S.expand(pf - target) == 0 or S.expand(pf + target) == 0, 'Pf(L_D) = +-tr(D^3)/3')
    return {'real_form_norm_identity': True, 'pfaffian_identity': True}


def rand_balanced(rng):
    M = rng.normal(size=(4, 4))+1j*rng.normal(size=(4, 4))
    Q, _ = np.linalg.qr(M)
    return Q@np.diag([1, 1, -1, -1])@Q.conj().T


def common_form_dimension(As, tol=1e-9):
    basis = []
    for (a, b) in PAIRS:
        M = np.zeros((4, 4), complex); M[a, b] = 1; M[b, a] = -1
        basis.append(M)
    Mat = np.vstack([np.array([(A@M+M@A.T).ravel() for M in basis]).T for A in As])
    sv = np.linalg.svd(Mat, compute_uv=False)
    return int(np.sum(sv < tol*max(1, sv.max())))


def three_involution_numeric(trials=150, seed=11):
    rng = np.random.default_rng(seed)
    for _ in range(trials):
        A, B, C = (rand_balanced(rng) for _ in range(3))
        tau = np.real(np.trace(A@B@C))
        require((abs(tau) > 1e-8) == (common_form_dimension([A, B, C]) == 0), 'random: form iff Re tr ABC = 0')
        require(abs(np.trace(np.linalg.matrix_power(A+B+C, 3)) - 6*tau) < 1e-9, 'tr (A+B+C)^3 = 6 Re tr ABC')
    J0 = np.kron(np.eye(2), np.array([[0, 1], [-1, 0]]))
    for _ in range(trials):
        As = []
        for _ in range(3):
            H = rng.normal(size=(4, 4))+1j*rng.normal(size=(4, 4)); H = (H+H.conj().T)/2
            H = (H - J0@H.T@J0.conj().T)/2
            w, Vv = np.linalg.eigh(H); Sm = Vv@np.diag(np.exp(1j*w))@Vv.conj().T
            A = Sm@np.kron(np.diag([1, -1]), np.diag([1, -1]))@Sm.conj().T
            require(np.allclose(A@J0+J0@A.T, 0, atol=1e-10), 'constructed involution anti-preserves J0')
            As.append(A)
        tau = np.real(np.trace(As[0]@As[1]@As[2]))
        require(abs(tau) < 1e-9 and common_form_dimension(As) >= 1, 'common form forces Re tr ABC = 0')
    return {'random_trials': trials, 'structured_trials': trials}


def exact_count_two_triangle():
    """TriangleNullities.py control: A=F6, B=B2, entries zeta^e, zeta=exp(i pi/12)."""
    z = np.exp(1j*np.pi/12)
    A = np.array([[z**((4*k*j) % 24) for j in range(6)] for k in range(6)])/np.sqrt(6)
    E = [[0, 0, 0, 0, 0, 0], [6, 14, 22, 2, 10, 18], [16, 8, 0, 0, 16, 8],
         [6, 6, 6, 18, 18, 18], [0, 8, 16, 8, 16, 0], [22, 14, 6, 18, 10, 2]]
    B = np.array([[z**e for e in row] for row in E])/np.sqrt(6)
    return A, B


def numerical_triple():
    data = json.loads((HERE/'data'/'numerical_triple.json').read_text())
    U = np.array(data['U_re'])+1j*np.array(data['U_im'])
    V = np.array(data['V_re'])+1j*np.array(data['V_im'])
    return U, V


def tensor(A, B):
    X = A.conj().T@B
    return np.conj(A)[:, :, None]*B[:, None, :]/X[None, :, :], X


def slices(t, mode):
    if mode == 0:
        return [t[k] for k in range(6)]
    if mode == 1:
        return [t[:, i, :] for i in range(6)]
    return [t[:, :, j] for j in range(6)]


def KG(Gs):
    K = sum(((Gj@Gk-Gk@Gj).conj().T@(Gj@Gk-Gk@Gj)) for Gj, Gk in itertools.combinations(Gs[1:], 2))
    for _ in range(6):
        K = K + sum(G.conj().T@K@G + G@K@G.conj().T for G in Gs[1:])
    return (K+K.conj().T)/2


def min_minor(M):
    return min(abs(np.linalg.det(M[np.ix_(I, J)])) for I in itertools.combinations(range(6), 3)
               for J in itertools.combinations(range(6), 3))


def residual_controls(A, B, tol=1e-8, atol=1e-8):
    t, X = tensor(A, B)
    for M in (A, B, X):
        require(np.allclose(M@M.conj().T, np.eye(6), atol=atol) and np.allclose(abs(M)**2, 1/6, atol=atol), 'flat unitary edges')
    out = {'min_3minor_per_edge': [round(float(min_minor(np.sqrt(6)*M)), 6) for M in (A, B, X)]}
    for mode in range(3):
        Sl = slices(t, mode)
        for T in Sl:
            require(np.allclose(T@T.conj().T, np.eye(6), atol=atol), 'slice unitarity (1.1)')
        Gs = [Sl[0].conj().T@T for T in Sl]
        w, Vv = np.linalg.eigh(KG(Gs))
        ker = Vv[:, w < tol*w.max()]
        require(ker.shape[1] == 2, 'exactly two common lines in every direction')
        v0 = np.ones(6)/np.sqrt(6)
        require(np.linalg.norm(ker@(ker.conj().T@v0)-v0) < 1e-7, 'trivial line is common')
        v1 = ker@(ker.conj().T@np.eye(6)[:, 0]); v1 = v1 - v0*np.vdot(v0, v1); v1 /= np.linalg.norm(v1)
        require(np.allclose(abs(v1)**2, 1/6, atol=1e-7), 'second common input line is flat')
        w0 = Sl[0]@v0; w1 = Sl[0]@v1
        lam = np.array([np.vdot(w1, T@v1) for T in Sl]); one = np.array([np.vdot(w0, T@v0) for T in Sl])
        require(np.allclose(one, 1, atol=1e-7), 'trivial character is 1')
        require(abs(lam.sum()) < 1e-7 and np.allclose(abs(lam), 1, atol=1e-7), 'second character: zero-sum phases')
        require(np.allclose(sum(Sl), 6*np.outer(w0, v0.conj()), atol=1e-7) and
                np.allclose(sum(np.conj(l)*T for l, T in zip(lam, Sl)), 6*np.outer(w1, v1.conj()), atol=1e-7),
                'rank-one sums (R1)')
        Pin = np.eye(6)-np.outer(v0, v0.conj())-np.outer(v1, v1.conj())
        Pout = np.eye(6)-np.outer(w0, w0.conj())-np.outer(w1, w1.conj())
        ein = np.linalg.eigh(Pin)[1][:, 2:]; eout = np.linalg.eigh(Pout)[1][:, 2:]
        R = [eout.conj().T@T@ein for T in Sl]
        Gram = np.array([[np.trace(Ri.conj().T@Rj) for Rj in R] for Ri in R])
        require(np.allclose(Gram, 6*np.eye(6)-1-np.outer(lam.conj(), lam), atol=1e-7), 'residual Gram (R1)')
        require(np.allclose(sum(R), 0, atol=1e-7) and np.allclose(sum(np.conj(l)*Ri for l, Ri in zip(lam, R)), 0, atol=1e-7),
                'residual relations (R1)')
        psi = [np.sqrt(1.5)*ein.conj().T@Pin[:, j] for j in range(6)]
        chi = [np.sqrt(1.5)*eout.conj().T@Pout[:, i] for i in range(6)]
        for p in psi:
            require(np.allclose(sum(Ri@np.outer(p, p.conj())@Ri.conj().T for Ri in R), 1.5*np.eye(4), atol=1e-7), 'perfect input frame (6.2)')
        for c in chi:
            require(np.allclose(sum(Ri.conj().T@np.outer(c, c.conj())@Ri for Ri in R), 1.5*np.eye(4), atol=1e-7), 'perfect output frame (6.3)')
        Gpsi = np.array([[np.vdot(a, b) for b in psi] for a in psi])
        vv = v1*np.sqrt(6)
        require(np.allclose(Gpsi, 1.5*np.eye(6)-(1+np.outer(vv, vv.conj()))/4, atol=1e-7), 'frame Gram (6.1)')
        zs = np.sqrt(lam.astype(complex))
        U = [np.conj(zk)*Ri for zk, Ri in zip(zs, R)]
        GU = np.array([[np.trace(a.conj().T@b) for b in U] for a in U])
        require(np.allclose(GU.imag, 0, atol=1e-7), 'square-root normalized Gram is real (7.1)')
        require(np.allclose(sorted(np.linalg.eigvalsh(GU.real/4)), [0, 0, 1.5, 1.5, 1.5, 1.5], atol=1e-7), 'frame operator 3/2 (7.1)')
        Gr = [R[0].conj().T@Ri for Ri in R]
        ops = [np.kron(g, np.eye(4))-np.kron(np.eye(4), g.T) for g in Gr]
        _, sv, Vh = np.linalg.svd(np.vstack(ops))
        comm = int(np.sum(sv < 1e-7*sv.max()))
        # flatness of reducing projections: lift commutant projections and check the diagonal
        if comm > 1:
            Cb = Vh[-comm:].conj()  # commutant basis vectors (vec in row-major)
            rng = np.random.default_rng(3)
            Hm = sum(c*v.reshape(4, 4) for c, v in zip(rng.normal(size=comm), Cb))
            Hm = (Hm+Hm.conj().T)/2
            ev, W = np.linalg.eigh(Hm)
            P = W[:, :2]@W[:, :2].conj().T
            require(all(np.allclose(P@g, g@P, atol=1e-7) for g in Gr), 'spectral projection lies in the commutant')
            Plift = ein@P@ein.conj().T
            require(np.allclose(np.diag(Plift).real, 1/3, atol=1e-7), 'reducing projection is flat (R3)')
        vals = []
        for x in lam/lam[0]:
            if all(abs(x-y) > 1e-6 for y in vals):
                vals.append(x)
        binary = bool(np.allclose((lam/lam[0]).imag, 0, atol=1e-7))
        out['direction_%d' % mode] = {'distinct_character_values': len(vals), 'commutant_dim': comm,
                                      'character_binary': binary}
    return out


def calculate():
    A, B = exact_count_two_triangle()
    U, V = numerical_triple()
    return {'three_involution_exact': three_involution_exact(),
            'three_involution_numeric': three_involution_numeric(),
            'count_two_control_exact_triangle': residual_controls(A, B),
            'count_two_control_numerical_triple': residual_controls(U, V)}


if __name__ == '__main__':
    print(json.dumps(calculate(), indent=1, sort_keys=True))
