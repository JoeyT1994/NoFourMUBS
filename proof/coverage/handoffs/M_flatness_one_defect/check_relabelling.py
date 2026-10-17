"""Check of the relabelling lemma behind brief M (random data; the identities are formal in E, B, V)."""
import numpy as np
rng=np.random.default_rng(5)
def ph(*s): return np.exp(2j*np.pi*rng.random(s))
def W(E,B,V):
    Gh=6*np.eye(3)-E@E.conj().T
    K=-E.conj().T@np.linalg.inv(Gh)
    C=V.T; D=C@K@B
    Delta=abs(D)**2-1
    return D, V.conj()@Delta@B.conj().T     # W_pq = sum_ij conj(V_pi) conj(B_qj) Delta_ij
P=np.eye(3)[[0,2,1]]                         # swap rows/cols 1<->2
err=0
for _ in range(200):
    a,b,c,d=ph(4); E=np.array([[1,1,1],[1,a,b],[1,c,d]])
    B=np.vstack([np.ones(3),ph(2,3)]); V=np.vstack([np.ones(3),ph(2,3)])
    D,W0=W(E,B,V)
    # row swap of E (seed (c,d,a,b)): B -> PB, V unchanged
    D1,W1=W(P@E,P@B,V); err=max(err,abs(D1-D).max(),abs(W1-W0@P.T).max())
    # column swap of E (seed (b,a,d,c)): V -> PV, B unchanged
    D2,W2=W(E@P,B,P@V); err=max(err,abs(D2-D).max(),abs(W2-P@W0).max())
    # transposition: E -> E^T, roles of B and V exchange; W -> W^T
    D3,W3=W(E.T,V,B); err=max(err,abs(D3-D.T).max(),abs(W3-W0.T).max())
print("max abs deviation",err)
rel=0
for _ in range(200):
    a,b,c,d=ph(4); E=np.array([[1,1,1],[1,a,b],[1,c,d]])
    if np.linalg.cond(6*np.eye(3)-E@E.conj().T)>100: continue
    B=np.vstack([np.ones(3),ph(2,3)]); V=np.vstack([np.ones(3),ph(2,3)])
    D,W0=W(E,B,V); s=abs(W0).max()
    D1,W1=W(P@E,P@B,V); D2,W2=W(E@P,B,P@V); D3,W3=W(E.T,V,B)
    rel=max(rel,abs(W1-W0@P.T).max()/s,abs(W2-P@W0).max()/s,abs(W3-W0.T).max()/s)
print("well-conditioned cases: max relative deviation",rel)
