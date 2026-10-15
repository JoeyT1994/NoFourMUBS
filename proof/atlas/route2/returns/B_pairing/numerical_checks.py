#!/usr/bin/env python3
"""Reproduce floating-point symmetry/near-orthogonality checks. Not certificates."""
import json
from pathlib import Path
import numpy as np
from numerics import *
from symmetry import best_symmetry,MATCHINGS
OUT=Path(__file__).parent

def stats(H,X,name):
    G=gram(X);v=abs(G[np.triu_indices(len(X),1)])
    loss,ir,ic,A,B=best_symmetry(H)
    Y=X.conj()@A.T;Y/=Y[:,0,None]
    match=np.argmin(np.max(abs(X[None,:,:]-Y[:,None,:]),axis=2),axis=1)
    mate_distance=np.max(abs(X[match]-Y),axis=1)
    ov=abs(G[np.arange(len(X)),match])
    T,tangent_singular=tangent(H)
    tangent_dimension=int(np.sum(tangent_singular<1e-9))
    D,_=ray_derivatives(H,X,T);L=overlap_derivatives(X,D)
    ii,jj=np.triu_indices(len(X),1);sel=np.argsort(abs(G[ii,jj]))[:12]
    ratios=[]
    for k in sel:
        ell=L[ii[k],jj[k]];sv=np.linalg.svd(np.stack([ell.real,ell.imag]),compute_uv=False)
        ratios.append(float(sv[1]/sv[0]) if sv[0]>1e-14 else 0.)
    row={'name':name,'Nfound':len(X),'min_pair':float(min(v)),'q01_pair':float(np.quantile(v,.01)),
         'q05_pair':float(np.quantile(v,.05)),'pairs_below_1e-8':int(sum(v<1e-8)),
         'd5_found':defect(X,5)[0],'d6_found':defect(X,6)[0],
         'b2':block_defect(H,2)[0],'b3':block_defect(H,3)[0],
         'symmetry_residual_fro':loss,'row_matching':MATCHINGS[ir],'column_matching':MATCHINGS[ic],
         'mate_overlap_median':float(np.median(ov)),'mate_overlap_max':float(max(ov)),
         'mate_chord_error_max':float(max(mate_distance)),
         'tangent_dimension_numerical':tangent_dimension,
         'near_pair_derivative_rank_ratio_range':([min(ratios),max(ratios)] if tangent_dimension==4 else None),
         'raw_unbiased_residual':float(np.max(abs(abs(X@H.conj())**2-6)))}
    print('NUMERICAL '+json.dumps(row),flush=True)
    return row

def main():
    out=[]
    for flag in [True,False]:
        for n in range(8):
            data=np.load(OUT/f'seed_{flag}_{n}.npz')
            out.append(stats(data['H'],data['X'],f'strict_a_pi={flag}, sample={n}'))
    for idx in [100,2471,5305,30,247,249,307,431,3245,10362]:
        d=np.load(OUT/f'roots_{idx}.npz');out.append(stats(d['H'],d['X'],f'Record {idx}'))
    for name,H in [('Fourier(.23,.37)',fourier(.23,.37)),('Tao',tao()),('Dita',dita())]:
        X=roots(H,starts=8192,seed=871)
        np.savez_compressed(OUT/(name.split('(')[0].lower()+'_roots.npz'),H=H,X=X)
        out.append(stats(H,X,name))
    with open(OUT/'numerical_checks.json','w') as f:json.dump(out,f,indent=2)
if __name__=='__main__':main()
