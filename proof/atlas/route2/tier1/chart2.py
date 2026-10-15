"""Second-order normal bound (proposed Lemma 4.1', MILESTONE1.md section 5.2), float evaluation of the exact formula.

Chart model delta0(eta) = T eta + q(eta, eta)/2 (q normal, any choice).  For a Hadamard e^{i(P + delta)} with
delta = delta0(eta) + nu, nu normal:
    0 = Phi(delta0 + nu) = Phi(delta0) + J(delta0) nu + Rem,  ||Rem|| <= sqrt3 ||nu||^2,
    ||J(delta0) nu|| >= (sigma - 2 sqrt3 ||delta0||) ||nu||          (||J(x) - J(0)|| <= 2 sqrt3 ||x||),
so  (sigma - 2 sqrt3 ||delta0||) ||nu|| <= e3 + sqrt3 ||nu||^2 with e3 = sup ||Phi(delta0(eta))|| (Taylor models), and
||nu|| is at most the smaller root once an a-priori bound (Lemma 4.1) puts it below the larger root.
Usage: chart2.py rho id ...
"""
import sys, math, numpy as np
from tm import Space
import region as _RG
from centres import load

def e3_bound(ch, rho, D=4, rig=False, kind='ball'):
    S = Space(D, kind, rho, rig=rig); P = ch.P
    c = np.zeros((36, S.M)); c[:, 0] = P.reshape(36) + ch.g0
    for k in range(4): c[:, S.lin[k]] = ch.T[:, k]
    for i in range(4):
        for j in range(4):
            m = tuple((1 if t == i else 0) + (1 if t == j else 0) for t in range(4)); c[:, S.idx[m]] += 0.5 * ch.q[:, i, j]
    H = S.expi((c + 0j, (2 * 2.0 ** -53 * abs(c[:, 0])) if rig else np.zeros(36)))
    H = (H[0].reshape(6, 6, S.M), H[1].reshape(6, 6))
    Hc = S.conj(H)
    G = S.mul((H[0][:, None], H[1][:, None]), (Hc[0][None], Hc[1][None]))      # a, b, c
    G = S.sumax(G, (2,))
    IU = np.triu_indices(6, 1); off = (G[0][IU], G[1][IU])
    b = S.absb(off)                                         # complex modulus bound per off-diagonal entry
    e_entry = float(np.sqrt((b ** 2).sum()))
    # vector Bombieri bound of ||Phi|| = sqrt(2) ||offdiag(G)|| ... Phi has 30 real coords = Re, Im of the 15 entries:
    # ||Phi||_2 = ||offdiag||_2 (complex), bounded degree-wise by the stacked Bombieri norm, plus the radii
    e_vec = float(S.bombvec(off[0], axis=0) + np.sqrt((off[1] ** 2).sum()) + (0.0 if not rig else 1e-15))
    return min(e_entry, e_vec) * (1 + 1e-12), S

def phi_tm(ch, rho, D=4, rig=False, kind='ball'):
    """TM of Phi(delta0(eta)) as a 30-vector (Re, Im of the 15 off-diagonal entries, IU order)"""
    S = Space(D, kind, rho, rig=rig); P = ch.P
    c = np.zeros((36, S.M)); c[:, 0] = P.reshape(36) + ch.g0
    for k in range(4): c[:, S.lin[k]] = ch.T[:, k]
    for i in range(4):
        for j in range(4):
            m = tuple((1 if t == i else 0) + (1 if t == j else 0) for t in range(4)); c[:, S.idx[m]] += 0.5 * ch.q[:, i, j]
    H = S.expi((c + 0j, (2 * 2.0 ** -53 * abs(c[:, 0])) if rig else np.zeros(36)))
    H = (H[0].reshape(6, 6, S.M), H[1].reshape(6, 6)); Hc = S.conj(H)
    G = S.sumax(S.mul((H[0][:, None], H[1][:, None]), (Hc[0][None], Hc[1][None])), (2,))
    IU = np.triu_indices(6, 1); off = (G[0][IU], G[1][IU])
    vec = np.concatenate([off[0].real, off[0].imag]); rad = np.concatenate([off[1], off[1]])
    return S, vec, rad

def n3_bound_L(ch, rho, kind='ball', rig=False, a_priori=None):
    """Lemma 4.1' with a left inverse L of J_N = J(0) N:  (1 - eps_L) ||nu_N|| <= ||L Phi(delta0)|| +
    ||L|| (2 sqrt3 d0 ||nu|| + sqrt3 ||nu||^2), ||nu|| <= ||nu_N|| + leak; leak ~ 1e-16 is neglected in the float
    prototype (rigorous_region.py adds it).  Returns n3 (or None)."""
    S, vec, rad = phi_tm(ch, rho, rig=rig, kind=kind)
    JN = _RG.J36(ch.P, ch.g0) @ ch.Nb                         # 30 x 21 at the chart centre (delta0(0) = g0)
    L = np.linalg.pinv(JN); epsL = float(np.abs(np.eye(21) - L @ JN).sum(1).max()) * 21
    Ln = float(np.linalg.norm(L, 2)) * 1.01 + 1e-12
    Lv = np.einsum('ij,jm->im', L, vec)                         # TM of L Phi (exact linear combination; rounding tiny)
    eL = float(S.bombvec(Lv, axis=0) + np.abs(L).sum(1).max() * rad.max() * math.sqrt(21)) * (1 + 1e-9)
    R = rho if kind == 'ball' else 2 * rho
    d0 = float(np.linalg.norm(ch.T, 2)) * R + 0.5 * float(np.sqrt((ch.q ** 2).sum())) * R ** 2
    a = (1 - epsL) - Ln * 2 * math.sqrt(3) * d0; b = eL; c3 = Ln * math.sqrt(3)
    disc = a * a - 4 * c3 * b
    if a <= 0 or disc <= 0: return None
    small = 2 * b / (a + math.sqrt(disc)); large = (a + math.sqrt(disc)) / (2 * c3)
    if a_priori is not None and not a_priori < large: return None
    return small * (1 + 1e-12)

def sigma_num(ch):
    J36 = _RG.J36
    JN = J36(ch.P, ch.g0) @ ch.Nb
    return float(np.linalg.svd(JN, compute_uv=False)[-1])

def n3_bound(ch, rho, sigma=None):
    e3, S = e3_bound(ch, rho)
    sigma = sigma or sigma_num(ch)
    d0 = math.sqrt((np.linalg.norm(ch.T, 2) * rho) ** 2) + 0.5 * np.abs(ch.q).sum(0).max() * rho ** 2 * 1.0
    a = sigma - 2 * math.sqrt(3) * d0
    if a <= 0: return None, e3, sigma
    disc = a * a - 4 * math.sqrt(3) * e3
    if disc <= 0: return None, e3, sigma
    return 2 * e3 / (a + math.sqrt(disc)), e3, sigma

if __name__ == '__main__':
    rho = float(sys.argv[1]); phi, _, _ = load()
    for i in map(int, sys.argv[2:]):
        ch = _RG.Chart(phi[i].reshape(6, 6)); n3, e3, sg = n3_bound(ch, rho); n3L = n3_bound_L(ch, rho)
        f = lambda z: 'fail' if z is None else f'{z:.3g} (= {z / rho ** 3:.2f} rho^3)'
        print(f'rec {i} rho {rho}: sigma {sg:.3f} e3 {e3:.3g} n3 {f(n3)}; with left inverse: n3 {f(n3L)}; true chart residual {ch.residual(rho):.3g}', flush=True)
