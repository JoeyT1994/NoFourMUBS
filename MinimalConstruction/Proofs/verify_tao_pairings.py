"""Exact fourth-moment identities and all 400 Tao corner pairings.

The finite census proves the stated extra pairing at Tao's two strict
corner classes. It does not assert that no other seed has extra pairings.
"""
from collections import Counter
from functools import lru_cache
from itertools import combinations, permutations
import json
import time
import sympy as sp

PAIRS=[(0,0),(0,1),(0,2),(1,1),(1,2),(2,2)]
EXP=[(0,0),(1,0),(0,1),(2,0),(1,1),(0,2)]


def moments(s,t,r,u,v,pi,star):
    S,T,Q=star(s),star(t),star(r)
    m={(0,0):sp.Integer(3),(1,0):s,(0,1):t,(1,-1):Q,
       (2,0):s*s-2*u*S,(0,2):t*t-2*v*T,(1,1):s*t-pi,
       (2,-1):s*Q-u*star(pi),(-1,2):t*r-v*star(pi),
       (2,-2):Q*Q-2*u/v*r}
    m.update({(-a,-b):star(value) for (a,b),value in list(m.items())})
    return sp.Matrix(6,6,lambda i,j:m[(EXP[i][0]-EXP[j][0],EXP[i][1]-EXP[j][1])])


