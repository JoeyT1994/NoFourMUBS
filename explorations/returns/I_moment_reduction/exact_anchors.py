"""Exact anchors in Q(i,omega), with omega^2+omega+1=0.
All matrix entries are powers of the primitive twelfth root -i*omega.
Both definitions of S are evaluated independently.
"""
from itertools import combinations,permutations
from fractions import Fraction as F
from dataclasses import dataclass

@dataclass(frozen=True)
class Z:
    # Q(i, omega), omega^2+omega+1=0. Basis (1,omega,i,i*omega).
    t: tuple
    def __add__(self,o):
        if isinstance(o,(int,F)):o=Z((o,0,0,0))
        return Z(tuple(a+b for a,b in zip(self.t,o.t)))
    __radd__=__add__
    def __neg__(self):return Z(tuple(-a for a in self.t))
    def __sub__(self,o):return self+-o
    def __mul__(self,o):
        if isinstance(o,(int,F)):return Z(tuple(a*o for a in self.t))
        out=[0]*4
        for a,x in enumerate(self.t):
            for b,y in enumerate(o.t):
                ip=a//2+b//2;wp=a%2+b%2;v=x*y*((-1)**(ip//2));base=(ip%2)*2
                if wp==2:out[base]-=v;out[base+1]-=v
                else:out[base+wp]+=v
        return Z(tuple(out))
    __rmul__=__mul__
    def __truediv__(self,n):return Z(tuple(F(a,n)for a in self.t))
    def __pow__(self,n):
        if n<0:raise ValueError('negative powers not used')
        p=ONE
        for _ in range(n):p=p*self
        return p
    def conj(self):
        a,b,c,d=self.t
        return Z((a-b,-b,-c+d,d))
    def real(self):return (self+self.conj())/2
    def norm2(self):return self*self.conj()
    def rational(self):
        if any(self.t[1:]):raise ValueError(f'not rational {self.t}')
        return F(self.t[0])
    def json(self):return [str(x)for x in self.t]
ZERO=Z((0,0,0,0));ONE=Z((1,0,0,0));I=Z((0,0,1,0));W=Z((0,1,0,0));ROOT=-I*W
ROOTS=[ROOT**k for k in range(12)]
P3=list(permutations(range(3)));T3=list(combinations(range(6),3));OT=list(permutations(range(6),3));FULL=set(range(6))
SIG=[(-1)**sum(p[i]>p[j]for i in range(3)for j in range(i+1,3))for p in P3]

def transpose(H):return [list(x)for x in zip(*H)]

def matrices():
    F6=[[2*r*c%12 for c in range(6)]for r in range(6)]
    tao=[[0,0,0,0,0,0],[0,0,4,4,8,8],[0,4,0,8,8,4],[0,4,8,0,4,8],[0,8,8,4,0,4],[0,8,4,8,4,0]]
    d6=[[0,0,0,0,0,0],[0,6,3,9,9,3],[0,3,6,3,9,9],[0,9,3,6,3,9],[0,9,9,3,6,3],[0,3,9,9,3,6]]
    shifts=(0,1,2)
    family=[[(4*(r%3)*(c%3)+(shifts[r%3]if c>=3 else 0)+(6 if r>=3 and c>=3 else 0))%12 for c in range(6)]for r in range(6)]
    return {'F6':F6,'Tao':tao,'D6':d6,'Fourier_family':family,'Fourier_family_transpose':transpose(family)}

def block_values(H,rows,cols):
    exps=[sum(H[rows[i]][cols[p[i]]]for i in range(3))%12 for p in P3]
    pm=sum((ROOTS[e]for e in exps),ZERO);dt=sum((sg*ROOTS[e]for sg,e in zip(SIG,exps)),ZERO)
    pe=sum(H[r][c]for r in rows for c in cols)%12
    psi=pm*dt**2*ROOTS[-pe%12]
    sb=sum((ROOTS[(pe-3*e)%12]for e in exps),ZERO)/6
    return psi,dt.norm2(),sb

def moment(H,rows):
    comp=FULL-set(rows)
    return sum((ROOTS[(sum(H[r][j]for r in rows)-sum(H[r][j]for r in comp))%12]for j in range(6)),ZERO)/6

def evaluate(H):
    # Independent exact row and column Gram checks.
    for K in (H,transpose(H)):
        for r in range(6):
            for s in range(6):
                v=sum((ROOTS[(K[r][j]-K[s][j])%12]for j in range(6)),ZERO)
                if v!=(6*ONE if r==s else ZERO):raise AssertionError('not a Hadamard')
    B={(R,C):block_values(H,R,C)for R in T3 for C in T3}
    D=U=ap=g2=gp=ZERO
    Sf=ZERO
    for (R,C),(p,g,sb)in B.items():
        Rc=tuple(sorted(FULL-set(R)));Cc=tuple(sorted(FULL-set(C)))
        q=B[Rc,Cc][0]
        D+=(p-q.conj()).norm2();U+=(p-q).norm2();Sf+=sb
        ap+=p.real();g2+=g*g;gp+=g*p.real()
    D=D/400;U=U/400;Sf=Sf/400;ap=ap/400;g2=g2/400;gp=gp/400
    So=ZERO
    histogram=[0]*12
    for r in OT:
        for c in OT:
            exp=sum(H[r[i]][c[j]]for i in range(3)for j in range(3)if i!=j)-2*sum(H[r[i]][c[i]]for i in range(3))
            So+=ROOTS[exp%12]
            histogram[exp%12]+=1
    So=So/14400
    if So!=Sf:raise AssertionError('ordered-triple and matching S disagree')
    mo=[moment(K,R)for K in (H,transpose(H))for R in T3]
    RR=So.real()+F(41,10)*ONE-ap*F(5,54)-g2*F(1,36)+gp*F(1,162)
    lhs=D+(So.real()*30-3*ONE)**2
    traces=[]
    for power in (2,3):
        value=ZERO
        for r in range(6):
            for ss in range(6):
                gram=sum((ROOTS[(power*(H[r][j]-H[ss][j]))%12] for j in range(6)),ZERO)
                value+=gram.norm2()
        traces.append(value)
    return {'S_ordered_exponent_histogram_mod_12':histogram,'T2':traces[0].json(),'T3':traces[1].json(),'D':D.json(),'U':U.json(),'S':So.json(),'R_residual':RR.json(),'sos_lhs':lhs.json(),'mean_real_Psi':ap.json(),'mean_g2':g2.json(),'mean_g_real_Psi':gp.json(),'row_column_moments':[z.json()for z in mo]}

