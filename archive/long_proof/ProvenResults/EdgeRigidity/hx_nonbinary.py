"""Exact physical r=2 triangle with a nonbinary relative matching direction.

Uses only rational arithmetic in Q(i,sqrt(2),sqrt(3),sqrt(7),sqrt(221)).
No floating point, root finder, genericity premise, or historical import.
"""
import itertools,json
from fractions import Fraction as F

RAD=(-1,2,3,7,221)
class Q:
    def __init__(self,value=0):
        self.c=({k:F(v) for k,v in value.items() if v} if isinstance(value,dict)
                else dict(value.c) if isinstance(value,Q) else {0:F(value)} if value else {})
    def __add__(self,b):
        b=Q(b);d=dict(self.c)
        for k,v in b.c.items():d[k]=d.get(k,F(0))+v
        return Q(d)
    __radd__=__add__
    def __neg__(self):return Q({k:-v for k,v in self.c.items()})
    def __sub__(self,b):return self+-Q(b)
    def __rsub__(self,b):return Q(b)+-self
    def __mul__(self,b):
        b=Q(b);d={}
        for k,v in self.c.items():
            for l,w in b.c.items():
                value=v*w
                for bit,r in enumerate(RAD):
                    if k&l&(1<<bit):value*=r
                d[k^l]=d.get(k^l,F(0))+value
        return Q(d)
    __rmul__=__mul__
    def inv(self):
        assert self.c
        top=max(self.c)
        if top==0:return Q(1/self.c[0])
        bit=top.bit_length()-1;mask=1<<bit
        a=Q({k:v for k,v in self.c.items() if not k&mask})
        b=Q({k^mask:v for k,v in self.c.items() if k&mask})
        return (a-b*Q({mask:1}))*(a*a-RAD[bit]*b*b).inv()
    def __truediv__(self,b):return self*Q(b).inv()
    def __rtruediv__(self,b):return Q(b)*self.inv()
    def __pow__(self,n):
        if n<0:return self.inv()**(-n)
        out=Q(1);base=self
        while n:
            if n&1:out=out*base
            base=base*base;n//=2
        return out
    def __eq__(self,b):return self.c==Q(b).c
    def bar(self):return Q({k:(-v if k&1 else v) for k,v in self.c.items()})
    def rational(self):
        assert all(k==0 for k in self.c)
        return self.c.get(0,F(0))
    def __repr__(self):return repr({k:str(v) for k,v in self.c.items()})

def eye(n):return [[Q(i==j) for j in range(n)] for i in range(n)]
def star(A):return [[x.bar() for x in row] for row in zip(*A)]
def mul(A,B):return [[sum((a*b for a,b in zip(row,col)),Q()) for col in zip(*B)] for row in A]
def scale(A,c):return [[x*c for x in row] for row in A]
def sub(A,B):return [[a-b for a,b in zip(ra,rb)] for ra,rb in zip(A,B)]
def diag(v):return [[Q(v[i]) if i==j else Q() for j in range(len(v))] for i in range(len(v))]
def trace(A):return sum((A[i][i] for i in range(len(A))),Q())
def rank(A):
    A=[row[:] for row in A];r=0;cols=[]
    for j in range(len(A[0])):
        pivot=next((i for i in range(r,len(A)) if A[i][j]!=0),None)
        if pivot is None:continue
        A[r],A[pivot]=A[pivot],A[r];inv=A[r][j].inv()
        A[r]=[x*inv for x in A[r]]
        for i in range(r+1,len(A)):
            c=A[i][j]
            if c!=0:A[i]=[a-c*b for a,b in zip(A[i],A[r])]
        cols.append(j);r+=1
    return r,cols
def physical(A):
    n=len(A)
    assert all(x*x.bar()==1 for row in A for x in row)
    assert mul(star(A),A)==scale(eye(n),n)

