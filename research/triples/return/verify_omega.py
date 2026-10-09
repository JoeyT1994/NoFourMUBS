#!/usr/bin/env python3
"""Exact omega-locus and completion certificates. Requires SymPy; no floats.

All acceptance decisions use polynomial identities over Q(i,sqrt(3));
all checks raise exceptions on failure, even under python -O.
"""
from itertools import permutations
import sympy as sp
I=sp.I
h=sp.sqrt(3)
w=(-1+I*h)/2
K=sp.QQ.algebraic_field(I,h)

def need(test,label):
    if not test:
        raise RuntimeError(label)

def red(a):
    return K.to_sympy(K.from_sympy(sp.expand(a)))

def consteq(a,b,label):
    need(red(a-b)==0,label)

def conj(a):
    return sp.conjugate(a)

def matred(A):
    return A.applyfunc(red)

def matneed(A,B,label):
    need(A.shape==B.shape,label+' dimensions')
    for i in range(A.rows):
        for j in range(A.cols):
            consteq(A[i,j],B[i,j],f'{label} [{i},{j}]')

def corner_values(E,star=conj,reduce=red):
    ss=-sum(E[1,j]*star(E[0,j]) for j in range(3))
    tt=-sum(E[2,j]*star(E[0,j]) for j in range(3))
    rr=-sum(E[2,j]*star(E[1,j]) for j in range(3))
    X,Y,Z=[reduce(z*star(z)) for z in (ss,tt,rr)]
    p=reduce(X+Y+Z)
    J=reduce(ss*rr*star(tt)+star(ss*rr*star(tt)))
    g=reduce(27-3*p+J)
    eta=reduce(9-p+J)
    chi=reduce(X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J)
    return g,eta,chi,reduce(4*g*g*eta-chi*chi)

def verify_omega_identity_and_tori():
    x,y=sp.symbols('x y',real=True)
    U=x+I*y
    for z in (w,w*w):
        A=(1+z)*U;B=(1-z)*U
        u=sp.expand(A*conj(A));v=sp.expand(B*conj(B))
        chi=sp.expand((3*u-v)*(v-u+12)/2-A*B**2-conj(A*B**2))
        R=sp.expand(4*(2*v-3*u)**2*(v-2*u)-chi**2)
        need(sp.expand(R-36*(3*x*x*y-y**3)**2)==0,'omega identity')
    p,q=sp.symbols('p q',nonzero=True)
    for z in (w,w*w):
        # Indexed by permutation matching O_j=z E_{perm(j)}.
        branches={
          (0,1,2):(z*q,p,q,z*p),
          (0,2,1):(z*p,p,q,z*q),
          (1,0,2):(z*z,p,z,q),
          (1,2,0):(p,q,z,z*z),
          (2,0,1):(z*z,z,p,q),
          (2,1,0):(p,z,q,z*z),
        }
        need(set(branches)==set(permutations(range(3))),'all six matchings')
        for perm,(a,b,c,d) in branches.items():
            ee=(a*d,b,c);oo=(b*c,d,a)
            for j in range(3):
                need(sp.Poly(sp.expand(oo[j]-z*ee[perm[j]]),p,q,
                    extension=[I,h]).is_zero,'torus matching')
    print('PASS: omega identity and all twelve torus branches')

def verify_fourier_corner_cases():
    F3=sp.Matrix([[w**(j*k) for k in range(3)] for j in range(3)])
    for E in (F3,sp.Matrix([[1,1,1],[1,1,w],[1,1,w*w]])):
        consteq(corner_values(E)[3],0,'all-one-block row case')
    t=sp.symbols('t',nonzero=True)
    star=lambda e:conj(e).subs(conj(t),1/t)
    rr=lambda e:sp.cancel(sp.expand(e),extension=[I,h])
    for z in (w,w*w):
        E=sp.Matrix([[1,1,1],[1,1,z],[1,-1,t]])
        g,eta,chi,R=corner_values(E,star=star,reduce=rr)
        for got,want in zip((g,eta,chi,R),(12,4,-48,0)):
            need(sp.cancel(got-want,extension=[I,h])==0,'duplicate column case')
    print('PASS: exact R=0 for every non-omega Fourier corner type')

