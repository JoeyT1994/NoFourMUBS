"""The native averaged moving contraction (family_neighbourhoods/moving_symmetry.py, PROOF.md section 6) with the
u-affine preconditioner of proposal P2 (PROOFS.md).

`parts` is the body of the frozen `moving_symmetry.prove`, VERBATIM (lines 182-257 of moving_symmetry.py at the pinned
hash), except that (i) its two float proposals, the windings and the numerical pseudo-inverse, can be replayed from a
certificate, and (ii) it returns the terms of the native bound instead of combining them. `contraction` then accepts
when either the native bound (PROOF.md section 6) or the P2 bound is below one; both are Arb strict inequalities.
"""
import numpy as np
from flint import arb, arb_mat, fmpq, fmpq_mat, acb
import native_columns as C
from moving_symmetry import group, proposed_windings, numeric, jacobian, equation_moving_projector, LMAT, TERMS, proposed_actions


def validate_action(action):
    if not isinstance(action, dict) or type(action.get('anchor')) is not int or action['anchor'] not in (0, 1, 2):
        raise ArithmeticError('invalid symmetry anchor')
    for name in ('labels', 'R', 'S', 'T'):
        values = action.get(name)
        if not isinstance(values, (list, tuple)) or len(values) != 6 or any(
                isinstance(v, (bool, np.bool_)) or not isinstance(v, (int, np.integer)) for v in values):
            raise ArithmeticError('invalid symmetry ' + name)
    if sorted(action['labels']) != [0, 0, 1, 1, 2, 2]:
        raise ArithmeticError('unbalanced spectrum')
    for name in ('R', 'S', 'T'):
        if sorted(action[name]) != list(range(6)):
            raise ArithmeticError('invalid symmetry permutation')


def validate_stored(stored):
    if not isinstance(stored, dict):
        raise ArithmeticError('invalid stored native proposal')
    validate_action(stored.get('action'))
    wind = stored.get('wind')
    if not isinstance(wind, (list, tuple)) or len(wind) != 72 or any(
            isinstance(v, (bool, np.bool_)) or not isinstance(v, (int, np.integer)) for v in wind):
        raise ArithmeticError('native windings must be 72 integers')
    inverse = np.asarray(stored.get('pinv'), dtype=np.float64)
    if inverse.shape != (72, 96) or not np.isfinite(inverse).all():
        raise ArithmeticError('invalid native inverse proposal')


def parts(model,prepared,bounds,clique,action,averaged=True,mixed_weight=1,stored=None):
    validate_action(action)
    if stored is not None:
        validate_stored(stored)
    (pq,wq,gq,eq),base=group(action,rational=True)
    p,w,average,e=map(arb_mat,(pq,wq,gq,eq))
    q=arb_mat([[model['Q0'][i,0]] for i in range(36)]+[[prepared[clique[c]]['v0'][r,0]] for r in range(6) for c in range(6)])
    wind=stored['wind'] if stored is not None else proposed_windings(numeric(q)[:,0],numeric(base)[:,0],action)
    q+=arb_mat([[2*arb.pi()*j] for j in wind])
    m=w*(q-base);ref=base+average*m;m=m-average*m
    carrier=arb_mat([[model['U'][i,j] for j in range(4)] for i in range(36)]+
                    [[prepared[clique[c]]['T'][r,j] for j in range(4)] for r in range(6) for c in range(6)])
    carrier=w*carrier
    j=jacobian(ref)
    weights=np.r_[np.ones(60),np.full(36,mixed_weight)]
    pinv=stored['pinv'] if stored is not None else np.linalg.pinv(weights[:,None]*numeric(j*e))*weights[None,:]
    pre=e*C.Z.mat(pinv)
    if averaged:pre=pre*equation_moving_projector(action)[0]
    defect=C.Z.spectral(e-pre*j*e)
    if not defect<arb(1)/10:raise ArithmeticError('moving inverse defect')
    angles=LMAT*ref;linear=arb_mat(72,len(TERMS));amplitudes=arb_mat(72,len(TERMS))
    for t,(re,im,den,_) in enumerate(TERMS):
        z=acb(0,angles[t,0]).exp()/den
        for row in range(72):
            coeff=acb(pre[row,re],-pre[row,im] if im is not None else 0)*z
            linear[row,t]=-coeff.real;amplitudes[row,t]=abs(coeff).upper()
    le=LMAT*e
    absle=arb_mat([[abs(le[i,j]).upper() for j in range(72)] for i in range(len(TERMS))])
    hessian=[]
    identity=fmpq_mat([[int(i==j) for j in range(72)] for i in range(72)])
    first_projector=((identity+gq)/2)*wq if averaged else wq
    first_frequencies=arb_mat(fmpq_mat([term[3] for term in TERMS])*first_projector)
    for k in range(72):
        ids=[t for t in range(len(TERMS)) if not first_frequencies[t,k].is_zero()]
        weighted=arb_mat([[linear[i,t]*first_frequencies[t,k] for t in ids] for i in range(72)])
        restricted=arb_mat([[le[t,j] for j in range(72)] for t in ids])
        hessian.append(weighted*restricted)
    hflat=arb_mat([[hessian[k][i,j] for k in range(72) for j in range(72)] for i in range(72)])
    hessian_norm=C.Z.spectral(hflat)
    hessian_h=C.Z.spectral(arb_mat([[hessian[k][i,j] for k in range(36) for j in range(72)] for i in range(72)]))
    hessian_k=C.Z.spectral(arb_mat([[hessian[k][i,j] for k in range(36,72) for j in range(72)] for i in range(72)]))
    r=model['r'];estimates=[];remainders=[];signed=[]
    phase_error=C.Z.spectral(model['H2'])*r*r/2+C.Z.spectral(model['X'])*model['tau']
    k_error=C.norm([bounds[c]['epsilon'] for c in clique])
    hessian_error=min((hessian_h*phase_error+hessian_k*k_error).upper(),
        (hessian_norm*(phase_error**2+k_error**2).sqrt()).upper())

    for transform in ((average,C.Z.eye(72)) if averaged else (C.Z.eye(72),p)):
        shift=LMAT*transform*m;dc=LMAT*transform*carrier
        lw=LMAT*transform*w
        lh=arb_mat([[lw[i,j] for j in range(36)] for i in range(len(TERMS))])
        hh=lh*model['H2'];hx=lh*model['X']
        rem=[]
        for i in range(len(TERMS)):
            tail=C.rownorm(hh,i)*r*r/2+C.rownorm(hx,i)*model['tau']
            for c in range(6):
                ls=[lw[i,36+6*a+c] for a in range(6)];mean=sum(ls,arb(0))/6
                tail+=C.norm([v-mean for v in ls])*bounds[clique[c]]['epsilon']
            delta=abs(shift[i,0])+C.rownorm(dc,i)*r+tail
            rem.append(delta)
        constant=arb_mat([[linear[i,t]*shift[t,0] for t in range(len(TERMS))] for i in range(72)])*le
        matrices=[arb_mat([[linear[i,t]*dc[t,k] for t in range(len(TERMS))] for i in range(72)])*le for k in range(4)]
        flat=arb_mat([[matrices[k][i,j] for k in range(4) for j in range(72)] for i in range(72)])
        estimates.append(C.Z.spectral(constant)+C.Z.spectral(flat)*r)
        signed.append((constant,flat))
        remainders.append(rem)
    if averaged:
        rem=[(remainders[0][t]**2+remainders[0][t]*remainders[1][t]+remainders[1][t]**2)/6 for t in range(len(TERMS))]
    else:
        rem=[arb(max(C.Z.upper(v[t]**2/2) for v in remainders)) for t in range(len(TERMS))]
    error=arb_mat([[amplitudes[i,t]*rem[t] for t in range(len(TERMS))] for i in range(72)])*absle
    remainder_norm=C.Z.spectral(error)
    linear_norm=(C.Z.spectral((signed[0][0]+signed[1][0])/2)+C.Z.spectral((signed[0][1]+signed[1][1])/2)*r
                 if averaged else arb(max(C.Z.upper(a) for a in estimates)))
    return dict(defect=defect,linear_norm=linear_norm,hessian_error=hessian_error,remainder_norm=remainder_norm,
                constant=(signed[0][0]+signed[1][0])/2,flat=(signed[0][1]+signed[1][1])/2,r=r,wind=wind,pinv=pinv)