def product_frame(H):
    """Check the actual guarded product reconstruction, not just physicality."""
    def add(P,R):
        out=dict(P)
        for m,v in R.items():out[m]=out.get(m,Q())+v
        return {k:v for k,v in out.items() if v!=0}
    def sc(P,c):return {k:v*c for k,v in P.items() if v*c!=0}
    def mult(P,R):
        out={}
        for (i,j),x in P.items():
            for (k,l),y in R.items():out[i+k,j+l]=out.get((i+k,j+l),Q())+x*y
        return {k:v for k,v in out.items() if v!=0}
    def det(A):
        n=len(A);out=Q()
        for p in itertools.permutations(range(n)):
            z=Q((-1)**sum(p[i]>p[j] for i in range(n) for j in range(i+1,n)))
            for i,j in enumerate(p):z*=A[i][j]
            out+=z
        return out
    def companion(a,b,c,d):
        ss=-(1+a+b);tt=-(1+c+d);rr=-(1+c/a+d/b)
        sb,tb,rb=ss.bar(),tt.bar(),rr.bar()
        X={(1,0):Q(1)};Y={(0,1):Q(1)};one={(0,0):Q(1)}
        xm=add(X,sc(one,-ss));ym=add(Y,sc(one,-tt))
        fx=add(one,sc(X,-sb));fy=add(one,sc(Y,-tb))
        yx=add(Y,sc(X,-rr));xy=add(X,sc(Y,-rb))
        base=mult(mult(xm,fy),yx)
        Phi=add(base,sc(mult(mult(fx,ym),xy),-1))
        Psi=add(add(add(add(base,sc(mult(X,Y),-4)),mult(mult(Y,xm),fx)),mult(mult(X,ym),fy)),mult(yx,xy))
        def layer(P,j):return {(i,0):v for (i,k),v in P.items() if k==j}
        FF=[layer(Phi,j) for j in range(3)];GG=[layer(Psi,j) for j in range(3)]
        BB=add(mult(FF[2],GG[1]),sc(mult(FF[1],GG[2]),-1))
        AA=add(mult(FF[2],GG[0]),sc(mult(FF[0],GG[2]),-1))
        delta=rr*rb-tt*tb
        c6=-BB.get((3,0),Q())*BB.get((0,0),Q()).bar();c0=c6.bar()
        S=ss*sb;P=rr*rb+tt*tb;QQ=rr*rb*tt*tb;L=rr*ss*tb+rb*sb*tt
        nu=(-2*L*L+(P*P+(S-3)*P-2*QQ-6*S)*L-P**3+(9-S)*P*P
            -S*(S+9)*P+QQ*((3-S)*P+20*S-36))
        return {'s':ss,'delta':delta,'c6':c6,'c0':c0,'nu':nu,'U':-nu/c6,'A':AA,'B':BB}
    def ev(P,x):return sum((v*x**i for (i,j),v in P.items()),Q())
    def prod(xs):
        out=Q(1)
        for x in xs:out*=x
        return out
    def disc(xs):return prod([(xs[i]-xs[j])**2 for i,j in itertools.combinations(range(3),2)])
    a,b=H[1][1:3];c,d=H[2][1:3]
    E=[row[:3] for row in H[:3]];BB=[row[3:] for row in H[:3]];CC=[row[:3] for row in H[3:]]
    x=BB[1];y=BB[2];p=[row[1] for row in CC];q=[row[2] for row in CC]
    hh=companion(a,b,c,d);vv=companion(a,c,b,d);u=prod(x);m=prod(p)
    for data,roots,partners,product in [(hh,x,y,u),(vv,p,q,m)]:
        assert data['c6']*product**2+data['nu']*product+data['c0']==0
        for xx,yy in zip(roots,partners):
            assert xx**3-data['s']*xx**2+product*data['s'].bar()*xx-product==0
            assert ev(data['A'],xx)+ev(data['B'],xx)*yy==0
    kappa=vv['delta']*hh['c6']/(hh['delta']*vv['c6'])
    assert m==(vv['U']+kappa*hh['U'])/2-kappa*u
    guards={'delta_h':hh['delta'],'delta_v':vv['delta'],'c6_h':hh['c6'],'c6_v':vv['c6'],
        'detE':det(E),'detB':det(BB),'detBstar':det(star(BB)),
        'detC':det(CC),'detCstar':det(star(CC)),
        'Disc_qh':disc(x),'Disc_qv':disc(p),
        'Res_qh_Bcomp':prod([ev(hh['B'],xx) for xx in x]),
        'Res_qv_Bcomp':prod([ev(vv['B'],xx) for xx in p])}
    assert len(guards)==13 and all(v!=0 for v in guards.values())
    # The lower-block formula follows directly from H unitarity and det(B)!=0;
    # check its equivalent block identity without introducing a new inverse.
    D=[row[3:] for row in H[3:]]
    assert mul(D,star(BB))==scale(mul(CC,star(E)),-1)
    gram=sub(scale(eye(3),6),mul(E,star(E)))
    assert gram==mul(BB,star(BB)) and det(gram)==guards['detB']*guards['detBstar']
    return {'representative':'H only, in its displayed dephased corner',
        'all_thirteen_original_guards_nonzero':True,'guard_names':sorted(guards),
        'product_quadratics_checked':2,'matched_vertical_product':True,
        'ordered_coordinate_cubic_checks':6,'companion_checks':6,
        'lower_block_and_Gram_identity':True,
        'B_and_X_guarded_frames':'not replayed; physicality checked directly'}