def build_and_verify_completion():
    alpha=(-4-3*I)/5
    beta=(3-4*I)/5
    E=matred(sp.Matrix([[1,1,1],[1,w*w,w],[1,I,I]]))
    B=matred(sp.Matrix([[1,1,1],[alpha*w,alpha*w*w,alpha],[alpha,alpha,beta]]))
    Gh=matred(6*sp.eye(3)-E*conj(E.T))
    matneed(B*conj(B.T),Gh,'horizontal side Gram')
    g,eta,chi,R=corner_values(E)
    for got,want in zip((g,eta,chi,R),(6,2,-12,144)):
        consteq(got,want,'original corner invariant')
    z=-1+I
    consteq(z,(chi+12*I)/(2*g),'positive sheet z')
    # Verify B is precisely the positive side recipe, using allowed root choices.
    ss,tt,rr=Gh[1,0],Gh[2,0],Gh[2,1]
    X,Y,Z=[red(v*conj(v)) for v in (ss,tt,rr)]
    ps=(rr*ss**2+conj(rr)*tt**2+(3-Z)*ss*tt,
        tt*conj(ss)**2+rr**2*conj(tt)+(3-Y)*rr*conj(ss),
        ss*conj(tt)**2+conj(rr)**2*conj(ss)+(3-X)*conj(rr)*conj(tt))
    ls=[red(p*(g+c*conj(z))/(p*conj(p))) for p,c in zip(ps,(9-Z,9-Y,9-X))]
    for got,want in zip(ls,((-7-24*I)/25,(4-3*I)/5,(-3-4*I)/5)):
        consteq(got,want,'positive side lambda')
    uu=red(ls[0]*conj(ls[1]));consteq(uu,alpha**3,'horizontal u')
    delta=red(rr*alpha**2/3)
    consteq(delta**2,(g/27)*ls[0]*conj(ls[1])*conj(ls[2]),'delta square')
    gamma=-z*ls[0]/3
    consteq((27/g)*gamma*conj(delta),1,'dF=1, positive orientation')
    ww=alpha**2*w*w
    consteq(ww**3,uu**2,'cube root choice')
    M=sp.Matrix([[1,0,0],[0,uu,0],[tt/3,rr*uu/3,delta*conj(uu)]])
    F3=sp.Matrix([[w**(j*k) for k in range(3)] for j in range(3)])
    matneed(M*sp.diag(1,conj(ww),ww)*F3,B,'positive side reconstruction')
    L=matred(-conj(E.T)*Gh.inv()*B)
    # The three lower rows are evaluated at all roots of this exact cubic.
    x=sp.symbols('x')
    sv=(-1+I*(h-2))/2
    uv=(30-2*h-I*(5+12*h))/37
    consteq(uv*conj(uv),1,'unit cubic product')
    consteq(sv*conj(sv),2-h,'trace norm')
    disc=red((sv*conj(sv))**2+18*sv*conj(sv)
             -4*(sv**3/uv+conj(sv)**3/conj(uv))-27)
    consteq(disc,-(412+234*h)/37,'negative normalized cubic discriminant')
    # h=sqrt(3)>0, so disc<0 exactly. The self-inversive cubic therefore
    # has three distinct unit roots (proof in OMEGA_COMPLETION.md).
    P=sp.Poly(x**3-sv*x*x+uv*conj(sv)*x-uv,x,extension=[I,h])
    poly=lambda a:sp.Poly(a,x,extension=[I,h])
    rem=lambda a:sp.rem(poly(a),P)
    m=(3-h-I*(3+h))/6
    qq=I*conj(m)
    consteq(m*conj(m),sp.Rational(2,3),'Mobius disk parameter')
    den=poly(x+qq)
    invden=sp.invert(den,P)
    need(rem((den*invden).as_expr()-1).is_zero,'exact denominator inverse')
    y=rem(((m*x+I)*invden.as_expr()))
    ix=rem((x*x-sv*x+uv*conj(sv))/uv)
    need(rem(x*ix.as_expr()-1).is_zero,'unit-root inverse')
    def star(v):
        v=poly(v)
        return rem(sum(conj(v.nth(j))*ix.as_expr()**j for j in range(v.degree()+1)))
    def prod(a,b):
        return rem(poly(a).as_expr()*poly(b).as_expr())
    def trace(v):
        v=rem(poly(v).as_expr())
        return red(3*v.nth(0)+sv*v.nth(1)
                   +(sv**2-2*uv*conj(sv))*v.nth(2))
    cp=[poly(1),poly(x),y]
    dp=[rem(sum(cp[k].as_expr()*L[k,j] for k in range(3))) for j in range(3)]
    lower=cp+dp
    top=E.row_join(B)
    for i in range(3):
        for j in range(6):
            consteq(top[i,j]*conj(top[i,j]),1,'top entry modulus')
    for j,v in enumerate(lower):
        need(rem(prod(v,star(v)).as_expr()-1).is_zero,f'lower entry modulus {j}')
    for i in range(6):
        for j in range(6):
            val=sum(conj(top[k,i])*top[k,j] for k in range(3))
            val+=trace(prod(star(lower[i]),lower[j]))
            consteq(val,6 if i==j else 0,f'full Hadamard column Gram [{i},{j}]')
    # Both strict corners and both off-locus gaps are checked as field equalities.
    eo=top[:,[0,1,3]]
    ro=corner_values(eo)[3]
    consteq(ro,(104256+29952*h)/625,'off-omega strict R')
    a,b,c,d=eo[1,1],eo[1,2],eo[2,1],eo[2,2]
    ee=a*d+b+c;oo=b*c+d+a
    gaps=[red((oo-zz*ee)*conj(oo-zz*ee)) for zz in (w,w*w)]
    consteq(gaps[0],(36-18*h)/5,'first positive off-locus gap')
    consteq(gaps[1],(12+6*h)/5,'second positive off-locus gap')
    # sqrt(3)<2 because 3<4: both gaps and ro are strictly positive.
    ee0=E[1,1]*E[2,2]+E[1,2]+E[2,1]
    oo0=E[1,2]*E[2,1]+E[2,2]+E[1,1]
    consteq(oo0,w*ee0,'original omega relation')
    print('PASS: standalone exact Hadamard completion in a cubic extension')
    print('PASS: its original corner is omega/strict, another corner is strict/off-omega')
    print('PASS: positive-sheet horizontal constructor gives this same top strip')
    return {'E':E,'B':B,'L':L,'P':P,'m':m,'y':y,'R_off':ro,'gaps':gaps}

def main():
    verify_omega_identity_and_tori()
    verify_fourier_corner_cases()
    build_and_verify_completion()
    print('ALL OMEGA CERTIFICATES PASSED')

if __name__=='__main__':
    main()
