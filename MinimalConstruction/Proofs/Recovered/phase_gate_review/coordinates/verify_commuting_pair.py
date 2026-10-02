"""Independent checks reconstructed from the supplied commuting-pair note.

Run with Python 3, SymPy, and NumPy. No upstream verifier files are required.
Generic metric identities take roughly 90 seconds on the review machine.
The final JSON records what was independently checked and the remaining inputs.
"""
import sympy as sp
import json,time
from pathlib import Path
s,S,t,T,r,R,z=sp.symbols('s S t T r R z')
G=sp.Matrix([[3,S,T],[s,3,R],[t,r,3]]);A=G.adjugate();g=sp.expand(G.det())
p=s*S+t*T+r*R;J0=s*r*T+S*R*t
eta=9-p+J0;W0=s*S*t*T+s*S*r*R+t*T*r*R-s*S*t*T*r*R
chi=W0-(p-9)*(p-18)+(p-15)*J0
quad=sp.Poly(g*z*z-chi*z+g*eta,z)
F=sp.Matrix([[s*t,t,s],[r,S*r,S],[R,T,T*R]])
J=sp.Matrix([[0,-A[2,0],-A[1,0]],[-A[2,1],0,-A[0,1]],[-A[1,2],-A[0,2],0]])
D=F*A+z*J
ell=[g+z*A[i,i] for i in range(3)]
ex=sp.Matrix([[0,1,0]]);ey=sp.Matrix([[0,0,1]])
denM=ell[0]*D[1,1];denN=ell[0]*D[2,2]
M=(denM*ex).col_join(-D[1,2]*D[0,:]-D[1,0]*ell[0]*ex+ell[1]*ell[0]*ey).col_join(D[1,1]*D[0,:])
N=(denN*ey).col_join(D[2,2]*D[0,:]).col_join(-D[2,1]*D[0,:]+ell[2]*ell[0]*ex-D[2,0]*ell[0]*ey)

def zero(expr):
 pol=sp.Poly(sp.expand(expr),z)
 rem=sp.prem(pol,quad)
 assert all(sp.expand(c)==0 for c in rem.all_coeffs())
start=time.time()
zero(sp.trace(M)-s*denM);zero(sp.trace(N)-t*denN)
print('PASS: both exact generic traces',flush=True)
comm=M*N-N*M
for i in range(3):
 for j in range(3):zero(comm[i,j])
 print('PASS: exact generic commutator row',i,flush=True)
report={'exact_generic_traces':True,'exact_generic_commutation':True,'seconds':time.time()-start}
print(report,flush=True)
# All matrix/denominator polynomials have z-degree at most two. Multiply
# their formal conjugates by g^2 to avoid rational-function coefficients.
swap={s:S,S:s,t:T,T:t,r:R,R:r}
def cleared_sharp(expr):
    pol=sp.Poly(sp.expand(expr),z)
    return sum(coef.xreplace(swap)*g**(2-k)*(chi-g*z)**k
               for (k,),coef in pol.terms())
for name,K,den in [('M',M,denM),('N',N,denN)]:
    Ksharp=K.applyfunc(cleared_sharp).T
    densharp=cleared_sharp(den)
    product=K*G*Ksharp
    for i in range(3):
        for j in range(3):
            zero(product[i,j]-den*densharp*G[i,j])
        print('PASS: exact generic metric',name,'row',i,flush=True)
report['exact_generic_metric_unitarity']=True
report['seconds']=time.time()-start
print(report,flush=True)
generic_report=dict(report)

import sympy as sp
s,t,r,R,z=sp.symbols('s t r R z')
g=27-3*(s*s+t*t+r*R)+s*t*(r+R)
eta=9-(s*s+t*t+r*R)+s*t*(r+R)
Qy=s*t*t+R*R*s+(3-s*s)*R*t
K=(9-s*s)**2*eta-g*g
# Real-r branch, with Q_y=0.
expr=sp.expand((s*s*K-(9-s*s)**2*(s*s-t*t)*(r*R-s*s)).subs(R,r))
assert sp.rem(expr,sp.expand(Qy.subs(R,r)),r)==0
# Nonreal branch relations are rR=t², s(r+R)=(s²-3)t.
gb=sp.groebner([r*R-t*t,s*(r+R)-(s*s-3)*t],r,R,t,s)
assert gb.reduce(sp.expand(K+(9-s*s)**2*(t*t-1)*(t*t-s*s)))[1]==0
# If t²=s², all three cofactor denominators coincide.
# Otherwise t=1 by nonnegative phase gauge. The old cubic has a double root.
P=r*s*s+R+2*s;Q=s*s+r*r+2*r*s
q_times_Q=Q*z**3-Q*s*z**2+P*s*z-P
factor=(z-R)*(2*z-s+R)**2
expr=sp.expand(4*q_times_Q-Q*factor)
gb=sp.groebner([r*R-1,s*(r+R)-(s*s-3)],r,R,s,z)
assert gb.reduce(expr)[1]==0
print('PASS: real and nonreal boundary factors and repeated-cubic factorization')

