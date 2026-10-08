"""Best achievable residual for FOUR bases I,U,V,W (all six transitions unbiased).
Riemannian gradient descent from Haar starts; reports the local minima reached."""
import numpy as np, sys
from scipy.linalg import expm
rng=np.random.default_rng(int(sys.argv[1]))
def haar():
    Z=rng.normal(size=(6,6))+1j*rng.normal(size=(6,6)); Q,R=np.linalg.qr(Z); return Q*(np.diag(R)/abs(np.diag(R)))
E=lambda M:2*(abs(M)**2-1/6)*M
def F(Us):
    Ms=list(Us)+[Us[a].conj().T@Us[b] for a in range(3) for b in range(a+1,3)]
    return sum(((abs(M)**2-1/6)**2).sum() for M in Ms)
def G(Us):
    g=[E(U) for U in Us]
    for a in range(3):
        for b in range(a+1,3):
            W=Us[a].conj().T@Us[b]; EW=E(W)
            g[a]=g[a]+Us[b]@EW.conj().T; g[b]=g[b]+Us[a]@EW
    return g
def step(U,g,t):
    Om=g@U.conj().T; Om=(Om-Om.conj().T)/2; return expm(-t*Om)@U
for trial in range(int(sys.argv[2])):
    Us=[haar() for _ in range(3)]; t=0.5; f=F(Us)
    for it in range(30000):
        g=G(Us)
        while True:
            U2=[step(U,gg,t) for U,gg in zip(Us,g)]; f2=F(U2)
            if f2<f or t<1e-15: break
            t/=2
        if t<1e-15: break
        Us,f=U2,f2; t*=1.5
    print(f"trial {trial}: quartet residual {f:.6f}",flush=True)
