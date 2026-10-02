"""Uniform signed-side chart and exact finite-exponential contraction bounds.

The first seven equations are the six horizontal Gram equations plus the
signed real side Jacobian. A block preconditioner never mixes these equations
with the remaining Gram equations. See PROOF.md for the physical continuation.
"""
from interval import *
from charts import PhaseBase, double_center
from fastmm import lib,endpoints
import ctypes
from mpmath.libmp import to_float,round_ceiling

def point_array(X):
 return np.array([[v(float(x)) for x in row] for row in X],dtype=object)
from rootchart import QTERMS

EXPONENTS=[(1,0),(0,1),(2,0),(1,1),(0,2),(3,0),(2,1),(1,2),(0,3)]
FACTORS=[Q(1),Q(1),Q(1,2),Q(1),Q(1,2),Q(1,6),Q(1,2),Q(1,2),Q(1,6)]
class SignedChart:
 def __init__(self,rect):
  self.rect=tuple(rect);self.base=PhaseBase(span(rect[0],rect[1]),span(rect[2],rect[3]),'N');self.H0=self.base.H
  self.nr=self.nc=6;self.n=22;self.m=31
  self.unk=[(i,j) for i in range(1,6) for j in range(1,6) if (i,j) not in [(1,1),(2,1),(2,2)]]
  self.seed=[(1,1),(2,1)];self.pd={x:k for k,x in enumerate(self.unk)}
  self.top_old=[0,1,2,3,10,11,30];order=self.top_old+[r for r in range(31) if r not in self.top_old];mp={r:k for k,r in enumerate(order)}
  terms=[]
  for r,(i,k) in enumerate(__import__('itertools').combinations(range(6),2)):
   for j in range(6):
    X=np.zeros(36,dtype=np.int32);X[6*i+j]=1;X[6*k+j]=-1
    terms.extend([(mp[2*r],Q(1),0,X),(mp[2*r+1],Q(1),1,X)])
  for X,cw in QTERMS:terms.append((mp[30],cw,1,X.astype(np.int32)))
  self.terms=terms;self.nt=len(terms)
  self.X=np.array([x for _,_,_,x in terms],dtype=np.int32)
  self.Xunk=np.ascontiguousarray(self.X[:,[6*i+j for i,j in self.unk]])
  self.rows=np.array([r for r,_,_,_ in terms],dtype=np.int32);self.which=np.array([wh for _,_,wh,_ in terms],dtype=np.int32)
  self.weights=np.array([[float(cw) for _,cw,_,_ in terms]],dtype=np.float64)
  self.zbase=[self.base.monomial([(i,j,int(X[6*i+j])) for i in range(6) for j in range(6) if X[6*i+j]]) for _,_,_,X in terms]
  self.znumeric=np.array([complex(mid(z)) for z in self.zbase])*self.weights[0]
  B4=np.zeros((31,22,22),dtype=np.int64)
  for (r,cw,_,_),X in zip(terms,self.Xunk):B4[r]+=int(abs(cw)*4)*np.outer(abs(X),abs(X))
  require(np.max(B4)<2**20,'derivative error integer bound')
  self.B4=B4
  require(all(not np.any(X[7:]) for r,X in zip(self.rows,self.Xunk) if r<7),'horizontal equations depend on bottom variables')
 def components(self,Z):
  return np.where(self.which[:,None]==0,Z.real,Z.imag)
 def accumulate(self,V):
  out=np.zeros((31,V.shape[1]));np.add.at(out,self.rows,V);return out
 def numeric_jac(self,phi=None,positions=None):
  if positions is None:positions=self.unk
  powers=self.X[:,[6*i+j for i,j in positions]]
  Z=self.znumeric if phi is None else self.znumeric*np.exp(1j*(self.X@phi.ravel()))
  return self.accumulate(self.components((1j*Z)[:,None])*powers)
 def numeric_derivatives(self,P,Q2):
  ll=self.X@P.reshape(36,2);qq=self.X@Q2.reshape(36,3);u,w=ll.T;uu,uw,ww=qq.T;Z=self.znumeric
  L=1j*Z[:,None]*ll
  H=Z[:,None]*np.array([1j*uu-u*u,1j*uw-u*w,1j*ww-w*w]).T
  T=Z[:,None]*np.array([-3*uu*u-1j*u**3,-uu*w-2*uw*u-1j*u*u*w,-ww*u-2*uw*w-1j*u*w*w,-3*ww*w-1j*w**3]).T
  return tuple(self.accumulate(self.components(V)) for V in [L,H,T])
 def proposal(self):
  P=np.zeros((6,6,2));Q2=np.zeros((6,6,3));C3=np.zeros((6,6,4));P[1,1,0]=1;P[2,1,1]=1
  A=block_inverse(self.numeric_jac())
  L,_,_=self.numeric_derivatives(P,Q2);U=-A@L
  for n,(i,j) in enumerate(self.unk):P[i,j,:]=U[n]
  _,H,_=self.numeric_derivatives(P,Q2);U=-A@H
  for n,(i,j) in enumerate(self.unk):Q2[i,j,:]=U[n]
  _,_,T=self.numeric_derivatives(P,Q2);U=-A@T
  for n,(i,j) in enumerate(self.unk):C3[i,j,:]=U[n]
  def exact(M):return np.array([Q(float(x)) for x in M.flat],dtype=object).reshape(M.shape)
  return exact(P),exact(Q2),exact(C3),A

