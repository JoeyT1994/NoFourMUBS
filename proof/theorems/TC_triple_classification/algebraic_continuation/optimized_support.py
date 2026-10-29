"""Numerical conic search followed by the frozen Arb quadratic verifier.

The conic objective is only a search heuristic. Its solver status, floating
matrix inequalities, and proposed objective never establish exclusion.
The accepted object is scalar_support.receipt on the original tube.
"""
import numpy as np
from load_native import C, MS, S, arb


def tube_data(model, prepared, bounds, clique):
    """Intersect correlated and absolute-column phase bounds in cubic tails."""
    d = S.data(model, prepared, bounds, clique)
    p6 = C.project6()
    uc = [p6*S.block(model['U'],range(c,36,6),range(4)) for c in range(6)]
    nc = [C.Z.spectral(p6*S.block(model['H2'],range(c,36,6),range(16)))*model['r']*model['r']/2
          +C.Z.spectral(p6*S.block(model['X'],range(c,36,6),range(model['X'].ncols())))*model['tau']
          for c in range(6)]
    for k,(a,b) in enumerate(C.PAIRS):
        d['kd'][k] = min(d['kd'][k].upper(),
            (bounds[clique[a]]['phase_radius']+bounds[clique[b]]['phase_radius']).upper())
    for a in range(6):
        for b in range(6):
            d['md'][a][b] = min(d['md'][a][b].upper(),
                (C.Z.spectral(uc[a])*model['r']+nc[a]+bounds[clique[b]]['phase_radius']).upper())
    return d


def compressed_norm_map(a):
    """Reduce a numeric search map's codomain; this has no proof role."""
    return np.linalg.qr(a, mode='reduced')[1]


def search_data(d):
    ell = MS.numeric(MS.LMAT)
    coefficients = np.zeros((96, len(MS.TERMS)))
    for t, (re, im, _, _) in enumerate(MS.TERMS):
        coefficients[re, t] = -float(d['zs'][t].real.mid())
        if im is not None:
            coefficients[im, t] = -float(d['zs'][t].imag.mid())
    hess = (coefficients @ np.einsum('ti,tj->tij', ell, ell).reshape(len(ell), -1)).reshape(96, 72, 72)
    # Orthonormal bases remove the six constant-column null directions.
    b6 = np.linalg.qr(np.eye(6)[:, :5]-np.eye(6)[:, 5, None])[0]
    red = np.zeros((40, 34)); red[:4, :4] = np.eye(4)
    for c in range(6):
        red[4+c:40:6, 4+5*c:9+5*c] = b6
    scaled = MS.numeric(d['scaled']) @ red
    q = np.einsum('ai,tab,bj->tij', scaled, hess, scaled, optimize=True)
    model = d['model']; r = float(model['r']); tau = float(model['tau'])
    jh = MS.numeric(d['jh']); j = MS.numeric(d['j'])
    q[:, :4, :4] += (jh @ MS.numeric(model['H2'])).reshape(96,4,4)*r*r
    g = j @ scaled
    lift = MS.numeric(d['lift']); pk = MS.numeric(d['pk'])
    nh = float(d['nh']); ne = np.linalg.norm([float(x) for x in d['eps']])
    # Frobenius norms upper-bound the corresponding operator norms in the
    # search objective. The final certificate uses the sharper Arb bounds.
    maps = [jh @ MS.numeric(model['X']) * tau,
            np.einsum('ai,tab->tib', lift, hess[:,:,:36], optimize=True).reshape(96,-1)*r*nh,
            np.einsum('ia,tab->tib', pk, hess[:,36:,:36], optimize=True).reshape(96,-1)*ne*nh,
            hess[:,:36,:36].reshape(96,-1)*nh*nh/2]
    maps = [compressed_norm_map(m.T) for m in maps]
    return dict(f=MS.numeric(d['f'])[:,0], q=q, g=g, maps=maps,
                hd=np.array([float(v)**3/6 for v in d['hd']]),
                kd=np.array([float(v)**3/6 for v in d['kd']]),
                md=np.array([[float(v)**3*np.sqrt(2)/3 for v in row] for row in d['md']]).ravel())


def propose(d):
    from flint import ctx
    precision = ctx.prec
    import cvxpy as cp
    ctx.prec = precision
    n = search_data(d)
    y = cp.Variable(96)
    lam = cp.Variable(7, nonneg=True)
    s = cp.Variable(nonneg=True)
    q = cp.reshape(n['q'].reshape(96,-1).T@y, (34,34), order='C')
    g = n['g'].T@y
    diag = cp.hstack([cp.multiply(np.ones(4),lam[0])] +
                     [cp.multiply(np.ones(5),lam[c+1]) for c in range(6)])
    a = q+cp.diag(diag)
    matrix = cp.bmat([[a, cp.reshape(g,(34,1),order='C')],
                     [cp.reshape(g,(1,34),order='C'), cp.reshape(s,(1,1),order='C')]])
    tail = sum(cp.norm(m@y,2) for m in n['maps'])
    tail += n['hd'] @ cp.norm(cp.vstack([y[:15],y[15:30]]),2,axis=0)
    tail += n['kd'] @ cp.norm(cp.vstack([y[30:45],y[45:60]]),2,axis=0)
    tail += n['md'] @ cp.abs(y[60:96])
    objective = cp.Minimize((cp.sum(lam)+s)/2+tail)
    problem = cp.Problem(objective,[n['f']@y==1, y[:30]==0,
                                  cp.norm(y,2)<=1000, matrix >> 1e-9*np.eye(35)])
    problem.solve(solver='CLARABEL',max_iter=100,
                  tol_gap_abs=1e-7,tol_feas=1e-7,tol_gap_rel=1e-7)
    ctx.prec = precision
    info = dict(solver_status=problem.status,
                proposed_cost=None if problem.value is None else float(problem.value))
    if y.value is None or lam.value is None:
        return None, info
    direction = np.asarray(y.value).ravel()
    multipliers = np.maximum(np.asarray(lam.value).ravel(),0)+1e-7
    if not np.isfinite(direction).all() or not np.isfinite(multipliers).all():
        return None, info
    try:
        proof = S.receipt(d, direction.tolist(), multipliers.tolist())
        c,q,g,tail,_ = S.direction_quadratic(d,direction.tolist())
        from intervals import dual_lower
        info['verified_margin'] = str(c+dual_lower(q,g,d['groups'],multipliers.tolist())-tail)
    except (ArithmeticError, ValueError, ZeroDivisionError):
        proof = None
    if proof is not None:
        proof['proposal_method'] = 'joint conic search of residual direction and seven multipliers'
        proof['absolute_phase_caps_used'] = True
    return proof, info


def exclude(model, prepared, bounds, clique):
    return propose(tube_data(model, prepared, bounds, clique))


def replay(model, prepared, bounds, clique, witness):
    d = tube_data(model, prepared, bounds, clique)
    proof = S.receipt(d, [float.fromhex(x) for x in witness['direction_hex']],
                      [float.fromhex(x) for x in witness['dual_multipliers_hex']])
    if proof is not None:
        proof['absolute_phase_caps_used'] = True
    return proof
