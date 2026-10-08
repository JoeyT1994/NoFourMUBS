"""Numerical proposals for division-free reconstruction separation certificates.

No solver status is a proof. Witnesses must be rounded and checked separately.
"""
from pathlib import Path
import json,math,time
import numpy as np
import cvxpy as cp
HERE=Path(__file__).resolve().parent
RADII=[1,1,1,3,3,3]

def affine_data(theta,sigma):
    a,b,c,d=np.exp(1j*np.asarray(theta));s=-1-a-b;t=-1-c-d;r=-1-c*a.conjugate()-d*b.conjugate()
    X,Y,Z=abs(s)**2,abs(t)**2,abs(r)**2;p=X+Y+Z;J=2*(s*r*t.conjugate()).real;W=X*Y+X*Z+Y*Z-X*Y*Z
    P=np.array([r*s*s+r.conjugate()*t*t+(3-Z)*s*t,
       t*s.conjugate()**2+r*r*t.conjugate()+(3-Y)*r*s.conjugate(),
       s*t.conjugate()**2+r.conjugate()**2*s.conjugate()+(3-X)*r.conjugate()*t.conjugate()])
    kval=np.array([9-Z,9-Y,9-X]);chi=W-(p-9)*(p-18)+(p-15)*J;eta=9-p+J;g=27-3*p+J
    def const(z):
        v=np.zeros(14,complex);v[0]=z;return v
    unknown=[]
    for k in range(6):
        v=const(0);v[1+2*k]=1;v[2+2*k]=1j;unknown.append(v)
    u,v,w,Pi,C1,C2=unknown;q=const(0);q[-1]=1
    equations=[]
    for var,i,j in [(u,0,1),(v,0,2),(w,2,1)]:
        num=2*g*g+2*kval[i]*kval[j]*eta+(kval[i]+kval[j])*chi
        equations.append(2*P[i].conjugate()*P[j]*var-const(num)-1j*(kval[j]-kval[i])*sigma*q)
    equations.extend([2*P[0].conjugate()*Pi-const(chi+2*kval[0]*eta)-1j*sigma*q,
                      2*P[1]*C1-const(chi+2*kval[1]*eta)+1j*sigma*q,
                      2*P[2]*C2-const(chi+2*kval[2]*eta)+1j*sigma*q])
    m={}
    def put(i,j,z):m[i,j]=z;m[-i,-j]=z.conjugate()
    put(0,0,const(3));put(1,0,const(s));put(0,1,const(t));put(1,-1,const(r.conjugate()))
    put(2,0,const(s*s)-2*u*s.conjugate());put(0,2,const(t*t)-2*v*t.conjugate())
    put(1,1,const(s*t)-Pi);put(2,-1,const(s*r.conjugate())-C1);put(-1,2,const(t*r)-C2)
    put(2,1,s*m[1,1]-u*(s.conjugate()*t-r));put(1,2,t*m[1,1]-v*(t.conjugate()*s-r.conjugate()))
    put(2,-2,const(r.conjugate()**2)-2*w*r)
    put(3,-1,s*m[2,-1]+u*(t.conjugate()-s.conjugate()*r.conjugate()))
    put(-1,3,t*m[-1,2]+v*(s.conjugate()-t.conjugate()*r))
    put(3,-2,r.conjugate()*m[2,-1]+w*(t-r*s))
    put(-2,3,r*m[-1,2]+w.conjugate()*(s-r.conjugate()*t))
    powers=[(1,1),(1,-1),(2,-1),(0,1),(-1,2),(1,0)];weights=[(0,0),(1,0),(0,1),(-1,1)]
    xx=[1,a,b];yy=[1,c,d];G=np.array([[3,s.conjugate(),t.conjugate()],[s,3,r.conjugate()],[t,r,3]])
    matrices=[]
    for j,k in [(0,1),(0,2),(1,2)]:
        A=xx[k]/xx[j];B=yy[k]/yy[j];ai=A.conjugate();bi=B.conjugate()
        ds=[-(A-B)**2*(A+B)*ai**2*bi**2,(A-B)*(A+B)*(A*B-1)*ai**2*bi,
            (B-1)**2*(B+1)*ai*bi,-(A*A-B)*(B-1)*(B+1)*ai*bi**2,
            (A-1)**2*(A+1)*ai*bi,(A-1)*(A+1)*(A-B*B)*ai**2*bi]
        ds=[z*xx[j]**(-p)*yy[j]**(-q_) for z,(p,q_) in zip(ds,powers)]
        sums=[]
        for wi,wj in weights:
            f=const(0)
            for z,(pi,pj) in zip(ds,powers):f+=1j*(z*m[pi+wi,pj+wj]-z.conjugate()*m[-pi+wi,-pj+wj])
            sums.append(f)
        N=np.zeros((3,3,14),complex)
        for j0 in range(3):N[j0,j0]=sums[0].real
        for z,(j0,k0) in zip(sums[1:],[(1,0),(2,0),(2,1)]):N[j0,k0]=z;N[k0,j0]=z.conjugate()
        QG=np.zeros_like(N);QG[:,:,-1]=G
        matrices.extend([QG+N,QG-N])
    return np.array(matrices),np.array(equations)

