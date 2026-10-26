#!/usr/bin/env python3
"""Exact F6 fold certificates; Python standard library only.
Fields are Q(sqrt(3)) and Q(sqrt(3),i). No floating-point evidence is used.
"""
from fractions import Fraction as F
from itertools import permutations, combinations
from collections import Counter

class R:
    __slots__=('a','b')
    def __init__(self,a=0,b=0):
        if isinstance(a,R): self.a,self.b=a.a,a.b
        else:self.a,self.b=F(a),F(b)
    def __add__(self,o):
        o=R(o);return R(self.a+o.a,self.b+o.b)
    __radd__=__add__
    def __neg__(self):return R(-self.a,-self.b)
    def __sub__(self,o):return self+-R(o)
    def __rsub__(self,o):return R(o)+-self
    def __mul__(self,o):
        o=R(o);return R(self.a*o.a+3*self.b*o.b,self.a*o.b+self.b*o.a)
    __rmul__=__mul__
    def __truediv__(self,o):
        o=R(o);d=o.a*o.a-3*o.b*o.b
        assert d;return self*R(o.a/d,-o.b/d)
    def __rtruediv__(self,o):return R(o)/self
    def __pow__(self,n):
        assert isinstance(n,int) and n>=0
        z=R(1)
        for _ in range(n):z=z*self
        return z
    def __eq__(self,o):
        try:o=R(o)
        except (ValueError,TypeError):return False
        return self.a==o.a and self.b==o.b
    def __bool__(self):return bool(self.a or self.b)
    def __repr__(self):return str(self.a) if not self.b else f'({self.a}+{self.b}*sqrt(3))'
    def key(self):return (self.a,self.b)

class C:
    __slots__=('re','im')
    def __init__(self,re=0,im=0):
        if isinstance(re,C):self.re,self.im=re.re,re.im
        else:self.re,self.im=R(re),R(im)
    def __add__(self,o):
        o=C(o);return C(self.re+o.re,self.im+o.im)
    __radd__=__add__
    def __neg__(self):return C(-self.re,-self.im)
    def __sub__(self,o):return self+-C(o)
    def __rsub__(self,o):return C(o)+-self
    def __mul__(self,o):
        o=C(o);return C(self.re*o.re-self.im*o.im,self.re*o.im+self.im*o.re)
    __rmul__=__mul__
    def bar(self):return C(self.re,-self.im)
    def norm2(self):return self.re*self.re+self.im*self.im
    def __truediv__(self,o):
        o=C(o);z=self*o.bar();d=o.norm2();return C(z.re/d,z.im/d)
    def __rtruediv__(self,o):return C(o)/self
    def __pow__(self,n):
        if n<0:return (C(1)/self)**(-n)
        z=C(1)
        for _ in range(n):z=z*self
        return z
    def __eq__(self,o):
        o=C(o);return self.re==o.re and self.im==o.im
    def __repr__(self):return f'({self.re})+i*({self.im})'

I=C(0,1);sq=R(0,1);q=C(F(1,2),R(0,F(1,2)))
QP=[q**k for k in range(6)]
perms=list(permutations(range(3)))
def parity(p):return (-1)**sum(p[i]>p[j] for i in range(3) for j in range(i+1,3))
def prod(xs):
    z=1
    for x in xs:z=z*x
    return z

def det3(M):return sum(parity(p)*prod(M[j][p[j]] for j in range(3)) for p in perms)
def perm3(M):return sum(prod(M[j][p[j]] for j in range(3)) for p in perms)
def det(A):
    A=[row[:] for row in A];n=len(A);z=R(1)
    for j in range(n):
        p=next((k for k in range(j,n) if A[k][j]),None)
        if p is None:return R(0)
        if p!=j:A[j],A[p]=A[p],A[j];z=-z
        t=A[j][j];z=z*t
        for k in range(j+1,n):
            f=A[k][j]/t
            for c in range(j+1,n):A[k][c]=A[k][c]-f*A[j][c]
    return z

def rank(A):
    A=[row[:] for row in A];r=0
    for j in range(len(A[0])):
        p=next((k for k in range(r,len(A)) if A[k][j]),None)
        if p is None:continue
        A[r],A[p]=A[p],A[r];t=A[r][j]
        for k in range(r+1,len(A)):
            f=A[k][j]/t
            for c in range(j+1,len(A[0])):A[k][c]=A[k][c]-f*A[r][c]
            A[k][j]=R(0)
        r+=1
    return r

def gram(B):
    x,y=B[1],B[2]
    return (sum(x),sum(y),sum(x[j].bar()*y[j] for j in range(3)))
def invs(s,t,r):
    X,Y,Z=s.norm2(),t.norm2(),r.norm2();p=X+Y+Z;J=2*(s*r*t.bar()).re
    W=X*Y+X*Z+Y*Z-X*Y*Z;g=27-3*p+J;e=9-p+J;c=W-(p-9)*(p-18)+(p-15)*J
    return g,e,c,4*g*g*e-c*c