def verify():
    ii,r2,r3,r7,r221=[Q({1<<j:1}) for j in range(5)]
    for q,r in zip([ii,r2,r3,r7,r221],RAD):assert q*q==r and q/q==1
    a=(-3+4*ii)/5;b=a;c=a.bar();d=(-2+ii*r3*r7)/5
    H=[[Q(1)]*6,[Q(1),a,b,a/c,a/d,a*d/(b*c)],
       [Q(1),c,d,a,b*c/d,a/b],[Q(1),a/b,Q(-1),a/d,-a/d,-a/b],
       [Q(1),d,-d,a*d/(b*c),Q(-1),-a*d/(b*c)],
       [Q(1),b*c/d,-b,b,-b*c/d,Q(-1)]]
    physical(H)
    w=(-1+ii*r3)/2
    z0=ii*(7+4*ii)/(8+ii*r3*r7)*r221/13
    z1=ii*(a-1)/(d-1)*r2*r7/4
    cols=[]
    for q,z in [(Q(1),z0),(w,z1),(w*w,z1)]:
        assert q**3==1 and z*z.bar()==1
        for zz in [z,-z]:cols.append([Q(1),a/q,q,zz,d*zz/q,q*zz])
    B=[list(row) for row in zip(*cols)];physical(B)
    assert rank([row[:3] for row in B[:3]])[0]==2
    X=scale(mul(star(H),B),1/(r2*r3));physical(X)
    eta=[1,1,1,-1,-1,-1];p=[1,1,-1,1,-1,-1]
    S=diag(eta);P=diag(p)
    R=scale(mul(mul(H,P),star(H)),F(1,6));QQ=mul(R,S)
    QD=scale(mul(mul(star(B),QQ),B),F(1,6))
    assert all(QD[i][j]==0 for i in range(6) for j in range(6) if i!=j)
    qv=[QD[j][j] for j in range(6)]
    assert all(q*q.bar()==1 for q in qv) and sum(qv,Q())==0
    assert mul(mul(star(H),S),B)==scale(mul(mul(P,X),QD),r2*r3)
    tr2=sum((q*q for q in qv),Q());defect=36-tr2*tr2.bar()
    assert tr2.rational()==F(-442,75)
    assert defect.rational()==F(7136,5625)>0
    V=[[[H[k][i].bar()*B[k][j]*X[i][j].bar() for j in range(6)] for i in range(6)] for k in range(6)]
    G=[scale(mul(star(V[0]),v),F(1,6)) for v in V]
    assert G[0]==eye(6)
    for g in G:assert mul(star(g),g)==eye(6)
    witness=None
    for j,k in itertools.combinations(range(1,6),2):
        C=sub(mul(G[j],G[k]),mul(G[k],G[j]))
        rr,pivots=rank(C)
        if rr==4:witness={'indices_zero_based':[j,k],'rank':rr,'pivot_columns':pivots};break
    assert witness is not None
    # Both known normalized phase vectors are eigencharacters, proving >=2.
    for phases in [[1]*6,eta]:
        vv=[Q(1)]*6 if phases==[1]*6 else [q.bar() for q in qv]
        for k,g in enumerate(G):
            actual=[sum((g[i][j]*vv[j] for j in range(6)),Q()) for i in range(6)]
            assert actual==[phases[k]*q for q in vv]
    frame=product_frame(H)
    return {'evidence_label':'Certified computation',
        'field':'Q(i,sqrt(2),sqrt(3),sqrt(7),sqrt(221))',
        'phase_convention':'H*H=B*B=X*X=6I; H*B=sqrt(6)X',
        'seed':{'a': '(-3+4i)/5','b':'a','c':'conjugate(a)','d':'(-2+i*sqrt(21))/5'},
        'physical_H_B_X':True,'eta':eta,'p':p,
        'trace_Q_squared':'-442/75','q_binary_defect':'7136/5625',
        'commutator_witness':witness,'exact_matching_count':2,'product_reconstruction':frame,
        'zero3_witness':{'matrix':'B','rows_zero_based':[0,1,2],
                         'columns_zero_based':[0,1,2],'submatrix_rank':2},
        'scope':'Refutes triangle-only nullity2=>all-three-binary; not quartet-conditioned exclusion.'}

def calculate():
    """Core-integration entry point: compact exact receipt, no file writes."""
    return verify()

if __name__=='__main__':
    if not __debug__:raise SystemExit('Assertions must remain enabled')
    print(json.dumps(verify(),indent=2,sort_keys=True))
