"""Noncertifying numerical critical-point search for the corner R on T^4."""
import numpy as np
from scipy.optimize import root

def rgrad(theta):
 a,b,c,d=np.exp(1j*np.array(theta));s=-(1+a+b);t=-(1+c+d);r=-(1+c/a+d/b)
 ds=np.array([-1j*a,-1j*b,0,0]);dt=np.array([0,0,-1j*c,-1j*d]);dr=np.array([1j*c/a,1j*d/b,-1j*c/a,-1j*d/b])
 X,Y,Z=abs(s)**2,abs(t)**2,abs(r)**2
 dX=2*(ds*s.conjugate()).real;dY=2*(dt*t.conjugate()).real;dZ=2*(dr*r.conjugate()).real
 p=X+Y+Z;dp=dX+dY+dZ
 J=2*(s*r*t.conjugate()).real;dJ=2*(ds*r*t.conjugate()+s*dr*t.conjugate()+s*r*dt.conjugate()).real
 W=X*Y+X*Z+Y*Z-X*Y*Z;dW=(Y+Z-Y*Z)*dX+(X+Z-X*Z)*dY+(X+Y-X*Y)*dZ
 g=27-3*p+J;dg=-3*dp+dJ;eta=9-p+J;deta=-dp+dJ;chi=W-(p-9)*(p-18)+(p-15)*J;dchi=dW+(-2*p+27+J)*dp+(p-15)*dJ
 R=4*g*g*eta-chi*chi;grad=8*g*eta*dg+4*g*g*deta-2*chi*dchi
 return R,grad

if __name__=='__main__':
 import argparse,json
 from pathlib import Path
 ap=argparse.ArgumentParser();ap.add_argument('--count',type=int,default=1000);ap.add_argument('--seed',type=int,default=9042);ap.add_argument('--output',type=Path,default=Path(__file__).with_name('seed_stationary_candidates_replay.json'));args=ap.parse_args()
 rng=np.random.default_rng(args.seed);out=[]
 for i in range(args.count):
  theta=rng.uniform(-np.pi,np.pi,4)
  ans=root(lambda th:rgrad(th)[1],theta,options={'xtol':1e-10,'maxfev':500})
  th=(ans.x+np.pi)%(2*np.pi)-np.pi;R,G=rgrad(th)
  if np.linalg.norm(G)>1e-6:continue
  if abs(R)>1e-5 and not any(abs(R-r['R'])<1e-5 for r in out):
   rec=dict(R=float(R),theta=th.tolist(),norm_grad=float(np.linalg.norm(G)),sample=i)
   out.append(rec);out.sort(key=lambda r:r['R']);print(rec,flush=True)
  if i%100==0:print('PROGRESS',i,flush=True)
 args.output.write_text(json.dumps(out,indent=2))
