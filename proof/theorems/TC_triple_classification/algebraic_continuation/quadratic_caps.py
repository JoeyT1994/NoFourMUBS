"""Certified necessary seed caps from the joint quadratic residual equations."""
import numpy as np
from flint import arb,arb_mat,ctx
from load_native import C,MS,endpoints
import chordal_support as CS
import cubic_chordal as CC
import intersection_chordal as IC


def objective(center):
    if len(center)!=4 or not np.isfinite(center).all():raise ValueError('four finite center coordinates required')
    c=sum((arb(float(x))**2 for x in center),arb(0));g=arb_mat(76,1);q=arb_mat(76,76)
    for i,x in enumerate(center):g[i,0]=-2*arb(float(x));q[i,i]=2
    return c,q,g


def receipt(d,center,direction,multipliers):
    pc,pq,pg=objective(center);c,q,g,tail=CC.scalar(d,direction)
    lower=IC.dual(q-pq,g-pg,d['ellipsoids'],multipliers)
    upper=(tail-c+pc-lower).upper()
    return dict(status='NECESSARY CAP',center_hex=[float(x).hex() for x in center],
        squared_radius_upper=endpoints(upper),excluded=bool(upper<0),
        direction_hex=[float(x).hex() for x in direction],
        dual_multipliers_hex=[float(x).hex() for x in multipliers]),upper


def search(d,center=None):
    precision=ctx.prec
    import cvxpy as cp
    ctx.prec=precision
    f,g,q=CS.numeric_coefficients(d);es=np.array([MS.numeric(e) for e in d['ellipsoids']])
    pc,pq,pg=objective([0.]*4 if center is None else center);pq=MS.numeric(pq);pg=MS.numeric(pg)[:,0]
    center_variable=cp.Variable(4) if center is None else None
    y=cp.Variable(102);lam=cp.Variable(len(es),nonneg=True);s=cp.Variable(nonneg=True)
    a=cp.reshape(q.reshape(102,-1).T@y+es.reshape(len(es),-1).T@lam,(76,76),order='C')-pq
    gg=g.T@y+(cp.hstack([2*center_variable,np.zeros(72)]) if center is None else -pg)
    matrix=cp.bmat([[a,cp.reshape(gg,(76,1),order='C')],
        [cp.reshape(gg,(1,76),order='C'),cp.reshape(s,(1,1),order='C')]])
    tail=np.array([float(t) for t in d['higher']])@cp.abs(y[66:])
    for b in range(6):
        for kind in range(3):
            m=np.array([MS.numeric(d['cubics'][b][a][kind]).ravel() for a in range(6)])
            compressed=np.linalg.qr(m.T,mode='reduced')[1]
            tail+=cp.norm(compressed@y[66+b:102:6],2)
    constraints=[cp.norm(y,2)<=1000,matrix>>1e-9*np.eye(77)]
    if center is None:constraints.append(cp.norm(center_variable,2)<=.95)
    cost=(cp.sum(lam)+s)/2+tail-f@y+(cp.sum_squares(center_variable) if center is None else float(pc))
    problem=cp.Problem(cp.Minimize(cost),constraints)
    problem.solve(solver='CLARABEL',max_iter=100,tol_gap_abs=1e-7,tol_feas=1e-7,tol_gap_rel=1e-7)
    ctx.prec=precision
    info=dict(solver_status=problem.status,proposed_squared_radius=None if problem.value is None else float(problem.value))
    if y.value is None or lam.value is None:return None,info
    yy=np.asarray(y.value).ravel();ll=np.maximum(np.asarray(lam.value).ravel(),0)+1e-7
    if not np.isfinite(yy).all() or not np.isfinite(ll).all():return None,info
    try:
        chosen=np.asarray(center_variable.value).ravel().tolist() if center is None else center
        proof,upper=receipt(d,chosen,yy.tolist(),ll.tolist())
        info['center']=chosen
        info['verified_squared_radius']=str(upper)
    except (ArithmeticError,ValueError,ZeroDivisionError) as exc:
        proof=None;info['verification_failure']=str(exc)
    return proof,info


def propose_centers(d):
    f,g,_=CS.numeric_coefficients(d)
    v=-g.T@np.linalg.solve(g@g.T+1e-6*np.eye(102),f)
    c=v[:4];c*=min(1,.9/max(np.linalg.norm(c),1e-300))
    return [np.zeros(4).tolist(),c.tolist(),(c/2).tolist()]


def replay(d,witness):
    return receipt(d,[float.fromhex(x) for x in witness['center_hex']],
        [float.fromhex(x) for x in witness['direction_hex']],
        [float.fromhex(x) for x in witness['dual_multipliers_hex']])
