"""Exact replay for OnePhaseRecovery.md, TwoRectangleAlignment.md,
ThreeRayCompletion.md and CompletionSubstitution.md.

Run with cwd = this folder: python3 verify.py   (add --emit for JSON)
Exact arithmetic in Q(i,sqrt2,sqrt3) (qfield.Q) and SymPy.  The universal
statements are the written proofs; this script checks the rank-one integer
cases, exact physical controls for one-phase recovery, the two-phase and
two-rectangle rank controls, the rank-four tensor control, the strict
rectangles' feature ranks, W(A) and the commutator Gram, and the substituted
completion residual on an exact MUB triple.  No receipt or hash checks.
"""
import sys,json,itertools as it
from pathlib import Path
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE));sys.path.insert(0,str(HERE.parent))
import sympy as sy
from qfield import Q,mul,star,physical,det3
from controls import matrices
ii=Q({1:1})

def phase_coefficients(H,A,v,r):
 m=len(A[0]);U=[[H[r][j].bar()*A[r][k] for k in range(m)] for j in range(6)]
 B=[[sum((H[t][j].bar()*v[t]*A[t][k] for t in range(6) if t!=r),Q()) for k in range(m)] for j in range(6)]
 C=[[U[j][k]*B[j][k].bar() for k in range(m)] for j in range(6)];rhs=[[5-x*x.bar() for x in row] for row in B]
 assert all(sum((C[j][k] for j in range(6)),Q())==0 and sum((rhs[j][k] for j in range(6)),Q())==0 for k in range(m))
 Bp=[[B[j][k]/U[j][k] for k in range(m)] for j in range(6)]
 assert all(sum((Bp[j][k] for j in range(6)),Q())==0 for k in range(m))
 assert mul(star(Bp),Bp)==[[Q(36*(k==l)-6) for l in range(m)] for k in range(m)]
 M=[(C[j][k]+C[j][k].bar(),ii*(C[j][k]-C[j][k].bar())) for j,k in it.product(range(5),range(m))]
 b=[rhs[j][k] for j,k in it.product(range(5),range(m))]
 g00=sum((x*x for x,y in M),Q());g01=sum((x*y for x,y in M),Q());g11=sum((y*y for x,y in M),Q());delta=g00*g11-g01*g01
 z0=sum((x*t for (x,y),t in zip(M,b)),Q());z1=sum((y*t for (x,y),t in zip(M,b)),Q());n0=g11*z0-g01*z1;n1=g00*z1-g01*z0
 return M,b,delta,n0,n1

def rank_pb(M):
 M=[list(row) for row in M];rr=0
 for c in range(len(M[0])):
  p=next((j for j in range(rr,len(M)) if M[j][c]!=0),None)
  if p is None:continue
  M[rr],M[p]=M[p],M[rr];v=M[rr][c];M[rr]=[x/v for x in M[rr]]
  for j in range(rr+1,len(M)):
   v=M[j][c]
   if v!=0:M[j]=[a-v*b for a,b in zip(M[j],M[rr])]
  rr+=1
 return rr

def pair_coefficients(H,A,v,r,t):
 rows=[]
 for j,k in it.product(range(5),range(len(A[0]))):
  a=H[r][j].bar()*A[r][k];b=H[t][j].bar()*A[t][k];c=sum((H[l][j].bar()*v[l]*A[l][k] for l in range(6) if l not in [r,t]),Q())
  aa=a*c.bar();bb=b*c.bar();gg=a*b.bar();d=c*c.bar()-4
  rows.append([aa,bb,gg,gg.bar(),d,bb.bar(),aa.bar()])
 return rows

