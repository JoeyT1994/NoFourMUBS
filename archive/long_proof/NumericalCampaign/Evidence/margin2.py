import numpy as np, sys
sys.path.insert(0,str(__import__('pathlib').Path(__file__).resolve().parents[2] / 'MinimalConstruction' / 'Implementation'))
import mpmath as mp; from model import Model
exec(open('margin.py').read().split('for n in range')[0].replace("rng=np.random.default_rng(int(sys.argv[1]))","rng=np.random.default_rng(int(sys.argv[1]))"))
cnt=0
while cnt<int(sys.argv[2]):
    seeds=[mp.exp(1j*mp.mpf(float(t))) for t in rng.uniform(0,2*np.pi,4)]
    try: H=Model(seeds).hadamard()
    except ValueError: continue
    H=np.array(H.tolist(),dtype=complex); U=H/np.sqrt(6)
    if np.abs(U.conj().T@U-np.eye(6)).max()>1e-9: continue
    R=rays(U,2500)
    G=abs(np.array([[np.vdot(a,b) for b in R] for a in R])); np.fill_diagonal(G,9)
    print(f"seeds {np.round(np.angle(np.array([complex(s) for s in seeds])),3)} #rays {len(R)} min|<z,w>| {G.min():.4f}",flush=True); cnt+=1
