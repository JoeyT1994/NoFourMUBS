"""Current PDF reconstruction and a cube-root-free compatibility representation.

This module evaluates explicit formulas. Its floating-point domain check is
not an exact certificate. No extra seed guard is imposed beyond R > 0.
All vectors and Hadamards use raw phase entries; U = H/sqrt(6).
"""
from dataclasses import dataclass
import mpmath as mp


def adj3(A):
    return mp.matrix([
        [(-1)**(i+j)*mp.det(mp.matrix([[A[r,c] for c in range(3) if c != i]
                                     for r in range(3) if r != j]))
         for j in range(3)] for i in range(3)])


def norm2(v):
    return mp.re((v.H*v)[0])


def inner(v,w):
    return (v.H*w)[0]


def conjugate(A):
    return A.apply(mp.conj)


@dataclass
class Side:
    M: object
    xi: object


def side(G,z,g):
    s,t,r=G[1,0],G[2,0],G[2,1]
    X,Y,Z=abs(s)**2,abs(t)**2,abs(r)**2
    P=[r*s*s+mp.conj(r)*t*t+(3-Z)*s*t,
       t*mp.conj(s)**2+r*r*mp.conj(t)+(3-Y)*r*mp.conj(s),
       s*mp.conj(t)**2+mp.conj(r)**2*mp.conj(s)+(3-X)*mp.conj(r)*mp.conj(t)]
    cs=[9-Z,9-Y,9-X]
    lam=[P[j]*(g+cs[j]*mp.conj(z))/abs(P[j])**2 for j in range(3)]
    u=lam[0]*mp.conj(lam[1]);mu=s/3;nu=t/3;n=1-abs(mu)**2
    k=r/3-nu*mp.conj(mu);alpha=mu*mu-u*mp.conj(mu)
    gamma=2*mu*nu-z*lam[0]/3
    delta=mp.sqrt(g/27*lam[0]*mp.conj(lam[1])*mp.conj(lam[2]))
    dF=27/g*(n*gamma-2*alpha*k)*mp.conj(delta)
    if mp.re(dF)<0:delta=-delta;dF=-dF
    # Taking the real part evaluates an analytically real expression.
    rho=(n+mp.re(dF))/2;q=alpha/rho
    cp=(k-delta*mp.conj(q))/n;cm=(k*q+delta)/n
    sigma=u+mu*q;xi=sigma*sigma/rho
    M=mp.matrix([[1,0,0],[mu,sigma,q*mp.conj(sigma)],
                 [nu,cp*sigma,cm*mp.conj(sigma)]])
    return Side(M,xi)


class Model:
    def __init__(self,seeds,sheet=1):
        if sheet not in (-1,1):raise ValueError('sheet must be +1 or -1')
        a,b,c,d=seeds
        self.seeds=tuple(seeds)
        self.E=E=mp.matrix([[1,1,1],[1,a,b],[1,c,d]])
        self.Gh=Gh=6*mp.eye(3)-E*E.H
        self.T=T=6*mp.eye(3)-E.H*E
        Gv=T.T
        s,t,r=Gh[1,0],Gh[2,0],Gh[2,1]
        X,Y,Z=abs(s)**2,abs(t)**2,abs(r)**2
        p=X+Y+Z;J=2*mp.re(s*r*mp.conj(t));W=X*Y+X*Z+Y*Z-X*Y*Z
        self.g=g=27-3*p+J
        eta=9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J
        self.R=R=4*g*g*eta-chi*chi
        if R<=0:raise ValueError('outside the strict R > 0 domain')
        z=(chi+sheet*mp.j*mp.sqrt(R))/(2*g)
        self.h=side(Gh,z,g);self.v=side(Gv,mp.conj(z),g)
        self.JT=adj3(T);self.Jh=adj3(Gh)
        self.Av=adj3(conjugate(self.v.M));self.Ah=adj3(self.h.M)

    def coefficients(self,x,p):
        """Unscaled z and division-free Fourier numerators r,t."""
        z=mp.sqrt(6)*p-self.E.H*x
        h=mp.sqrt(6)*x-self.E*p
        return z,self.Av*z,self.Ah*h

    def compatibility(self,x,p):
        """One real and two complex equations; x,p must have phase entries."""
        z,r,t=self.coefficients(x,p)
        N=mp.re(inner(z,self.JT*z))-3*self.g
        Cv=self.v.xi*(r[0]*mp.conj(r[1])+r[2]*mp.conj(r[0]))+r[1]*mp.conj(r[2])
        Ch=t[0]*mp.conj(t[1])+t[2]*mp.conj(t[0])+self.h.xi*t[1]*mp.conj(t[2])
        return N,Cv,Ch

    def overlap_numerator(self,x,p,xp,pp):
        z=mp.sqrt(6)*p-self.E.H*x
        zp=mp.sqrt(6)*pp-self.E.H*xp
        return self.g*inner(x,xp)+inner(z,self.JT*zp)

    def root_data(self,branch_h=0,branch_v=0):
        omega=mp.exp(2*mp.pi*mp.j/3)
        F=mp.matrix([[omega**(j*k) for k in range(3)] for j in range(3)])
        wh=mp.exp(mp.j*mp.arg(self.h.xi)/3)*omega**branch_h
        wv=mp.exp(mp.j*mp.arg(self.v.xi)/3)*omega**branch_v
        Ph=mp.diag([1,mp.conj(wh),wh]);Pv=mp.diag([1,mp.conj(wv),wv])
        return F,Ph,Pv

    def reconstruct_ray(self,x,p,branch_h=0,branch_v=0):
        """Returns raw input v and raw output H†v/sqrt(6)."""
        z,r,t=self.coefficients(x,p)
        F,Ph,Pv=self.root_data(branch_h,branch_v)
        y=F*Pv*r/(3*mp.conj(mp.det(self.v.M)))
        q=F.H*Ph.H*t/(3*mp.det(self.h.M))
        return mp.matrix(list(x)+list(y)),mp.matrix(list(p)+list(q))

    def hadamard(self,branch_h=0,branch_v=0):
        F,Ph,Pv=self.root_data(branch_h,branch_v)
        B=self.h.M*Ph*F;C=F*Pv*self.v.M.T
        D=-C*self.E.H*self.Jh*B/self.g
        return mp.matrix([[self.E[i,j] if i<3 and j<3 else
                           B[i,j-3] if i<3 else
                           C[i-3,j] if j<3 else D[i-3,j-3]
                           for j in range(6)]for i in range(6)])
