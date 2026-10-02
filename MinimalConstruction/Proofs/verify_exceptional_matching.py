"""Exact all-corner matching check for the paper's exceptional H_cross."""
from functools import lru_cache
from itertools import combinations,permutations
import json
import sympy as sp


def run():
    exps=[[0,0,0,0,0,0],[0,2,0,1,2,3],[0,2,2,3,1,0],
          [0,1,3,2,3,1],[0,0,1,3,2,2],[0,3,2,1,0,2]]
    H=sp.Matrix([[sp.I**v for v in row] for row in exps])
    assert H*H.H==6*sp.eye(6)
    orders=list(permutations(range(3)))
    def key(rows,cols):
        block=[[exps[i][j] for j in cols] for i in rows]
        return min(tuple((block[ri[i]][cj[j]]-block[ri[i]][cj[0]]-
                          block[ri[0]][cj[j]]+block[ri[0]][cj[0]])%4
                         for i,j in ((1,1),(1,2),(2,1),(2,2)))
                   for ri in orders for cj in orders)
    @lru_cache(None)
    def psi(k):
        a,b,c,d=[sp.I**v for v in k]
        X=sp.Matrix([[1,1,1],[1,a,b],[1,c,d]])
        per=sum(sp.prod(X[i,p[i]] for i in range(3)) for p in orders)
        return sp.simplify(per*X.det()**2/sp.prod(X))
    strict=[];count=0
    for rows in combinations(range(6),3):
        rs=[i for i in range(6) if i not in rows]
        for cols in combinations(range(6),3):
            cs=[j for j in range(6) if j not in cols]
            pB,pC=psi(key(rows,cs)),psi(key(rs,cols))
            assert sp.simplify(pB-sp.conjugate(pC))==0
            R=sp.simplify(-(pB-sp.conjugate(pB))**2)
            if R>0:strict.append(dict(rows=list(rows),columns=list(cols),R=str(R)))
            count+=1
    assert count==400 and strict
    return dict(status='PASS_EXACT_HCROSS_ALL_CORNER_MATCHING',corner_count=count,
                strict_corner_count=len(strict),strict_witness=strict[0],
                scope='All-corner matching and a strict corner for H_cross; not global strict-corner coverage.')


if __name__=='__main__':print(json.dumps(run(),indent=2))