def run():
    started=time.process_time()
    x=sp.symbols('x0:3',nonzero=True);y=sp.symbols('y0:3',nonzero=True)
    star=lambda f:sp.sympify(f).xreplace({v:1/v for v in x+y})
    M=sp.Matrix([[1]*3,list(x),list(y)])
    M2=sp.Matrix([[M[a,j]*M[b,j] for j in range(3)] for a,b in PAIRS])
    per=sum(sp.prod(M[i,p[i]] for i in range(3)) for p in permutations(range(3)))
    calculated=moments(sum(x),sum(y),sum(yj/xj for xj,yj in zip(x,y)),sp.prod(x),sp.prod(y),per,star)
    assert all(sp.cancel(v)==0 for v in calculated-M2*M2.applyfunc(star).T)
    # Verify the symmetric-square coefficient matrix independently.
    K=sp.Matrix(3,3,sp.symbols('k0:9'))
    def square_map(K):
        return sp.Matrix(6,6,lambda i,j:sum(
            K[a,c]*K[b,d] for a,b in set((PAIRS[i],PAIRS[i][::-1]))
            for c,d in set((PAIRS[j],PAIRS[j][::-1]))))
    L=square_map(K)
    ca=sp.Matrix(1,3,sp.symbols('c0:3'));bb=sp.Matrix(3,1,sp.symbols('b0:3'))
    c2=sp.Matrix(1,6,[ca[a]*ca[b] for a,b in PAIRS])
    b2=sp.Matrix(6,1,[bb[a]*bb[b] for a,b in PAIRS])
    assert sp.expand((ca*K*bb)[0]**2-(c2*L*b2)[0])==0
    print('PASS universal fourth-moment and symmetric-square identities',flush=True)

    omega=(-1+sp.I*sp.sqrt(3))/2
    clean=lambda f:sp.simplify(sp.expand_complex(f))
    powers=[sp.Integer(1),omega,sp.conjugate(omega)]
    Texp=[[0,0,0,0,0,0],[0,0,1,1,2,2],[0,1,0,2,2,1],
          [0,1,2,0,1,2],[0,2,2,1,0,1],[0,2,1,2,1,0]]
    TH=sp.Matrix([[powers[v] for v in row] for row in Texp])
    assert (TH*TH.H-6*sp.eye(6)).applyfunc(clean)==sp.zeros(6)
    orders=list(permutations(range(3)))
    def canonical(block):
        return min(tuple((block[ri[i]][cj[j]]-block[ri[i]][cj[0]]-
                          block[ri[0]][cj[j]]+block[ri[0]][cj[0]])%3
                         for i,j in ((1,1),(1,2),(2,1),(2,2)))
                   for ri in orders for cj in orders)
    def extract(rows,cols):
        return [[Texp[i][j] for j in cols] for i in rows]
    def seed(key):
        a,b,c,d=[powers[v] for v in key]
        return sp.Matrix([[1,1,1],[1,a,b],[1,c,d]])
    def inv(G):
        s,t,r=G[1,0],G[2,0],G[2,1]
        X,Y,Z=[clean(q*sp.conjugate(q)) for q in (s,t,r)]
        p=X+Y+Z;J=clean(s*r*sp.conjugate(t)+sp.conjugate(s*r)*t)
        g=27-3*p+J;eta=9-p+J
        chi=clean(X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J)
        return g,eta,chi,clean(4*g*g*eta-chi*chi)
    @lru_cache(None)
    def theta(key):
        M=seed(key);det=clean(M.det())
        per=clean(sum(sp.prod(M[i,p[i]] for i in range(3)) for p in orders))
        return clean(-per*det/(sp.conjugate(det)*sp.prod(M)))
    census=Counter();side_theta={}
    for rows in combinations(range(6),3):
        other_rows=tuple(i for i in range(6) if i not in rows)
        for cols in combinations(range(6),3):
            other_cols=tuple(i for i in range(6) if i not in cols)
            key=canonical(extract(rows,cols))
            zh=theta(canonical(extract(rows,other_cols)))
            zv=theta(canonical(extract(other_rows,cols)))
            assert zh==zv
            if key in side_theta: assert side_theta[key]==zh
            side_theta[key]=zh;census[key]+=1
    assert sorted(census.values())==[40,180,180]

    def side_moment(G,z):
        g,eta,chi,R=inv(G)
        s,t,r=G[1,0],G[2,0],G[2,1]
        X,Y,Z=[clean(q*sp.conjugate(q)) for q in (s,t,r)]
        P=[r*s*s+sp.conjugate(r)*t*t+(3-Z)*s*t,
           t*sp.conjugate(s)**2+r*r*sp.conjugate(t)+(3-Y)*r*sp.conjugate(s),
           s*sp.conjugate(t)**2+sp.conjugate(r)**2*sp.conjugate(s)+(3-X)*sp.conjugate(r)*sp.conjugate(t)]
        lam=[clean((g+c*sp.conjugate(z))/sp.conjugate(p)) for c,p in zip((9-Z,9-Y,9-X),P)]
        return moments(s,t,r,clean(lam[0]/lam[1]),clean(lam[0]/lam[2]),clean(z*lam[0]),lambda f:clean(sp.conjugate(f))).applyfunc(clean)
    results=[]
    for key,count in sorted(census.items()):
        E=seed(key);Gh=(6*sp.eye(3)-E*E.H).applyfunc(clean)
        Gv=(6*sp.eye(3)-E.T*sp.conjugate(E)).applyfunc(clean)
        g,eta,chi,R=inv(Gh)
        row=dict(seed_exponents=list(key),count=count,g=str(g),R=str(R),Tao_side_Theta=str(side_theta[key]))
        if R==0:
            assert count==40 and Gh==3*sp.eye(3) and Gv==3*sp.eye(3)
        else:
            assert R==243 and count==180
            zp=clean((chi+sp.I*sp.sqrt(R))/(2*g));zm=sp.conjugate(zp)
            K=(-E.H*Gh.inv()).applyfunc(clean);L=square_map(K).applyfunc(clean)
            h=[side_moment(Gh,z) for z in (zp,zm)]
            v=[side_moment(Gv,z) for z in (zp,zm)]
            residuals=[[clean(sp.trace(v[j].T*L*h[i]*L.H)-9) for j in range(2)] for i in range(2)]
            assert residuals[0][1]==residuals[1][0]==0
            ordered=sorted(residuals[0]+residuals[1])
            assert ordered[:3]==[0,0,0] and ordered[3]>0
            tao_index=0 if side_theta[key]==zp else 1
            assert residuals[tao_index][tao_index]==0
            row['flatness_residuals_Theta_signs']=[[str(v) for v in r] for r in residuals]
        results.append(row)
    print('PASS exact census and four pairings at both strict Tao corner classes',flush=True)
    return dict(status='PASS_EXACT_TAO_PAIRINGS',corner_count=400,classes=results,
                cpu_seconds=time.process_time()-started,
                scope='All Tao corners and their four pairings; does not classify all possible non-Tao seeds with extra flat pairings.')


if __name__=='__main__':
    print(json.dumps(run(),indent=2))