generic_report['exact_boundary_inclusion_factorizations']=True

from pathlib import Path
import json
import numpy as np
import sympy as sp
ROOT=Path(__file__).resolve().parent
report=dict(generic_report)
s,S,t,T,r,R,z=sp.symbols('s S t T r R z')
sharp=lambda e:sp.sympify(e).xreplace({s:S,S:s,t:T,T:t,r:R,R:r})
G=sp.Matrix([[3,S,T],[s,3,R],[t,r,3]])
Gamma=G.adjugate();g=sp.expand(G.det());sigma=sp.trace(Gamma)
p=s*S+t*T+r*R;J0=s*r*T+S*R*t
eta=9-p+J0;W0=s*S*t*T+s*S*r*R+t*T*r*R-s*S*t*T*r*R
chi=W0-(p-9)*(p-18)+(p-15)*J0
assert sp.expand(eta-(g+36-2*sigma))==0
assert sp.expand(chi-(sp.prod(Gamma[i,i]-8 for i in range(3))+2*(sigma-16)**2+(12-sigma)*g))==0
F=sp.Matrix([[s*t,t,s],[r,S*r,S],[R,T,T*R]])
FG=F*Gamma
for i in range(3):
 A=sp.expand(FG[i,i]);n=Gamma[i,i]
 assert sp.expand(A*sharp(A)-(g*g+n*chi+n*n*eta))==0
 for j in range(3):
  if i==j:continue
  k=3-i-j
  assert sp.expand(Gamma[i,i]*FG[i,j]-FG[i,i]*Gamma[i,j]+g*Gamma[k,i])==0
report['exact_generic_scalar_cofactor_and_pivot_norm_identities']=True
print('PASS: generic scalar, cofactor and three pivot norm identities',flush=True)

def simp(x):return sp.simplify(sp.expand_complex(x))
def clean(M):return M.applyfunc(simp)
def exact_side(G,zeta):
 Gamma=clean(G.adjugate());g=simp(G.det())
 s,t,r=G[1,0],G[2,0],G[2,1]
 F=sp.Matrix([[s*t,t,s],[r,sp.conjugate(s)*r,sp.conjugate(s)],[sp.conjugate(r),sp.conjugate(t),sp.conjugate(t)*sp.conjugate(r)]])
 J=sp.Matrix([[0,-Gamma[2,0],-Gamma[1,0]],[-Gamma[2,1],0,-Gamma[0,1]],[-Gamma[1,2],-Gamma[0,2],0]])
 ell=[simp(g+zeta*Gamma[i,i]) for i in range(3)];assert all(e!=0 for e in ell)
 WW=clean(sp.diag(*[1/e for e in ell])*(F*Gamma+zeta*J))
 ex=sp.Matrix([[0,1,0]]);ey=sp.Matrix([[0,0,1]]);w=WW[0,:]
 M=clean(ex.col_join((-WW[1,2]*w-WW[1,0]*ex+ey)/WW[1,1]).col_join(w))
 N=clean(ey.col_join(w).col_join((-WW[2,1]*w+ex-WW[2,0]*ey)/WW[2,2]))
 assert clean(M*N-N*M)==sp.zeros(3)
 assert clean(M*G*M.H-G)==sp.zeros(3) and clean(N*G*N.H-G)==sp.zeros(3)
 assert simp(sp.trace(M)-s)==0 and simp(sp.trace(N)-t)==0
 return M,N
omega=(-1+sp.I*sp.sqrt(3))/2;w2=simp(omega**2)
E=sp.Matrix([[1,1,1],[1,1,omega],[1,omega,1]])
G=clean(6*sp.eye(3)-E*E.H);Gv=clean(6*sp.eye(3)-E.T*E.conjugate())
M,N=exact_side(G,omega-1)
assert M==sp.Matrix([[0,1,0],[-1,-1,0],[-omega,w2,w2]])
assert N==sp.Matrix([[0,0,1],[-omega,w2,w2],[-1,0,-1]])
B=sp.Matrix([[1,1,1],[omega,w2,w2],[w2,w2,omega]])
assert clean(M*B-B*sp.diag(*list(B[1,:])))==sp.zeros(3)
assert clean(N*B-B*sp.diag(*list(B[2,:])))==sp.zeros(3)
H=sp.Matrix([[1,1,1,1,1,1],[1,1,omega,omega,w2,w2],
 [1,omega,1,w2,w2,omega],[1,-1,-1,1,-1,1],
 [1,-omega,-1,w2,-w2,omega],[1,-1,-omega,omega,-w2,w2]])
