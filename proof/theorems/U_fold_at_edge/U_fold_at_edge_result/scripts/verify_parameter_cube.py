#!/usr/bin/env python3
"""Exact parameter-dependent contraction at F6, standard library only.

Requires verify_fold_f6.py and verify_fold_bounds.py on the import path.
Parameters p=(delta theta1,delta theta2,delta theta3,y) lie in [-1/20,1/20]^4.
Unknown x=(delta theta4, six horizontal-side angle increments) satisfies
gamma(phi)-Gamma_h(theta)=0, Im(Psi(phi))/24+y/48=0.
We certify a unique solution x=L p+v with ||v||inf<=1/100.
"""
from fractions import Fraction as F
from itertools import combinations_with_replacement
from math import factorial
from verify_fold_f6 import R,C,I,QP,perms,parity
from verify_fold_bounds import inverse,multiply,realpart,real_bound,complex_bound

N=11
BASE=(4,3,4,5,0,2,4,1,2,2,0)
DEN=4800

def unit(j):return tuple(int(k==j) for k in range(N))
def add_term(p,m,c):p[m]=p.get(m,C(0))+C(c)
def insert_side(m):return (0,*m,0,0,0,0)
def shifted_real(poly,imag=False):
    return {m:c*QP[sum(a*b for a,b in zip(m,BASE))%6]
            for m,c in realpart(poly,imag).items()}

def equations():
    complex_rows=[]
    for k in range(3):
        p={(0,)*N:C(1)}
        for j in range(3):
            if k==0:m=unit(1+j)
            elif k==1:m=unit(4+j)
            else:m=tuple(a-b for a,b in zip(unit(4+j),unit(1+j)))
            add_term(p,m,1)
        if k==0:extras=[unit(7),unit(8)]
        elif k==1:extras=[unit(9),unit(0)]
        else:extras=[tuple(a-b for a,b in zip(unit(9),unit(7))),
                     tuple(a-b for a,b in zip(unit(0),unit(8)))]
        for m in extras:add_term(p,m,1)
        complex_rows.append(p)
    outputs=[]
    for p in complex_rows:outputs.extend([shifted_real(p),shifted_real(p,True)])
    P={};D={}
    for perm in perms:
        m=[0]*6;m[perm[1]]=1;m[3+perm[2]]=1;m=tuple(m)
        P[m]=1;D[m]=parity(perm)
    psi={insert_side(tuple(t-1 for t in m)):C(c)
         for m,c in multiply(multiply(D,D),P).items()}
    outputs.append({m:c/24 for m,c in shifted_real(psi,True).items()})
    return outputs

def derivative_at_zero(p,inds):
    val=C(0)
    for m,c in p.items():
        scale=1
        for j in inds:scale*=m[j]
        if scale:val=val+c*scale
    val=val*(I**len(inds))
    assert val.im==0
    return val.re

def absolute_taylor_term(p,degree,dimensions,den=DEN):
    result=F(0)
    for inds in combinations_with_replacement(range(dimensions),degree):
        divisor=1
        for j in set(inds):divisor*=factorial(inds.count(j))
        result+=real_bound(derivative_at_zero(p,inds))/(divisor*den**degree)
    return result

