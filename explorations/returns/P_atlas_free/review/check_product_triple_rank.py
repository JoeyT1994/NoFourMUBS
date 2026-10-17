# Independent check: the isolated product triple H0 = F2 (x) F3, K0 = diag(1,w,w,i,iw,iw) H0 has full Jacobian rank 55
import numpy as np, itertools
w = np.exp(2j*np.pi/3)
F2 = np.array([[1,1],[1,-1]]); F3 = np.array([[w**(r*c) for c in range(3)] for r in range(3)])
H = np.kron(F2, F3); K = np.diag([1,w,w,1j,1j*w,1j*w]) @ H
L = H.conj().T @ K / np.sqrt(6)
print("H, K Hadamard:", np.allclose(H@H.conj().T, 6*np.eye(6)), np.allclose(K@K.conj().T, 6*np.eye(6)), " L unimodular:", np.allclose(abs(L), 1))
def residual(p):
    a = np.zeros((6,6)); a[1:,1:] = p[:25].reshape(5,5); b = np.zeros((6,6)); b[1:,:] = p[25:].reshape(5,6)
    Hh, Kk = np.exp(1j*a), np.exp(1j*b); Ll = Hh.conj().T @ Kk / np.sqrt(6)
    iu = np.triu_indices(6, 1); GH = (Hh.conj().T @ Hh)[iu]; GK = (Kk.conj().T @ Kk)[iu]
    return np.concatenate([GH.real, GH.imag, GK.real, GK.imag, (np.abs(Ll)**2 - 1).ravel()])
d1 = 1/H[:,0]; H1 = d1[:,None]*H; Hd = H1/H1[0][None,:]; K1 = d1[:,None]*K; Kd = K1/K1[0][None,:]
p = np.concatenate([np.angle(Hd[1:,1:]).ravel(), np.angle(Kd[1:,:]).ravel()])
assert np.allclose(residual(p), 0, atol=1e-10)
e = 1e-6; J = np.array([(residual(p+e*np.eye(55)[k]) - residual(p-e*np.eye(55)[k]))/(2*e) for k in range(55)]).T
s = np.linalg.svd(J, compute_uv=False)
print(f"Jacobian 96x55: rank {int((s > 1e-6*s[0]).sum())}, smallest singular value {s[-1]:.3f} (largest {s[0]:.1f})")
