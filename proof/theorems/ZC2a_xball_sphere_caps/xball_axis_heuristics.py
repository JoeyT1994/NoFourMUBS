"""Untrusted cap-axis proposals; the interval transfer checker decides validity.

This module never changes a target descriptor or any certificate meaning.
It relocates a proposed cap axis within the same source sphere. A caller must
check that the resulting cap actually contains the uncovered direction.
"""
import math
import numpy as np
from scipy.optimize import minimize, minimize_scalar


def optimized_axis(search, group_index, direction, max_angle=0.65):
    """Minimize polynomial target norm on S^3, near the requested direction.

    `search.a`, `search.b`, and `search.h` are normalized output coefficients
    in x=w/r: y=a+B*x+H[x,x]. Analytic gradients make this a cheap proposal.
    The cap's target and sign witnesses must still be recomputed at this axis.
    """
    e = np.asarray(direction, float)
    e = e / np.linalg.norm(e)
    aa, bb, hh = search.a[group_index], search.b[group_index], search.h[group_index]

    def fg(x):
        hx = np.einsum('aij,j->ai', hh, x)
        y = aa + bb @ x + hx @ x
        return float(y @ y), 2 * (bb + 2 * hx).T @ y

    constraints = [dict(type='eq', fun=lambda x: float(x @ x - 1),
                        jac=lambda x: 2*x)]
    if max_angle is not None:
        c = math.cos(max_angle)
        constraints.append(dict(type='ineq', fun=lambda x: float(e @ x - c),
                                jac=lambda x: e))
    result = minimize(fg, e, jac=True, method='SLSQP', constraints=constraints,
                      options={'ftol': 1e-11, 'maxiter': 45})
    axis = np.asarray(result.x, float)
    if not np.all(np.isfinite(axis)) or np.linalg.norm(axis) < 1e-12:
        return e
    axis /= np.linalg.norm(axis)
    if fg(axis)[0] >= fg(e)[0]:
        return e
    return axis


def shifted_axes(search, group_index, direction, fractions=(1., .75, .5, .25),
                 max_angle=0.65):
    """Try the most centred axis first, then interpolate toward the hole.

    The returned axes exclude the original unless the optimizer cannot
    improve its target norm. Usually only one or two candidates are needed.
    """
    e = np.asarray(direction, float)
    e /= np.linalg.norm(e)
    optimum = optimized_axis(search, group_index, e, max_angle)
    if np.linalg.norm(e-optimum) < 1e-7:
        return []
    answer = []
    for fraction in fractions:
        v = (1-fraction)*e + fraction*optimum
        v /= np.linalg.norm(v)
        answer.append(v)
    return answer


def contains_direction(cap, direction, margin=1e-8):
    """Numerical construction predicate only; exact cover replay is separate."""
    v = np.asarray(cap['v'], float)
    h = cap['h']
    if isinstance(h, str):
        h = float.fromhex(h)
    e = np.asarray(direction, float)
    e /= np.linalg.norm(e)
    return bool(float(v @ e - h) > margin*np.linalg.norm(v))


def angular_radius_scores(search, direction, candidate_floor=-0.1):
    """Optional all-target ranking accounting for drift and tangential size.

    This solves 2*k*rho + L^2*rho^2 = 1-||y||^2 in the tangent-plane model.
    It is a search score, not a bound: use it only to choose candidate groups.
    """
    e = np.asarray(direction, float)
    e /= np.linalg.norm(e)
    hx = np.einsum('gaij,j->gai', search.h, e)
    y = search.a + np.einsum('gai,i->ga', search.b + hx, e)
    jac = search.b + 2*hx
    radial = np.einsum('gai,i->ga', jac, e)
    tangent = jac - radial[:, :, None]*e[None, None, :]
    # Frobenius is cheaper than 16,100 small SVDs and useful as a ranking.
    lip2 = np.einsum('gai,gai->g', tangent, tangent)
    drift = np.linalg.norm(np.einsum('gai,ga->gi', tangent, y), axis=1)
    slack = 1-np.einsum('ga,ga->g', y, y)
    positive = np.maximum(slack, 0)
    rho = positive / (np.sqrt(drift*drift + lip2*positive)+drift+1e-30)
    rho[slack < candidate_floor] = -np.inf
    return rho