assert clean(H*H.H)==6*sp.eye(6)
Mv,Nv=exact_side(Gv,sp.conjugate(omega)-1);C=H[3:,:3]
assert clean(Mv*C.T-C.T*sp.diag(*list(C[:,1])))==sp.zeros(3)
assert clean(Nv*C.T-C.T*sp.diag(*list(C[:,2])))==sp.zeros(3)
assert clean(-C*E.H*G.inv()*B-H[3:,3:])==sp.zeros(3)
# Real moment test, distinct spectral eigenvalues alone do not suffice.
def moment_det(X,kappa):
 points=[simp(X[1,j]+kappa*X[2,j]) for j in range(3)]
 V=sp.Matrix([[1,1,1],[sp.re(q) for q in points],[sp.im(q) for q in points]])
 return simp(V.det()**2)
vals=[moment_det(B,k) for k in [0,1,-1,sp.I]]
assert vals==[0,0,0,9]
assert len(set([simp(B[1,j]+2*B[2,j]) for j in range(3)]))==3
report['exact_repeated_coordinate_example']=True
report['exact_horizontal_moment_determinants_kappa_0_1_minus1_i']=list(map(int,vals))
report['spectral_separation_does_not_imply_real_moment_separation']=True
print('PASS: exact repeated-coordinate construction; moment repair needs complex kappa',flush=True)

# Check the general four-sample real-area polynomial identity.
a,b,c,d=sp.symbols('a b c d',real=True)
ar,ai,br,bi,cr,ci,dr,di,uu,vv=sp.symbols('ar ai br bi cr ci dr di u v',real=True)
dx1=ar+sp.I*ai;dx2=br+sp.I*bi;dy1=cr+sp.I*ci;dy2=dr+sp.I*di
area=sp.expand(sp.im((dx1+(uu+sp.I*vv)*dy1)*sp.conjugate(dx2+(uu+sp.I*vv)*dy2)))
assert sp.Poly(area,uu,vv).total_degree()<=2
assert sp.expand(sp.diff(area,uu,2)-sp.diff(area,vv,2))==0
assert sp.diff(area,uu,vv)==0
sampling=sp.Matrix([[1,0,0,0],[1,1,0,1],[1,-1,0,1],[1,0,1,1]])
assert sampling.det()!=0
report['exact_four_sample_area_interpolation']=True


def adj(A):return np.linalg.det(A)*np.linalg.inv(A)
def numeric_side(G,zeta):
 gam=adj(G);g=np.linalg.det(G).real;s,t,r=G[1,0],G[2,0],G[2,1]
 F=np.array([[s*t,t,s],[r,s.conjugate()*r,s.conjugate()],[r.conjugate(),t.conjugate(),t.conjugate()*r.conjugate()]])
 J=np.array([[0,-gam[2,0],-gam[1,0]],[-gam[2,1],0,-gam[0,1]],[-gam[1,2],-gam[0,2],0]])
 ell=g+zeta*np.diag(gam);WW=(F@gam+zeta*J)/ell[:,None]
 ex=np.array([0,1,0]);ey=np.array([0,0,1]);w=WW[0]
 M=np.array([ex,(-WW[1,2]*w-WW[1,0]*ex+ey)/WW[1,1],w])
 N=np.array([ey,w,(-WW[2,1]*w+ex-WW[2,0]*ey)/WW[2,2]])
 L=np.linalg.cholesky(G)
 MM=np.linalg.solve(L,M@L);NN=np.linalg.solve(L,N@L)
 possibilities=[]
 for k in range(4):
  values,vectors=np.linalg.eig(MM+k*NN)
  gap=min(abs(values[i]-values[j]) for i in range(3) for j in range(i))
  possibilities.append((gap,k,vectors))
 _,k,V=max(possibilities,key=lambda q:q[0]);X=L@V;X=X/X[0]
 return X,M,N,k