def directional_R(s,t,r,ds,dt,dr):
    X,Y,Z=s.norm2(),t.norm2(),r.norm2();p=X+Y+Z;J=2*(s*r*t.bar()).re
    dX,dY,dZ=2*(s.bar()*ds).re,2*(t.bar()*dt).re,2*(r.bar()*dr).re
    dp=dX+dY+dZ;dJ=2*(ds*r*t.bar()+s*dr*t.bar()+s*r*dt.bar()).re
    dW=(Y+Z-Y*Z)*dX+(X+Z-X*Z)*dY+(X+Y-X*Y)*dZ
    dg=-3*dp+dJ;de=-dp+dJ;dc=dW+(27-2*p+J)*dp+(p-15)*dJ
    g,e,c,_=invs(s,t,r)
    return 8*g*e*dg+4*g*g*de-2*c*dc

def ambient_R_grad(s,t,r):
    ans=[]
    for k in range(6):
        v=[C(0),C(0),C(0)];v[k//2]=C(1) if k%2==0 else I
        ans.append(directional_R(s,t,r,*v))
    return ans

def seed_R_grad(E):
    a,b=E[1][1:];c,d=E[2][1:]
    s=-(1+a+b);t=-(1+c+d);r=-(1+c*a.bar()+d*b.bar())
    ds=[-I*a,-I*b,C(0),C(0)]
    dt=[C(0),C(0),-I*c,-I*d]
    dr=[I*c*a.bar(),I*d*b.bar(),-I*c*a.bar(),-I*d*b.bar()]
    return [directional_R(s,t,r,*v) for v in zip(ds,dt,dr)]

def jac(B):
    A=[[R(0) for _ in range(6)] for _ in range(6)];x,y=B[1:]
    for j in range(3):
        for k,v in enumerate([I*x[j],C(0),-I*x[j].bar()*y[j]]):A[2*k][j],A[2*k+1][j]=v.re,v.im
        for k,v in enumerate([C(0),I*y[j],I*x[j].bar()*y[j]]):A[2*k][3+j],A[2*k+1][3+j]=v.re,v.im
    return A

def psi_grad(B):
    h=det3(B);p=perm3(B);m=prod(x for row in B for x in row);ans=[]
    for k in range(6):
        row=1+k//3;col=k%3
        dh=I*B[row][col]*sum(parity(perm)*prod(B[j][perm[j]] for j in range(3) if j!=row) for perm in perms if perm[row]==col)
        dp=I*B[row][col]*sum(prod(B[j][perm[j]] for j in range(3) if j!=row) for perm in perms if perm[row]==col)
        ans.append(((dp*h*h+2*p*h*dh-I*p*h*h)/m).im)
    return (p*h*h/m),ans

def frame(rows,cols):
    rs=list(rows)+[i for i in range(6) if i not in rows];cs=list(cols)+[j for j in range(6) if j not in cols]
    return [[QP[((i-rs[0])*(j-cs[0]))%6] for j in cs] for i in rs]

def main():
    H=frame((0,1,2),(0,1,2));E=[r[:3] for r in H[:3]];B=[r[3:] for r in H[:3]]
    s,t,r=gram(B);A=jac(B);psi,dS=psi_grad(B);k=[-1,1,-1,0,0,0]
    assert invs(s,t,r)==(R(3),R(1),R(6),R(0))
    assert psi==C(-3)
    assert rank(A)==5 and all(sum(a*b for a,b in zip(row,k))==0 for row in A)
    assert sum(a*b for a,b in zip(dS,k))==24
    amb=ambient_R_grad(s,t,r);sg=seed_R_grad(E)
    assert amb==[R(576),576*sq,R(-576),576*sq,R(576),576*sq]
    assert sg==[R(0),R(0),R(0),1152*sq]
    assert det(A[:5]+[dS])==18*sq
    witness=[[C(1)]*3,[C(1),q*q,q*q],[q*q,C(1),q*q]]
    pw,_=psi_grad(witness)
    assert det(jac(witness))==pw.im/4
    print('PASS canonical F6: rank(Dgamma)=5; kernel=(-1,1,-1,0,0,0)')
    print('PASS d(ImPsi)(kernel)=24; determinant augmented by ImPsi=18 sqrt(3)')
    print('side Jacobian rows:',A)
    print('d(ImPsi)=',dS)
    print('ambient gradient R=',amb,'; seed gradient R=',sg)
    print('PASS sign convention det(Dgamma)=ImPsi/4 at exact nonsingular witness')
    # Full 20 x 20 Fourier framing census.
    count=Counter();folds=0
    for rows in combinations(range(6),3):
        for cols in combinations(range(6),3):
            H=frame(rows,cols);E=[r[:3] for r in H[:3]];B=[r[3:] for r in H[:3]]
            g,e,c,rv=invs(*gram(B));sg=seed_R_grad(E);norm2=sum(z*z for z in sg)
            assert rv==0
            count[(g.key(),norm2.key())]+=1
            if norm2:
                A=jac(B);psi,dS=psi_grad(B);amb=ambient_R_grad(*gram(B))
                assert rank(A)==5 and psi.im==0
                assert any(det(A[:j]+[dS]+A[j+1:]) for j in range(6))
                for j in range(6):assert det(A[:j]+[dS]+A[j+1:])==amb[j]/32
                folds+=1
    print('PASS all 400 corners: R=0 exactly')
    print('census (g, squared seed-gradient norm, count):')
    for (g,n),num in sorted(count.items()):print(g,n,num)
    assert folds==36
    print('PASS exactly 36 regular seed corners; every one has a Whitney fold side')

if __name__=='__main__':main()
