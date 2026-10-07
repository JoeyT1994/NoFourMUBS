"""Task 2 (numerical part on the exact linear forms).  Using the exact 400 linear forms
L_c (first-order Taylor coefficients of D_c = 2 Im q_c at F6 along T, from task2_hessian_exact.py),
compute over the unit sphere of T:
  * min/max of S_2(y)  = sum_c (L_c y)^2       (exactly 31104/2 |y_perp|^2 * 2 ... checked)
  * min of  M_2(y) = max_c (L_c y)^2            (first-order max-corner constant)
relative to |v_perp|^2, |v_deph|^2 and the first-order projector distance d_F1(v)^2, where
  d_F1(v)^2 = min_alpha max_j (1/6) sum_i (v_ij + alpha_i - mean_i(v_.j + alpha))^2.
"""
import json, os, sys
import numpy as np
from scipy.optimize import minimize, linprog

here = os.path.dirname(os.path.abspath(__file__))
D = json.load(open(os.path.join(here, 'results_task2_exact.json')))
L = np.array([[float(eval(x)) if '/' not in x else float(eval(x)) for x in r] for r in D['L']])
Mp = np.array([[float(x) for x in r] for r in D['Mperp']]); Md = np.array([[float(x) for x in r] for r in D['Mdeph']])
sys.path.insert(0, here)
from task2_hessian_exact import tangent_basis
T = np.array(tangent_basis(), float)            # 4 x 6 x 6


def vmat(y): return np.tensordot(y, T, 1)


def dF1sq(V):
    """first-order squared projector distance (convex minimax over row phases alpha), SLSQP epigraph."""
    def colvar(a):
        X = V + np.concatenate([[0], a])[:, None]
        return ((X - X.mean(0)) ** 2).mean(0)
    x0 = np.r_[np.zeros(5), colvar(np.zeros(5)).max()]
    res = minimize(lambda x: x[5], x0, method='SLSQP',
                   constraints=[dict(type='ineq', fun=lambda x: x[5] - colvar(x[:5]))],
                   options=dict(ftol=1e-14, maxiter=500))
    return min(colvar(res.x[:5]).max(), x0[5])


def perp(V): return V - V.mean(1, keepdims=True) - V.mean(0, keepdims=True) + V.mean()


rng = np.random.default_rng(0)
Y = rng.normal(size=(4000, 4))
rows = []
for y in Y:
    V = vmat(y); vp2 = (perp(V) ** 2).sum(); vd2 = (V[1:, 1:] ** 2).sum()
    l = L @ y; S2 = (l ** 2).sum(); M2 = (l ** 2).max()
    rows.append((S2, M2, vp2, vd2))
rows = np.array(rows)
print('S2/|v_perp|^2   min %.4f max %.4f' % tuple(np.r_[(rows[:, 0] / rows[:, 2]).min(), (rows[:, 0] / rows[:, 2]).max()]))
print('S2/|v_deph|^2   min %.4f max %.4f' % tuple(np.r_[(rows[:, 0] / rows[:, 3]).min(), (rows[:, 0] / rows[:, 3]).max()]))
print('M2/|v_perp|^2   min %.4f (sampled) max %.4f' % ((rows[:, 1] / rows[:, 2]).min(), (rows[:, 1] / rows[:, 2]).max()))


# refine min of M2/|v_perp|^2 : minimise max_c (L_c y)^2 subject to y^T Mp y = 1  -> LP-ish; use local opt from best samples
def ratio(y):
    V = vmat(y); return ((L @ y) ** 2).max() / (perp(V) ** 2).sum()


order = np.argsort(rows[:, 1] / rows[:, 2])[:40]
best = min((minimize(ratio, Y[i], method='Nelder-Mead', options=dict(xatol=1e-12, fatol=1e-12, maxiter=20000)) for i in order), key=lambda r: r.fun)
print('min_y max_c (L_c y)^2 / |v_perp|^2 = %.6f at y=%s' % (best.fun, np.round(best.x / np.abs(best.x).max(), 6)))
ystar = best.x

# projector-distance ratios
r2 = []
for y in Y[:1500]:
    V = vmat(y); d2 = dF1sq(V); l = L @ y
    r2.append(((l ** 2).sum() / d2, (l ** 2).max() / d2, (perp(V) ** 2).sum() / d2))
r2 = np.array(r2)
print('S2/dF1^2   min %.3f  max %.3f' % (r2[:, 0].min(), r2[:, 0].max()))
print('M2/dF1^2   min %.3f  max %.3f' % (r2[:, 1].min(), r2[:, 1].max()))
print('|v_perp|^2/dF1^2 min %.4f max %.4f' % (r2[:, 2].min(), r2[:, 2].max()))
i = np.argsort(r2[:, 1])[:20]


def ratio2(y):
    V = vmat(y); return ((L @ y) ** 2).max() / dF1sq(V)


best2 = min((minimize(ratio2, Y[k], method='Nelder-Mead', options=dict(xatol=1e-9, fatol=1e-9, maxiter=4000)) for k in i), key=lambda r: r.fun)
print('min_y max_c (L_c y)^2 / dF1^2 = %.4f at y=%s' % (best2.fun, np.round(best2.x / np.abs(best2.x).max(), 5)))
print('at the max-corner minimiser y*: dF1^2/|v_perp|^2 =', dF1sq(vmat(ystar)) / (perp(vmat(ystar)) ** 2).sum())
json.dump(dict(min_M2_over_vperp2=best.fun, ystar=list(best.x), min_M2_over_dF2=best2.fun, ystar_dF=list(best2.x),
               S2_over_dF2_range=[r2[:, 0].min(), r2[:, 0].max()], vperp2_over_dF2_range=[r2[:, 2].min(), r2[:, 2].max()]),
          open(os.path.join(here, 'results_task2_minimax.json'), 'w'), indent=1)
