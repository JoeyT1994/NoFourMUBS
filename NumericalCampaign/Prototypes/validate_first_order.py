"""Check the first-order overlap tolerance of seed_cell_certify.py against reality.
For random seeds theta in the cell |theta-theta0|_inf <= rho, recompute all common rays,
match them to the centre rays (Newton from the first-order prediction), and compare the
true overlap change | |g_ab(theta)| - |g_ab(theta0)| | with the first-order bound
rho*sum_m |d g_ab/d theta_m|.  Reports the worst ratio (true / bound) and whether the ray
count changed (a new ray entering the cell would break completeness)."""
import numpy as np, sys
exec(open('seed_cell_certify.py').read().split("if __name__ == '__main__':")[0])
from scipy.optimize import least_squares

def track(U, z0):
    phi0 = np.angle(z0[1:] / z0[0])
    r = least_squares(lambda p: f(p, U), phi0, xtol=1e-15, ftol=1e-15, gtol=1e-15)
    z = np.concatenate([[1], np.exp(1j * r.x)]) / np.sqrt(6)
    return z, np.abs(r.fun).max()

spec = sys.argv[1]; th0 = np.array([float(x) for x in spec.split(',')])
U0 = H_of(th0); R = rays(U0, 2500); U0, vel = ray_velocities(th0, R)
Z = np.array(R); G0 = np.abs(Z.conj() @ Z.T)
dG = np.einsum('ami,bi->mab', vel.conj(), Z) + np.einsum('ai,bmi->mab', Z.conj(), vel)
S = np.abs(dG).sum(0)
rng_ = np.random.default_rng(3)
for rho in [float(x) for x in sys.argv[2:]]:
    worst = 0; worst_abs = 0; count_changes = 0; bad_track = 0
    for t in range(8):
        th = th0 + rho * rng_.uniform(-1, 1, 4)
        U = H_of(th)
        Zt = []
        for i, z in enumerate(R):
            zp = z + (vel[i] * (th - th0)[:, None]).sum(0)      # first-order predicted ray
            zt, err = track(U, zp / np.abs(zp) / np.sqrt(6))
            if err > 1e-10: bad_track += 1
            Zt.append(zt)
        Zt = np.array(Zt); Gt = np.abs(Zt.conj() @ Zt.T)
        # distinctness of tracked rays (two centre rays converging to the same ray = tracking failure)
        dup = (np.abs(Gt - 1) < 1e-6).sum() - len(R)
        n_now = len(rays(U, 600))
        if n_now != len(R): count_changes += 1
        bound = rho * S + 1e-12
        mask = ~np.eye(len(R), dtype=bool)
        ratio = (np.abs(Gt - G0)[mask] / bound[mask]).max()
        worst = max(worst, ratio); worst_abs = max(worst_abs, np.abs(Gt - G0)[mask].max())
    print(f"{spec} rho {rho}: worst true/first-order-bound ratio {worst:.2f}, worst |d|g|| {worst_abs:.3f}, "
          f"ray-count changes {count_changes}/8, tracking failures {bad_track}, duplicate tracks {dup}", flush=True)
