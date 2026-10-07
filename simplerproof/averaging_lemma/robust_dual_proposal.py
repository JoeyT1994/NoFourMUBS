"""Optimize division-free dual witnesses for a box, not only its centre.
Finite-difference derivatives are proposals only; no proof acceptance here.
"""
import json,time
from pathlib import Path
import numpy as np
import cvxpy as cp
from dual_reconstruction import affine_data
HERE=Path(__file__).resolve().parent
RADII=[1,1,1,3,3,3]*2

def combined_data(theta,sigma):
    out=[];eqs=[]
    for side,(th,sg) in enumerate([(theta,sigma),(np.asarray(theta)[[0,2,1,3]],-sigma)]):
        A,E=affine_data(th,sg);B=np.zeros((6,3,3,26),complex);F=np.zeros((6,26),complex)
        indices=[0]+list(range(1+12*side,13+12*side))+[25]
        B[:,:,:,indices]=A;F[:,indices]=E;out.extend(B);eqs.extend(F)
    return np.array(out),np.array(eqs)

def propose(theta,sigma,h):
    A,E=combined_data(theta,sigma)
    derivatives=[]
    for j in range(4):
        p=np.asarray(theta).copy();p[j]+=1e-5;ap,ep=combined_data(p,sigma)
        p[j]-=2e-5;am,em=combined_data(p,sigma)
        derivatives.append(((ap-am)/2e-5,(ep-em)/2e-5))
    Y=[cp.Variable((3,3),hermitian=True) for _ in range(12)];lam=cp.Variable(12,complex=True)
    vec=cp.hstack([cp.reshape(y,(9,),order='C') for y in Y])
    def aggregate(a,e):return cp.real(vec@a.transpose(0,2,1,3).reshape(108,26)-cp.conj(lam)@e)
    def support(c,slope=False):
        return (cp.abs(c[0]) if slope else c[0])+sum(r*cp.norm(c[1+2*j:3+2*j]) for j,r in enumerate(RADII))+np.sqrt(5)*(cp.abs(c[-1]) if slope else cp.pos(c[-1]))
    co=aggregate(A,E);objective=support(co)+h*sum(support(aggregate(a,e),True) for a,e in derivatives)
    problem=cp.Problem(cp.Minimize(objective),[y>>0 for y in Y]+[sum(cp.real(cp.trace(y)) for y in Y)==1])
    problem.solve(solver='CLARABEL',tol_gap_abs=1e-8,tol_feas=1e-8,tol_gap_rel=1e-8,max_iter=200)
    yy=np.array([y.value for y in Y]);ll=lam.value
    return dict(status=problem.status,first_order_objective=float(problem.value),
        Y_real=yy.real.tolist(),Y_imag=yy.imag.tolist(),lambda_real=ll.real.tolist(),lambda_imag=ll.imag.tolist())

if __name__=='__main__':
    import argparse
    parser=argparse.ArgumentParser();parser.add_argument('--radius',type=float,default=.01)
    parser.add_argument('--limit',type=int,default=6);parser.add_argument('--output',default='robust_dual_proposals.json')
    args=parser.parse_args()
    rows=json.loads((HERE/'psd_radius_calibration.json').read_text())['rows'];out=[]
    for row in rows[:args.limit]:
        nums=[2*int(row['path'][j::4],2)+1-64 for j in range(4)];theta=np.pi*np.array(nums)/64
        for sigma in [1,-1]:
            start=time.monotonic();r=propose(theta,sigma,args.radius)
            out.append(dict(path=row['path'],theta=theta.tolist(),sigma=sigma,halfwidth=args.radius,proposal=r,seconds=time.monotonic()-start))
            print(row['path'],sigma,r['first_order_objective'],time.monotonic()-start,flush=True)
            (HERE/args.output).write_text(json.dumps(dict(scope='First-order numerical proposals; NO remainder certificate',certified=False,rows=out),indent=2)+'\n')