def calculate_branch():
 cases=[]
 for k in range(1,6):
  c2=sy.Rational(5*(k-3)**2,k*(6-k));inter=sy.Rational(k*(k-1),5)
  assert c2>1 or not inter.is_integer
  cases.append({'k':k,'c_squared':str(c2),'intersection':str(inter)})
 H,K=matrices();H=[[x.bar() for x in row] for row in H];K=[[x.bar() for x in row] for row in K];physical(H);physical(K)
 root=(Q({6:1})+Q({2:1})+Q({7:1})-Q({3:1}))/4;v=[root**j for j in [0,1,2,3,4,5]]
 checks=[]
 for m in [2,3]:
  A=[[x/v[i] for x in row[:m]] for i,row in enumerate(K)]
  for r in range(6):
   M,b,d,n0,n1=phase_coefficients(H,A,v,r)
   assert d!=0 and d==d.bar()
   assert all(d*t-x*n0-y*n1==0 for (x,y),t in zip(M,b))
   assert n0*n0+n1*n1==d*d and (n0+ii*n1)/d==v[r]
   checks.append([m,r])
 Ac=[row[:3] for row in K];As=[row[:3] for row in H];Ap=[H[i][:3] for i in [0,1,2,3,5,4]]
 ranks={}
 for name,A in [('compatible',Ac),('self',As),('swapped',Ap)]:ranks[name]=rank_pb(pair_coefficients(H,A,[Q(1)]*6,4,5))
 assert ranks=={'compatible':6,'self':3,'swapped':5}
 A=[[x/v[i] for x in row[:3]] for i,row in enumerate(K)];P=pair_coefficients(H,A,v,4,5);lam,mu=v[4],v[5];w=[lam*lam*mu,lam*mu*mu,lam*lam,mu*mu,lam*mu,lam,mu]
 assert all(sum((x*y for x,y in zip(row,w)),Q())==0 for row in P)
 assert w[4]/w[6]==lam and w[4]/w[5]==mu
 M,b,d,n0,n1=phase_coefficients(H,As,[Q(1)]*6,5)
 assert d==0 and rank_pb(M)==1
 # Rank-one control forces Re(lambda)=-2 and cannot lie on the circle.
 assert all(y==0 and t==-2*x for (x,y),t in zip(M,b))
 l,m=sy.symbols('lambda mu');al,be,ga,gc,dd,bc,ac=sy.symbols('alpha beta gamma gammabar d betabar alphabar')
 P=al*l*l*m+be*l*m*m+ga*l*l+gc*m*m+dd*l*m+bc*l+ac*m
 assert sy.Poly(P,l).degree()==2 and sy.Poly(P,l).nth(0).subs(m,0)==0
 a,b,c,e,f,g=sy.symbols('a b c e f g')
 assert sy.expand(sy.resultant(a*l*l+b*l+c,e*l*l+f*l+g,l)-((a*g-c*e)**2-(a*f-b*e)*(b*g-c*f)))==0
 return {'classification':'Global physical coordinate reduction, not seed-family classification','rank_one_integer_cases':cases,'exact_one_phase_controls':checks,'two_phase_control_ranks_characteristic_zero':ranks,'self_control_forces_real_part':-2,'rank6_recovery_ratios_checked':True,'quadratic_resultant_identity_checked':True,'remaining_explicit_phases_after_one_phase_recovery':4,'remaining_explicit_phases_with_sextic_candidates':3,'scope':'No physical rank-zero/one branch; no seed-only classification or zero3 forcing proved.'}


def eye(n):return [[Q(int(i==j)) for j in range(n)] for i in range(n)]
def scale(M,a):return [[a*v for v in row] for row in M]
def add(A,B):return [[a+b for a,b in zip(r,t)] for r,t in zip(A,B)]
def sub(A,B):return add(A,scale(B,Q(-1)))
def trace(A):return sum((A[i][i] for i in range(len(A))),Q())
def rank(M):
    M=[r[:] for r in M];r=0
    for j in range(len(M[0])):
        p=next((p for p in range(r,len(M)) if M[p][j]!=0),None)
        if p is None:continue
        M[r],M[p]=M[p],M[r];v=M[r][j];M[r]=[a/v for a in M[r]]
        for k in range(r+1,len(M)):
            v=M[k][j]
            if v!=0:M[k]=[a-v*b for a,b in zip(M[k],M[r])]
        r+=1
    return r

def slices(U,A,B):
    F=[[[B[i][j].bar()*U[i][k]*A[k][j] for k in range(6)] for i in range(6)] for j in range(3)]
    for j in range(3):
        assert mul(star(F[j]),F[j])==eye(6)
        for k in range(3):assert trace(mul(star(F[j]),F[k]))==(6 if j==k else 0)
    return F

