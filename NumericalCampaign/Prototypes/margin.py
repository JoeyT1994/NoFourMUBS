import numpy as np, sys
from scipy.optimize import least_squares
from scipy.linalg import expm
rng=np.random.default_rng(int(sys.argv[1]))
def haar():
    Z=rng.normal(size=(6,6))+1j*rng.normal(size=(6,6)); Q,R=np.linalg.qr(Z); return Q*(np.diag(R)/abs(np.diag(R)))
def had():
    U=haar(); t=1.0
    F=lambda U:((abs(U)**2-1/6)**2).sum()
    for it in range(20000):
        g=2*(abs(U)**2-1/6)*U; Om=g@U.conj().T; Om=(Om-Om.conj().T)/2
        while True:
            U2=expm(-t*Om)@U
            if F(U2)<F(U) or t<1e-15: break
            t/=2
        if t<1e-15: break
        U=U2;t*=1.5
        if F(U)<1e-28: break
    return U
def rays(U,starts=3000):
    def res(p):
        z=np.concatenate([[1],np.exp(1j*p)])/np.sqrt(6)
        return (abs(U.conj().T@z)**2-1/6)[:5]
    found=[]
    for s in range(starts):
        r=least_squares(res,rng.uniform(0,2*np.pi,5),xtol=1e-15,ftol=1e-15,gtol=1e-15)
        if np.abs(r.fun).max()<1e-12:
            z=np.concatenate([[1],np.exp(1j*r.x)])/np.sqrt(6)
            if all(abs(abs(np.vdot(z,w))-1)>1e-8 for w in found): found.append(z)
    return found
for n in range(int(sys.argv[2])):
    U=had(); R=rays(U)
    G=abs(np.array([[np.vdot(a,b) for b in R] for a in R]))
    np.fill_diagonal(G,9)
    print(f"carrier {n}: #rays {len(R)}  min |<z,w>| over pairs {G.min():.4f}  (#pairs<0.1: {int((G<0.1).sum()//2)})",flush=True)
