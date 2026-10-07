import numpy as np, itertools, networkx as nx
from scipy.optimize import least_squares
F=np.array([[np.exp(2j*np.pi*j*k/6) for k in range(6)] for j in range(6)])
t1=np.zeros((6,6)); t2=np.zeros((6,6))
for j in (1,3,5):
    t1[j,1]=t1[j,4]=1; t2[j,2]=t2[j,5]=1
def fam(a,b,transpose=False):
    K=F*np.exp(1j*(a*t1+b*t2)); return K.T if transpose else K
def rays(K, starts=3000, seed=0):
    rng=np.random.default_rng(seed); found=[]
    def res(ph):
        x=np.exp(1j*np.r_[0,ph])/np.sqrt(6); o=np.abs(K.conj().T@x)**2-1   # |<k_j,x>|^2 = 1 (K raw entries modulus 1, x norm 1)
        return o[:5]
    for s in range(starts):
        r=least_squares(res,rng.uniform(-np.pi,np.pi,5),xtol=1e-14,ftol=1e-14)
        if np.abs(r.fun).max()<1e-10 and np.abs(np.abs(K.conj().T@(np.exp(1j*np.r_[0,r.x])/np.sqrt(6)))**2-1).max()<1e-9:
            x=np.exp(1j*np.r_[0,r.x])/np.sqrt(6)
            if all(abs(abs(np.vdot(x,y))-1)>1e-6 for y in found): found.append(x)
    return found
for (a,b,tr) in [(0,0,False),(0.06,-0.06,False),(0.12,-0.12,False),(0.1,0.03,False),(0.08,0.05,True)]:
    K=fam(a,b,tr); assert np.allclose(K@K.conj().T,6*np.eye(6))
    X=rays(K); n=len(X); P=np.array([[abs(np.vdot(x,y))**2 for y in X] for x in X])
    # how close to orthogonal / unbiased are pairs (margins for a cluster exclusion)
    offd=P[~np.eye(n,dtype=bool)]
    G=nx.Graph(); G.add_nodes_from(range(n)); G.add_edges_from((i,j) for i in range(n) for j in range(i+1,n) if P[i,j]<1e-6)
    cl=[c for c in nx.find_cliques(G) if len(c)>=6]
    print("a=%.2f b=%.2f T=%s: %d rays; min |<x,y>|^2 %.2e; orth pairs %d; 6-cliques %d; dist of offdiag from {0,1/6}: min %.3e"%(a,b,tr,n,offd.min(),G.number_of_edges(),len(cl),np.min(np.minimum(offd,abs(offd-1/6)))))
