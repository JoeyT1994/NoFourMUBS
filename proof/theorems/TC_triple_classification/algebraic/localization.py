"""Necessary scalar cuts localize a pattern's zeros inside the original ball.

This does not replace the requested ball by a smaller one: the scalar
inequality proves every zero of this complete-cover pattern lies in the
retained cap. The complement is thereby excluded, without subdivision.
"""
import numpy as np
from flint import arb, arb_mat
from bootstrap import C, MS
import patches as P
from intervals import quadratic_lower, norm_upper, endpoints
import scalar_support as S


def cap(r, linear, margin):
    """If d.w >= m>0 and ||w||<=r, enclose that cap by a smaller ball.

    The exact centre is m*d/||d||^2, radius^2=r^2-m^2/||d||^2.
    Input linear is the coefficient of +w in the residual inequality,
    so d is its negative. Rounding the coefficient is paid explicitly.
    """
    numeric = np.array([float(v.mid()) for v in linear])
    if not np.isfinite(numeric).all():
        return None
    error = norm_upper([linear[i]-arb(float(numeric[i])) for i in range(4)])
    m = arb(C.Z.lower(margin-r*error))
    if not m > 0:
        return None
    d = arb_mat([[-arb(float(v))] for v in numeric])
    n2 = (d.transpose()*d)[0, 0]
    if not n2 > 0:
        return dict(status='EXCLUDED')  # constant positive residual bound
    if m > r*n2.sqrt():
        return dict(status='EXCLUDED')
    rho2 = r*r-m*m/n2
    if not rho2 > 0:
        return None
    centre, rho = d*(m/n2), rho2.sqrt().upper()
    if not norm_upper(centre.entries()) < r:
        return None
    return dict(status='CAP', centre=centre, radius=rho, margin=m,
                direction_hex=[float(-v).hex() for v in numeric], coefficient_error=error)


def localize(model, prepared, bounds, clique):
    original = model.get('origin_model', model)
    offset = model.get('origin_offset', arb_mat(4, 1))
    if any(k not in original for k in ('Qbase', 'W', 'q', 'Z2')):
        return None
    d = S.data(model, prepared, bounds, clique)
    jk = MS.numeric(d['j']*d['scaled'])[:, 4:]
    normal = MS.numeric(d['jh']*model['X'])*float(model['tau'])
    columns = np.concatenate([jk, normal], axis=1)
    gram = columns@columns.T
    fn = MS.numeric(d['f'])[:, 0]
    best = None
    for reg in (1e-6, 1e-4, 1e-2):
        y = np.linalg.solve(gram+reg*np.eye(96), fn)
        if not np.isfinite(y).all() or not np.max(np.abs(y)):
            continue
        y /= np.max(np.abs(y))
        if np.dot(y, fn) < 0:
            y = -y
        c, q, g, tail, _ = S.direction_quadratic(d, y)
        error_g = arb_mat(g)
        for i in range(4):
            error_g[i, 0] = 0
        dual = quadratic_lower(q, error_g, d['groups'])
        if dual is None:
            continue
        margin = c+dual[0]-tail
        cut = cap(model['r'], [g[i, 0]/model['r'] for i in range(4)], margin)
        if cut is None:
            continue
        proof = dict(direction_hex=[float(v).hex() for v in y],
                     dual_multipliers_hex=dual[1], residual_margin=endpoints(margin),
                     original_radius=endpoints(model['r']),
                     scope='all exact zeros of this original complete-cover pattern')
        if cut['status'] == 'EXCLUDED':
            return dict(status='EXCLUDED', route='necessary seed cap is empty', localization=proof)
        if not cut['radius'] < model['r']*arb(49)/50:
            continue
        if best is None or cut['radius'] < best[0]['radius']:
            best = cut, proof
    if best is None:
        return None
    cut, proof = best
    centre, rho = cut['centre'], cut['radius']
    original_centre = offset+centre
    if not norm_upper(original_centre.entries()) < original['r']:
        return None
    q0, u, eta = P.centre_jet(original, original_centre)
    # Taylor segments remain in the original convex ball. No extension of
    # the exact Hadamard chart to the containing cap ball is assumed.
    local = dict(Q0=q0, U=u, H2=original['H2'], X=original['X'], r=rho,
                 tau=(original['Z2']*rho*rho/2).upper(),
                 origin_model=original, origin_offset=original_centre)
    pp, bb = {}, {}
    for color in clique:
        old = prepared[color]
        vc = old['v0']+old['T']*centre
        pp[color] = C.build(local, MS.numeric(vc)[:, 0])
        initial = (norm_upper((vc-pp[color]['v0']).entries())
                   +C.Z.spectral(old['T'])*rho+bounds[color]['epsilon'])
        bb[color] = C.contract(pp[color], initial)
    proof.update(centre=[str(v) for v in centre.entries()], radius=endpoints(rho),
                 centre_in_original_coordinates=[str(v) for v in original_centre.entries()],
                 coefficient_error=endpoints(cut['coefficient_error']),
                 centre_jet_error=endpoints(eta), chart_extension_assumed=False)
    return dict(status='LOCALIZED', model=local, prepared=pp, bounds=bb, receipt=proof)

