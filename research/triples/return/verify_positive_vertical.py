#!/usr/bin/env python3
"""Identify the standalone cubic completion with the exact positive sheet.

Exact arithmetic in Q(i,sqrt(3),sqrt(37))[W]/(W^3-xi), no numerical choices.
"""
import sympy as sp
from sympy.polys.rings import ring

def main():
    K=sp.QQ.algebraic_field(sp.I,sp.sqrt(3),sp.sqrt(37))
    one=K.one;zero=K.zero
    cv=K.from_sympy
    ii=cv(sp.I);hh=cv(sp.sqrt(3));kk=cv(sp.sqrt(37))
    theta_bar=cv(sp.conjugate(K.ext.as_expr()))
    def star(v):
        # Exact conjugation as a field automorphism, evaluated by Horner.
        v=K.convert(v);out=zero
        for c in v.to_list():
            out=out*theta_bar+K.convert(c)
        return out
    def need(test,label):
        if not test:
            raise RuntimeError(label)
    def eq(a,b,label):
        need(K.convert(a)==K.convert(b),label)
    ww=(-one+ii*hh)/2
    E=[[one,one,one],[one,ww*ww,ww],[one,ii,ii]]
    G=[[6*(one if i==j else zero)-sum((E[k][i]*star(E[k][j]) for k in range(3)),zero)
        for j in range(3)] for i in range(3)]
    ss,tt,rr=G[1][0],G[2][0],G[2][1]
    X,Y,Z=[a*star(a) for a in (ss,tt,rr)]
    g=6*one;z=-one-ii
    ps=(rr*ss**2+star(rr)*tt**2+(3-Z)*ss*tt,
        tt*star(ss)**2+rr**2*star(tt)+(3-Y)*rr*star(ss),
        ss*star(tt)**2+star(rr)**2*star(ss)+(3-X)*star(rr)*star(tt))
    ls=[p*(g+c*star(z))/(p*star(p)) for p,c in zip(ps,(9-Z,9-Y,9-X))]
    for j,v in enumerate(ls):
        eq(v*star(v),one,f'lambda {j} is a phase')
    uu=ls[0]*star(ls[1]);mu=ss/3;nu=tt/3
    n=one-mu*star(mu);k=rr/3-nu*star(mu)
    alpha=mu**2-uu*star(mu);gamma=2*mu*nu-z*ls[0]/3
    delta=-(5-7*ii)/(3*kk)
    eq(delta**2,(g/27)*ls[0]*star(ls[1])*star(ls[2]),'vertical delta square')
    dF=(27*one/g)*(n*gamma-2*alpha*k)*star(delta)
    eq(dF,(27+13*hh)/(9*kk),'strictly positive vertical dF')
    eq(n,(7+hh)/9,'strictly positive vertical n')
    rho=(n+dF)/2
    q=alpha/rho;cplus=(k-delta*star(q))/n;cminus=(k*q+delta)/n
    sigma=uu+mu*q;xi=sigma*sigma/rho
    eq(xi*star(xi),one,'vertical xi is a phase')
    RR,W=ring('W',K)
    modulus=W**3-xi
    def rem(v):
        return RR(v)%modulus
    invW=W*W/xi
    sv=(-one+ii*(hh-2))/2
    uv=(30-2*hh-ii*(5+12*hh))/37
    mm=(3-hh-ii*(3+hh))/6
    roots=[]
    for j in range(3):
        xp=rem(mu+sigma*invW*ww**j+q*star(sigma)*W*ww**(2*j))
        yp=rem(nu+cplus*sigma*invW*ww**j+cminus*star(sigma)*W*ww**(2*j))
        need(rem(xp**3-sv*xp**2+uv*star(sv)*xp-uv)==RR.zero,
             f'vertical x {j} satisfies prescribed cubic')
        need(rem(yp*(xp+ii*star(mm))-(mm*xp+ii))==RR.zero,
             f'vertical y {j} is prescribed Mobius value')
        roots.append(xp)
    need(rem(sum(roots,RR.zero)-sv)==RR.zero,'cubic root sum')
    need(rem(roots[0]*roots[1]+roots[0]*roots[2]+roots[1]*roots[2]
             -uv*star(sv))==RR.zero,'cubic root second coefficient')
    need(rem(roots[0]*roots[1]*roots[2]-uv)==RR.zero,'cubic root product')
    print('PASS: prescribed cubic C equals S(Gv,conjugate(z_plus))^T up to row permutation')
    print('PASS: every orientation and cube-root condition is exact, with positive dF')

if __name__=='__main__':
    main()
