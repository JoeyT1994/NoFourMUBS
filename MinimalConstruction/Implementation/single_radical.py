"""Global common-unbiased-ray equations using only the shared sheet square root.

No side matrix M, side square root, phase cube root, or full H is constructed.
The sole seed-domain condition is R > 0. A finite, guaranteed selector keeps
five real equations per ray. all_compatibility avoids the selector entirely.
"""
from dataclasses import dataclass
import mpmath as mp
from model import adj3,inner


@dataclass
class MomentSide:
    G: object
    s: object
    t: object
    r: object
    ux: object
    uy: object
    Pi: object
    NX: object
    NY: object
    choices: object
    selected: int

    @property
    def moment(self):
        return self.choices[self.selected]['moment']

    @property
    def mean(self):
        return self.choices[self.selected]['mean']


def moment_side(G,zeta,g):
    s,t,r=G[1,0],G[2,0],G[2,1]
    X,Y,Z=abs(s)**2,abs(t)**2,abs(r)**2
    P=[r*s*s+mp.conj(r)*t*t+(3-Z)*s*t,
       t*mp.conj(s)**2+r*r*mp.conj(t)+(3-Y)*r*mp.conj(s),
       s*mp.conj(t)**2+mp.conj(r)**2*mp.conj(s)+(3-X)*mp.conj(r)*mp.conj(t)]
    lam=[(g+c*mp.conj(zeta))/mp.conj(p)for c,p in zip([9-Z,9-Y,9-X],P)]
    ux=lam[0]*mp.conj(lam[1]);uy=lam[0]*mp.conj(lam[2]);Pi=zeta*lam[0]
    sx2=s*s-2*ux*mp.conj(s);sy2=t*t-2*uy*mp.conj(t);sxy=s*t-Pi
    NX=mp.matrix([[s,3,mp.conj(r)],
                  [sx2,s,s*mp.conj(r)-ux*mp.conj(Pi)],
                  [sxy,t,s]])
    NY=mp.matrix([[t,r,3],[sxy,t,s],
                  [sy2,t*r-uy*mp.conj(Pi),t]])
    choices=[]
    for label,alpha,beta in [('X',1,0),('Y',0,1),('X+Y',1,1),('X+iY',1,mp.j)]:
        mean=alpha*s+beta*t
        second=alpha*alpha*sx2+2*alpha*beta*sxy+beta*beta*sy2
        size=3*(abs(alpha)**2+abs(beta)**2)+alpha*mp.conj(beta)*mp.conj(r)+mp.conj(alpha)*beta*r
        size=mp.re(size)
        gram=mp.matrix([[3,mp.re(mean),mp.im(mean)],
                        [mp.re(mean),(size+mp.re(second))/2,mp.im(second)/2],
                        [mp.im(mean),mp.im(second)/2,(size-mp.re(second))/2]])
        area=mp.re(mp.det(gram))
        choices.append(dict(label=label,alpha=alpha,beta=beta,mean=mean,
                            moment=alpha*NX+beta*NY,gram=gram,area=area))
    selected=max(range(4),key=lambda j:choices[j]['area'])
    return MomentSide(G,s,t,r,ux,uy,Pi,NX,NY,choices,selected)


class SingleRadicalModel:
    def __init__(self,seeds,sheet=1):
        if sheet not in (-1,1):raise ValueError('sheet must be +1 or -1')
        a,b,c,d=seeds;self.seeds=tuple(seeds)
        self.E=E=mp.matrix([[1,1,1],[1,a,b],[1,c,d]])
        self.G=G=6*mp.eye(3)-E*E.H;self.T=T=6*mp.eye(3)-E.H*E
        s,t,r=G[1,0],G[2,0],G[2,1]
        X,Y,Z=abs(s)**2,abs(t)**2,abs(r)**2
        p=X+Y+Z;J=2*mp.re(s*r*mp.conj(t));W=X*Y+X*Z+Y*Z-X*Y*Z
        self.g=g=27-3*p+J;eta=9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J
        self.R=R=4*g*g*eta-chi*chi
        if R<=0:raise ValueError('outside the strict R > 0 domain')
        self.zeta=zeta=(chi+sheet*mp.j*mp.sqrt(R))/(2*g)
        self.JG=adj3(G);self.JT=adj3(T)
        # The second side represents conjugate(S_v), so BOTH use zeta.
        self.h=moment_side(G,zeta,g);self.v=moment_side(T,zeta,g)

    def arguments(self,x,p):
        z=mp.sqrt(6)*p-self.E.H*x;h=mp.sqrt(6)*x-self.E*p
        return z,self.JT*z,self.JG*h

    def compatibility(self,x,p):
        z,av,ah=self.arguments(x,p);g=self.g
        N=mp.re(inner(z,self.JT*z))-3*g
        Cv=inner(av,self.v.moment*av)-g*g*self.v.mean
        Ch=inner(ah,self.h.moment*ah)-g*g*self.h.mean
        return N,Cv,Ch

    def all_compatibility(self,x,p):
        """No chart selection: one real and four (redundant) complex equations."""
        z,av,ah=self.arguments(x,p);g=self.g
        N=mp.re(inner(z,self.JT*z))-3*g
        def forms(side,a):
            return (inner(a,side.NX*a)-g*g*side.s,
                    inner(a,side.NY*a)-g*g*side.t)
        return N,forms(self.v,av),forms(self.h,ah)

    def overlap_numerator(self,x,p,xp,pp):
        z=mp.sqrt(6)*p-self.E.H*x;zp=mp.sqrt(6)*pp-self.E.H*xp
        return self.g*inner(x,xp)+inner(z,self.JT*zp)


