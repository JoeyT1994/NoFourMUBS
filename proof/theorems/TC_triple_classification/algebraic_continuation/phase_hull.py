"""Use absolute phase balls and support slabs of the exhaustive closed bins."""
import numpy as np
from flint import arb,arb_mat,ctx
from load_native import C,MS,S,endpoints,norm_upper
from intervals import positive_definite,symmetric
import optimized_support as OS


def reduction():
    b=np.linalg.qr(np.eye(6)[:,:5]-np.eye(6)[:,5,None])[0]
    red=np.zeros((40,34));red[:4,:4]=np.eye(4)
    for c in range(6):red[4+c:40:6,4+5*c:9+5*c]=b
    return red


def directions(cover,clique):
    answer=[]
    for c in clique:
        ds=np.array([[float(x.mid()) for x in row] for row in cover['bin_deltas'][c]])
        centered=ds-ds.mean(axis=0)
        _,_,v=np.linalg.svd(centered,full_matrices=True)
        # The exact slab proof permits any finite real direction.
        answer.append(np.r_[np.eye(6),v[:5]].tolist())
    return answer


def prepare(model,prepared,bounds,cover,clique,dirs=None):
    d=OS.tube_data(model,prepared,bounds,clique);es=[]
    for group in d['groups']:
        e=arb_mat(40,40)
        for j in group:e[j,j]=1
        es.append(e)
    slabs=[];highs=[];dirs=directions(cover,clique) if dirs is None else dirs
    if len(dirs)!=6:raise ValueError('six direction lists required')
    for c,color in enumerate(clique):
        p=bounds[color]['phase_radius']
        if not p>0:raise ArithmeticError('positive phase radius required')
        lift=S.block(d['scaled'],range(36+c,72,6),range(40))
        es.append(symmetric(lift.transpose()*lift)/(p*p))
        ds=cover['bin_deltas'][color]
        if not ds:raise ArithmeticError('empty bin group')
        for vector in dirs[c]:
            if len(vector)!=6 or not np.isfinite(vector).all():raise ValueError('finite six-vector required')
            direction=C.project6()*C.Z.mat(np.array(vector)[:,None])
            width=min((norm_upper(direction.entries())*cover['bin_radius']).upper(),
                (arb.pi()/96*sum((abs(direction[j,0]) for j in range(1,6)),arb(0))).upper())
            for sign in (1,-1):
                a=direction*sign
                values=[sum((a[j,0]*delta[j] for j in range(6)),arb(0)) for delta in ds]
                high=arb(max(C.Z.upper(v) for v in values))+width
                slabs.append(a.transpose()*lift);highs.append(high.upper())
    d['ellipsoids']=es;d['slabs']=arb_mat([[a[0,j] for j in range(40)] for a in slabs])
    d['highs']=arb_mat([[v] for v in highs]);d['directions']=dirs
    return d


def dual(d,q,g,multipliers,slab_multipliers):
    if len(multipliers)!=len(d['ellipsoids']) or len(slab_multipliers)!=d['slabs'].nrows():
        raise ValueError('wrong multiplier count')
    ll=[arb(float(v)) for v in multipliers];mm=[arb(float(v)) for v in slab_multipliers]
    if any(not(v.is_finite() and v>=0) for v in ll+mm):raise ValueError('finite nonnegative multipliers required')
    a=symmetric(q)
    for e,v in zip(d['ellipsoids'],ll):a+=e*v
    mu=arb_mat([[v] for v in mm]);gg=g+d['slabs'].transpose()*mu
    if not positive_definite(a):raise ArithmeticError('hull dual is not positive definite')
    return -(gg.transpose()*a.solve(gg))[0,0]/2-sum(ll,arb(0))/2-(mu.transpose()*d['highs'])[0,0]


