"""Signed quadratic exclusions on the complete-cover correlated phase tubes.

The frozen scalar test is tried first. The additional test keeps the joint
quadratic form in the four seed variables and all six K-column errors.
Acceptance is an Arb positive-definite dual certificate, never an optimizer
status. A gap applies to the stated tube, not to points pruned from a
zero-only cover. See PROOF.md before using these gaps as barriers.
"""
import numpy as np
from flint import arb, arb_mat, acb
from bootstrap import C, MS
import basis_exclusion as frozen
from intervals import quadratic_lower, dual_lower, norm_upper, endpoints, symmetric

FROZEN_EXCLUDE = frozen.exclude


def block(a, rows, cols):
    return arb_mat([[a[i, j] for j in cols] for i in rows])


def data(model, prepared, bounds, clique):
    q = arb_mat([[model['Q0'][i, 0]] for i in range(36)] +
                [[prepared[clique[c]]['v0'][r, 0]] for r in range(6) for c in range(6)])
    lift = arb_mat(
        [[model['U'][i, j] for j in range(4)] for i in range(36)] +
        [[prepared[clique[c]]['T'][r, j] for j in range(4)]
         for r in range(6) for c in range(6)])
    angles = MS.LMAT * q
    f = arb_mat(96, 1)
    zs = []
    for t, (re, im, den, _) in enumerate(MS.TERMS):
        z = acb(0, angles[t, 0]).exp() / den
        zs.append(z)
        f[re, 0] += z.real
        if im is not None:
            f[im, 0] += z.imag
    j = MS.jacobian(q)
    jh = block(j, range(96), range(36))
    p6 = C.project6()
    pk = arb_mat([[p6[a, b] if c == d else 0
                   for b in range(6) for d in range(6)]
                  for a in range(6) for c in range(6)])
    eps = [bounds[c]['epsilon'] for c in clique]
    r, tau = model['r'], model['tau']
    if not r >= 0 or not tau >= 0 or any(not e >= 0 for e in eps):
        raise ValueError('negative or ambiguous tube radius')
    scaled = arb_mat(72, 40)
    for i in range(72):
        for k in range(4):
            scaled[i, k] = lift[i, k] * r
    for i in range(36):
        for k in range(36):
            scaled[36 + i, 4 + k] = pk[i, k] * eps[k % 6]
    groups = [list(range(4))] + [list(range(4+c, 40, 6)) for c in range(6)]
    uc, nc = [], []
    for c in range(6):
        uc.append(p6 * block(model['U'], range(c, 36, 6), range(4)))
        hc = p6 * block(model['H2'], range(c, 36, 6), range(16))
        xc = p6 * block(model['X'], range(c, 36, 6), range(model['X'].ncols()))
        nc.append(C.Z.spectral(hc)*r*r/2 + C.Z.spectral(xc)*tau)
    hd = [C.Z.spectral(uc[b]-uc[a])*r+nc[a]+nc[b] for a, b in C.PAIRS]
    kd = [C.Z.spectral(prepared[clique[b]]['T']-prepared[clique[a]]['T'])*r
          + eps[a]+eps[b] for a, b in C.PAIRS]
    md = [[C.Z.spectral(prepared[clique[b]]['T']-uc[a])*r+eps[b]+nc[a]
           for b in range(6)] for a in range(6)]
    return dict(model=model, q=q, lift=lift, f=f, zs=zs, j=j, jh=jh,
                scaled=scaled, groups=groups, pk=pk, eps=eps, hd=hd, kd=kd, md=md,
                nh=C.Z.spectral(model['H2'])*r*r/2+C.Z.spectral(model['X'])*tau)


