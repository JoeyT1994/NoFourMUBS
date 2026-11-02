"""Pure-strong Taylor certificates for conditional radial bootstrap.

Arb acceptance path; floats choose flattenings only.  Requires the handoff's
witness module on sys.path. Inputs q,y (36x1), Ks (36xm), Bs (m x66).
"""
import math
import numpy as np
from flint import arb, arb_mat
import witness as W
from scalar import point


def build(q,y,Ks,Bs):
    m=Ks.ncols(); feats=[];rc=[];rs=[]
    for j,(a,b) in enumerate(W.PAIRS):
        for s in range(6):
            feats.append([Ks[6*s+b,k]-Ks[6*s+a,k] for k in range(m)])
            phi=y[6*s+b,0]-y[6*s+a,0];cc=[arb(0)]*66;ss=[arb(0)]*66
            cc[j],cc[15+j],ss[j],ss[15+j]=phi.cos(),phi.sin(),-phi.sin(),phi.cos()
            rc.append(cc);rs.append(ss)
    for b in range(6):
        for s,t in W.PAIRS:
            feats.append([Ks[6*s+b,k]-Ks[6*t+b,k] for k in range(m)])
            cc=[arb(0)]*66;ss=[arb(0)]*66
            for a in range(6):
                phi=-q[6*s+a,0]+y[6*s+b,0]+q[6*t+a,0]-y[6*t+b,0]
                cc[30+6*a+b]=phi.cos()/3;ss[30+6*a+b]=-phi.sin()/3
            rc.append(cc);rs.append(ss)
    A=arb_mat(feats);Craw=arb_mat(rc).transpose();Sraw=arb_mat(rs).transpose()
    C=Bs*Craw;S=Bs*Sraw;K=A*A.transpose();F0,JH,JK=point(q,y)
    power={0:arb_mat([[arb(1) for j in range(180)] for i in range(180)])}
    def kp(n):
        if n not in power: power[n]=arb_mat([[K[i,j]**n for j in range(180)] for i in range(180)])
        return power[n]
    fA=W.Z.mid_np(A);fK=fA@fA.T
    fV=[W.Z.mid_np(C),W.Z.mid_np(S)];coef={};details={}
    for n in range(2,9):
        V=[C,S,-C,-S][n%4];v=fV[n%2]
        out=np.linalg.norm(v@(fK**n)@v.T,2)
        inp=np.linalg.norm(fA.T@((v.T@v)*(fK**(n-1)))@fA,2)
        if out<=inp:
            gram=V*kp(n)*V.transpose();kind='output'
        else:
            vt=V.transpose()*V;p=kp(n-1)
            mid=arb_mat([[vt[i,j]*p[i,j] for j in range(180)] for i in range(180)])
            gram=A.transpose()*mid*A;kind='input'
        h=W.up(W.spectral(gram).sqrt());coef[n]=W.up(h/math.factorial(n));details[n]={'h':h,'flattening':kind}
    ns=[W.up(W.C.norm([A[i,j] for j in range(m)])) for i in range(180)]
    tail=W.up(W.C.norm([sum(((C[i,l]**2+S[i,l]**2).sqrt()*ns[l]**9/math.factorial(9) for l in range(180)),arb(0)) for i in range(Bs.nrows())]))
    return {'F0':F0,'JH':JH,'JK':JK,'coef':coef,'tail':tail,'tensors':details,
            'defect':W.spectral(Bs*JK*Ks-W.Z.eye(m)), 'bn':W.spectral(Bs), 'kn':W.spectral(Ks)}


def poly(ex,d):
    return W.up(sum((c*d**n for n,c in ex['coef'].items()),arb(0))+ex['tail']*d**9)


def bootstrap(ex,forcing,beta,initial,iterations=24):
    """Any zero with ||s||<=initial obeys returned radius.

    Caller certifies ||s|| <= forcing + beta||s|| + P(||s||).
    Each output radius is an outward Arb upper endpoint. Monotonicity of P
    and the already valid old radius proves each tightening independently.
    No existence or derivative-contraction assumption.
    """
    d=W.up(initial);steps=[]
    for _ in range(iterations):
        new=W.up(forcing+beta*d+poly(ex,d));steps.append(new)
        if not new<d: break
        d=new
    return d,steps
