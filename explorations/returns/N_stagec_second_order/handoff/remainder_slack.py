"""NUMERICAL: true nonlinear remainder of the tangent test vs its bound E(y) (STAGEC.md C2b), Record 100, R=0.08."""
import sys, math, numpy as np
sys.path.insert(0,'/Users/jtindall/Projects/NoFourMUBs/proof/atlas')
import stagec as SC
from export import load_certificate
from ballrecord import BallRecord
from record import opnorm_upper
from flint import arb_mat
A=load_certificate('/Users/jtindall/Projects/NoFourMUBs/proof/atlas/results/atlas_certificate.json.gz')
s=int(sys.argv[1]); R=float(sys.argv[2])
rec=A.recs[s]; B=BallRecord(rec['phi'].reshape(36),Tint=rec.get('Tint'))
rH,n=B.normal_bound(R)
B.tcol=max(opnorm_upper(arb_mat([[B.rec.Tb[6*j+i,k] for k in range(4)] for j in range(6)])) for i in range(6))
r=min(R,B.tcol*rH+n)/SC.TWO_PI; rF=min(R,math.sqrt(B.lam_max)*rH+n)/SC.TWO_PI; rHc=rH/SC.TWO_PI; nc=n/SC.TWO_PI
P=B.rec.phi.reshape(6,6)/SC.TWO_PI; T=np.array(B.rec.Tbn,float); K=SC.opnorm_bound(P); eP=SC.cis_centre(P)
rng=np.random.default_rng(0)
for M in (12,24,48,96):
    a=1/(2*M); X=math.sqrt(29/6)*a; I=1.5*a
    # bins: random midpoints near the true vectors -> take survivors of the real pipeline at this level
    U,_=SC.bins(P,r,levels=tuple(l for l in (12,24,48,96) if l<=M),tang=(T,rHc,nc),rF=rF)
    U=U[rng.choice(len(U),min(150,len(U)),replace=False)]
    ratios=[]
    for u in U:
        uu=np.concatenate([[0],u])
        q=np.exp(2j*np.pi*(uu[:,None]-P))/math.sqrt(6)            # q_ji
        S=q.sum(0); c=(abs(S)**2-1)/(4*math.pi); J=-(np.conj(S)[None,:]*q).imag
        Tji=T.reshape(6,6,4); Bm=np.einsum('ji,jik->ik',J,Tji)
        A1=a*J[1:,:]; A2=rHc*Bm.T; AA=np.concatenate([A1,A2],0)
        G=AA.T@AA+1e-12*np.eye(6); y=np.linalg.solve(G,c); y=y/abs(y).max()
        Sy=abs(S*y); Ny=math.sqrt((y[None,:]**2*J**2).sum()); Gy=abs((y*np.conj(S))[None,:]*q).sum(1).max()
        E=nc*Ny+SC.remainder(y[None,:],S[None,:],K,X,r,rF,np.array([Gy]),I=I)[0]
        # sample actual nonlinear remainder: x mean-free version of d in [-a,a]^5, eta in ball, nu=0
        worst=0
        for _ in range(300):
            d=np.concatenate([[0],rng.uniform(-a,a,5)]); x=d-d.mean()
            eta=rng.normal(size=4); eta*=rHc*rng.random()**0.25/np.linalg.norm(eta)
            dl=(T@eta).reshape(6,6)
            Sp=(q*np.exp(2j*np.pi*(x[:,None]-dl))).sum(0)
            exact=(abs(Sp)**2-1)/(4*math.pi)
            lin=c+(J*(x[:,None]-dl)).sum(0)
            worst=max(worst,abs(y@(exact-lin)))
        ratios.append(worst/E)
    ratios=np.array(ratios)
    print("M=%d  sampled max |nonlinear remainder| / bound E(y): median %.3f  p90 %.3f  max %.3f"%(M,np.median(ratios),np.quantile(ratios,.9),ratios.max()),flush=True)
