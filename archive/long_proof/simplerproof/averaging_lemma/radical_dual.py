"""Strengthen reconstruction certificates with the radical's moment relation.

For q=sqrt(R), [[R,q],[q,1]] is PSD and (9/4)q-R>=0 when
0<=q<=sqrt(5). These are affine in the existing unknown q and supply
additional exact dual terms. Numerical optimization proposes weights only.
"""
import json,time,warnings,itertools
from pathlib import Path
from fractions import Fraction as Q
import numpy as np
import cvxpy as cp
from flint import arb,ctx
from robust_dual_proposal import combined_data,RADII
from verify_dual_witness import rounded_witness,aggregate,taylor_support
from reconstruction_polynomials import LP,combined_polynomials
from seed_taylor import corner_polynomials
from dual_parent_cover import guard
HERE=Path(__file__).resolve().parent

def seed_R(theta):
    a,b,c,d=np.exp(1j*np.asarray(theta));s=-1-a-b;t=-1-c-d;r=-1-c/a-d/b
    X,Y,Z=abs(s)**2,abs(t)**2,abs(r)**2;p=X+Y+Z;J=2*(s*r*t.conjugate()).real
    W=X*Y+X*Z+Y*Z-X*Y*Z;g=27-3*p+J;eta=9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J
    return 4*g*g*eta-chi*chi

def data(theta,sigma):
    A,E=combined_data(theta,sigma);extra=np.zeros((1,3,3,26),complex);R=seed_R(theta)
    extra[0,0,0,0]=R;extra[0,1,1,0]=1;extra[0,0,1,25]=extra[0,1,0,25]=1
    scalar=np.zeros(26);scalar[0]=-R;scalar[-1]=9/4
    return np.concatenate([A,extra]),E,scalar

def propose(theta,sigma,h):
    A,E,C=data(theta,sigma);derivatives=[]
    for j in range(4):
        p=np.array(theta);p[j]+=1e-5;ap,ep,cp_=data(p,sigma)
        p[j]-=2e-5;am,em,cm=data(p,sigma)
        derivatives.append(((ap-am)/2e-5,(ep-em)/2e-5,(cp_-cm)/2e-5))
    Y=[cp.Variable((3,3),hermitian=True) for _ in range(13)]
    lam=cp.Variable(12,complex=True);mu=cp.Variable(nonneg=True)
    vec=cp.hstack([cp.reshape(y,(9,),order='C') for y in Y])
    def ag(a,e,c):return cp.real(vec@a.transpose(0,2,1,3).reshape(117,26)-cp.conj(lam)@e)+mu*c
    def support(c,slope=False):
        return (cp.abs(c[0]) if slope else c[0])+sum(r*cp.norm(c[1+2*j:3+2*j]) for j,r in enumerate(RADII))+np.sqrt(5)*(cp.abs(c[-1]) if slope else cp.pos(c[-1]))
    objective=support(ag(A,E,C))+h*sum(support(ag(a,e,c),True) for a,e,c in derivatives)
    problem=cp.Problem(cp.Minimize(objective),[y>>0 for y in Y]+[sum(cp.real(cp.trace(y)) for y in Y)+mu==1])
    problem.solve(solver='CLARABEL',tol_gap_abs=1e-8,tol_feas=1e-8,tol_gap_rel=1e-8,max_iter=200)
    yy=np.array([y.value for y in Y]);ll=lam.value
    return dict(status=problem.status,first_order_objective=float(problem.value),
        Y_real=yy.real.tolist(),Y_imag=yy.imag.tolist(),lambda_real=ll.real.tolist(),lambda_imag=ll.imag.tolist(),mu=float(mu.value))

