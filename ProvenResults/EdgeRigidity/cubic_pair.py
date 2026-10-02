"""Finite sign geometry and exact Tao endpoint for a cubic Hadamard pair."""
import itertools as it
import sympy as s
from hx_nonbinary import Q,physical
from projector_rank5 import tao_equivalence,TAO


def calculate():
    signs=list(it.product((1,-1),repeat=3));cliques={}
    dot=lambda x,y:sum(a*b for a,b in zip(x,y))
    for k in (3,4):
        good=[rows for rows in it.combinations(signs,k) if all(dot(x,y)<0 for x,y in it.combinations(rows,2))]
        assert all(dot(x,y)==-1 for rows in good for x,y in it.combinations(rows,2))
        cliques[k]=good
    assert len(cliques[3])==8 and len(cliques[4])==2
    assert not any(all(dot(x,y)<0 for x,y in it.combinations(rows,2)) for rows in it.combinations(signs,5))
    ii=Q({1:1});rt=Q({4:1});w=(-1+ii*rt)/2;roots=[w**k for k in range(3)]
    witnesses=[]
    for ss in cliques[4]:
        H=[[Q(1),w**g]+[w**(2*g)*(1+ii*rt*eps*t[g])/2 for t in ss]
           for g in range(3) for eps in (1,-1)]
        physical(H)
        ex=[[next(k for k in range(3) if z/H[0][j]==roots[k]) for j,z in enumerate(row)] for row in H]
        eq=tao_equivalence(ex);rr,cc=eq['rows'],eq['columns'];r0,c0=rr[0],cc[0]
        assert [[H[i][j]*H[r0][c0]/(H[i][c0]*H[r0][j]) for j in cc] for i in rr]==[[roots[k] for k in row] for row in TAO]
        witnesses.append({'tetrahedron':[list(t) for t in ss],**eq})
    x,y=s.symbols('x y',real=True)
    for e in (1,-1):
        first=x+s.I*e*y;second=y-s.I*e*x
        assert s.expand(first-s.I*e*second)==0
        assert s.expand(first*s.conjugate(first)-(x*x+y*y))==0
    # The unit-norm residual columns have m^2+3t^2=1; the two-column
    # first-row norm gives the product-of-ratios value three, not one.
    assert s.expand(9*x*x*y*y-9*(1-x*x)*(1-y*y)).subs(y*y,1-x*x).expand()==0
    return {'evidence_label':'Certified computation','field':'Q(i,sqrt(2),sqrt(3))',
            'three_sign_negative_cliques':len(cliques[3]),'four_sign_negative_cliques':len(cliques[4]),
            'no_five_sign_negative_clique':True,'Tao_equivalence_witnesses':witnesses,
            'two_column_antipodal_identities':2,
            'scope':'finite sign/endpoint proof checks; continuous exhaustivity is the written cubic-pair proof'}


if __name__=='__main__':
    import json
    if not __debug__:raise SystemExit('Assertions must remain enabled')
    print(json.dumps(calculate(),sort_keys=True))
