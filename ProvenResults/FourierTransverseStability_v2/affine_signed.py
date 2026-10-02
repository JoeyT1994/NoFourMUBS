"""Exact affine-tangential/cubic-normal predictors for the signed chart.

Floating differences only PROPOSE coefficient arrays. The finite residual,
explicit analytic tails and contraction inequalities independently accept them.
"""
from signed import *

def join_coeff(P,Q2,C3):
 return np.concatenate([P,Q2,C3],axis=2)
def split_coeff(C):return C[:,:,:2],C[:,:,2:5],C[:,:,5:]

def propose_affine(p,q,delta=Q(1,65536)):
 def compute(x,y):return join_coeff(*SignedChart([x,x,y,y]).proposal()[:3])
 C0=compute(p,q);Cp=(compute(p+delta,q)-compute(p-delta,q))/(2*delta);Cq=(compute(p,q+delta)-compute(p,q-delta))/(2*delta)
 # Dyadic arrays can be represented compactly as exact binary64 proposals.
 def dyadic(M):return np.array([Q(float(x)) for x in M.flat],dtype=object).reshape(M.shape)
 return tuple(map(dyadic,[C0,Cp,Cq]))

def validate_coefficients(C0,Cp,Cq):
 for X in (C0,Cp,Cq):
  require(X.shape==(6,6,9) and all(isinstance(x,Q) and abs(x)<2**20 for x in X.flat),'bounded exact phase coefficients')
  require(all(x==0 for x in X[0,:,:].flat) and all(x==0 for x in X[:,0,:].flat),'dephased predictor')
 for pos,co in [((1,1),[1,0,0,0,0,0,0,0,0]),((2,1),[0,1,0,0,0,0,0,0,0]),((2,2),[0]*9)]:
  require(list(C0[pos])==co and all(x==0 for x in Cp[pos]) and all(x==0 for x in Cq[pos]),'fixed/free seeds are exact')

def affine_native(chart,C0,Cp,Cq,hu,hw,n):
 validate_coefficients(C0,Cp,Cq)
 p0=(chart.rect[0]+chart.rect[1])/2;q0=(chart.rect[2]+chart.rect[3])/2
 hp=(chart.rect[1]-chart.rect[0])/2;hq=(chart.rect[3]-chart.rect[2])/2
 require(Q(float(hp))==hp and Q(float(hq))==hq and hp>=0 and hq>=0,'dyadic tile half widths')
 center=SignedChart([p0,p0,q0,q0]);h=[hu**a*hw**b*f for (a,b),f in zip(EXPONENTS,FACTORS)]
 phi=[];phip=[];phiq=[];tails=[v(0) for _ in range(31)]
 bp=[];bq=[]
 for term,X in enumerate(chart.X):
  cf=[]
  for C in (C0,Cp,Cq):cf.append([sum((int(x)*C.reshape(36,9)[i,k] for i,x in enumerate(X) if x),Q(0))*h[k] for k in range(9)])
  a,b,c=cf;phi.append(a);phip.append(b);phiq.append(c)
  xp=sum((int(x)*chart.base.coef.reshape(36,5)[i,1] for i,x in enumerate(X) if x),Q(0));xq=sum((int(x)*chart.base.coef.reshape(36,5)[i,2] for i,x in enumerate(X) if x),Q(0))
  bp.append(2*iv.pi*v(xp));bq.append(2*iv.pi*v(xq))
  rho0=sum(map(abs,a),Q(0));rhop=sum(map(abs,b),Q(0));rhoq=sum(map(abs,c),Q(0));rho=rho0+hp*rhop+hq*rhoq
  bpabs=mag(bp[-1]);bqabs=mag(bq[-1])
  Bpp=bpabs**2*v(rho)+2*bpabs*v(rhop)+v(rhop)**2
  Bpq=bpabs*bqabs*v(rho)+bpabs*v(rhoq)+bqabs*v(rhop)+v(rhop*rhoq)
  Bqq=bqabs**2*v(rho)+2*bqabs*v(rhoq)+v(rhoq)**2
  tail=v(rho0**6/Q(720))*(1+v(hp)*(bpabs+v(rhop))+v(hq)*(bqabs+v(rhoq)))+v(hp*hp/Q(2))*Bpp+v(hp*hq)*Bpq+v(hq*hq/Q(2))*Bqq
  r,cw,_,_=chart.terms[term];tails[r]+=v(abs(cw))*tail
 zr=np.array([[re(z) for z in center.zbase]],dtype=object);zi=np.array([[im(z) for z in center.zbase]],dtype=object)
 inp=(*endpoints(zr),*endpoints(zi),*endpoints(mat(phi)),*endpoints(mat(phip)),*endpoints(mat(phiq)),*endpoints(np.array([bp],dtype=object)),*endpoints(np.array([bq],dtype=object)))
 arr=np.ctypeslib.ndpointer(dtype=np.float64,ndim=2,flags='C_CONTIGUOUS');ai=np.ctypeslib.ndpointer(dtype=np.int32,ndim=1,flags='C_CONTIGUOUS');ai2=np.ctypeslib.ndpointer(dtype=np.int32,ndim=2,flags='C_CONTIGUOUS')
 F=[np.empty((31,567)),np.empty((31,567))];fn=lib().tangent_polynomial;fn.argtypes=[arr]*14+[ai,ai,arr,arr,arr,ctypes.c_int,ctypes.c_int,ctypes.c_double,ctypes.c_double];fn.restype=ctypes.c_int
 status=fn(*inp,chart.rows,chart.which,chart.weights,*F,chart.nt,31,float(hp),float(hq));require(status==0,'affine polynomial rejection '+str(status))
 # For Jacobians no residual cancellation is needed: directly enclose all
 # affine predictor coefficients and the exact reference phase on the tile.
 phiwide=np.empty((chart.nt,9),dtype=object)
 for i in range(chart.nt):
  for k in range(9):phiwide[i,k]=v(phi[i][k])+box(hp*abs(phip[i][k])+hq*abs(phiq[i][k]))
 zr=np.array([[re(z) for z in chart.zbase]],dtype=object);zi=np.array([[im(z) for z in chart.zbase]],dtype=object)
 js=[np.empty((n*n*31,22)) for _ in range(6)];fn=lib().equation_jacobians;fn.argtypes=[arr]*6+[ai,ai,arr,ai2]+[arr]*6+[ctypes.c_int]*4;fn.restype=ctypes.c_int
 status=fn(*endpoints(zr),*endpoints(zi),*endpoints(phiwide),chart.rows,chart.which,chart.weights,chart.Xunk,*js,chart.nt,31,22,n);require(status==0,'affine Jacobian rejection '+str(status))
 require(all(np.isfinite(x).all() for x in F+js),'finite affine signed arrays')
 return F,tails,js