def propose_bernstein(theta,sigma,h,data_function=data):
    """Optimize the shared quadratic coefficient hull, all at proposal precision."""
    centre=data_function(theta,sigma);step=1e-3;first=[];second={}
    for j in range(4):
        p=np.array(theta);p[j]+=step;plus=data_function(p,sigma)
        p[j]-=2*step;minus=data_function(p,sigma)
        first.append(tuple((a-b)/(2*step) for a,b in zip(plus,minus)))
        second[j,j]=tuple((a-2*c+b)/step**2 for a,b,c in zip(plus,minus,centre))
        for k in range(j):
            parts=[]
            for s,t in itertools.product([-1,1],repeat=2):
                p=np.array(theta);p[j]+=s*step;p[k]+=t*step
                parts.append(tuple(s*t*v for v in data_function(p,sigma)))
            second[k,j]=tuple(sum(part[n] for part in parts)/(4*step**2) for n in range(3))
    controls=[]
    for v in itertools.product(range(3),repeat=4):
        point=[c.copy() for c in centre]
        for n in range(3):
            for j in range(4):
                point[n]+=h*(v[j]-1)*first[j][n]+h*h/2*(1,-1,1)[v[j]]*second[j,j][n]
                for k in range(j):point[n]+=h*h*(v[j]-1)*(v[k]-1)*second[k,j][n]
        controls.append(point)
    A=np.array([p[0] for p in controls]);E=np.array([p[1] for p in controls]);C=np.array([p[2] for p in controls])
    Y=[cp.Variable((3,3),hermitian=True) for _ in range(13)]
    if C.ndim==2:C=C[:,None,:]
    scalar_count=C.shape[1]
    lam=cp.Variable(12,complex=True);mu=cp.Variable(scalar_count,nonneg=True)
    vec=cp.hstack([cp.reshape(y,(9,),order='C') for y in Y])
    flat=cp.real(vec@A.transpose(1,3,2,0,4).reshape(117,81*26)-cp.conj(lam)@E.transpose(1,0,2).reshape(12,81*26))
    co=cp.reshape(flat+mu@C.transpose(1,0,2).reshape(scalar_count,81*26),(81,26),order='C')
    supports=co[:,0]+sum(r*cp.norm(co[:,1+2*j:3+2*j],axis=1) for j,r in enumerate(RADII))+np.sqrt(5)*cp.pos(co[:,-1])
    problem=cp.Problem(cp.Minimize(cp.max(supports)),[y>>0 for y in Y]+[sum(cp.real(cp.trace(y)) for y in Y)+cp.sum(mu)==1])
    problem.solve(solver='CLARABEL',tol_gap_abs=1e-8,tol_feas=1e-8,tol_gap_rel=1e-8,max_iter=200)
    yy=np.array([y.value for y in Y]);ll=lam.value
    return dict(status=problem.status,quadratic_objective=float(problem.value),
        Y_real=yy.real.tolist(),Y_imag=yy.imag.tolist(),lambda_real=ll.real.tolist(),lambda_imag=ll.imag.tolist(),mu=float(mu.value[0]) if scalar_count==1 else mu.value.tolist())

def exact_polynomials(A,E,proposal):
    Y,lam,shifts=rounded_witness(proposal);assert len(Y)==13
    mu=LP.dyadic(max(0,round(Q(proposal['mu'])*2**40)),0,40)
    ps=aggregate(A,E,Y,lam)
    rp,_=corner_polynomials();R=LP(terms={k:(c,0) for k,c in rp.items()})
    ps[0]+=(Y[12][0][0]-mu)*R+Y[12][1][1]
    ps[-1]+=Y[12][0][1]+Y[12][1][0]+LP.dyadic(9,0,2)*mu
    assert all(p.d==p.conjugate().d and p.den==p.conjugate().den for p in ps)
    return ps,shifts

def main():
    import argparse
    ap=argparse.ArgumentParser();ap.add_argument('--limit',type=int,default=6);ap.add_argument('--denominator',type=int,default=64)
    ap.add_argument('--output',default='radical_dual_pi64.json');ap.add_argument('--quadratic',action='store_true')
    ap.add_argument('--input',default='psd_radius_calibration.json');args=ap.parse_args()
    ctx.prec=160;rows=json.loads((HERE/args.input).read_text())['rows'][:args.limit]
    poly={s:combined_polynomials(s) for s in [1,-1]};out=[]
    for row in rows:
        path=row['path'];den=2**(len(path)//4);nums=[2*int(path[j::4],2)+1-den for j in range(4)]
        theta=np.pi*np.array(nums)/den;h=arb.pi()/args.denominator;g=guard(nums,den,h);assert g
        for s in [1,-1]:
            start=time.monotonic();proposal=(propose_bernstein if args.quadratic else propose)(theta,s,float(h.mid()))
            ps,shifts=exact_polynomials(*poly[s],proposal);check=taylor_support(ps,nums,h,5,den)
            result=dict(path=path,sigma=s,radius='pi/'+str(args.denominator),proposal=proposal,shifts=shifts,Tao_absence=g,check=check,seconds=time.monotonic()-start)
            out.append(result);print(path,s,proposal.get('quadratic_objective',proposal.get('first_order_objective')),check['support_upper_decimal'],flush=True)
            (HERE/args.output).write_text(json.dumps(dict(scope='Finite boxes only, radical consistency added',global_confinement_proved=False,rows=out),indent=2)+'\n')
if __name__=='__main__':main()
