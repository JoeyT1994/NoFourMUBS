"""Floating reference proposals; exact parameter-region and Arb tube checks.
No floating optimization result accepts a seed leaf.
"""
from pathlib import Path
from functools import lru_cache
from itertools import permutations
from fractions import Fraction as F
import json
from copy import deepcopy
import numpy as np
from flint import arb,acb
from models import real,TM,magnitude
HERE=Path(__file__).resolve().parent
ROOT=HERE.parents[1]

def images(a,b):
    seen=set()
    for sign in (1,-1):
        t=(F(0),sign*a,sign*b)
        for u in (1,-1):
            for v in range(3):
                aa,bb=t[(u+v)%3]-t[v],t[(2*u+v)%3]-t[v]
                for shift in range(3):
                    x,y=aa+F(shift,3),bb+F(2*shift,3)
                    x-=F((2*x)//1,2);y-=F((2*y)//1,2)
                    if (x,y) not in seen:
                        seen.add((x,y));yield x,y

@lru_cache(None)
def regions():
    original=json.loads((ROOT/'ProvenResults/FourierNeighbourhood/WideFamilyTube/data/regions.json').read_text())['cells']
    extra=json.loads((HERE/'data/extra_tubes.json').read_text())
    if extra['status']!='PASS':raise ValueError('extra tubes not certified')
    cells={}
    for c in original+extra['cells']:
        key=(c['grid'],c['a'],c['b'])
        if key not in cells or c['tolerance_denominator']<cells[key]['tolerance_denominator']:cells[key]=c
    return list(cells.values())

@lru_cache(65536)
def _certificate(a,b):
    best=dict(radius='1/16384',kind='uniform',cell=None)
    for x,y in images(F(a),F(b)):
        if x==y==0 and F(best['radius'])<F(1,30):best=dict(radius='1/30',kind='F6',cell=None)
        for c in regions():
            n=c['grid']
            if F(c['a'],n)<=x<=F(c['a']+1,n) and F(c['b'],n)<=y<=F(c['b']+1,n):
                radius=F(1,6*c['tolerance_denominator'])
                if radius>F(best['radius']):best=dict(radius=str(radius),kind='regional',cell=c,image=[str(x),str(y)])
    return best

def certificate(a,b):
    return deepcopy(_certificate(a,b))

@lru_cache(1)
def templates():
    pp=np.array([(0,)+p for p in permutations(range(1,6))])
    rr=np.repeat(pp,len(pp),axis=0);cc=np.tile(pp,(len(pp),1))
    base=rr[:,:,None]*cc[:,None,:]*(np.pi/3)
    A=(rr[:,:,None]%3==1)*(cc[:,None,:]%2)
    B=(rr[:,:,None]%3==2)*(cc[:,None,:]%2)
    def centered(x):return x-x.mean(axis=1,keepdims=True)-x.mean(axis=2,keepdims=True)+x.mean(axis=(1,2),keepdims=True)
    A,B=centered(A),centered(B)
    gram=np.array([[np.sum(A[0]*A[0]),np.sum(A[0]*B[0])],[np.sum(A[0]*B[0]),np.sum(B[0]*B[0])]])
    return rr,cc,base,A,B,np.linalg.inv(gram)


def stronger_parameters(a,b):
    """Project symmetry images to the proved parameter cells with radius at least 1/48.

    This supplies proposals only. certificate() repeats exact membership.
    """
    strong=[c for c in regions() if c['tolerance_denominator']<=8]
    basis=[(0,0),(1,0),(0,1)];seen=set()
    for sign in [1,-1]:
        for u in [1,-1]:
            for v in range(3):
                M=[[sign*(basis[(k*u+v)%3][j]-basis[v][j]) for j in range(2)] for k in [1,2]]
                det=M[0][0]*M[1][1]-M[0][1]*M[1][0]
                for shift in range(3):
                    x=M[0][0]*a+M[0][1]*b+F(shift,3)
                    y=M[1][0]*a+M[1][1]*b+F(2*shift,3)
                    x-=F((2*x)//1,2);y-=F((2*y)//1,2)
                    for c in strong:
                        xx=min(max(x,F(c['a'],c['grid'])),F(c['a']+1,c['grid']))
                        yy=min(max(y,F(c['b'],c['grid'])),F(c['b']+1,c['grid']))
                        da=(M[1][1]*(xx-x)-M[0][1]*(yy-y))/det
                        db=(-M[1][0]*(xx-x)+M[0][0]*(yy-y))/det
                        if abs(da)>F(1,100) or abs(db)>F(1,100):continue
                        q=(a+da,b+db)
                        if q not in seen:seen.add(q);yield q


def strong_reference_proposal(H,ref):
    V=H.T if ref['transpose'] else H;phase=np.angle(V)
    rr=np.array(ref['rows']);cc=np.array(ref['cols']);base=rr[:,None]*cc[None,:]*(np.pi/3)
    best=None
    for a,b in stronger_parameters(F(ref['a']),F(ref['b'])):
        p=base+float(2*np.pi*a)*(rr[:,None]%3==1)*(cc[None,:]%2)+float(2*np.pi*b)*(rr[:,None]%3==2)*(cc[None,:]%2)
        delta=(phase-p+np.pi)%(2*np.pi)-np.pi;gauge=delta.mean(axis=1)
        W=V*np.exp(-1j*gauge[:,None]);J=np.exp(1j*p)
        d=float(np.sqrt(np.maximum(0,1-abs(np.sum(J.conj()*W,axis=0)/6)**2)).max())
        if best is None or d<best['proposal_distance']:
            best=dict(a=str(a),b=str(b),rows=rr.tolist(),cols=cc.tolist(),transpose=ref['transpose'],gauge=[str(F(float(x))) for x in gauge],column_gauge=[str(F(float(x))) for x in (delta-gauge[:,None]).mean(axis=0)],proposal_distance=d)
    if best is not None:best['certificate']=certificate(best['a'],best['b'])
    return best


def propose(H,top=2):
    """Search 14,400 charts in each orientation near the F6 phase lattice.

    This is a bounded heuristic, not a proof of nearest-family distance.
    It is deliberately separate from the interval accepting routine.
    """
    rr,cc,base,A,B,gi=templates();out=[]
    for trans in [False,True]:
        V=H.T if trans else H
        phase=np.angle(V)
        delta=(phase[None,:,:]-base+np.pi)%(2*np.pi)-np.pi
        dc=delta-delta.mean(axis=1,keepdims=True)-delta.mean(axis=2,keepdims=True)+delta.mean(axis=(1,2),keepdims=True)
        rhs=np.stack([np.sum(dc*A,axis=(1,2)),np.sum(dc*B,axis=(1,2))],axis=1)
        params=rhs@gi.T
        residual=dc-params[:,0,None,None]*A-params[:,1,None,None]*B
        score=np.sum(residual**2,axis=(1,2));order=np.argsort(score)[:top]
        for k in order:
            a,b=[F(round(float(x)/(2*np.pi)*2**30),2**30) for x in params[k]]
            p=base[k]+float(2*np.pi*a)*(rr[k,:,None]%3==1)*(cc[k,None,:]%2)+float(2*np.pi*b)*(rr[k,:,None]%3==2)*(cc[k,None,:]%2)
            dd=(phase-p+np.pi)%(2*np.pi)-np.pi
            gauge=dd.mean(axis=1)
            W=V*np.exp(-1j*gauge[:,None]);J=np.exp(1j*p)
            d=float(np.sqrt(np.maximum(0,1-abs(np.sum(J.conj()*W,axis=0)/6)**2)).max())
            ref=dict(a=str(a),b=str(b),rows=rr[k].tolist(),cols=cc[k].tolist(),transpose=trans,gauge=[str(F(float(x))) for x in gauge])
            ref['column_gauge']=[str(F(float(x))) for x in (dd-gauge[:,None]).mean(axis=0)];ref['proposal_distance']=d;ref['certificate']=certificate(str(a),str(b));out.append(ref)
    stronger=[strong_reference_proposal(H,r) for r in out]
    out.extend(r for r in stronger if r is not None)
    return sorted(out,key=lambda r:r['proposal_distance']/float(F(r['certificate']['radius'])))


def exact_reference(ref):
    a,b=F(ref['a']),F(ref['b']);rr=ref['rows'];cc=ref['cols']
    if sorted(rr)!=list(range(6)) or sorted(cc)!=list(range(6)):raise ValueError('not a permutation')
    def p(r,c):return F(r*c,6)+(a if r%3==1 else b if r%3==2 else F(0))*(c%2)
    return [[acb(0,2*arb.pi()*real(p(r,c)+p(rr[0],cc[0])-p(r,cc[0])-p(rr[0],c))).exp() for c in cc] for r in rr]


def tube_test(H,ref):
    """Maximum column-projector distance on the actually oriented carrier.

    Row gauges are exact rational radians. Physical column norm is one,
    hence 1-|sum conj(J)*H/6|^2 is exactly its squared projector distance.
    """
    J=exact_reference(ref);V=list(map(list,zip(*H))) if ref['transpose'] else H
    gauge=[acb(0,-real(F(x))).exp() for x in ref['gauge']]
    cert=certificate(ref['a'],ref['b']);rad=real(F(cert['radius']))
    uppers=[];lowers=[]
    for j in range(6):
        overlap=sum((V[i][j]*(J[i][j].conjugate()*gauge[i]) for i in range(6)),TM())/6
        d2=(TM(1)-overlap.abs2()).range().real
        phase=acb(0,real(F(ref.get('column_gauge',['0']*6)[j]))).exp()
        euclid=sum(((V[i][j]*gauge[i]-J[i][j]*phase).abs2() for i in range(6)),TM())/6
        uppers.append(min(d2.upper(),euclid.range().real.upper()));lowers.append(d2.lower())
    upper=max(uppers);lower=max(lowers)
    return dict(ok=bool(upper<rad*rad),distance_squared_upper=str(upper),distance_squared_lower=str(lower),radius=str(F(cert['radius'])),certificate=cert,reference=ref)
