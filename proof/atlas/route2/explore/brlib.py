"""Route 2 feasibility on genuine Record balls: H(eta) = project(P + T eta), T an orthonormal tangent frame.
Track all unbiased-vector branches over the ball; per pair, min |<x_a,x_b>| over sampled points."""
import sys, numpy as np, networkx as nx
sys.path.insert(0, str(__import__('pathlib').Path(__file__).resolve().parents[2]))
import atlas as AT
from geometry import jacobian, HB
from export import load_certificate
from unbiased import solve, residual, jac

def newton(phi, Hs, it=40):
    for _ in range(it):
        r = residual(phi, Hs); J = jac(phi, Hs)
        step, *_ = np.linalg.lstsq(J, -r, rcond=None); phi = phi + step
        if np.linalg.norm(step) < 1e-12: break
    return phi, np.max(abs(residual(phi, Hs)))

def frame(P):
    H = np.exp(1j * P); U, s, Vt = np.linalg.svd(jacobian(H))
    return HB @ Vt[-4:].T                                    # 36 x 4 orthonormal tangent directions

def Hof(P, T, eta):
    x, ok = AT.project(P.reshape(36) + T @ eta)
    return np.exp(1j * x.reshape(6, 6)), ok

cert = load_certificate(str(__import__('pathlib').Path(__file__).resolve().parents[2] / 'results/atlas_certificate.json.gz'))
