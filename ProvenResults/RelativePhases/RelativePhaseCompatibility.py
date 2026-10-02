#!/usr/bin/env python3
"""Exact checks and explicitly numerical rank diagnostics for the phase kernel."""
from pathlib import Path
from itertools import combinations
import json
import sys
import sympy as s
import numpy as np
import mpmath as mp

PAIRS = list(combinations(range(6), 2))
ANGLES = [
    [4.7061057950775105,3.0473448739820994,1.9352210746113125,5.064247357586747],
    [0.7421966102366018,4.60438766740886,3.240360123316344,1.3134442030056417],
    [2.5019208371565007,2.3748137207082554,1.711365956046693,5.290849736010692],
    [3.9704078460385195,0.6516525629634615,1.360263584464362,3.8881307024580347],
]


def exact_checks():
    root3 = s.sqrt(3)
    zeta = (1+root3*s.I)/2
    tau = (root3+s.I)/2
    N = [[0,0,0,0,0,0],[0,3,2,5,1,4],[0,5,4,3,1,2],
         [0,2,4,0,4,2],[0,3,0,3,3,0],[0,0,2,2,4,4]]
    L = [[0,0,0,0,0,0],[1,3,5,7,9,11],[1,11,9,7,5,3],
         [4,8,0,4,8,0],[9,3,9,3,9,3],[4,0,8,4,0,8]]
    H = s.Matrix(6,6,lambda i,j:s.expand_complex(zeta**N[i][j]))
    K = s.Matrix(6,6,lambda i,j:s.expand_complex(tau**L[i][j]))
    def entry(e,k):
        r,u = PAIRS[k % 15]
        i,j = divmod(e,6)
        q = s.simplify(s.conjugate(H[r,i])*H[u,i]*K[r,j]*s.conjugate(K[u,j]))
        return s.simplify(2*s.re(q) if k<15 else -2*s.im(q))
    A = s.Matrix(36,30,entry)
    rank = A.rank()
    assert rank == 9
    assert A*s.Matrix([1]*15+[0]*15) == s.zeros(36,1)

    omega = (-1+root3*s.I)/2
    F3 = s.Matrix(3,3,lambda i,j:s.expand_complex(omega**((i*j) % 3)))
    F = s.kronecker_product(s.Matrix([[1,1],[1,-1]]), F3)
    d = s.Matrix([1,omega,omega,s.I,s.I*omega,s.I*omega])
    W = (d*d.conjugate().T-s.eye(6)).applyfunc(s.simplify)
    assert (W*W-4*W-5*s.eye(6)).applyfunc(s.simplify) == s.zeros(6)
    assert s.simplify(s.trace(W*W)) == 30
    assert s.simplify(s.trace(W**3)) == 120
    assert ((s.eye(6)+W)[:,0]-d).applyfunc(s.simplify) == s.zeros(6,1)
    for i in range(6):
        for j in range(6):
            v = s.Matrix([F[r,i]*s.conjugate(F[r,j]) for r in range(6)])
            assert s.simplify((v.conjugate().T*W*v)[0]) == 0
    bad_W = s.ones(6)-s.eye(6)
    assert (s.ones(1,6)*bad_W*s.ones(6,1))[0] == 30
    return {'status':'PASS', 'Q1_real_rank':rank, 'Q1_kernel_dimension':30-rank,
            'product_kernel_quadratic_moments_recovery':'PASS',
            'incompatible_control':'PASS: quadratic alone does not imply kernel membership'}


def numerical_diagnostics():
    here = Path(__file__).resolve().parent
    sys.path.insert(0, str(here.parents[1]/'MinimalConstruction'/'Implementation'))
    from model import Model
    mp.mp.dps = 50
    carriers = []
    records = []
    for angles in ANGLES:
        model = Model([mp.exp(mp.j*mp.mpf(str(t))) for t in angles],sheet=1)
        H = np.array(model.hadamard().tolist(),complex)
        carriers.append(H)
        records.append({'angles':angles,'R':float(model.R),
                        'Hadamard_residual_float':float(np.max(abs(H@H.conj().T-6*np.eye(6))))})
    cases = []
    for h,k in [(0,1),(0,2),(1,3)]:
        H,K = carriers[h],carriers[k]
        rows = []
        for i in range(6):
            for j in range(6):
                coeff = np.array([np.conj(H[r,i])*H[u,i]*K[r,j]*np.conj(K[u,j]) for r,u in PAIRS])
                rows.append(np.r_[2*coeff.real,-2*coeff.imag])
        sv = np.linalg.svd(rows,compute_uv=False)
        rank = int(sum(sv>1e-9))
        cases.append({'carriers':[h,k],'numerical_rank':rank,'numerical_kernel_dimension':30-rank,
                      'singular_values':sv.tolist()})
    return {'scope':'numerical diagnostics only; no generic-rank or global-rank certificate',
            'working_precision_digits':50,'SVD_rank_threshold':1e-9,
            'carriers':records,'cases':cases}


if __name__ == '__main__':
    result = {'exact':exact_checks(),'numerical':numerical_diagnostics()}
    path = Path(__file__).with_suffix('.json')
    path.write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({'exact':result['exact'],
                      'numerical_kernel_dimensions':[r['numerical_kernel_dimension'] for r in result['numerical']['cases']],
                      'receipt':str(path)},indent=2))
