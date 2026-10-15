#!/usr/bin/env python3
"""NUMERICAL independent-flat-vector baseline, not a model of U(H)."""
from pathlib import Path
import json
import numpy as np

def main():
    rng=np.random.default_rng(492731)
    ensemble=[]
    ij=np.triu_indices(48,1)
    for _ in range(10000):
        X=np.exp(1j*np.column_stack([np.zeros(48),rng.uniform(-np.pi,np.pi,(48,5))]))
        v=abs((X.conj()@X.T)[ij])
        ensemble.append(np.quantile(v,[0,.01,.05]))
    A=np.array(ensemble)
    result={'status':'NUMERICAL: 10000 independent ensembles of 48 flat dephased vectors; not MUB ray sets',
        'seed':492731,'per_ensemble_statistics':['minimum','1% pair quantile','5% pair quantile'],
        'median_over_ensembles':np.median(A,axis=0).tolist(),
        '10th_percentile_over_ensembles':np.quantile(A,.1,axis=0).tolist(),
        '90th_percentile_over_ensembles':np.quantile(A,.9,axis=0).tolist()}
    print(json.dumps(result,indent=2))
    (Path(__file__).parent/'random_baseline.json').write_text(json.dumps(result,indent=2))
if __name__=='__main__':main()