def contraction(model, prepared, bounds, clique, action, stored=None):
    """Native bound q = defect + |Dc| + r|[V_1..V_4]| + hessian + remainder, and the P2 bound
    q2 = r^2 |[V_j V_k]_jk| + (1 + r|[V_1..V_4]|)(defect + |Dc| + hessian + remainder). CERTIFIED if min < 1."""
    p = parts(model, prepared, bounds, clique, action, stored=stored)
    V = [arb_mat([[p['flat'][i, 72 * k + j] for j in range(72)] for i in range(72)]) for k in range(4)]
    VV = [V[j] * V[k] for j in range(4) for k in range(4)]
    rest = p['defect'] + C.Z.spectral(p['constant']) + p['hessian_error'] + p['remainder_norm']
    nV, r = C.Z.spectral(p['flat']), p['r']
    q_native = p['defect'] + p['linear_norm'] + p['hessian_error'] + p['remainder_norm']
    q_p2 = C.Z.spectral(arb_mat([[m[i, j] for m in VV for j in range(72)] for i in range(72)])) * r * r + (1 + nV * r) * rest
    ok = q_native < 1 or q_p2 < 1                                   # either bound alone is a proof (REVIEW §4.2)
    q = q_native if q_native < 1 else q_p2
    return dict(status='CERTIFIED' if ok else 'NOT ESTABLISHED', q=str(q), q_native=str(q_native), q_p2=str(q_p2),
                proposal=dict(action=dict(anchor=int(action['anchor']), **{k: [int(v) for v in action[k]] for k in ('labels', 'R', 'S', 'T')}), wind=list(map(int, p['wind'])), pinv=p['pinv']))


def classify(model, prepared, bounds, clique, attempts=2, stored=None):
    """As moving_symmetry.classify: try the best-scoring proposed actions, or replay a stored proposal."""
    if stored is not None:
        validate_stored(stored)
        a = dict(stored['action']); a['anchor'] = int(a['anchor']); a['labels'] = tuple(a['labels'])
        row = contraction(model, prepared, bounds, clique, a, stored=stored)
        return row if row['status'] == 'CERTIFIED' else dict(status='NOT ESTABLISHED', attempts=[row])
    q = np.r_[numeric(model['Q0'])[:, 0], np.array([[float(prepared[clique[c]]['v0'][r, 0].mid()) for c in range(6)] for r in range(6)]).ravel()]
    rows = []
    for action in proposed_actions(q)[:attempts]:
        try: row = contraction(model, prepared, bounds, clique, action)
        except (ArithmeticError, ZeroDivisionError) as exc: row = dict(status='NOT ESTABLISHED', reason=str(exc))
        if row['status'] == 'CERTIFIED': return row
        rows.append(row)
    return dict(status='NOT ESTABLISHED', attempts=rows)
