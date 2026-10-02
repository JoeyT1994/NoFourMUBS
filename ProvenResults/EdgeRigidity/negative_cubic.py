"""Exact Pauli-channel and exhaustive negative-cubic boundary checks."""
import itertools as it
import sympy as s
from compatibility import Exact


def symbolic():
    a,b=s.symbols('a b',nonzero=True);n=s.symbols('n0:3',real=True)
    w=(-1+s.I*s.sqrt(3))/2
    I=s.eye(2);X=s.Matrix([[0,1],[1,0]]);Y=s.Matrix([[0,-s.I],[s.I,0]]);Z=s.diag(1,-1)
    bar=lambda x:s.conjugate(x).subs({s.conjugate(a):1/a,s.conjugate(b):1/b})
    star=lambda M:M.T.applyfunc(bar)
    simplify=lambda M:M.applyfunc(lambda x:s.cancel(s.expand(x)))
    D=[a*X,b*Z,star(a*X)*star(b*Z)]
    assert simplify(D[0]*D[2]*D[1]-I)==s.zeros(2)
    assert all(simplify(D[i]*D[j]+D[j]*D[i])==s.zeros(2) for i,j in it.combinations(range(3),2))
    VQ=[I,D[1],star(D[0])];VE=[I,D[0]*D[1],-D[1]]
    for r in range(3):
        assert simplify(D[r]*VQ[(r-1)%3]-VQ[r])==s.zeros(2)
        assert simplify(-D[(r-1)%3]*VE[(r-2)%3]-VE[r])==s.zeros(2)
    C=[I+b*w**k*Z+(w**(2*k)/a)*X for k in range(3)]
    N=n[0]*X+n[1]*Y+n[2]*Z;JN=n[0]*X-n[1]*Y+n[2]*Z
    assert simplify(sum((T*JN*star(T) for T in C),s.zeros(2))-3*N)==s.zeros(2)
    assert s.expand(s.trace(N*3*N)-6*sum(x*x for x in n))==0
    h=[a,-s.I/(a*b),b]
    for k,T in enumerate(C):
        L=T*star(T);R=star(T)*T
        for j,P in enumerate((X,Y,Z)):
            assert s.cancel(s.expand(s.trace(L*P)-[1,-1,1][j]*s.trace(R*P)))==0
            assert s.cancel(s.expand(s.trace(L*P)/2-
                                     (h[j]*w**k+bar(h[j])*w**(-k))))==0
    # The spectral-multiplicity condition on three irreducible 2D summands.
    permutations=[]
    for p in it.permutations(range(3)):
        if len({(r+p[r])%3 for r in range(3)})==3:
            c=p[0];assert all(p[r]==(r+c)%3 for r in range(3));permutations.append(list(p))
    assert len(permutations)==3
    # Pair of normalized SU(2) cubic operators: the product trace pins
    # the Bloch-axis inner product to -1/3.
    q=s.symbols('q0:3',real=True)
    PN=-I/2+s.I*s.sqrt(3)*N/2
    QN=-I/2+s.I*s.sqrt(3)*sum((q[j]*P for j,P in enumerate((X,Y,Z))),s.zeros(2))/2
    assert s.expand(s.trace(PN*QN)-(1-3*sum(n[j]*q[j] for j in range(3)))/2)==0
    return {'field':'Q(i,sqrt(3))(a,b)','Pauli_anticommutation_checks':3,
            'positive_reflection_channel':True,'Bloch_harmonic_checks':9,
            'universal_eigenbasis_gauge_checks':6,
            'row_column_reflection_checks':9,'SU2_trace_identity':True,
            'balanced_missing_root_permutations':permutations}


def boundary():
    E=Exact(s.QQ.algebraic_field(s.I,s.sqrt(3)));K=E.F;one=K.one
    I=E.eye(2);X=E.matrix([[0,1],[1,0]]);Y=E.matrix([[0,-s.I],[s.I,0]]);Z=E.matrix([[1,0],[0,-1]])
    w=E.scalar((-1+s.I*s.sqrt(3))/2);root=E.scalar((s.sqrt(3)+s.I)/2);rt=E.scalar(s.sqrt(3))
    def tr(M):return sum((M.to_list()[j][j] for j in range(2)),K.zero)
    def scalar(M):return E.is_zero(M-I.scalarmul(tr(M)/2))
    cases=[];gram_checks=0
    for power,sign in it.product(range(6),(1,-1)):
        a=root**(2*power+1);b=sign*a
        assert a**6==-one and b*b==a*a
        D0=X.scalarmul(a);D1=Z.scalarmul(b)
        blocks=[[I,I,I],[I,D1,E.star(D0)],[I,D0*D1,-D1]]
        # Eigenbasis gauges for P, Q, E0=-PQ, including the last wrap.
        D=[D0,D1,E.star(D0)*E.star(D1)]
        for r in range(3):
            assert E.is_zero(D[r]*blocks[1][(r-1)%3]-blocks[1][r])
            assert E.is_zero(-D[(r-1)%3]*blocks[2][(r-2)%3]-blocks[2][r])
        data={};normals={};ks={}
        for r,t in ((0,1),(0,2),(1,2)):
            C=[sum(((E.star(blocks[r][j])*blocks[t][j]).scalarmul(w**(k*j))
                    for j in range(3)),E.zero(2)) for k in range(3)]
            full=[k for k,T in enumerate(C) if scalar(T*E.star(T))]
            assert len(full)==1;k=full[0];ks[r,t]=k
            assert E.is_zero(C[k]*E.star(C[k])-I.scalarmul(K.convert(3)))
            for j in range(3):
                if j==k:continue
                assert C[j].det()==K.zero
                L=C[j]*E.star(C[j]);R=E.star(C[j])*C[j]
                N=L-I.scalarmul(tr(L)/2);M=R-I.scalarmul(tr(R)/2)
                assert not E.is_zero(N) and not E.is_zero(M)
                for g,T in ((r,N),(t,M)):
                    if g in normals:assert E.is_zero(normals[g]*T-T*normals[g])
                    else:normals[g]=T
                    gram_checks+=1
            data[r,t]=C[k].scalarmul(one/rt)
        assert (ks[0,1]+ks[1,2]-ks[0,2])%3==0
        for r,t in ((0,1),(0,2),(1,2)):
            U=data[r,t];M=U*normals[t]*E.star(U)
            assert E.is_zero(normals[r]*M-M*normals[r])
        W=data[0,1]*data[1,2]*E.star(data[0,2])
        assert tr(W)==K.zero and E.is_zero(W*normals[0]-normals[0]*W)
        assert E.is_zero(E.star(W)*W-I)
        cases.append({'power':power,'sign':sign,
                      'full_rank_frequencies':[ks[e] for e in ((0,1),(0,2),(1,2))],
                      'closed_three_cycles':True,'plane_holonomy_minus_identity':True})
    assert len(cases)==12 and gram_checks==144
    return {'field':'Q(i,sqrt(3))','all_boundary_cases':cases,
            'all_nonzero_Gram_normal_checks':gram_checks,
            'eigenbasis_gauges_and_wrap_checked':True,
            'scope':'all twelve rank-one Pauli-plane points; exact cycle and plane transport'}


def calculate():return {'symbolic':symbolic(),'boundary':boundary()}


if __name__=='__main__':
    import json
    if not __debug__:raise SystemExit('Assertions must remain enabled')
    print(json.dumps(calculate(),sort_keys=True))