def main():
    outputs=equations()
    assert all(sum(p.values(),C(0))==0 for p in outputs)
    J=[[derivative_at_zero(p,(j,)) for j in range(N)] for p in outputs]
    J[6][10]+=R(F(1,48))
    A0=[row[:7] for row in J];M=inverse(A0)
    assert all(sum(M[i][k]*A0[k][j] for k in range(7))==R(i==j)
               for i in range(7) for j in range(7))
    L=[[-sum(M[i][k]*J[k][7+j] for k in range(7)) for j in range(4)] for i in range(7)]
    assert all(z.b==0 and (48*z.a).denominator==1 for row in L for z in row)
    lint=[[int(48*z.a) for z in row] for row in L]
    assert lint==[[0,0,0,0],[24,-12,12,1],[24,12,-12,-1],
                  [24,36,12,1],[0,0,48,0],[0,0,0,0],[0,0,48,0]]
    freq=set(m for p in outputs for m in p)
    pre=[]
    for i in range(7):
        p={m:sum(C(M[i][j])*outputs[j].get(m,C(0)) for j in range(7)) for m in freq}
        pre.append({m:c for m,c in p.items() if c!=0})
    # x=L p+v, |p_j|<=1/20, |v_j|<=1/100. These transformed
    # integer frequencies are divided by DEN=4800. Preconditioned outputs
    # are also divided by the correction radius, i.e. multiplied by 100.
    trans=[]
    for p in pre:
        transformed={}
        for m,c in p.items():
            mm=tuple(48*m[j] for j in range(7))+tuple(
                240*m[7+j]+5*sum(m[k]*lint[k][j] for k in range(7)) for j in range(4))
            add_term(transformed,mm,100*c)
        trans.append({m:c for m,c in transformed.items() if c!=0})
    b=[];qs=[];param_qs=[]
    for i,p in enumerate(trans):
        pp={}
        for m,c in p.items():add_term(pp,m[7:],c)
        pp={m:c for m,c in pp.items() if c!=0}
        # Constant and linear terms cancel by F(0,0)=0 and L=-A0^-1 F_p.
        bi=absolute_taylor_term(pp,2,4)+absolute_taylor_term(pp,3,4)
        bi+=sum(complex_bound(c)*sum(abs(z) for z in m)**4 for m,c in pp.items())/(24*DEN**4)
        b.append(bi)
        # Matrix infinity norm of preconditioned derivative variation.
        qi=F(0);pi=F(0)
        for j in range(N):
            dp={m:c*I*m[j] for m,c in p.items() if m[j]}
            v=absolute_taylor_term(dp,1,N)/DEN
            v+=absolute_taylor_term(dp,2,N)/DEN
            v+=sum(complex_bound(c)*sum(abs(z) for z in m)**3 for m,c in dp.items())/(6*DEN**4)
            if j<7:qi+=v
            else:pi+=v
        qs.append(qi)
        param_qs.append(pi)
        print('row',i,'residual bound',bi,'Jacobian variation bound',qi,'parameter derivative bound',pi,flush=True)
    assert max(b)<F(2,5)
    assert max(qs)<F(2,5)
    assert max(a+c for a,c in zip(b,qs))<F(4,5)
    assert max(param_qs)<F(11,10)
    mu=max(sum(real_bound(z) for z in row) for row in M)
    assert mu==F(40597,16000)
    assert mu/(1-F(2,5))<F(17,4)
    # Global (unpreconditioned) joint Hessian estimate on all phase variables.
    # y occurs linearly and contributes no second derivative.
    h=max(sum(complex_bound(c)*sum(abs(z) for z in m)**2 for m,c in p.items()) for p in outputs)
    jnorm=max(sum(complex_bound(c)*sum(abs(z) for z in m[:7]) for m,c in p.items()) for p in outputs)
    assert jnorm==F(3533,400)<9
    print('PASS parameter cube ||p||inf<=1/20 and correction cube ||v||inf<=1/100')
    print('PASS residual max < 2/5, contraction max < 2/5, self-map margin > 1/5')
    print('PASS A0 inverse norm <=',mu)
    print('PASS normalized residual derivative in the normalized parameters <11/10')
    print('Joint raw Hessian bound',h)
    print('PASS ||J_x||inf <=',jnorm,'<9')
    print('Predictor L rows:')
    for row in L:print(row)
    print('CONSEQUENCE unique smooth coupled solution, ||J_x^-1||inf <17/4')
    # The normalized correction derivative is <(11/10)/(3/5)=11/6.
    # Returning to original coordinates multiplies by (1/100)/(1/20)=1/5.
    # ||L||inf=73/48, so ||x'||inf <73/48+11/30=151/80<2.
    assert max(sum(abs(z.a) for z in row) for row in L)==F(73,48)
    assert F(73,48)+F(11,30)==F(151,80)<2
    print('CONSEQUENCE ||D_p x||inf <151/80<2')
    print('CONSEQUENCE ||D_p^2 x||inf <=',17*h,'<784')
    assert 17*h==F(783071,1000)<784
    delta=F(73,48)*F(1,20)+F(1,100)
    assert delta==F(413,4800)
    assert F(707,500)**2<2 and F(49,20)**2>6
    side_lower=F(207,500)-F(49,20)*delta
    assert side_lower==F(19507,96000)>F(1,5)
    print('CONSEQUENCE side smallest singular value >',side_lower,'>1/5; ||B^-1||2<5')
    print('Horizontal/vertical seed agreement additionally uses verify_R_monotone_box.py')

if __name__=='__main__':main()
