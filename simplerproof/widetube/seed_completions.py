import numpy as np, itertools, sys
from scipy.optimize import least_squares
T3=list(itertools.combinations(range(6),3))
def Rc(M):
    G=6*np.eye(3)-M@M.conj().T; s,t,r=G[1,0],G[2,0],G[2,1]; X,Y,Z=abs(s)**2,abs(t)**2,abs(r)**2
    p=X+Y+Z; J=2*(s*r*np.conj(t)).real; W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3*p+J; eta=9-p+J; chi=W-(p-9)*(p-18)+(p-15)*J; return 4*g*g*eta-chi*chi
for name,seed in (('(1,2,2,4)',(1,2,2,4)),('(4,5,0,3)',(4,5,0,3))):
    th=np.array(seed)*np.pi/3; a,b,c,d=np.exp(1j*th); E=np.array([[1,1,1],[1,a,b],[1,c,d]])
    def build(p):
        H=np.ones((6,6),complex); H[:3,:3]=E
        H[1:3,3:]=np.exp(1j*p[:6]).reshape(2,3); H[3:,1:3]=np.exp(1j*p[6:12]).reshape(3,2); H[3:,3:]=np.exp(1j*p[12:]).reshape(3,3); return H
    def res(p):
        H=build(p); G=H@H.conj().T-6*np.eye(6); iu=np.triu_indices(6,1); return np.concatenate([G[iu].real,G[iu].imag])
    rng=np.random.default_rng(0); sols=[]
    for k in range(400):
        r=least_squares(res,rng.uniform(-np.pi,np.pi,21),xtol=1e-15,ftol=1e-15,gtol=1e-15)
        if np.linalg.norm(r.fun)<1e-10:
            H=build(r.x); M=max(Rc(H[np.ix_(rr,cc)]) for rr in T3 for cc in T3)
            null=int((np.linalg.svd(r.jac,compute_uv=False)<1e-7).sum())
            sols.append((round(M,4),null))
    import collections
    print(name,'R(E)=%.3g'%Rc(E),len(sols),'solutions; (maxR, nullity) counts:',collections.Counter(sols).most_common(8))