def aggregate(matrices,equations,Y,lam):
    return np.real(np.einsum('aij,ajik->k',Y,matrices)-np.einsum('a,ak->k',np.conj(lam),equations))

def support(coeff):
    return float(coeff[0]+sum(r*np.linalg.norm(coeff[1+2*j:3+2*j]) for j,r in enumerate(RADII))+np.sqrt(5)*max(0,coeff[-1]))

def propose(theta,sigma):
    matrices,E=affine_data(theta,sigma);x=cp.Variable(13);delta=cp.Variable()
    psd=[]
    for M in matrices:
        expr=M[:,:,0]+sum(M[:,:,j+1]*x[j] for j in range(13))
        psd.append(cp.hermitian_wrap(expr)-delta*np.eye(3)>>0)
    eq=E[:,0]+E[:,1:]@x==0
    constraints=psd+[eq,x[-1]>=0,x[-1]<=np.sqrt(5)]+[cp.norm(x[2*j:2*j+2])<=r for j,r in enumerate(RADII)]
    problem=cp.Problem(cp.Maximize(delta),constraints)
    problem.solve(solver='CLARABEL',tol_gap_abs=1e-9,tol_feas=1e-9,tol_gap_rel=1e-9,max_iter=200)
    Y=np.array([p.dual_value for p in psd]);lam=np.asarray(eq.dual_value)
    candidates=[(support(aggregate(matrices,E,Y,k*lam)),k*lam) for k in [-2,-1,-.5,.5,1,2]]
    bound,lam=min(candidates,key=lambda z:z[0])
    co=aggregate(matrices,E,Y,lam)
    slopes=[]
    for j in range(4):
        t=np.asarray(theta).copy();t[j]+=1e-6;mp,ep=affine_data(t,sigma)
        t[j]-=2e-6;mm,em=affine_data(t,sigma)
        derivative=(aggregate(mp,ep,Y,lam)-aggregate(mm,em,Y,lam))/2e-6
        slopes.append(abs(derivative[0])+sum(r*np.linalg.norm(derivative[1+2*k:3+2*k]) for k,r in enumerate(RADII))+np.sqrt(5)*abs(derivative[-1]))
    return dict(status=problem.status,delta=float(delta.value),point_support=bound,
        trace_sum=float(np.trace(Y,axis1=1,axis2=2).real.sum()),minimum_dual_eigenvalue=float(min(np.linalg.eigvalsh(y).min() for y in Y)),
        first_order_radius_estimate=-bound/sum(slopes),slopes=slopes,
        Y_real=Y.real.tolist(),Y_imag=Y.imag.tolist(),lambda_real=lam.real.tolist(),lambda_imag=lam.imag.tolist())

if __name__=='__main__':
    rows=json.loads((HERE/'psd_radius_calibration.json').read_text())['rows'];out=[]
    for row in rows[:6]:
        nums=[2*int(row['path'][j::4],2)+1-64 for j in range(4)];theta=np.pi*np.array(nums)/64
        for sigma in [1,-1]:
            start=time.monotonic();r=propose(theta,sigma)
            out.append(dict(path=row['path'],theta=theta.tolist(),sigma=sigma,proposal=r,seconds=time.monotonic()-start))
            print(row['path'],sigma,'delta',r['delta'],'support',r['point_support'],'radius estimate',r['first_order_radius_estimate'],flush=True)
            (HERE/'dual_reconstruction_proposals.json').write_text(json.dumps(dict(scope='Numerical witness proposals only',certified=False,rows=out),indent=2)+'\n')
