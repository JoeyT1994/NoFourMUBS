"""Independent exact replay of supplied strict matched anchor.
Arithmetic is Q(i,sqrt(3),sqrt(5),sqrt(7)) with a fixed monomial basis.
"""
import sys
if not __debug__:
    raise RuntimeError('Exact verification requires assertions; do not use python -O')
from fractions import Fraction as Q
from itertools import permutations
from pathlib import Path
import ast,json,math,time
import evaluate_identity as ei

RAD=(-1,3,5,7)
class F:
    __slots__=('c',)
    def __init__(self,x=0):
        if isinstance(x,F):self.c=x.c
        elif isinstance(x,dict):self.c={k:Q(v) for k,v in x.items() if v}
        else:self.c={} if not x else {0:Q(x)}
    def __add__(a,b):
        b=F(b);c=dict(a.c)
        for k,v in b.c.items():c[k]=c.get(k,Q(0))+v
        return F(c)
    __radd__=__add__
    def __neg__(a):return F({k:-v for k,v in a.c.items()})
    def __sub__(a,b):return a+-F(b)
    def __rsub__(a,b):return F(b)+-a
    def __mul__(a,b):
        b=F(b);c={}
        for k,v in a.c.items():
            for l,w in b.c.items():
                val=v*w
                for i,d in enumerate(RAD):
                    if k&l&(1<<i):val*=d
                m=k^l;c[m]=c.get(m,Q(0))+val
        return F(c)
    __rmul__=__mul__
    def inverse(a):
        assert a.c,'Division by zero'
        highest=max(a.c).bit_length()-1
        if highest<0:return F(1/a.c[0])
        bit=1<<highest
        ac=F({k:(-v if k&bit else v) for k,v in a.c.items()})
        den=a*ac
        assert all(k<bit for k in den.c)
        return ac*den.inverse()
    def __truediv__(a,b):return a*F(b).inverse()
    def __rtruediv__(a,b):return F(b)*a.inverse()
    def __pow__(a,n):
        if n<0:return a.inverse()**(-n)
        r=F(1)
        while n:
            if n&1:r=r*a
            a=a*a;n>>=1
        return r
    def star(a):return F({k:(-v if k&1 else v) for k,v in a.c.items()})
    def __eq__(a,b):return a.c==F(b).c
    def __bool__(a):return bool(a.c)
    def __repr__(a):return json.dumps({str(k):str(v) for k,v in sorted(a.c.items())})
    def record(a):return {str(k):str(v) for k,v in sorted(a.c.items())}

