"""Combine signed mixed-equation cubic tensors before bounding them."""
import itertools
import numpy as np
from flint import arb,arb_mat,ctx
from load_native import C,MS,endpoints
import chordal_support as CS
import tight_chordal as TC
import intersection_chordal as IC


def prepare(model,prepared,bounds,clique):
    d=IC.prepare(model,prepared,bounds,clique);cubics=[[None]*6 for _ in range(6)];higher=[]
    for a in range(6):
        for b in range(6):
            h,k=d['h'][a],d['k'][b];ids=list(range(4))+d['groups'][b+1]
            kb=TC.block(k['b'],range(6),ids)
            s0=(h['h0'].conjugate().transpose()*k['k0'])[0,0]
            l=h['h0'].conjugate().transpose()*kb
            first=h['h1'].conjugate().transpose()*k['k0']
            for i in range(4):l[0,i]+=first[i,0]
            cross=h['h1'].conjugate().transpose()*kb
            ww=TC.block(cross,range(4),range(4));ww+=ww.transpose()
            curv=h['h2'].conjugate().transpose()*k['k0']
            for i in range(4):
                for j in range(4):ww[i,j]+=curv[4*i+j,0]
            we=TC.block(cross,range(4),range(4,16))
            cub=h['h2'].conjugate().transpose()*kb
            def www(i,j,k):return (l[0,i].conjugate()*ww[j,k]+s0.conjugate()*cub[4*i+j,k]).real
            def wwe(i,j,k):return (l[0,4+k].conjugate()*ww[i,j]+2*l[0,i].conjugate()*we[j,k]+s0.conjugate()*cub[4*i+j,4+k]).real
            t0=arb_mat([[sum((www(*x) for x in itertools.permutations((i,j,k))),arb(0))/36
                          for j in range(4) for k in range(4)] for i in range(4)])
            t1=arb_mat([[(wwe(i,j,k)+wwe(j,i,k))/12 for k in range(12)]
                          for i in range(4) for j in range(4)])
            t2=arb_mat([[(l[0,4+k].conjugate()*we[i,j]+l[0,4+j].conjugate()*we[i,k]).real/6
                          for j in range(12) for k in range(12)] for i in range(4)])
            cubics[b][a]=(t0,t1,t2)
            b1=CS.real_operator(TC.block(l,[0],range(4)))+CS.real_operator(TC.block(l,[0],range(4,16)))
            b1=min(b1.upper(),(arb(6).sqrt()*(k['phase']+h['dnorm'])).upper())
            b2=min((TC.complex_bilinear(ww)/2+TC.complex_bilinear(we)).upper(),
                (h['dnorm']*k['phase']+h['n2']*arb(6).sqrt()).upper())
            b3=min(((TC.complex_bilinear(TC.block(cub,range(16),range(4)))+
                     TC.complex_bilinear(TC.block(cub,range(16),range(4,16))))/2).upper(),
                (h['n2']*k['phase']).upper())
            rh=h['remainder']*arb(6).sqrt()
            polyabs=min(arb(6),(abs(s0)+b1+b2+b3).upper())
            higher.append(((b2*b2+2*b1*b3+2*b2*b3+b3*b3+2*polyabs*rh+rh*rh)/6).upper())
    d['cubics']=cubics;d['higher']=higher
    return d


def scalar(d,direction):
    c,q,g,old=CS.scalar(d,direction)
    y=[arb(float(v)) for v in direction]
    tail=sum((abs(y[66+i])*d['higher'][i] for i in range(36)),arb(0))
    for b in range(6):
        for kind in range(3):
            first=d['cubics'][b][0][kind];matrix=arb_mat(first.nrows(),first.ncols())
            for a in range(6):matrix+=d['cubics'][b][a][kind]*y[66+6*a+b]
            tail+=C.Z.spectral(matrix)
    return c,q,g,tail


def receipt(d,direction,multipliers):
    c,q,g,tail=scalar(d,direction);lower=IC.dual(q,g,d['ellipsoids'],multipliers);margin=c+lower-tail
    if not margin>0:return None
    return dict(status='EXCLUDED',route='complex-entry support with signed cubic tensors',
        domain='original complete-cover conditional phase tube',positive_level_cover_certified=False,
        scalar_margin=endpoints(margin),constant=endpoints(c),quadratic_lower=endpoints(lower),tail_upper=endpoints(tail),
        direction_hex=[float(v).hex() for v in direction],dual_multipliers_hex=[float(v).hex() for v in multipliers])


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
    tail=np.array([float(t) for t in d['higher']])@cp.abs(y[66:])
    for b in range(6):
        for kind in range(3):
            m=np.array([MS.numeric(d['cubics'][b][a][kind]).ravel() for a in range(6)])
            compressed=np.linalg.qr(m.T,mode='reduced')[1]
            tail+=cp.norm(compressed@y[66+b:102:6],2)
    problem=cp.Problem(cp.Minimize((cp.sum(lam)+s)/2+tail),
        [f@y==1,cp.norm(y,2)<=1000,matrix>>1e-9*np.eye(77)])
    problem.solve(solver='CLARABEL',max_iter=100,tol_gap_abs=1e-7,tol_feas=1e-7,tol_gap_rel=1e-7)
    ctx.prec=precision
    info=dict(solver_status=problem.status,proposed_cost=None if problem.value is None else float(problem.value))
    if y.value is None or lam.value is None:return None,info
    yy=np.asarray(y.value).ravel();ll=np.maximum(np.asarray(lam.value).ravel(),0)+1e-7
    if not np.isfinite(yy).all() or not np.isfinite(ll).all():return None,info
    try:
        proof=receipt(d,yy.tolist(),ll.tolist());c,q,g,tail=scalar(d,yy.tolist())
        low=IC.dual(q,g,d['ellipsoids'],ll.tolist())
        info.update(verified_margin=str(c+low-tail),quadratic_lower=str(low),tail=str(tail))
    except (ArithmeticError,ValueError,ZeroDivisionError) as exc:
        proof=None;info['verification_failure']=str(exc)
    return proof,info


def exclude(model,prepared,bounds,clique):return propose(prepare(model,prepared,bounds,clique))


def replay(model,prepared,bounds,clique,witness):
    return receipt(prepare(model,prepared,bounds,clique),[float.fromhex(v) for v in witness['direction_hex']],
        [float.fromhex(v) for v in witness['dual_multipliers_hex']])