def block_inverse(J):
 require(J.shape==(31,22) and np.isfinite(J).all(),'Jacobian proposal shape')
 A=np.zeros((22,31));T=np.linalg.inv(J[:7,:7]);B=np.linalg.pinv(J[7:,7:]);A[:7,:7]=T;A[7:,7:]=B;A[7:,:7]=-B@J[7:,:7]@T
 return A

def signed_inputs(chart,P,Q2,C3,hu,hw):
 zr=np.array([[re(z) for z in chart.zbase]],dtype=object);zi=np.array([[im(z) for z in chart.zbase]],dtype=object)
 coeff=np.concatenate([P.reshape(36,2),Q2.reshape(36,3),C3.reshape(36,4)],axis=1)
 h=[hu**a*hw**b*f for (a,b),f in zip(EXPONENTS,FACTORS)]
 ph=np.empty((chart.nt,9),dtype=object);tail=[Q(0)]*31
 for term,X in enumerate(chart.X):
  cf=[sum((int(x)*coeff[i,k] for i,x in enumerate(X) if x),Q(0))*h[k] for k in range(9)]
  require(all(abs(x)<=1 for x in cf),'normalized phase coefficient bound')
  ph[term,:]=[v(x) for x in cf];rho=sum(map(abs,cf),Q(0));r,cw,_,_=chart.terms[term];tail[r]+=abs(cw)*rho**6/720
 return (*endpoints(zr),*endpoints(zi),*endpoints(ph)),tail

def signed_native(chart,P,Q2,C3,hu,hw,n,polynomial=True):
 require(n in [1,2,4,8,16],'normal cover size')
 inp,tail=signed_inputs(chart,P,Q2,C3,hu,hw)
 arr=np.ctypeslib.ndpointer(dtype=np.float64,ndim=2,flags='C_CONTIGUOUS');ai=np.ctypeslib.ndpointer(dtype=np.int32,ndim=1,flags='C_CONTIGUOUS');ai2=np.ctypeslib.ndpointer(dtype=np.int32,ndim=2,flags='C_CONTIGUOUS')
 F=None
 if polynomial:
  F=[np.empty((31,135)),np.empty((31,135))];fn=lib().equation_polynomial;fn.argtypes=[arr]*6+[ai,ai,arr,arr,arr,ctypes.c_int,ctypes.c_int];fn.restype=ctypes.c_int
  status=fn(*inp,chart.rows,chart.which,chart.weights,*F,chart.nt,31);require(status==0,'signed polynomial rejection '+str(status))
 js=[np.empty((n*n*31,22)) for _ in range(6)];fn=lib().equation_jacobians;fn.argtypes=[arr]*6+[ai,ai,arr,ai2]+[arr]*6+[ctypes.c_int]*4;fn.restype=ctypes.c_int
 status=fn(*inp,chart.rows,chart.which,chart.weights,chart.Xunk,*js,chart.nt,31,22,n);require(status==0,'signed Jacobian rejection '+str(status))
 require(all(np.isfinite(x).all() for x in js+(F or [])),'finite native signed arrays')
 return F,tail,js

def signed_envelopes(chart,P,Q2,C3,hu,hw,n,inverses=None):
 F,tail,js=signed_native(chart,P,Q2,C3,hu,hw,n)
 if inverses is None:
  A=np.array([block_inverse((js[0][i*31:(i+1)*31]+js[1][i*31:(i+1)*31])/2) for i in range(n*n)],dtype=np.float64)
 else:A=np.asarray(inverses)
 require(A.shape==(n*n,22,31) and A.dtype==np.dtype('float64') and np.isfinite(A).all() and np.max(abs(A))<=2**20,'signed preconditioner shape/bound')
 require(np.all(A[:,:7,7:]==0),'top equations must not mix with lower equations')
 tail=np.array([[to_float(v(x).b._mpi_[1],round_ceiling) for x in tail]])
 eta=np.empty((22,1));K=np.empty((22,22));W=np.empty((22,31));arr=np.ctypeslib.ndpointer(dtype=np.float64,ndim=2,flags='C_CONTIGUOUS')
 fn=lib().general_envelopes;fn.argtypes=[arr]*13+[ctypes.c_int]*3;fn.restype=ctypes.c_int
 status=fn(np.ascontiguousarray(A.reshape(-1,31)),*F,tail,*js,eta,K,W,31,22,n);require(status==0,'signed envelope rejection '+str(status))
 require(all(np.isfinite(x).all() and (x>=0).all() for x in [eta,K,W]),'finite signed envelopes')
 return point_array(eta),point_array(K),point_array(W),A