def receipt(d,direction,multipliers,slab_multipliers):
    c,q,g,tail,ynorm=S.direction_quadratic(d,direction)
    lower=dual(d,q,g,multipliers,slab_multipliers);margin=c+lower-tail
    if not margin>0:return None
    return dict(status='EXCLUDED',route='phase quadratic with bin support slabs',
        domain='original complete-cover initial phase tube',positive_level_cover_certified=False,
        scalar_margin=endpoints(margin),constant=endpoints(c),quadratic_lower=endpoints(lower),tail_upper=endpoints(tail),
        direction_hex=[float(v).hex() for v in direction],
        dual_multipliers_hex=[float(v).hex() for v in multipliers],
        slab_multipliers_hex=[float(v).hex() for v in slab_multipliers],
        slab_directions_hex=[[[float(v).hex() for v in vector] for vector in ds] for ds in d['directions']])


def propose(d):
    precision=ctx.prec
    import cvxpy as cp
    ctx.prec=precision
    n=OS.search_data(d);red=reduction()
    es=np.array([red.T@MS.numeric(e)@red for e in d['ellipsoids']])
    slabs=MS.numeric(d['slabs'])@red;highs=MS.numeric(d['highs'])[:,0]
    y=cp.Variable(96);lam=cp.Variable(len(es),nonneg=True)
    mu=cp.Variable(len(highs),nonneg=True);s=cp.Variable(nonneg=True)
    a=cp.reshape(n['q'].reshape(96,-1).T@y+es.reshape(len(es),-1).T@lam,(34,34),order='C')
    g=n['g'].T@y+slabs.T@mu
    matrix=cp.bmat([[a,cp.reshape(g,(34,1),order='C')],
        [cp.reshape(g,(1,34),order='C'),cp.reshape(s,(1,1),order='C')]])
    tail=sum(cp.norm(m@y,2) for m in n['maps'])
    tail+=n['hd']@cp.norm(cp.vstack([y[:15],y[15:30]]),2,axis=0)
    tail+=n['kd']@cp.norm(cp.vstack([y[30:45],y[45:60]]),2,axis=0)
    tail+=n['md']@cp.abs(y[60:96])
    problem=cp.Problem(cp.Minimize((cp.sum(lam)+s)/2+highs@mu+tail),
        [n['f']@y==1,y[:30]==0,cp.norm(y,2)<=1000,lam<=1e5,mu<=1e5,matrix>>1e-9*np.eye(35)])
    problem.solve(solver='CLARABEL',max_iter=100,tol_gap_abs=1e-7,tol_feas=1e-7,tol_gap_rel=1e-7)
    ctx.prec=precision
    info=dict(solver_status=problem.status,proposed_cost=None if problem.value is None else float(problem.value))
    if y.value is None or lam.value is None or mu.value is None:return None,info
    yy=np.asarray(y.value).ravel();ll=np.maximum(np.asarray(lam.value).ravel(),0)+1e-7
    mm=np.maximum(np.asarray(mu.value).ravel(),0)
    if any(not np.isfinite(x).all() for x in (yy,ll,mm)):return None,info
    try:
        proof=receipt(d,yy.tolist(),ll.tolist(),mm.tolist())
        c,q,g,tail,_=S.direction_quadratic(d,yy.tolist())
        info['verified_margin']=str(c+dual(d,q,g,ll.tolist(),mm.tolist())-tail)
    except (ArithmeticError,ValueError,ZeroDivisionError) as exc:
        proof=None;info['verification_failure']=str(exc)
    return proof,info


def exclude(model,prepared,bounds,cover,clique):
    return propose(prepare(model,prepared,bounds,cover,clique))


def replay(model,prepared,bounds,cover,clique,witness):
    dirs=[[[float.fromhex(v) for v in vector] for vector in ds] for ds in witness['slab_directions_hex']]
    return receipt(prepare(model,prepared,bounds,cover,clique,dirs),
        [float.fromhex(v) for v in witness['direction_hex']],
        [float.fromhex(v) for v in witness['dual_multipliers_hex']],
        [float.fromhex(v) for v in witness['slab_multipliers_hex']])