def matrix(F,g,h):return sub(F[1],scale(F[0],g))+sub(F[2],scale(F[0],h))
def flat_col(v):return all(row[0]*row[0].bar()==1 for row in v)
def bloch_gram(P,F):
    PF=mul(P,star(F));FP=star(PF);O=mul(mul(F,P),star(F))
    assert all(P[i][i]==Q(1)/3 and O[i][i]==Q(1)/3 for i in range(6))
    big=[P[i]+PF[i] for i in range(6)]+[FP[i]+O[i] for i in range(6)]
    return [[18*x*x.bar()-1 for x in row] for row in big]

def calculate_alignment():
    # Exact retained carrier and an existing compatible triple control.
    H,K=matrices();sqrt6=Q({6:1});U=scale(star(H),1/sqrt6)
    A=[[row[j] for j in (0,1,3)] for row in K];B=mul(U,A)
    F=slices(U,A,B);M=matrix(F,Q(1),Q(1))
    assert rank(M)==5 and mul(M,[[Q(1)] for _ in range(6)])==[[Q()] for _ in range(12)]
    assert flat_col(mul(F[0],[[Q(1)] for _ in range(6)]))
    P=[[Q(1)/6]*6 for _ in range(6)];O=mul(mul(F[0],P),star(F[0]))
    assert all(O[i][i]==Q(1)/6 for i in range(6))
    assert rank(matrix(F,Q(-1),Q(1)))==6
    # Carrier no-zero3 is checked directly, not inferred from a name.
    triples=list(it.combinations(range(6),3))
    assert all(det3([[H[i][j] for j in cs] for i in rs])!=0 for rs,cs in it.product(triples,repeat=2))
    # A genuinely nontrivial seed relation: independent physical shapes fail it.
    BB=[[row[j] for j in (0,1,3)] for row in H]
    FF=slices(U,A,BB);S=mul(star(FF[0]),FF[1]);T=mul(star(FF[0]),FF[2])
    assert rank(sub(mul(S,T),mul(T,S)))==6
    # Exact rank-four tensor control (has Fourier blocks; not retained evidence).
    i=Q({1:1});w=(-1+Q({5:1}))/2
    sqrt2=Q({2:1});sqrt3=Q({4:1})
    F3=[[w**(r*c) for c in range(3)] for r in range(3)]
    U3=scale(F3,1/sqrt3);D=[Q(1),w,w]
    B3=mul(U3,[[D[r]*v for v in row] for r,row in enumerate(F3)])
    U2=scale([[Q(1),Q(1)],[Q(1),Q(-1)]],1/sqrt2)
    UU=[[U3[r][c]*U2[a][b] for c in range(3) for b in range(2)] for r in range(3) for a in range(2)]
    AA=[F3[r][:] for r in range(3) for a in range(2)]
    BB=[B3[r][:] for r in range(3) for a in range(2)]
    FF=slices(UU,AA,BB);S=mul(star(FF[0]),FF[1]);T=mul(star(FF[0]),FF[2]);S2=mul(S,S)
    assert T==S2 and mul(S2,S)==eye(6) and trace(S)==0
    br=[]
    for g in [Q(1),w,w*w]:
        assert rank(matrix(FF,g,g*g))==4
        P=scale(add(add(eye(6),scale(S,1/g)),scale(S2,1/(g*g))),Q(1)/3)
        assert P==star(P) and mul(P,P)==P and trace(P)==2
        G=bloch_gram(P,FF[0]);assert rank(G)==2
        br.append(2)
    for eps in [1,-1]:
        d=[[D[r]*v] for r in range(3) for v in [Q(1),eps*i]]
        assert flat_col(d) and flat_col(mul(FF[0],d))
        assert mul(matrix(FF,Q(1),Q(1)),d)==[[Q()] for _ in range(12)]
    # Universal saturation Gram and Pauli identities in exact symbolic form.
    k=sy.symbols('k',real=True);G=6*sy.eye(3)-k*sy.ones(3)
    assert sy.expand(G.det()-108*(2-k))==0
    sig=[sy.Matrix([[0,1],[1,0]]),sy.Matrix([[0,-sy.I],[sy.I,0]]),sy.diag(1,-1)]
    for a,b in it.product(range(3),repeat=2):assert sy.trace(sig[a]*sig[b])==2*int(a==b)
    return {'classification':'Exact complete rank and phase recovery, not compatible seed-family classification',
            'possible_coefficient_ranks':[4,5,6], 'compatible_H8_control_rank':5,
            'incompatible_phase_pair_rank':6,'independent_shape_commutator_rank':6,
            'tensor_cubic_common_space_dimensions':[2,2,2],
            'tensor_Bloch_Gram_ranks':br,'maximum_projective_phase_alignments':6,
            'scope':'H no-zero3 removes continuous flat-alignment branches; all seed-domain reconstruction guards retained',
            'global_compatibility_obstruction':'OPEN'}