def signed_correction(chart,eta,Kp,W,radii):
 require(len(radii)==22 and all(Q(0)<r<Q(1,10) for r in radii),'positive small correction radii')
 b4=mat(chart.B4.reshape(31*22,22));rad=mat(np.array(radii,dtype=object)[:,None])
 E=upper_points(mm(b4,rad)/v(4)).reshape(31,22)
 K=upper_points(Kp+mm(W,E));Kr=upper_points(mm(K,rad));S=upper_points(eta+Kr)
 co=max((S[i,0]/v(radii[i])).b for i in range(22));ct=max((Kr[i,0]/v(radii[i])).b for i in range(22))
 return all(S[i,0].b<v(radii[i]) for i in range(22)),co,ct,S

def signed_radii(chart,eta,K,W):
 # The loop only proposes a positive dyadic box; the strict inequality accepts.
 rad=[ceild(eta[i,0]*v(Q(21,20))+v(Q(1,10**10)),2**38) for i in range(22)]
 for it in range(80):
  ok,co,ct,S=signed_correction(chart,eta,K,W,rad)
  if ok:return rad,co,ct
  rad=[ceild(S[i,0]*v(Q(21,20))+v(Q(1,10**10)),2**38) for i in range(22)]
  if max(rad)>=Q(1,10):break
 raise ValueError('no signed correction certificate')

def phase_projection(C):
 # The two parameter phases are alpha=2*pi*dP and beta=2*pi*dQ.
 bottom=[0,0,1,0,1,1]
 FP=np.array([[Q(bottom[i]) if j%3==1 else Q(0) for j in range(6)] for i in range(6)],dtype=object)
 FQ=np.array([[-Q(bottom[i]) if j%3 else Q(0) for j in range(6)] for i in range(6)],dtype=object)
 AF,BF=double_center(FP),double_center(FQ);D=double_center(C)
 aa=sum((x*y for x,y in zip(D.flat,AF.flat)),Q(0));bb=sum((x*y for x,y in zip(D.flat,BF.flat)),Q(0))
 alpha=(2*aa+bb)/3;beta=(aa+2*bb)/3;T=D-alpha*AF-beta*BF
 return T,alpha,beta

def signed_majorants(chart,P,Q2,C3,radii,hu,hw):
 C=np.concatenate([P,Q2,C3],axis=2);rowbounds=[];bothbounds=[];a=[];b=[];phase=[]
 for k,f in enumerate(FACTORS):
  T,alpha,beta=phase_projection(C[:,:,k]*f);a.append(alpha);b.append(beta)
  rs=max(sum((x*x for x in row),Q(0))/6 for row in T);cs=max(sum((x*x for x in row),Q(0))/6 for row in T.T)
  rowbounds.append(ceild(iv.sqrt(v(rs)),2**30));bothbounds.append(ceild(iv.sqrt(v(max(rs,cs))),2**30));phase.append(max(map(abs,T.flat)))
 radmat=np.full((6,6),Q(0),dtype=object)
 for i,(r,s) in enumerate(chart.unk):radmat[r,s]=radii[i]
 er=max(sum((x*x for x in row),Q(0))/6 for row in radmat);eb=max(er,max(sum((x*x for x in col),Q(0))/6 for col in radmat.T))
 error=ceild(iv.sqrt(v(er)),2**30);error_both=ceild(iv.sqrt(v(eb)),2**30)
 h=[hu**aa*hw**bb for aa,bb in EXPONENTS]
 seedb=sum(abs(C[1,2,k])*FACTORS[k]*h[k] for k in range(9))+radii[chart.pd[(1,2)]]
 rawphase=max(sum(abs(C[i,j,k])*FACTORS[k]*h[k] for k in range(9))+radmat[i,j] for i in range(6) for j in range(6))
 return dict(row_coefficients=list(map(str,rowbounds)),both_coefficients=list(map(str,bothbounds)),alpha_coefficients=list(map(str,a)),beta_coefficients=list(map(str,b)),entry_coefficients=list(map(str,phase)),error_row=str(error),error_both=str(error_both),error_entry=str(max(radii)),seed_b_phase_cap=str(seedb),raw_entry_phase_cap=str(rawphase))
