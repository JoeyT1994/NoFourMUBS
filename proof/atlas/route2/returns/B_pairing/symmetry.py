"""Shared skew antiunitary symmetry discovery, NUMERICAL unless independently verified."""
import numpy as np
from numerics import *


def matchings(items):
    if not items:
        yield []
    else:
        a=items[0]
        for n in range(1,len(items)):
            b=items[n]
            for m in matchings(items[1:n]+items[n+1:]):yield [(a,b)]+m
MATCHINGS=list(matchings(list(range(6))))
ES=[]
for mat in MATCHINGS:
    e=np.zeros((3,6,6),complex)
    for k,(i,j) in enumerate(mat):e[k,i,j]=1;e[k,j,i]=-1
    ES.append(e)
ES=np.array(ES)


def best_symmetry(H):
    """Fit row phases to a skew monomial transformed into a column skew monomial.
    Return unit-modulus phase projection of least-singular-vector candidate.
    Loss is Frobenius norm of A conj(H) - H B, not a root enclosure.
    """
    best=None
    for ir,Er in enumerate(ES):
        Cs=np.einsum('ij,ajk,kl->ail',H.conj().T,Er,H.conj())/6
        for ic,m in enumerate(MATCHINGS):
            mask=np.ones((6,6),bool);np.fill_diagonal(mask,False)
            for i,j in m:mask[i,j]=False;mask[j,i]=False
            M=Cs[:,mask].T
            _,s,vh=np.linalg.svd(M,full_matrices=False)
            alpha=vh[-1].conj()
            if np.min(abs(alpha))<1e-10: continue
            alpha/=np.abs(alpha)
            A=np.einsum('a,aij->ij',alpha,Er)
            C=H.conj().T@A@H.conj()/6
            beta=np.array([C[i,j] for i,j in m]);beta/=np.maximum(abs(beta),1e-100)
            B=np.einsum('a,aij->ij',beta,ES[ic])
            loss=np.linalg.norm(A@H.conj()-H@B,'fro')
            if best is None or loss<best[0]:best=(float(loss),ir,ic,A,B)
    return best

if __name__=='__main__':
    from pathlib import Path
    for p in sorted(Path(__file__).parent.glob('seed_True_*.npz')):
        d=np.load(p); H=d['H']; X=d['X']; loss,ir,ic,A,B=best_symmetry(H)
        Y=X.conj()@A.T;Y/=Y[:,0,None]
        err=np.max(np.min(np.max(abs(X[None,:,:]-Y[:,None,:]),axis=2),axis=1))
        print(p.name,'loss',loss,'row/col',MATCHINGS[ir],MATCHINGS[ic],'mateerr',err,flush=True)
    for H,name in [(fourier(.23,.37),'Fourier'),(dita(),'Dita')]:
        loss,ir,ic,A,B=best_symmetry(H);print(name,loss,MATCHINGS[ir],MATCHINGS[ic],flush=True)
