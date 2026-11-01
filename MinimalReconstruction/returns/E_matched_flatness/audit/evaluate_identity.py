"""Independent exact evaluations of the proposed L-id and moment coefficients.
The pair ring stores f(a,b,c,d) and f(a^-1,b^-1,c^-1,d^-1); its
involution swaps the entries. Thus rational points need not be unit seeds.
"""
import sys
if not __debug__:
    raise RuntimeError('Exact verification requires assertions; do not use python -O')
from fractions import Fraction as Q
from itertools import permutations
import json

class F:
    __slots__ = ('v','w')
    def __init__(self,v=0,w=None):
        if isinstance(v,F): self.v,self.w=v.v,v.w
        else: self.v=Q(v);self.w=Q(v if w is None else w)
    def __add__(a,b):
        b=F(b);return F(a.v+b.v,a.w+b.w)
    __radd__=__add__
    def __neg__(a): return F(-a.v,-a.w)
    def __sub__(a,b): return a+-F(b)
    def __rsub__(a,b): return F(b)+-a
    def __mul__(a,b):
        b=F(b);return F(a.v*b.v,a.w*b.w)
    __rmul__=__mul__
    def __truediv__(a,b):
        b=F(b);return F(a.v/b.v,a.w/b.w)
    def __rtruediv__(a,b): return F(b)/a
    def __pow__(a,n): return F(a.v**n,a.w**n)
    def star(a): return F(a.w,a.v)
    def __eq__(a,b):
        b=F(b);return a.v==b.v and a.w==b.w
    def __repr__(a):return str(a.v)+'|'+str(a.w)

def tr(A):return list(map(list,zip(*A)))
def adj(A):return [[v.star() for v in row] for row in tr(A)]
def mul(A,B):return [[sum(a*b for a,b in zip(row,col)) for col in tr(B)] for row in A]
def trace(A):return sum(row[i] for i,row in enumerate(A))
def inv3(A):
    det=sum((-1)**sum(p[i]>p[j] for i in range(3) for j in range(i+1,3))*A[0][p[0]]*A[1][p[1]]*A[2][p[2]] for p in permutations(range(3)))
    ans=[]
    for i in range(3):
        ans.append([])
        for j in range(3):
            rows=[r for r in range(3) if r!=j];cols=[c for c in range(3) if c!=i]
            ans[-1].append((-1)**(i+j)*(A[rows[0]][cols[0]]*A[rows[1]][cols[1]]-A[rows[0]][cols[1]]*A[rows[1]][cols[0]])/det)
    assert mul(A,ans)==[[F(i==j) for j in range(3)] for i in range(3)]
    return ans,det
PAIRS=[(0,0),(0,1),(0,2),(1,1),(1,2),(2,2)]
EXP=[(0,0),(1,0),(0,1),(2,0),(1,1),(0,2)]
def side(G):
    s,t,r=G[1][0],G[2][0],G[2][1]
    S,T,Q_=s.star(),t.star(),r.star()
    X,Y,Z=s*S,t*T,r*Q_;p=X+Y+Z;J=s*r*T+S*Q_*t
    g=27-3*p+J;eta=9-p+J;chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J;h=chi/g
    P=[r*s*s+Q_*t*t+(3-Z)*s*t,t*S*S+r*r*T+(3-Y)*r*S,s*T*T+Q_*Q_*S+(3-X)*Q_*T]
    c=[9-Z,9-Y,9-X]
    def ratio(i,j):
        den=P[j]*P[i].star()
        return ((g*g+c[i]*chi+c[i]*c[j]*eta)/den,g*(c[j]-c[i])/den)
    u=ratio(0,1);v=ratio(0,2);uv=ratio(2,1)
    pi=(c[0]*eta/P[0].star(),g/P[0].star())
    m={(0,0):(F(3),F(0)),(1,0):(s,F(0)),(0,1):(t,F(0)),(1,-1):(Q_,F(0)),
       (2,0):(s*s-2*S*u[0],-2*S*u[1]),(0,2):(t*t-2*T*v[0],-2*T*v[1]),
       (1,1):(s*t-pi[0],-pi[1]),(2,-1):(s*Q_-(chi+c[1]*eta)/P[1],g/P[1]),
       (-1,2):(t*r-(chi+c[2]*eta)/P[2],g/P[2]),(2,-2):(Q_*Q_-2*r*uv[0],-2*r*uv[1])}
    m.update({(-i,-j):(v0.star()+v1.star()*h,-v1.star()) for (i,j),(v0,v1) in list(m.items())})
    ans=[[[m[(p[0]-q[0],p[1]-q[1])][k] for q in EXP] for p in EXP] for k in (0,1)]
    return ans,(g,eta,chi),P

def evaluate(values):
    a,b,c,d=[F(Q(x),1/Q(x)) for x in values]
    E=[[F(1)]*3,[F(1),a,b],[F(1),c,d]]
    def gram(A):return [[6*(i==j)-v for j,v in enumerate(row)] for i,row in enumerate(mul(A,adj(A)))]
    Gh=gram(E);Gv=gram(tr(E))
    Th,invh,Ph=side(Gh);Tv,invv,Pv=side(Gv)
    assert invh==invv
    inverse,det=inv3(Gh);g,eta,chi=invh;h=chi/g
    assert g==det
    K=[[-v for v in row] for row in mul(adj(E),inverse)]
    L=[[sum(K[a][c]*K[b][d] for a,b in set((rp,rp[::-1])) for c,d in set((cp,cp[::-1]))) for cp in PAIRS] for rp in PAIRS]
    A=[[trace(mul(mul(mul(tr(Tv[i]),L),Th[j]),adj(L))) for j in range(2)] for i in range(2)]
    residual=[A[0][0]+h*A[1][0]+eta*A[1][1]-9,A[0][1]-A[1][0]]
    assert residual==[F(0),F(0)], 'Proposed L-id failed at an exact audit specialization'
    return {'seed':list(map(str,values)),'g':str(g.v),'eta':str(eta.v),'chi':str(chi.v),'R':str((4*g*g*eta-chi*chi).v),'Ph':list(map(lambda x:str(x.v),Ph)),'Pv':list(map(lambda x:str(x.v),Pv)),'A':[[str(v.v) for v in row] for row in A],'residual_constant_linear':list(map(lambda x:str(x.v),residual))}

if __name__=='__main__':
    print(json.dumps([evaluate(p) for p in [(2,3,5,7),(2,3,4,5),(1,-1,2,3)]],indent=2))
