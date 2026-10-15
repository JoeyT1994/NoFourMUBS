"""Floating-point exploratory routines. None certifies exhaustive ray coverage."""
from pathlib import Path
import sys
import itertools
import numpy as np
sys.path.insert(0, str(Path(__file__).resolve().parent / '_toolkit'))
from hadamards import centres, fourier, matched, tao


def roots(H, starts=4096, seed=0, initial=None):
    """Batched Newton with SVD pseudoinverse, followed by residual/dedup checks."""
    rng=np.random.default_rng(seed)
    ph=rng.uniform(-np.pi,np.pi,(starts,5)) if initial is None else np.asarray(initial).copy()
    A=H.conj().T
    for it in range(85):
        X=np.exp(1j*np.column_stack([np.zeros(len(ph)),ph]))
        Y=X@A.T
        f=np.abs(Y)**2-6
        J=-2*np.imag(np.conj(Y)[:,:,None]*A[None,:,1:]*X[:,None,1:])
        st=np.einsum('bij,bj->bi',np.linalg.pinv(J,rcond=1e-12),-f)
        # Limit very long steps without discarding any root neighbourhood.
        st/=np.maximum(1,np.max(np.abs(st),axis=1)/3)[:,None]
        ph+=st
        if np.max(np.abs(st))<1e-12: break
    X=np.exp(1j*np.column_stack([np.zeros(len(ph)),ph]))
    f=np.abs(X@A.T)**2-6
    candidates=X[np.max(abs(f),axis=1)<2e-10]
    unique=[]
    for v in candidates:
        if not unique or np.min(np.max(abs(np.array(unique)-v),axis=1))>2e-6: unique.append(v)
    return np.array(unique).reshape(-1,6)


def gram(X):
    return X.conj()@X.T


def clique(A,k):
    """Return one k-clique, or None. Boolean symmetric A with zero diagonal."""
    n=len(A)
    def rec(chosen,candidates):
        if len(chosen)==k: return chosen
        if len(chosen)+len(candidates)<k:return None
        while len(chosen)+len(candidates)>=k:
            v=candidates[0]; candidates=candidates[1:]
            ans=rec(chosen+[v],[u for u in candidates if A[v,u]])
            if ans is not None:return ans
        return None
    return rec([],list(range(n)))


def defect(X,k=6):
    if len(X)<k:return float('inf'),None
    G=abs(gram(X)); vals=np.unique(G[np.triu_indices(len(X),1)])
    lo,hi=0,len(vals)-1
    while lo<hi:
        mid=(lo+hi)//2
        A=G<=vals[mid];np.fill_diagonal(A,False)
        if clique(A,k) is not None:hi=mid
        else:lo=mid+1
    A=G<=vals[lo];np.fill_diagonal(A,False)
    return float(vals[lo]),clique(A,k)


TRIPLES=list(itertools.combinations(range(6),3))
PAIRS=list(itertools.combinations(range(6),2))
def block_defect(H,k=3):
    sets=TRIPLES if k==3 else PAIRS
    best=(float('inf'),None,None)
    for r in sets:
        for c in sets:
            E=H[np.ix_(r,c)]; G=E@E.conj().T-k*np.eye(k)
            d=float(np.linalg.norm(G,'fro'))
            if d<best[0]:best=d,r,c
    return best


def tangent(H):
    """Orthonormal horizontal tangent in ambient 36-dimensional phase metric."""
    rows=[]
    for i in range(6):
        for j in range(i+1,6):
            z=1j*H[i]*H[j].conj()
            a=np.zeros((6,6),complex);a[i]=z;a[j]=-z
            rows.extend([a.real.ravel(),a.imag.ravel()])
    for i in range(6):
        a=np.zeros((6,6));a[i]=1;rows.append(a.ravel())
    for j in range(6):
        a=np.zeros((6,6));a[:,j]=1;rows.append(a.ravel())
    u,s,vh=np.linalg.svd(rows,full_matrices=True)
    return vh[-4:].T,s


def ray_derivatives(H,X,T):
    A=H.conj().T;Y=X@A.T
    J=-2*np.imag(np.conj(Y)[:,:,None]*A[None,:,1:]*X[:,None,1:])
    Hdot=1j*H[:,:,None]*T.reshape(6,6,-1)
    Ydot=np.einsum('ijk,bi->bjk',Hdot.conj(),X)
    feta=2*np.real(Y.conj()[:,:,None]*Ydot)
    D=-np.linalg.pinv(J,rcond=1e-12)@feta
    return D,np.linalg.svd(J,compute_uv=False)[:,-1]


def overlap_derivatives(X,D):
    # G_ab=x_a^* x_b. Gauge x_0=1.
    DD=np.concatenate([np.zeros((len(X),1,D.shape[-1])),D],axis=1)
    Z=X.conj()[:,None,:,None]*X[None,:,:,None]
    L=1j*np.sum(Z*(DD[None,:,:,:]-DD[:,None,:,:]),axis=2)
    return L


def dita():
    j=1j
    return np.array([[1,1,1,1,1,1],[1,-1,j,-j,-j,j],[1,j,-1,j,-j,-j],
                     [1,-j,j,-1,j,-j],[1,-j,-j,j,-1,j],[1,j,-j,-j,j,-1]],complex)

if __name__=='__main__':
    import time
    C,_=centres()
    for idx in [100,2471,5305,30,247,249,307,431,3245,10362]:
        t=time.time();H=C[idx];X=roots(H,starts=4096,seed=idx)
        np.savez(Path(__file__).with_name(f'roots_{idx}.npz'),H=H,X=X)
        G=gram(X);v=abs(G[np.triu_indices(len(X),1)])
        d,k=defect(X);d5,k5=defect(X,5)
        frame=np.linalg.norm(X.T@X.conj()-len(X)*np.eye(6),2)
        print(idx,len(X),'min/q1/q5',np.quantile(v,[0,.01,.05]),'d6',d,'d5',d5,'frame',frame,'secs',time.time()-t,flush=True)
