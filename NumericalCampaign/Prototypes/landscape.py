"""Sample seed cells across the strict domain and classify them with the correlated
first-order certifier (safety factor 2 on the tolerance, cell radius RHO):
  'no-triple'  : no candidate orthonormal basis among the rays -> no MU triple with this edge;
  'no-quartet' : candidate bases exist but no quartet survives;
  'fail'       : a quartet candidate survives (cell must be refined or treated locally).
Also records the centre's minimal 3x3 minor (distance to the Fourier wall) and max ray speed."""
import numpy as np, sys, itertools, json
exec(open('seed_cell_certify.py').read().split("if __name__ == '__main__':")[0])
RHO = 0.02; SAFE = 2.0
rng_ = np.random.default_rng(int(sys.argv[1])); N = int(sys.argv[2])
def minmin(U):
    P = np.sqrt(6) * U
    return min(abs(np.linalg.det(P[np.ix_(r, c)])) for r in itertools.combinations(range(6), 3) for c in itertools.combinations(range(6), 3))
done = 0
while done < N:
    th = rng_.uniform(-np.pi, np.pi, 4)
    try: U0 = H_of(th)
    except ValueError: continue          # outside the strict R>0 domain
    R = rays(U0, 1500)
    U0, vel = ray_velocities(th, R)
    nb, sv = certify_cell(R, vel, SAFE * RHO)
    cls = 'no-triple' if nb == 0 else ('no-quartet' if sv == 0 else 'fail')
    rec = dict(seeds=[round(float(x), 4) for x in th], rays=len(R), bases=nb, surviving=sv, cls=cls,
               minor=round(float(minmin(U0)), 4), speed=round(float(np.abs(vel).sum(axis=(1, 2)).max()), 1))
    print(json.dumps(rec), flush=True); done += 1
