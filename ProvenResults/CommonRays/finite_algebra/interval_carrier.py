"""Local directed quadratic/cubic reconstruction on exact rational seed boxes."""
from fractions import Fraction
from itertools import combinations
import numpy as np
from flint import arb,acb,acb_mat,ctx
ctx.prec=128

def middle(z):return complex(float(z.real.mid()),float(z.imag.mid()))
def exact(q):q=Fraction(q);return arb(q.numerator)/q.denominator
def poly(coeff,z):
    ans=acb(0)
    for c in reversed(coeff):ans=ans*z+c
    return ans
def convolution(a,b):
    out=[acb(0) for _ in range(len(a)+len(b)-1)]
    for i,x in enumerate(a):
        for j,y in enumerate(b):out[i+j]+=x*y
    return out

def side_coeff(E):
    a,b=E[1][1:];c,d=E[2][1:]
    s=-(1+a+b);t=-(1+c+d);r=-(1+c/a+d/b)
    sb,tb,rb=s.conjugate(),t.conjugate(),r.conjugate();delta=r*rb-t*tb
    A=[acb(0),2*s*delta,(-s*sb-3)*delta,2*sb*delta]
    B=[-rb**2*t+rb*s*t*tb-3*rb*s-s**2*tb,
       r*rb**2-r*rb*s*tb+rb**2*sb*t-rb*s*sb*t*tb+3*rb*s*sb-rb*t*tb+s**2*sb*tb+s*t*tb**2,
       -r*rb**2*sb+r*rb*s*sb*tb+r*rb*tb-r*s*tb**2-rb*s*sb**2+rb*sb*t*tb-3*s*sb*tb-t*tb**2,
       -r*rb*sb*tb+r*tb**2+rb*sb**2+3*sb*tb]
    aa=convolution(A,[v.conjugate() for v in A[::-1]]);bb=convolution(B,[v.conjugate() for v in B[::-1]])
    co=[x-y for x,y in zip(aa,bb)]
    assert not co[6].contains(0) and not delta.contains(0),'side guard unresolved'
    U=-co[3]/((1+s*sb)*co[6]);V=co[0]/co[6]
    return s,t,r,A,B,co[6],delta,U,V

def isolate_scalar(coeff,center,start_power=44):
    center=acb(center);derivative=[i*coeff[i] for i in range(1,len(coeff))]
    yc=1/middle(poly(derivative,center));Y=acb(yc)
    for power in range(start_power,5,-2):
        rad=arb(2)**(-power);delta=acb(arb(0,rad),arb(0,rad));X=center+delta
        C=1-Y*poly(derivative,X)
        K=center-Y*poly(coeff,center)+C*delta
        contraction=abs(C.real)+abs(C.imag)
        if X.real.contains_interior(K.real) and X.imag.contains_interior(K.imag) and contraction<1:
            return X,{'radius_power':power,'contraction_upper':str(contraction.upper())}
    raise ValueError('scalar Krawczyk unresolved')

def block(data,product):
    s,t,r,A,B,c6,delta,U,V=data
    coeff=[-product,product*s.conjugate(),-s,acb(1)]
    roots=np.roots([middle(c) for c in coeff[::-1]]);roots=roots[np.argsort(np.angle(roots))]
    xs=[];receipts=[]
    for root in roots:
        x,receipt=isolate_scalar(coeff,root);xs.append(x);receipts.append(receipt)
    for x,y in combinations(xs,2):assert not (x-y).contains(0),'cubic collision unresolved'
    den=[poly(B,x) for x in xs];assert all(not z.contains(0) for z in den),'companion guard unresolved'
    ys=[-poly(A,x)/d for x,d in zip(xs,den)]
    return acb_mat([[acb(1)]*3,xs,ys]),receipts

def adjoint(M):return M.transpose().conjugate()

def reconstruct_box(turns,sheet,half_power):
    rad=arb(2)**(-half_power)
    phases=[acb(0,2*arb.pi()*(exact(t)+arb(0,rad))).exp() for t in turns]
    a,b,c,d=phases;E=[[acb(1)]*3,[acb(1),a,b],[acb(1),c,d]]
    h=side_coeff(E);v=side_coeff(list(map(list,zip(*E))))
    s,t,r=h[:3];xx=(s*s.conjugate()).real;yy=(t*t.conjugate()).real;zz=(r*r.conjugate()).real
    p=xx+yy+zz;q=xx*yy+xx*zz+yy*zz-xx*yy*zz;j=2*(s*r*t.conjugate()).real
    D=27-3*p+j;AA=q+(p-15)*j-p*p+27*p-162;om=AA**2-4*(j-p+9)*D**2
    assert om<0,'Omega sign unresolved'
    U,V=h[-2:];products=np.roots([1,-middle(U),middle(V)]);products=products[np.argsort(np.angle(products))]
    isolated=[isolate_scalar([V,-U,acb(1)],u) for u in products]
    assert not (isolated[0][0]-isolated[1][0]).contains(0),'product roots not separated'
    u=isolated[sheet][0]
    m=(v[-2]-v[6]*h[5]/(h[6]*v[5])*(2*u-U))/2
    B,br=block(h,u);Ct,cr=block(v,m);C=Ct.transpose();Em=acb_mat(E)
    assert not Em.det().contains(0) and not B.det().contains(0) and not C.det().contains(0),'determinant guard unresolved'
    lower=-C*adjoint(Em)*adjoint(B).inv()
    H=[[Em[i,j] if i<3 and j<3 else B[i,j-3] if i<3 else C[i-3,j] if j<3 else lower[i-3,j-3]
        for j in range(6)] for i in range(6)]
    minimum=None;checked=0
    for k in range(1,7):
        for rows in combinations(range(6),k):
            for cols in combinations(range(6),k):
                det=acb_mat([[H[i][j] for j in cols] for i in rows]).det()
                if det.contains(0):raise ValueError('full-spark guard unresolved')
                bound=abs(det).lower();minimum=bound if minimum is None or bound<minimum else minimum;checked+=1
    assert checked==923
    receipt={'turns':[[Fraction(t).numerator,Fraction(t).denominator] for t in turns],
      'sheet':sheet,'half_turn_power':half_power,'omega_upper':str(om.upper()),
      'product_isolations':[r for _,r in isolated],'horizontal_roots':br,'vertical_roots':cr,
      'full_spark_minors':checked,'minimum_full_spark_minor':str(minimum),
      'maximum_entry_rectangle_radius':max(float(max(z.real.rad(),z.imag.rad())) for row in H for z in row)}
    return H,receipt

if __name__=='__main__':
    H,r=reconstruct_box([Fraction(95,252),Fraction(-11,28),Fraction(-79,252),Fraction(49,1024)],1,36)
    print(r)
