import numpy as np, sys, itertools
exec(open('margin2.py').read().split('cnt=0')[0])
def cliques(adj,n):
    out=[]
    def bk(R,P,X):
        if not P and not X: out.append(R); return
        for v in list(P):
            bk(R|{v},P&adj[v],X&adj[v]); P=P-{v}; X=X|{v}
    bk(set(),set(range(n)),set()); return out
cnt=0
while cnt<int(sys.argv[2]):
    seeds=[mp.exp(1j*mp.mpf(float(t))) for t in rng.uniform(0,2*np.pi,4)]
    try: H=Model(seeds).hadamard()
    except ValueError: continue
    U=np.array(H.tolist(),dtype=complex)/np.sqrt(6)
    R=rays(U,2500); n=len(R)
    G=abs(np.array([[np.vdot(a,b) for b in R] for a in R]))
    res=[]
    for thr in (0.01,0.05,0.1,0.2):
        adj=[set(j for j in range(n) if j!=i and G[i,j]<thr) for i in range(n)]
        cl=cliques(adj,n); res.append(max(len(c) for c in cl))
    # best 6-set defect via greedy over cliques at thr .3
    print(f"#rays {n}  max near-orthogonal clique size at thr .01/.05/.1/.2: {res}",flush=True); cnt+=1