def affine_side(G,g,eta,chi):
    """Moment matrices NX0+t*NX1, NY0+t*NY1; t^2=R. No square root."""
    s,t,r=G[1,0],G[2,0],G[2,1]
    X,Y,Z=abs(s)**2,abs(t)**2,abs(r)**2
    P0=r*s*s+mp.conj(r)*t*t+(3-Z)*s*t
    P1=t*mp.conj(s)**2+r*r*mp.conj(t)+(3-Y)*r*mp.conj(s)
    P2=s*mp.conj(t)**2+mp.conj(r)**2*mp.conj(s)+(3-X)*mp.conj(r)*mp.conj(t)
    c0,c1,c2=9-Z,9-Y,9-X
    u0=(g*g+c0*c1*eta+(c0+c1)*chi/2)/(mp.conj(P0)*P1)
    u1=mp.j*(c1-c0)/(2*mp.conj(P0)*P1)
    v0=(g*g+c0*c2*eta+(c0+c2)*chi/2)/(mp.conj(P0)*P2)
    v1=mp.j*(c2-c0)/(2*mp.conj(P0)*P2)
    pi0=(chi/2+c0*eta)/mp.conj(P0);pi1=mp.j/(2*mp.conj(P0))
    up0=(chi/2+c1*eta)/P1;up1=-mp.j/(2*P1)
    vp0=(chi/2+c2*eta)/P2;vp1=-mp.j/(2*P2)
    NX0=mp.matrix([[s,3,mp.conj(r)],
                   [s*s-2*u0*mp.conj(s),s,s*mp.conj(r)-up0],
                   [s*t-pi0,t,s]])
    NX1=mp.matrix([[0,0,0],[-2*u1*mp.conj(s),0,-up1],[-pi1,0,0]])
    NY0=mp.matrix([[t,r,3],[s*t-pi0,t,s],
                   [t*t-2*v0*mp.conj(t),t*r-vp0,t]])
    NY1=mp.matrix([[0,0,0],[-pi1,0,0],[-2*v1*mp.conj(t),-vp1,0]])
    return dict(s=s,t=t,NX0=NX0,NX1=NX1,NY0=NY0,NY1=NY1)


class AffineModel:
    """Rational seed coefficients for all rays, before any seed-dependent root.

    Each real equation is A_i + tau*B_i = 0, with one shared tau satisfying
    tau^2=R. tau>0 is the PDF sheet. No division by a B_i is used.
    """
    def __init__(self,seeds):
        a,b,c,d=seeds;self.seeds=tuple(seeds)
        self.E=E=mp.matrix([[1,1,1],[1,a,b],[1,c,d]])
        self.G=G=6*mp.eye(3)-E*E.H;self.T=T=6*mp.eye(3)-E.H*E
        s,t,r=G[1,0],G[2,0],G[2,1]
        X,Y,Z=abs(s)**2,abs(t)**2,abs(r)**2
        p=X+Y+Z;J=2*mp.re(s*r*mp.conj(t));W=X*Y+X*Z+Y*Z-X*Y*Z
        self.g=g=27-3*p+J;eta=9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J
        self.R=R=4*g*g*eta-chi*chi
        if R<=0:raise ValueError('outside the strict R > 0 domain')
        self.JG=adj3(G);self.JT=adj3(T)
        self.h=affine_side(G,g,eta,chi);self.v=affine_side(T,g,eta,chi)

    def coefficients(self,coordinates,orthogonal=True):
        """Real A,B lists. Coordinates is a list of phase-vector pairs (x,p)."""
        A=[];B=[];zs=[];g=self.g
        for x,p in coordinates:
            z=mp.sqrt(6)*p-self.E.H*x;h=mp.sqrt(6)*x-self.E*p
            zs.append(z);av=self.JT*z;ah=self.JG*h
            A.append(mp.re(inner(z,self.JT*z))-3*g);B.append(mp.mpf(0))
            for side,a in [(self.v,av),(self.h,ah)]:
                for label,mean in [('X',side['s']),('Y',side['t'])]:
                    f0=inner(a,side['N'+label+'0']*a)-g*g*mean
                    f1=inner(a,side['N'+label+'1']*a)
                    A.extend([mp.re(f0),mp.im(f0)]);B.extend([mp.re(f1),mp.im(f1)])
        if orthogonal:
            for i in range(len(coordinates)):
                for j in range(i+1,len(coordinates)):
                    ov=g*inner(coordinates[i][0],coordinates[j][0])+inner(zs[i],self.JT*zs[j])
                    A.extend([mp.re(ov),mp.im(ov)]);B.extend([mp.mpf(0),mp.mpf(0)])
        return mp.matrix(A),mp.matrix(B)

    def root_free_test(self,coordinates,orthogonal=True):
        """Exact criterion: P=0 and W<=0 for the positive sheet, on phase inputs.

        P is a nonnegative rational expression; zero at floating precision is
        not a certificate. P=0 without the sign condition allows either sheet,
        but all rays must use the same sheet.
        """
        A,B=self.coefficients(coordinates,orthogonal)
        U=mp.re(inner(A,A));V=mp.re(inner(B,B));W=mp.re(inner(A,B))
        minors=mp.fsum((A[i]*B[j]-A[j]*B[i])**2
                       for i in range(len(A)) for j in range(i+1,len(A)))
        polynomial=(U-self.R*V)**2+4*self.R*minors
        return dict(P=polynomial,W=W,U=U,V=V)
