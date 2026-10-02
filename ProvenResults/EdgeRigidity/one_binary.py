"""Exact components/controls for the one-binary global exclusion theorem."""
import itertools as it
from fractions import Fraction as F
import sympy as s
from hx_nonbinary import Q,physical,star,mul,scale,sub,diag,rank,eye,product_frame

def symbolic():
    p,q=s.symbols('p q',nonzero=True)
    assert s.expand((1+p*q)*(1+1/(p*q))/6-s.Rational(1,3)
                    -(p*q+1/(p*q))/6)==0
    # Free-word implication [R,P]=0, RS=-SR, S=PQ gives RQ=-QR.
    # Move R past P in R(PQ)+(PQ)R = P(RQ+QR).
    def normal(word):
        while 'RP' in word:word=word.replace('RP','PR')
        return word
    assert sorted(map(normal,['RPQ','PQR']))==sorted(map(normal,['PRQ','PQR']))
    signs=[tuple(1 if i in I else -1 for i in range(6))
           for I in it.combinations(range(6),3) if 0 in I]
    count=0
    for e,f in it.combinations(signs,2):
        assert set(abs(x+2*y) for x,y in zip(e,f))=={1,3};count+=1
    assert count==45
    # Pair multiplicities sum to three. The only pattern without a pair
    # of size one or two is a single pair of size three.
    patterns=[a for n in range(1,4) for a in it.combinations_with_replacement(range(1,4),n) if sum(a)==3]
    assert patterns==[(3,),(1,2),(1,1,1)]
    assert [(a,b) for a,b in it.product((4,5),repeat=2) if a+b-6<=2]==[(4,4)]
    assert [(m,m//2) for m in (2,4)]==[(2,1),(4,2)]
    return {'cross_Gram_identity':True,'free_anticommutation_identity':True,
            'balanced_sign_line_pairs':count,'nonzero_spectral_pair_patterns':[list(a) for a in patterns],
            'zero_eigenspaces_retained':[2,4,6],'rank_alternative':[[4,4]]}

def det3(M):
    return (M[0][0]*(M[1][1]*M[2][2]-M[1][2]*M[2][1])
           -M[0][1]*(M[1][0]*M[2][2]-M[1][2]*M[2][0])
           +M[0][2]*(M[1][0]*M[2][1]-M[1][1]*M[2][0]))

def features(H,rows):
    z=[[H[i][k]*H[j][k].bar() for k in range(6)] for i,j in it.combinations(rows,2)]
    return [*z,*[[v.bar() for v in row] for row in z]]

def projector(H,rows,j):
    return [[H[r][j]*H[t][j].bar()/3-Q(F(int(r==t),3)) for t in rows] for r in rows]

def gram_control(H,rows):
    other=[i for i in range(6) if i not in rows]
    Ps=[projector(H,rows,j) for j in range(6)]
    Qs=[projector(H,other,j) for j in range(6)]
    def inner(A,B):return sum((a.bar()*b for ra,rb in zip(A,B) for a,b in zip(ra,rb)),Q())
    G=[[inner(A,B) for B in Ps] for A in Ps]
    assert G==[[inner(A,B) for B in Qs] for A in Qs]
    for i,j in it.product(range(6),repeat=2):
        value=sum((H[r][i].bar()*H[r][j] for r in rows),Q())/3
        assert G[i][j]==value*value.bar()-Q(F(1,3))
    assert all(sum(row,Q())==0 for row in G)
    h=rank(G)[0];assert h==rank(features(H,rows))[0]==rank(features(H,other))[0]
    return h

def hx():
    ii,r2,r3,r7,r221=[Q({1<<j:1}) for j in range(5)];one=Q(1)
    a=(-3+4*ii)/5;b=a;c=a.bar();d=(-2+ii*r3*r7)/5
    H=[[one]*6,[one,a,b,a/c,a/d,a*d/(b*c)],[one,c,d,a,b*c/d,a/b],
       [one,a/b,-one,a/d,-a/d,-a/b],[one,d,-d,a*d/(b*c),-one,-a*d/(b*c)],
       [one,b*c/d,-b,b,-b*c/d,-one]]
    omega=(-1+ii*r3)/2;z0=ii*(7+4*ii)/(8+ii*r3*r7)*r221/13;z1=ii*(a-1)/(d-1)*r2*r7/4
    cols=[]
    for q,z in [(one,z0),(omega,z1),(omega**2,z1)]:
        for zz in (z,-z):cols.append([one,a/q,q,zz,d*zz/q,q*zz])
    B=list(map(list,zip(*cols)));X=scale(mul(star(H),B),1/(r2*r3))
    for M in (H,B,X):physical(M)
    S=diag([1,1,1,-1,-1,-1]);pp=[Q(x) for x in [1,1,-1,1,-1,-1]]
    P=scale(mul(mul(H,diag(pp)),star(H)),F(1,6))
    qqmat=scale(mul(mul(star(B),mul(P,S)),B),F(1,6))
    qq=[qqmat[j][j] for j in range(6)];assert qqmat==diag(qq)
    assert mul(mul(star(H),S),B)==scale(mul(mul(diag(pp),X),diag(qq)),r2*r3)
    cross=[]
    for i in range(6):
        row=[]
        for j in range(6):
            value=sum((H[r][i].bar()*B[r][j] for r in range(3)),Q())/3
            C=value*value.bar()-Q(F(1,3));pq=pp[i]*qq[j]
            assert C==(pq+pq.bar())/6;row.append(C)
        cross.append(row)
    ranks=[gram_control(M,[0,1,2]) for M in (H,B)]
    assert rank(cross)[0]<=2
    frame=product_frame(H)
    # The exact product-coordinate feature matrix, with actual matched roots.
    a,b=H[1][1:3];c,d=H[2][1:3]
    pairs=[(Q(1),Q(1)),(a,c),(b,d),*zip(H[1][3:],H[2][3:])]
    R=list(map(list,zip(*[(z,1/z,w,1/w,w/z,z/w) for z,w in pairs])))
    assert rank(R)[0]==ranks[0]
    assert det3([row[:3] for row in B[:3]])==0
    return {'projector_ranks':ranks,'cross_Gram_rank':rank(cross)[0],
            'reference_product_guards':frame['all_thirteen_original_guards_nonzero'],
            'seed_feature_rank':rank(R)[0],'physical_triangle':True,'zero3_in_B':True}

def rank_four_control():
    ii=Q({1:1});r3=Q({4:1});w=(-1+ii*r3)/2
    A=[[w**(i*j) for j in range(3)] for i in range(3)]
    B=mul(diag([w**(i*i) for i in range(3)]),A)
    C=mul(A,diag([w**(2*i*i) for i in range(3)]))
    D=scale(mul(mul(C,star(A)),B),F(-1,3))
    H=[a+b for a,b in zip(A,B)]+[a+b for a,b in zip(C,D)];physical(H)
    assert all(det3([[H[i][j] for j in J] for i in I])!=0
               for I,J in it.product(it.combinations(range(6),3),repeat=2))
    h=gram_control(H,[0,1,2]);assert h==4
    e=[1,1,1,-1,-1,-1];S=diag(e)
    R=scale(mul(mul(H,diag(e)),star(H)),F(1,6))
    assert mul(S,R)==scale(mul(R,S),-1) and mul(R,R)==eye(6)
    assert all(sum((e[k]*row[k] for k in range(6)),Q())==0 for row in features(H,[0,1,2]))
    return {'projector_rank':h,'nonzero_three_minors':400,'binary_kernel_and_anticommutation':True,
            'scope':'physical single Hadamard control, not a triangle or quartet'}

def calculate():
    return {'evidence_label':'Certified computation','symbolic':symbolic(),
            'guarded_triangle':hx(),'rank_four_no_zero3':rank_four_control(),
            'scope':'exact identities and controls for the written global proof; not formal verification or a forcing-of-binary theorem'}

if __name__=='__main__':
    if not __debug__:raise SystemExit('Assertions must remain enabled')
    import json
    print(json.dumps(calculate(),indent=2,sort_keys=True))