def direction_quadratic(d, direction):
    """Return constant, quadratic, linear and a uniform absolute tail."""
    if len(direction) != 96 or not np.isfinite(direction).all():
        raise ValueError('96 finite binary64 direction entries required')
    y = C.Z.mat(np.array(direction)[None, :])
    if not norm_upper(y.entries()) > 0:
        raise ValueError('nonzero residual direction required')
    model = d['model']
    r, tau, nh = model['r'], model['tau'], d['nh']
    coefficients = []
    for t, (re, im, _, _) in enumerate(MS.TERMS):
        coefficients.append(-(y[0, re]*d['zs'][t].real +
                              (y[0, im]*d['zs'][t].imag if im is not None else 0)))
    hessian = MS.LMAT.transpose() * arb_mat(
        [[coefficients[t]*MS.LMAT[t, k] for k in range(72)]
         for t in range(len(MS.TERMS))])
    q = d['scaled'].transpose() * hessian * d['scaled']
    h2 = y * d['jh'] * model['H2']
    for a in range(4):
        for b in range(4):
            q[a, b] += h2[0, 4*a+b]*r*r
    g = (y * d['j'] * d['scaled']).transpose()
    tail = C.rownorm(y*d['jh']*model['X'], 0)*tau
    hH = block(hessian, range(72), range(36))
    ne = norm_upper(d['eps'])
    tail += C.Z.spectral(d['lift'].transpose()*hH)*r*nh
    tail += C.Z.spectral(d['pk']*block(hessian, range(36, 72), range(36)))*ne*nh
    tail += C.Z.spectral(block(hessian, range(36), range(36)))*nh*nh/2
    for k in range(15):
        tail += norm_upper([y[0, k], y[0, 15+k]])*d['hd'][k]**3/6
        tail += norm_upper([y[0, 30+k], y[0, 45+k]])*d['kd'][k]**3/6
    tail += sum((abs(y[0, 60+6*a+b])*arb(2).sqrt()/3*d['md'][a][b]**3
                 for a in range(6) for b in range(6)), arb(0))
    return (y*d['f'])[0, 0], symmetric(q), g, tail, norm_upper(y.entries())


def receipt(d, direction, multipliers):
    c, q, g, tail, ynorm = direction_quadratic(d, direction)
    lower = dual_lower(q, g, d['groups'], multipliers)
    margin = c + lower - tail
    if not margin > 0:
        return None
    gap = margin / ynorm
    return dict(status='EXCLUDED', route='signed joint quadratic residual support',
                normalization='96 residuals; Gram unscaled, mixed divided by 6',
                domain='correlated tube supplied to this test',
                positive_level_cover_certified=False,
                constant=endpoints(c), quadratic_lower=endpoints(lower),
                tail_upper=endpoints(tail), scalar_margin=endpoints(margin),
                residual_norm_lower=endpoints(gap),
                direction_hex=[float(v).hex() for v in direction],
                dual_multipliers_hex=[float(v).hex() for v in multipliers])


def replay(model, prepared, bounds, clique, witness):
    """Recompute all inequalities, including the saved dual PD test."""
    return receipt(data(model, prepared, bounds, clique),
                   [float.fromhex(v) for v in witness['direction_hex']],
                   [float.fromhex(v) for v in witness['dual_multipliers_hex']])


def exclude(model, prepared, bounds, clique):
    old = FROZEN_EXCLUDE(model, prepared, bounds, clique)
    if old is not None:
        return old
    d = data(model, prepared, bounds, clique)
    jscaled = MS.numeric(d['j'] * d['scaled'])
    jnormal = MS.numeric(d['jh'] * model['X']) * float(model['tau'])
    proposal = np.concatenate([jscaled, jnormal], axis=1)
    gram = proposal @ proposal.T
    fn = MS.numeric(d['f'])[:, 0]
    directions = []
    for reg in (1e-6, 1e-4, 1e-2):
        directions.append(np.linalg.solve(gram+reg*np.eye(96), fn))
    directions.append(fn-proposal@np.linalg.lstsq(proposal, fn, rcond=None)[0])
    for y in directions:
        scale = np.max(np.abs(y))
        if not scale or not np.isfinite(y).all():
            continue
        y = y / scale
        if np.dot(y, fn) < 0:
            y = -y
        c, q, g, tail, _ = direction_quadratic(d, y)
        # v=0 is admissible, hence no dual can make the quadratic lower
        # bound positive. Skip this direction when even that cannot help.
        if not c > tail:
            continue
        dual = quadratic_lower(q, g, d['groups'])
        if dual is None or not c + dual[0] > tail:
            continue
        return receipt(d, y, [float.fromhex(v) for v in dual[1]])
    return None

