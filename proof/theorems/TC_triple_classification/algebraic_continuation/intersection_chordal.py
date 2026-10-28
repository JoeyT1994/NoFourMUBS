"""Intersect complex-entry tubes with their absolute and real/imaginary bounds."""
import numpy as np
from flint import arb,arb_mat,acb_mat,ctx
from load_native import C,MS,endpoints
from intervals import positive_definite,symmetric
import chordal_support as CS
import tight_chordal as TC


def prepare(model,prepared,bounds,clique):
    d=TC.prepare(model,prepared,bounds,clique);ellipsoids=[]
    for group in d['groups']:
        e=arb_mat(76,76)
        for j in group:e[j,j]=1
        ellipsoids.append(e)
    names=['seed']+[f'complex-error-{c}' for c in range(6)]
    for c,color in enumerate(clique):
        kk=d['k'][c];p=bounds[color]['phase_radius'];eps=bounds[color]['epsilon']
        if not p>0:raise ArithmeticError('positive phase bound required')
        rot=acb_mat([[kk['k0'][a,0].conjugate()*kk['b'][a,j]
                      for j in range(76)] for a in range(6)])
        real=rot.real
        imag=rot.imag
        for a in range(6):
            for j in range(4):imag[a,j]-=prepared[color]['T'][a,j]*model['r']
        ellipsoids.extend([
            symmetric((kk['b'].conjugate().transpose()*kk['b']).real)/(p*p),
            symmetric(real.transpose()*real)/((p*p/2)**2),
            symmetric(imag.transpose()*imag)/((eps+p**3/6)**2)])
        names.extend([f'absolute-chord-{c}',f'real-error-{c}',f'imaginary-error-{c}'])
    d['ellipsoids']=ellipsoids;d['ellipsoid_names']=names
    return d


def dual(q,g,ellipsoids,multipliers):
    if len(ellipsoids)!=len(multipliers):raise ValueError('wrong number of multipliers')
    lam=[arb(float(x)) for x in multipliers]
    if any(not(x.is_finite() and x>=0) for x in lam):raise ValueError('nonnegative finite multipliers required')
    a=symmetric(q)
    for e,x in zip(ellipsoids,lam):a+=e*x
    if not positive_definite(a):raise ArithmeticError('ellipsoid dual is not positive definite')
    value=-(g.transpose()*a.solve(g))[0,0]/2-sum(lam,arb(0))/2
    if not value.is_finite():raise ArithmeticError('nonfinite dual')
    return value


def receipt(d,direction,multipliers):
    c,q,g,tail=CS.scalar(d,direction)
    lower=dual(q,g,d['ellipsoids'],multipliers);margin=c+lower-tail
    if not margin>0:return None
    return dict(status='EXCLUDED',route='intersected complex-entry quadratic support',
        domain='original complete-cover conditional phase tube',positive_level_cover_certified=False,
        scalar_margin=endpoints(margin),constant=endpoints(c),quadratic_lower=endpoints(lower),
        tail_upper=endpoints(tail),ellipsoids=d['ellipsoid_names'],
        direction_hex=[float(x).hex() for x in direction],
        dual_multipliers_hex=[float(x).hex() for x in multipliers])


def propose(d):
    precision=ctx.prec
    import cvxpy as cp
    ctx.prec=precision
    f,g,q=CS.numeric_coefficients(d);es=np.array([MS.numeric(e) for e in d['ellipsoids']])
    y=cp.Variable(102);lam=cp.Variable(len(es),nonneg=True);s=cp.Variable(nonneg=True)
    a=cp.reshape(q.reshape(102,-1).T@y+es.reshape(len(es),-1).T@lam,(76,76),order='C')
    gg=g.T@y
    matrix=cp.bmat([[a,cp.reshape(gg,(76,1),order='C')],
        [cp.reshape(gg,(1,76),order='C'),cp.reshape(s,(1,1),order='C')]])
    tail=np.array([float(t) for t in d['tails']])@cp.abs(y[66:])
    problem=cp.Problem(cp.Minimize((cp.sum(lam)+s)/2+tail),
        [f@y==1,cp.norm(y,2)<=1000,matrix>>1e-9*np.eye(77)])
    problem.solve(solver='CLARABEL',max_iter=100,tol_gap_abs=1e-7,tol_feas=1e-7,tol_gap_rel=1e-7)
    ctx.prec=precision
    info=dict(solver_status=problem.status,proposed_cost=None if problem.value is None else float(problem.value))
    if y.value is None or lam.value is None:return None,info
    yy=np.asarray(y.value).ravel();ll=np.maximum(np.asarray(lam.value).ravel(),0)+1e-7
    if not np.isfinite(yy).all() or not np.isfinite(ll).all():return None,info
    try:
        proof=receipt(d,yy.tolist(),ll.tolist())
        c,q,g,tail=CS.scalar(d,yy.tolist());info['verified_margin']=str(c+dual(q,g,d['ellipsoids'],ll.tolist())-tail)
    except (ArithmeticError,ValueError,ZeroDivisionError) as exc:
        proof=None;info['verification_failure']=str(exc)
    return proof,info


def exclude(model,prepared,bounds,clique):
    return propose(prepare(model,prepared,bounds,clique))


def replay(model,prepared,bounds,clique,witness):
    return receipt(prepare(model,prepared,bounds,clique),
        [float.fromhex(x) for x in witness['direction_hex']],
        [float.fromhex(x) for x in witness['dual_multipliers_hex']])
