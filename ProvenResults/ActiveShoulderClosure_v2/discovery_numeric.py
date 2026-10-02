"""Numerical chart and geometry proposals only; no acceptance decisions."""
import numpy as np,itertools,math,gzip,json,time
from pathlib import Path
ROOT=Path(__file__).resolve().parents[2]
perms=list(itertools.permutations(range(3)))
def inv(E):
 s,t,r=-(E[1]*E[0].conj()).sum(),-(E[2]*E[0].conj()).sum(),-(E[2]*E[1].conj()).sum()
 X,Y,Z=abs(s)**2,abs(t)**2,abs(r)**2;p=X+Y+Z;J=2*(s*r*t.conjugate()).real;g=27-3*p+J;eta=9-p+J;chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J;R=4*g*g*eta-chi*chi
 return s,t,r,g,eta,chi,R

def side(E):
 choices=[]
 for perm in perms:
  EE=E[list(perm)]/E[perm[0]]
  s,t,r,g,eta,chi,R=inv(EE)
  # Negative central R does not veto a chart proposal.
  P0=r*s*s+r.conjugate()*t*t+(3-abs(r)**2)*s*t
  P1=t*s.conjugate()**2+r*r*t.conjugate()+(3-abs(t)**2)*r*s.conjugate()
  if abs(P0*P1)<1e-12:continue
  sides=[];sep=100
  for sign in [-1,1]:
   k0,k1=9-abs(r)**2,9-abs(t)**2;tau=math.sqrt(max(0,R))
   u=(g*g+k0*k1*eta+(k0+k1)*chi/2+1j*sign*(k1-k0)*tau/2)/(P0.conjugate()*P1)
   Pi=(chi/2+k0*eta+1j*sign*tau/2)/P0.conjugate()
   xx=np.roots([1,-s,u*s.conjugate(),-u])
   yy=(t*xx*xx-Pi*xx+u*r)/(3*xx*xx-2*s*xx+u*s.conjugate())
   B=np.array([np.ones(3),xx,yy])[np.argsort(perm)]
   B=B*B[0].conj()
   sep=min(sep,min(abs(xx[i]-xx[j]) for i in range(3) for j in range(i)))
   sides.append(B)
  choices.append((sep,perm,sides))
 if not choices:raise ValueError('no side')
 return max(choices,key=lambda x:x[0])

def reconstruct(theta):
 E=np.ones((3,3),complex);E[1:,1:]=np.exp(1j*np.array(theta).reshape(2,2))
 sh=side(E);sv=side(E.T);HH=[]
 for ih,B in enumerate(sh[2]):
  for iv,T in enumerate(sv[2]):
   C=T.T;D=np.linalg.solve(C.conj().T,-E.conj().T@B)
   H=np.block([[E,B],[C,D]])
   HH.append((ih,iv,H,float(np.max(abs(abs(H)-1)))))
 return inv(E)[-1],sh[:2],sv[:2],HH

def frame_matrices():
 out=[]
 for tr in [0,1]:
  for r in perms:
   for c in perms:
    M=[]
    for k in range(4):
     P=np.zeros((3,3),int);P[1+k//2,1+k%2]=1
     if tr:P=P.T
     Q=P[np.ix_(r,c)];Q=Q-Q[:,0:1]-Q[0:1,:]+Q[0,0]
     M.append(Q[1:,1:].reshape(-1))
    M=np.array(M).T
    for sign in [1,-1]:out.append((M*sign,r,c,tr,sign))
 return out
FRAMES=frame_matrices();MATS=np.array([x[0] for x in FRAMES])
def project(theta):
 tt=np.einsum('kij,j->ki',MATS,theta);tt=(tt+np.pi)%(2*np.pi)-np.pi
 dd=np.max(abs(tt[:,[0,2]]-np.array([2*np.pi/3,-2*np.pi/3])),axis=1);k=int(dd.argmin())
 return float(dd[k]),k,tt[k]

def Fref(a,b):
 P=np.array([[r*c/6+([0,a,b][r%3])*(c%2) for c in [0,2,5,1,3,4]] for r in range(6)])
 return np.exp(2j*np.pi*P)
def distance(H,J):
 best=(100,None)
 for p in perms:
  rr=[0,1,2]+[x+3 for x in p]
  for q in perms:
   cc=[0,1,2]+[x+3 for x in q];A=H[np.ix_(rr,cc)]
   delta=np.angle(A*J.conj());g=delta.mean(axis=1);A=A*np.exp(-1j*g[:,None]);d=np.sqrt(np.maximum(0,1-abs(np.sum(J.conj()*A,axis=0)/6)**2)).max()
   if d<best[0]:best=(float(d),(p,q))
 return best