def sqrt(n):
    assert n>=0
    if n==0:return F(0)
    factors=0;scale=1;remaining=n
    for i,p in enumerate(RAD):
        if p<0:continue
        count=0
        while remaining%p==0:remaining//=p;count+=1
        scale*=p**(count//2)
        if count%2:factors|=1<<i
    sr=math.isqrt(remaining)
    assert sr*sr==remaining,n
    return F({factors:scale*sr})

def parse(s):
    def walk(n):
        if isinstance(n,ast.Constant) and isinstance(n.value,int):return F(n.value)
        if isinstance(n,ast.Name) and n.id=='I':return F({1:1})
        if isinstance(n,ast.UnaryOp) and isinstance(n.op,ast.USub):return -walk(n.operand)
        if isinstance(n,ast.BinOp):
            a,b=walk(n.left),walk(n.right)
            if isinstance(n.op,ast.Add):return a+b
            if isinstance(n.op,ast.Sub):return a-b
            if isinstance(n.op,ast.Mult):return a*b
            if isinstance(n.op,ast.Div):return a/b
        if isinstance(n,ast.Call) and isinstance(n.func,ast.Name) and n.func.id=='sqrt' and len(n.args)==1 and isinstance(n.args[0],ast.Constant):return sqrt(n.args[0].value)
        raise ValueError(ast.dump(n))
    return walk(ast.parse(s,mode='eval').body)

def det(A):return sum((-1)**sum(p[i]>p[j] for i in range(3) for j in range(i+1,3))*A[0][p[0]]*A[1][p[1]]*A[2][p[2]] for p in permutations(range(3)))
def perm(A):return sum(A[0][p[0]]*A[1][p[1]]*A[2][p[2]] for p in permutations(range(3)))
def product(vs):
    r=F(1)
    for v in vs:r=r*v
    return r

def signature(A):return -perm(A)*det(A)**2*product(x.star() for row in A for x in row)
def moment_from_side(A):
    sq=[[A[a][j]*A[b][j] for j in range(3)] for a,b in ei.PAIRS]
    return ei.mul(sq,ei.adj(sq))
def run():
    started=time.perf_counter();ei.F=F
    root=Path(__file__).resolve().parent
    H=[[parse(s) for s in row] for row in json.loads((root/'base_anchor_H0.json').read_text())]
    assert all(v*v.star()==1 for row in H for v in row)
    assert ei.mul(H,ei.adj(H))==[[F(6*(i==j)) for j in range(6)] for i in range(6)]
    assert H[0]==[F(1)]*6 and all(row[0]==1 for row in H)
    E=[r[:3] for r in H[:3]];B=[r[3:] for r in H[:3]];C=[r[:3] for r in H[3:]];D=[r[3:] for r in H[3:]]
    def gram(A):return [[F(6*(i==j))-v for j,v in enumerate(row)] for i,row in enumerate(ei.mul(A,ei.adj(A)))]
    Gh,Gv=gram(E),gram(ei.tr(E))
    Th,invh,Ph=ei.side(Gh);Tv,invv,Pv=ei.side(Gv)
    assert invh==invv;g,eta,chi=invh
    R=4*g*g*eta-chi*chi
    assert set(R.c)=={0} and R.c[0]>0
    zh=signature(B)/g;zv=signature(C)/g
    assert zv==zh.star()
    assert zh+zv==chi/g and zh*zv==eta
    assert (2*g*zh-chi)**2==-R
    # The prescribed positive signature has positive imaginary coefficient.
    assert all(k&1 for k in (2*g*zh-chi).c)
    assert all(v>0 for v in (2*g*zh-chi).c.values())
    assert ei.mul(B,ei.adj(B))==Gh and ei.mul(ei.tr(C),ei.adj(ei.tr(C)))==Gv
    inv,detg=ei.inv3(Gh);assert detg==g
    K=[[-v for v in row] for row in ei.mul(ei.adj(E),inv)]
    assert ei.mul(ei.mul(C,K),B)==D
    mH=[[Th[0][i][j]+zh*Th[1][i][j] for j in range(6)] for i in range(6)]
    mV=[[Tv[0][i][j]+zv*Tv[1][i][j] for j in range(6)] for i in range(6)]
    assert mH==moment_from_side(B) and mV==moment_from_side(ei.tr(C))
    L=[[sum(K[a][c]*K[b][d] for a,b in set((rp,rp[::-1])) for c,d in set((cp,cp[::-1]))) for cp in ei.PAIRS] for rp in ei.PAIRS]
    fourth=ei.trace(ei.mul(ei.mul(ei.mul(ei.tr(mV),L),mH),ei.adj(L)))
    assert fourth==9
    A=[[ei.trace(ei.mul(ei.mul(ei.mul(ei.tr(Tv[i]),L),Th[j]),ei.adj(L))) for j in range(2)] for i in range(2)]
    assert A[0][1]==A[1][0]
    assert A[0][0]+chi/g*A[1][0]+eta*A[1][1]==9
    pairing_residuals=[]
    for zhh in (zh,zv):
        row=[]
        for zvv in (zh,zv):
            r=A[0][0]+zhh*A[0][1]+zvv*A[1][0]+zhh*zvv*A[1][1]-9
            row.append(r)
        pairing_residuals.append(row)
    assert pairing_residuals==[[F(Q(216,49)),F(0)],[F(0),F(Q(216,49))]]
    return {'status':'PASS_EXACT_ANCHOR','field_basis':'i^b0 sqrt(3)^b1 sqrt(5)^b2 sqrt(7)^b3, index b0+2b1+4b2+8b3','g':g.record(),'eta':eta.record(),'chi':chi.record(),'R':R.record(),'horizontal_theta':zh.record(),'vertical_theta':zv.record(),'fourth_moment':fourth.record(),'pairing_residuals_plus_minus':[[v.record() for v in r] for r in pairing_residuals],'A':[[v.record() for v in r] for r in A],'wall_seconds':time.perf_counter()-started,'checks':['36 unit entries','36 row Gram entries','dephasing','both side Grams','conjugate signatures with positive horizontal sign','forced D','both rational moment matrices against actual sides','fourth moment contraction','both L-id coefficients at the anchor']}
if __name__=='__main__':print(json.dumps(run(),indent=2))