rng=np.random.default_rng(2026092004);count=0;trials=0
worst={k:0. for k in ['modulus','orthogonality','commutator','metric','trace','old_x_moment','moment_recovery','ray_moment_identity','pair_overlap_identity']}
while count<100:
 trials+=1;a,b,c,d=np.exp(1j*rng.uniform(-np.pi,np.pi,4));E=np.array([[1,1,1],[1,a,b],[1,c,d]])
 Gh=6*np.eye(3)-E@E.conj().T;Gv=6*np.eye(3)-E.T@E.conj()
 gam=adj(Gh);g=np.linalg.det(Gh).real;sig=np.trace(gam).real
 eta=g+36-2*sig;chi=(np.prod(np.diag(gam)-8)+2*(sig-16)**2+(12-sig)*g).real
 RR=4*g*g*eta-chi*chi
 if RR<=0:continue
 assert g>0 and np.linalg.eigvalsh(Gh)[0]>0
 for sign in [-1,1]:
  zeta=(chi+1j*sign*np.sqrt(RR))/(2*g)
  B,M,N,kh=numeric_side(Gh,zeta);V,Mv,Nv,kv=numeric_side(Gv,zeta.conjugate());C=V.T
  D=-C@E.conj().T@np.linalg.solve(Gh,B);H=np.block([[E,B],[C,D]])
  worst['modulus']=max(worst['modulus'],float(np.max(abs(abs(H)-1))))
  worst['orthogonality']=max(worst['orthogonality'],float(np.max(abs(H@H.conj().T-6*np.eye(6)))))
  selected=[]
  for XX,GG,MM,NN in [(B,Gh,M,N),(V,Gv,Mv,Nv)]:
   worst['commutator']=max(worst['commutator'],float(np.max(abs(MM@NN-NN@MM))))
   worst['metric']=max(worst['metric'],float(np.max(abs(MM@GG@MM.conj().T-GG))),float(np.max(abs(NN@GG@NN.conj().T-GG))))
   worst['trace']=max(worst['trace'],abs(np.trace(MM)-GG[1,0]),abs(np.trace(NN)-GG[2,0]))
   worst['old_x_moment']=max(worst['old_x_moment'],float(np.max(abs(MM@GG-XX@np.diag(XX[1])@XX.conj().T))))
   candidates=[]
   for kk in [0,1,-1,1j]:
    SS=MM+kk*NN;astar=np.trace(SS);b2=np.trace(SS@SS)
    r=GG[2,1];norm=3*(1+abs(kk)**2)+2*(kk*r).real
    gram=np.array([[3,astar.real,astar.imag],[astar.real,(norm+b2.real)/2,b2.imag/2],[astar.imag,b2.imag/2,(norm-b2.real)/2]])
    candidates.append((np.linalg.det(gram),kk))
   area,kk=max(candidates,key=lambda v:v[0]);assert area>0
   weights=XX[1]+kk*XX[2]
   selected.append((kk,(MM+kk*NN)@GG,weights))
   realmat=np.array([np.ones(3),weights.real,weights.imag])
   vals=rng.uniform(-2,2,3);moments=realmat@vals
   recovered=np.linalg.solve(realmat,moments)
   worst['moment_recovery']=max(worst['moment_recovery'],float(np.max(abs(recovered-vals))))
  FF=6*np.eye(3)-E.conj().T@E
  ph=np.exp(1j*rng.uniform(-np.pi,np.pi,10));ray_data=[]
  for ray in range(2):
   pp=np.r_[1,ph[5*ray:5*ray+2]];xi=ph[5*ray+2:5*ray+5]
   cc=np.linalg.solve(FF,np.sqrt(6)*xi-E.conj().T@pp);ll=pp-E@cc
   kh,Th,wh=selected[0];kv,Tv,wv=selected[1]
   q=np.r_[pp,C@cc];ray_data.append((pp,cc,q))
   ev=abs(C@cc)**2-1;eh=abs(B.conj().T@ll)**2-6
   expressions=[np.vdot(cc,FF@cc)-3-ev.sum(),
     np.vdot(cc,Tv.T@cc)-wv.sum()-wv@ev,
     np.vdot(ll,Th@ll)-6*wh.sum()-wh@eh,
     eh.sum()-6*ev.sum()]
   worst['ray_moment_identity']=max(worst['ray_moment_identity'],max(abs(v) for v in expressions))
  p0,c0,q0=ray_data[0];p1,c1,q1=ray_data[1]
  worst['pair_overlap_identity']=max(worst['pair_overlap_identity'],abs(np.vdot(p0,p1)+np.vdot(c0,FF@c1)-np.vdot(q0,q1)))
 count+=1
assert max(worst.values())<1e-6,worst
report['numerical']={'status':'PASS','strict_seed_count':count,'matrices':2*count,'random_trials':trials,'selection':'R>0 only; no further seed guards','precision':'double precision; not interval certificates','max_residuals':{k:float(v) for k,v in worst.items()}}
report['scope']='Independent exact generic side identities, boundary-inclusion factors, and repeated-coordinate example; double-precision strict-domain construction and ray-moment checks. Lower-block flatness and global coverage retain the accepted classification-paper inputs and the written specialization argument. Supplied note high-precision run not reproduced.'
(ROOT/'COMMUTING_PAIR_VERIFICATION.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