def affine_envelopes(chart,C0,Cp,Cq,hu,hw,n,inverses=None):
 require(n in [1,2,4,8,16],'normal dyadic subdivision')
 F,tails,js=affine_native(chart,C0,Cp,Cq,hu,hw,n)
 if inverses is None:A=np.array([block_inverse((js[0][i*31:(i+1)*31]+js[1][i*31:(i+1)*31])/2) for i in range(n*n)],dtype=np.float64)
 else:A=np.asarray(inverses)
 require(A.shape==(n*n,22,31) and A.dtype==np.dtype('float64') and np.isfinite(A).all() and np.max(abs(A))<=2**20,'affine preconditioner shape/bound')
 require(np.all(A[:,:7,7:]==0),'top equations may not mix')
 tail=np.array([[to_float(v(x).b._mpi_[1],round_ceiling) for x in tails]])
 eta=np.empty((22,1));K=np.empty((22,22));W=np.empty((22,31));arr=np.ctypeslib.ndpointer(dtype=np.float64,ndim=2,flags='C_CONTIGUOUS')
 fn=lib().general_envelopes_wide;fn.argtypes=[arr]*13+[ctypes.c_int]*4;fn.restype=ctypes.c_int
 status=fn(np.ascontiguousarray(A.reshape(-1,31)),*F,tail,*js,eta,K,W,31,22,n,567);require(status==0,'affine envelope rejection '+str(status))
 require(all(np.isfinite(x).all() and (x>=0).all() for x in [eta,K,W]),'finite affine envelopes')
 return point_array(eta),point_array(K),point_array(W),A

def affine_majorants(chart,C0,Cp,Cq,radii,hu,hw):
 hp=(chart.rect[1]-chart.rect[0])/2;hq=(chart.rect[3]-chart.rect[2])/2
 outs=[]
 for dp in (-hp,hp):
  for dq in (-hq,hq):outs.append(signed_majorants(chart,*split_coeff(C0+dp*Cp+dq*Cq),radii,hu,hw))
 out={}
 for key in ['row_coefficients','both_coefficients','entry_coefficients']:
  out[key]=[str(max(Q(o[key][i]) for o in outs)) for i in range(9)]
 for key in ['alpha_coefficients','beta_coefficients']:
  out[key]=[[str(min(Q(o[key][i]) for o in outs)),str(max(Q(o[key][i]) for o in outs))] for i in range(9)]
 for key in ['error_row','error_both','error_entry','seed_b_phase_cap','raw_entry_phase_cap']:
  out[key]=str(max(Q(o[key]) for o in outs))
 return out