def radial_sdual(d, ff, e, threshold, shrink=1e-7):
    """One-dimensional search in the stronger multiplier family a=-k*mu*e.

    k=1-shrink gives strict SOC slack. In coordinates (e,e-perp), fixing
    lambda leaves a one-variable Schur complement whose minimizing mu is
    explicit. Returned numbers are proposals for the existing 5x5 witness.
    """
    kappa = 1-shrink
    hh = e.copy()
    hh[0] += 1 if e[0] >= 0 else -1
    hh /= np.linalg.norm(hh)
    tangent = (np.eye(4)-2*np.outer(hh, hh))[:, 1:]
    ft, fr = ff@tangent, ff@e
    vals, vecs = np.linalg.eigh(ft.T@ft)
    coupling = vecs.T@(ft.T@fr)
    bt = vecs.T@(ft.T@d)
    grr, br = float(fr@fr), float(fr@d)
    top = vals[-1]
    scale = max(1., top, grr, np.linalg.norm(ff.T@d))
    alpha = (1/kappa+threshold)/2
    beta = (1/kappa-threshold)/2

    def value(loggap, details=False):
        lam = top+scale*math.exp(float(loggap))
        inv = 1/(lam-vals)
        schur0 = lam-grr-np.sum(coupling*coupling*inv)
        bb = br+np.sum(coupling*bt*inv)
        cc = bb-alpha*schur0
        radial = max(abs(cc)/beta, schur0, scale*1e-14)
        mu = max(0., (radial-schur0)/kappa)
        # Stable expansion of d²+lambda-t*mu+bt'D^-1bt+
        # (bb+mu*(1+k*t)/2)^2/(schur0+k*mu).
        bound = (float(d@d)+lam+np.sum(bt*bt*inv)+beta*beta*radial
                 +2*alpha*cc+(threshold/kappa)*schur0+cc*cc/radial)
        return (float(bound),float(lam),float(mu),-kappa*mu*e) if details else float(bound)

    opt = minimize_scalar(value, bounds=(-25., 12.), method='bounded',
                          options={'xatol': 1e-5})
    return min([value(opt.x, True),value(-25., True),value(12., True)],
               key=lambda x:x[0])


def radial_cap(transfer, direction, slack=3e-5):
    """Local-sphere proposal choosing the better scalar/radial multiplier.

    No inequality here is trusted. The returned multiplier_vec is replayed
    by cert/caps.py, including its SOC condition and all five LDL pivots.
    """
    import xball_construct as X
    e = np.asarray(direction, float)
    e /= np.linalg.norm(e)
    v = np.rint(e*2**26).astype(np.int64)
    vn = np.linalg.norm(v.astype(float))
    e = v/vn
    data = transfer.local_data(v)

    def check(t):
        scalar = X.C.sdual(data['d'],data['F'],e,t)
        stronger = radial_sdual(data['d'],data['F'],e,t)
        if scalar[0] <= stronger[0]:
            ss,lam,mu = scalar
            avec = np.zeros(4)
        else:
            ss,lam,mu,avec = stronger
        dsq = 2*transfer.r*transfer.r*max(0.,1-t)
        eps = .5*data['C_A']*dsq
        margin = 1-math.sqrt(max(0.,ss))-eps
        signs = []
        if margin > -1e-8:
            for side in data['sides']:
                ed = side['RBn']*math.sqrt(dsq)+.5*side['C_R']*dsq
                signs.append(side['const']+X.C.linear_cap_min(side['l'],e,t)
                             -.5*side['C_g']*dsq-36*ed*ed)
        return dict(ok=margin>1e-8 and all(x>1e-8 for x in signs),
                    s=ss,lambda_=lam,mu=mu,avec=avec,margin=margin,signs=signs)

    if not check(.99999999)['ok']:
        return None
    lo,hi = 0.,.99999999
    for _ in range(17):
        mid = (lo+hi)/2
        if check(mid)['ok']:hi=mid
        else:lo=mid
    h = math.ceil(min(.99999999,hi+slack)*vn)
    t = h/vn
    if not 0<t<1:return None
    ans = check(t)
    if not ans['ok']:return None
    return dict(group_index=transfer.index,mode='local_sphere',weighted_target=True,
                v=[int(x) for x in v],h=h,
                s=float(ans['s']+max(1e-8,abs(ans['s'])*1e-8)).hex(),
                lambda_=float(ans['lambda_']).hex(),mu=float(ans['mu']).hex(),
                multiplier_vec=[float(x).hex() for x in ans['avec']],
                info=dict(numerical_threshold=t,numerical_radius=math.acos(t),
                          numerical_target_margin=ans['margin'],
                          numerical_orientation_margins=ans['signs'],
                          construction_family='scalar-or-radial-SOC'))