def rref(M):
    M=[r[:] for r in M];r=0;piv=[]
    for j in range(len(M[0])):
        p=next((p for p in range(r,len(M)) if M[p][j]!=0),None)
        if p is None:continue
        M[r],M[p]=M[p],M[r];v=M[r][j];M[r]=[z/v for z in M[r]]
        for k in range(len(M)):
            if k==r:continue
            v=M[k][j]
            if v!=0:M[k]=[z-v*w for z,w in zip(M[k],M[r])]
        piv.append(j);r+=1
        if r==len(M):break
    return M,piv

def inverse(M):
    n=len(M);R,p=rref([M[i]+eye(n)[i] for i in range(n)])
    assert p[:n]==list(range(n));return [row[n:] for row in R]
def null(M):
    R,p=rref(M);free=[j for j in range(len(M[0])) if j not in p];out=[]
    for j in free:
        v=[Q() for _ in M[0]];v[j]=Q(1)
        for k,c in enumerate(p):v[c]=-R[k][j]
        out.append(v)
    return out

def completion(A):
    S,V=A[:3],A[3:];Z=scale(mul(inverse(star(S)),star(V)),Q(-1))+eye(3)
    hb=[]
    for i in range(3):
        R=[[Q() for _ in range(3)] for _ in range(3)];R[i][i]=Q(1);hb.append(R)
    ii=Q({1:1})
    for i,j in it.combinations(range(3),2):
        for z in [Q(1),ii]:
            R=[[Q() for _ in range(3)] for _ in range(3)];R[i][j]=z;R[j][i]=z.bar();hb.append(R)
    large=[mul(mul(Z,R),star(Z)) for R in hb]
    diag=[[M[i][i] for M in large] for i in range(6)]
    assert rank(diag)==6
    ns=null(diag);assert len(ns)==3
    Ts=[]
    for v in ns:
        M=[[Q() for _ in range(6)] for _ in range(6)]
        for z,T in zip(v,large):M=add(M,scale(T,z))
        assert M==star(M) and all(M[i][i]==0 for i in range(6));Ts.append(M)
    Ks=[scale(sub(mul(Ts[j],Ts[k]),mul(Ts[k],Ts[j])),ii) for j,k in [(1,2),(2,0),(0,1)]]
    G=[[trace(mul(K,L)) for L in Ks] for K in Ks]
    return Ts,G

def ell(U,T,rho):
    return [[scale(mul(mul(U,[[T[a][k][l]*rho[k][l] for l in range(6)] for k in range(6)]),star(U)),Q(6))[j][j] for a in range(3)] for j in range(6)]
def quad(G,x):return sum((x[i]*G[i][j]*x[j] for i,j in it.product(range(3),repeat=2)),Q())
def features(A):
    P=scale(mul(A,star(A)),Q(1)/6)
    return [[P[i][j]*P[i][j].bar()-Q(1)/12 for j in range(6)] for i in range(6)]

