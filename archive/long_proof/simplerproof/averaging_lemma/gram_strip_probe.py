"""Numerical exploration of the complete strip sum in four Gram invariants.

This file proposes inequalities; it does not certify any exclusion.
"""
from pathlib import Path
import sys,itertools,json
import numpy as np
HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE.parents[1]/'MinimalConstruction/Proofs'))
from critical_moment_core import newton_moments,squared_corner_moment_coefficients

CO=None
def parameters(X,Y,Z,J):
    p=X+Y+Z;W=X*Y+X*Z+Y*Z-X*Y*Z
    out=[]
    for sign in [1,-1]:
        g=27-3*p+sign*J;eta=9-p+sign*J
        chi=W-(p-9)*(p-18)+(p-15)*sign*J
        out.append((g,eta,chi,4*g*g*eta-chi*chi))
    return out

def side(s,t,r,h):
    S,T,Q=np.conj(s),np.conj(t),np.conj(r)
    X,Y,Z=abs(s)**2,abs(t)**2,abs(r)**2;p=X+Y+Z
    J=2*(s*r*T).real;W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3*p+J;eta=9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J
    P=[r*s*s+Q*t*t+(3-Z)*s*t,t*S*S+r*r*T+(3-Y)*r*S,s*T*T+Q*Q*S+(3-X)*Q*T]
    k=[9-Z,9-Y,9-X]
    def F(i,j):return 2*g*g+2*k[i]*k[j]*eta+(k[i]+k[j])*chi+1j*(k[j]-k[i])*h
    u=F(0,1)/(2*np.conj(P[0])*P[1]);v=F(0,2)/(2*np.conj(P[0])*P[2]);w=F(2,1)/(2*np.conj(P[2])*P[1])
    pi=(chi+2*k[0]*eta+1j*h)/(2*np.conj(P[0]));up=(chi+2*k[1]*eta-1j*h)/(2*P[1]);vp=(chi+2*k[2]*eta-1j*h)/(2*P[2])
    return newton_moments(s,S,t,T,r,Q,u,v,w,np.conj(u),np.conj(v),np.conj(w),pi,np.conj(pi),up,vp,np.conj(up),np.conj(vp))

def sums(X,Y,Z,J):
    global CO
    if CO is None:CO={k:float(c) for k,c in squared_corner_moment_coefficients().items()}
    R=[v[-1] for v in parameters(X,Y,Z,J)]
    if min(X,Y,4*X*Y*Z-J*J)<-1e-7 or min(R)<-1e-7:return None
    if X*Y<=1e-20:return None
    s,t=np.sqrt(X),np.sqrt(Y);r=(J+1j*np.sqrt(max(0,4*X*Y*Z-J*J)))/(2*s*t)
    sides=[[side(sg*s,sg*t,sg*r,sh*np.sqrt(max(0,R[j]))) for sh in [1,-1]] for j,sg in enumerate([1,-1])]
    values=[]
    for a,b in itertools.product(range(2),repeat=2):
        moments={k:sides[0][a][k]+sides[1][b][k] for k in sides[0][a]}
        total=sum(c*np.prod([moments[k] for k in key]) for key,c in CO.items())
        if abs(total.imag)>1e-5 or not np.isfinite(total):return None
        values.append(float(total.real))
    return values

def from_scalar(p,J,m,K,sign=-1):
    """Solve Rplus=m before evaluating. Returns necessary scalar slacks."""
    t=9-p;g=3*t+J;eta=t+J;rad=4*g*g*eta-m
    if rad<0:return None
    chi=sign*np.sqrt(rad);W=chi+(p-9)*(p-18)-(p-15)*J
    e2=W+K
    disc=p*p*e2*e2-4*e2**3-4*p**3*K-27*K*K+18*p*e2*K
    cm=chi-2*(p-15)*J;rm=4*(3*t-J)**2*(t-J)-cm*cm
    slacks=[t-abs(J),K,e2,disc,4*K-J*J,rm,m-rm]
    if min(slacks)<-1e-7:return dict(slacks=slacks)
    roots=np.roots([1,-p,e2,-K])
    if max(abs(roots.imag))>1e-5:return dict(slacks=slacks)
    X,Y,Z=sorted(roots.real,reverse=True)
    if Z<-1e-7:return dict(slacks=slacks)
    values=sums(X,Y,Z,J)
    return dict(slacks=slacks,XYZ=[X,Y,Z],R=[m,rm],strip_sums=values)

if __name__=='__main__':
    from strip_average import primitive
    rows=json.loads((HERE/'unresolved_admissible_probe_seeds.json').read_text())['rows'][:6]
    for row in rows:
        path=row['path'];theta=np.pi*np.array([2*int(path[j::4],2)+1-64 for j in range(4)])/64
        s,t,r,X,Y,Z,g,eta,chi,R=primitive(*np.exp(1j*theta));X,Y,Z=[float(np.real(x)) for x in [X,Y,Z]]
        J=float((2*s*r*np.conj(t)).real)
        print(path,sums(X,Y,Z,J),flush=True)
