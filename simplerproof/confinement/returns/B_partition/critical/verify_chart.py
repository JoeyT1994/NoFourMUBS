#!/usr/bin/env python3
"""Exact symbolic identities used in CHART_REGULARITY.md.

Requires sympy. Every acceptance is an exact zero identity. No sampled
matrix, floating-point tolerance, or numerical branch choice is used.
"""
import sympy as S


def zero(x):
    assert S.cancel(S.expand(x)) == 0


def main():
    X,Y,Z,J = S.symbols('X Y Z J')
    p = X+Y+Z
    g = 27-3*p+J
    eta = 9-p+J
    chi = X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
    normP = Z*(X-Y)**2+(3-Z)**2*X*Y+J**2+(3-Z)*(X+Y)*J
    zero(normP-(g*g+(9-Z)*chi+(9-Z)**2*eta))

    # Both sides of a dephased unit corner have the same p, J, chi.
    a,b,c,d = S.symbols('a b c d')
    invsubs = {a:1/a,b:1/b,c:1/c,d:1/d}
    def bar(x):
        return x.subs(invsubs, simultaneous=True)
    E = S.Matrix([[1,1,1],[1,a,b],[1,c,d]])
    Eb = E.applyfunc(bar)
    def invariants(G):
        ss,tt,rr = G[1,0],G[2,0],G[2,1]
        xx,yy,zz = [S.expand(v*bar(v)) for v in (ss,tt,rr)]
        pp = S.expand(xx+yy+zz)
        jj = S.expand(ss*rr*bar(tt)+bar(ss)*bar(rr)*tt)
        cc = S.expand(xx*yy+xx*zz+yy*zz-xx*yy*zz
                      -(pp-9)*(pp-18)+(pp-15)*jj)
        return pp,jj,cc
    invh = invariants(6*S.eye(3)-E*Eb.T)
    invv = invariants((6*S.eye(3)-Eb.T*E).T)
    for x,y in zip(invh,invv):
        zero(x-y)

    # Flatness forces the quadratic equation for rho.
    mu,mub,u,q,qb,rho = S.symbols('mu mub u q qb rho', nonzero=True)
    alpha = mu**2-u*mub
    alphab = mub**2-mu/u
    nn = 1-mu*mub
    zero(alpha*mub+alphab*u+nn*mu)
    expr = mu*(rho**2+alpha*alphab)+rho*(alpha*mub+alphab*u)
    zero(expr-mu*(rho**2-nn*rho+alpha*alphab))

    # Norm sigma identity modulo rho^2-n rho+|alpha|^2=0.
    mm,aa = S.symbols('mm aa')
    sig2 = 1+mm*aa/rho**2+(mm**2-mm-aa)/rho
    zero((sig2-rho)*rho**2
         -(mm-rho)*(rho**2-(1-mm)*rho+aa))

    # The identity needed to identify the other root with a reflection.
    sigma = u+mu*q
    sigmab = 1/u+mub*qb
    flat = mu*(1+q*qb)+q*mub+qb*u
    flatb = mub*(1+q*qb)+qb*mu+q/u
    sigmap = u+mu/qb
    zero(sigmap*qb-q*q*sigmab-(flat-q*flatb))

    # Treat sigma*conj(sigma)=rho, n=rho(1+|q|^2) exactly.
    sig,k,delta,nu = S.symbols('sig k delta nu', nonzero=True)
    sigb = rho/sig
    n = rho*(1+q*qb)
    cp,cm = (k-delta*qb)/n,(k*q+delta)/n
    M = S.Matrix([[1,0,0],[mu,sig,q*sigb],
                  [nu,cp*sig,cm*sigb]])
    zero(M.det()-delta)
    qp,qpb = 1/qb,1/q
    sp,spb = q*q*sigb/qb,qb*qb*sig/q
    cpp,cmp = (k+delta*qpb)/n,(k*qp-delta)/n
    Mp = S.Matrix([[1,0,0],[mu,sp,qp*spb],
                   [nu,cpp*sp,cmp*spb]])
    Jm = S.Matrix([[1,0,0],[0,0,1],[0,1,0]])
    A = q/qb
    for v in Mp-M*Jm*S.diag(1,A,1/A):
        zero(v)
    xiprime = sp**2/(rho*q*qb)
    xi = sig**2/rho
    zero(xiprime-A**3/xi)
    w = S.symbols('w', nonzero=True)
    wp = A/w
    Ph,Php = S.diag(1,1/w,w),S.diag(1,1/wp,wp)
    for v in Mp*Php-M*Ph*Jm:
        zero(v)

    # Reversing the two nonconstant Fourier modes permutes columns.
    z = S.symbols('z')
    F = S.Matrix([[1,1,1],[1,z,z**2],[1,z**2,z]])
    for v in Jm*F-F*Jm:
        zero(v)
    print('CHART ALGEBRA EXACT PASS')


if __name__ == '__main__':
    main()