def calculate_completion():
    z=(Q({6:1})+Q({2:1})+Q({7:1})-Q({3:1}))/4
    E=[[0,0,0,0,0,0],[0,5,3,1,4,7],[0,7,4,6,2,3],[0,4,6,2,0,4],[0,3,7,5,4,1],[0,1,2,4,6,5]]
    C=[[0,2,19,18,8,19],[0,18,9,0,6,3],[0,18,21,12,18,3],[0,10,11,18,16,11],[0,10,23,6,4,11],[0,2,7,6,20,19]]
    K=[[z**(3*x) for x in row] for row in E]
    H=[[(z**C[j][i]).bar() for j in range(6)] for i in range(6)]
    assert mul(star(K),K)==scale(eye(6),Q(6)) and mul(star(H),H)==scale(eye(6),Q(6))
    U=scale(star(H),1/Q({6:1}));A=[r[:3] for r in K];B=mul(U,A)
    assert all(t*t.bar()==1 for row in B for t in row)
    def minor_spectrum(M):
        vals=[]
        for rows in it.combinations(range(6),3):
            d=det3([M[r] for r in rows]);vals.append(d*d.bar())
        return vals
    va,vb=minor_spectrum(A),minor_spectrum(B)
    ea=[Q(6),Q(18),12-6*Q({2:1}),12+6*Q({2:1})]
    eb=[Q(3),Q(12),15-4*Q({6:1}),15+4*Q({6:1})]
    assert all(v in ea for v in va) and all(v in eb for v in vb)
    assert all(x in va for x in ea) and all(x in vb for x in eb)
    assert rank(features(A))==rank(features(B))==5
    assert det3([[H[i][j] for j in [0,1,2]] for i in [0,1,5]])==0
    Ts,G=completion(A);assert rank(G)==2 and det3(G)==0
    _,GB=completion(B);assert rank(GB)==2 and det3(GB)==0
    F=slices(U,A,B);M=matrix(F,Q(1),Q(1));assert rank(M)==5
    rho=[[Q(1)/6]*6 for _ in range(6)]
    ell1=ell(U,Ts,rho)
    assert all(quad(G,v)==0 for v in ell1)
    Y=[r[3:] for r in K]
    assert all(t*t.bar()==1 for row in mul(U,Y) for t in row)
    # Check phase covariance and linear-projector substitution away from this
    # compatible control as an identity, not as another compatible witness.
    d=[Q(1),Q({1:1}),Q(-1),z,z*z,Q(1)]
    rho2=[[d[k]*d[l].bar()/6 for l in range(6)] for k in range(6)]
    ell2=ell(U,Ts,rho2)
    actual=[[[d[k]*T[k][l]*d[l].bar() for l in range(6)] for k in range(6)] for T in Ts]
    original=[[mul(mul(U,T),star(U))[j][j] for T in actual] for j in range(6)]
    assert ell2==original
    G2=[[trace(mul(scale(sub(mul(actual[j],actual[k]),mul(actual[k],actual[j])),Q({1:1})),
                        scale(sub(mul(actual[l],actual[m]),mul(actual[m],actual[l])),Q({1:1}))))
         for l,m in [(1,2),(2,0),(0,1)]] for j,k in [(1,2),(2,0),(0,1)]]
    assert G2==G
    # Exact normalization in the universal cross-projector contradiction.
    q=sy.symbols('q',nonzero=True)
    cross=sy.Rational(36,6)*sy.Rational(1,4)*(2+q+1/q)/9-sy.Rational(1,3)
    assert sy.cancel(cross-(q+1/q)/6)==0
    return {'classification':'Exact substituted completion test and exclusion of all retained rank-four alignments',
            'strict_rectangle_feature_ranks':[5,5], 'standard_completion_commutator_rank':2,
            'actual_control_alignment_rank':5,'substituted_completion_residual_zero':True,
            'control_H_has_zero3':True,'phase_covariance_and_linear_projector_substitution':True,
            'retained_rank_four_alignment':'EXCLUDED by analytic cross-Gram rank contradiction',
            'rank_five_global_completion_obstruction':'OPEN'}


def calculate():
    out={'one_phase_recovery':calculate_branch()}
    print('PASS one-phase recovery: rank-one integer cases, 12 exact recoveries, two-phase ranks 6/3/5',flush=True)
    out['two_rectangle_alignment']=calculate_alignment()
    print('PASS two-rectangle alignment: rank-5 compatible control, rank-6 wrong pair, rank-4 tensor control',flush=True)
    out['completion_substitution']=calculate_completion()
    print('PASS completion substitution: strict feature ranks 5/5, dim W=3, Gram rank 2, residual 0',flush=True)
    return out

if __name__=='__main__':
    if not __debug__:raise SystemExit('Assertions must remain enabled')
    data=calculate()
    if '--emit' in sys.argv:print(json.dumps(data,indent=2,default=str))
    print('PASS alignment/verify.py')
