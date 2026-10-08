"""Per-carrier quartet gap: fix I and a generic reconstructed carrier U=H_+(a,b,c,d)/sqrt6,
minimise the quartet residual over the remaining two bases V,W (and report the best of many starts)."""
import numpy as np, sys
sys.path.insert(0,str(__import__('pathlib').Path(__file__).resolve().parents[2] / 'MinimalConstruction' / 'Implementation'))
import mpmath as mp; from model import Model
exec(open('quartet_gap.py').read().split('for trial in range')[0])
def carrier():
    while True:
        seeds=[mp.exp(1j*mp.mpf(float(t))) for t in rng.uniform(0,2*np.pi,4)]
        try: H=Model(seeds).hadamard()
        except ValueError: continue
        return np.array([complex(s) for s in seeds]),np.array(H.tolist(),dtype=complex)/np.sqrt(6)
def run(U0,starts):
    best=9
    for s in range(starts):
        Us=[U0,haar(),haar()]; t=0.5; f=F(Us)
        for it in range(20000):
            g=G(Us); g[0]=0*g[0]
            while True:
                U2=[Us[0]]+[step(U,gg,t) for U,gg in zip(Us[1:],g[1:])]; f2=F(U2)
                if f2<f or t<1e-15: break
                t/=2
            if t<1e-15: break
            Us,f=U2,f2; t*=1.5
        best=min(best,f)
    return best
for n in range(int(sys.argv[2])):
    seeds,U=carrier()
    print(f"carrier seeds(args) {np.round(np.angle(seeds),3)}: best quartet residual over V,W = {run(U,6):.5f}",flush=True)
