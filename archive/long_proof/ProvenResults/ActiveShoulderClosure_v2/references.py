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
from flint import arb,acb,ctx
from models import real,TM,magnitude
from transfer import matrix_radius
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
    stronger=json.loads((HERE/'data/stronger_tubes.json').read_text())
    if stronger['status']!='PASS':raise ValueError('stronger tubes not certified')
    cells={}
    for c in original+extra['cells']+stronger['cells']:
        key=(c['grid'],c['a'],c['b'])
        if key not in cells or c['tolerance_denominator']<cells[key]['tolerance_denominator']:cells[key]=c
    return list(cells.values())

@lru_cache(1)
def region_index():
    out={}
    for cell in regions():out.setdefault(cell['grid'],{})[(cell['a'],cell['b'])]=cell
    return out

@lru_cache(65536)
def _certificate(a,b):
    best=dict(radius='1/16384',kind='uniform',cell=None)
    best_radius=F(best['radius'])
    for x,y in images(F(a),F(b)):
        if x==y==0 and best_radius<F(1,30):
            best=dict(radius='1/30',kind='F6',cell=None);best_radius=F(1,30)
        for n,index in region_index().items():
            xx,yy=x*n,y*n;ix,iy=xx.__floor__(),yy.__floor__()
            # Include both adjacent CLOSED cells at an exact grid boundary.
            xs=[ix,ix-1] if xx.denominator==1 else [ix]
            ys=[iy,iy-1] if yy.denominator==1 else [iy]
            for i in xs:
                for j in ys:
                    c=index.get((i,j))
                    if c is None:continue
                    radius=matrix_radius(c)
                    if radius>best_radius:
                        best_radius=radius;best=dict(radius=str(radius),kind='regional',cell=c,image=[str(x),str(y)])
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


@lru_cache(1)
def projection_templates():
    basis=[(0,0),(1,0),(0,1)];maps=[]
    for sign in (1,-1):
        for u in (1,-1):
            for v in range(3):
                M=[[sign*(basis[(k*u+v)%3][j]-basis[v][j]) for j in range(2)] for k in (1,2)]
                for shift in range(3):maps.append((M,shift))
    cells=[c for c in regions() if c['tolerance_denominator']<=8]
    matrices=np.array([M for M,shift in maps]);shifts=np.array([[shift/3,2*shift/3] for M,shift in maps])
    lows=np.array([[c['a']/c['grid'],c['b']/c['grid']] for c in cells]);highs=np.array([[(c['a']+1)/c['grid'],(c['b']+1)/c['grid']] for c in cells])
    return maps,cells,matrices,shifts,lows,highs,np.linalg.inv(matrices)

def strong_reference_proposal(H,ref):
    """Vectorized FLOATING proposals; selected cell snap reconstructed exactly."""
    a,b=F(ref['a']),F(ref['b']);maps,cells,M,shifts,lows,highs,inverses=projection_templates()
    wrapped=[]
    for MM,shift in maps:
        xx=MM[0][0]*a+MM[0][1]*b+F(shift,3);yy=MM[1][0]*a+MM[1][1]*b+F(2*shift,3)
        xx-=F((2*xx)//1,2);yy-=F((2*yy)//1,2);wrapped.append((xx,yy))
    xy=np.array([[float(x),float(y)] for x,y in wrapped])
    snapped=np.minimum(np.maximum(xy[:,None,:],lows[None,:,:]),highs[None,:,:])
    delta=np.einsum('nij,nkj->nki',inverses,snapped-xy[:,None,:])
    ii,jj=np.where(np.max(abs(delta),axis=2)<=.0100000001)
    if len(ii)==0:return None
    params=np.array([float(a),float(b)])[None,:]+delta[ii,jj]
    V=H.T if ref['transpose'] else H;rr=np.array(ref['rows']);cc=np.array(ref['cols'])
    base=rr[:,None]*cc[None,:]*(np.pi/3);A=(rr[:,None]%3==1)*(cc[None,:]%2);B=(rr[:,None]%3==2)*(cc[None,:]%2)
    phase=base[None,:,:]+2*np.pi*params[:,0,None,None]*A+2*np.pi*params[:,1,None,None]*B
    dd=np.angle(V[None,:,:]*np.exp(-1j*phase));gauge=dd.mean(axis=2)
    overlaps=np.sum(np.exp(-1j*phase)*V[None,:,:]*np.exp(-1j*gauge[:,:,None]),axis=1)/6
    distances=np.sqrt(np.maximum(0,1-abs(overlaps)**2)).max(axis=1)
    normalized=distances/np.array([float(matrix_radius(cells[int(j)])) for j in jj])
    choice=int(normalized.argmin());idx,cellidx=int(ii[choice]),int(jj[choice]);MM,shift=maps[idx];cell=cells[cellidx]
    x=MM[0][0]*a+MM[0][1]*b+F(shift,3);y=MM[1][0]*a+MM[1][1]*b+F(2*shift,3)
    x-=F((2*x)//1,2);y-=F((2*y)//1,2)
    xx=min(max(x,F(cell['a'],cell['grid'])),F(cell['a']+1,cell['grid']))
    yy=min(max(y,F(cell['b'],cell['grid'])),F(cell['b']+1,cell['grid']))
    det=MM[0][0]*MM[1][1]-MM[0][1]*MM[1][0]
    aa=a+(MM[1][1]*(xx-x)-MM[0][1]*(yy-y))/det
    bb=b+(-MM[1][0]*(xx-x)+MM[0][0]*(yy-y))/det
    p=base+float(2*np.pi*aa)*A+float(2*np.pi*bb)*B
    dd=np.angle(V*np.exp(-1j*p));g=dd.mean(axis=1);cg=(dd-g[:,None]).mean(axis=0)
    distance=float(np.sqrt(np.maximum(0,1-abs(np.sum(np.exp(-1j*p)*V*np.exp(-1j*g[:,None]),axis=0)/6)**2)).max())
    result=dict(a=str(aa),b=str(bb),rows=ref['rows'],cols=ref['cols'],transpose=ref['transpose'],gauge=[str(F(float(x))) for x in g],column_gauge=[str(F(float(x))) for x in cg],proposal_distance=distance)
    result['certificate']=certificate(result['a'],result['b']);return result


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


@lru_cache(8192)
def _exact_reference(a,b,rows,cols,precision):
    return _make_reference(dict(a=a,b=b,rows=rows,cols=cols))

def exact_reference(ref):
    return _exact_reference(ref["a"],ref["b"],tuple(ref["rows"]),tuple(ref["cols"]),ctx.prec)

def _make_reference(ref):
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
    uppers=[];lowers=[];models=[]
    for j in range(6):
        overlap=sum((V[i][j]*(J[i][j].conjugate()*gauge[i]) for i in range(6)),TM())/6
        dmodel=TM(1)-overlap.abs2();d2=dmodel.range().real
        phase=acb(0,real(F(ref.get('column_gauge',['0']*6)[j]))).exp()
        euclid=sum(((V[i][j]*gauge[i]-J[i][j]*phase).abs2() for i in range(6)),TM())/6
        er=euclid.range().real.upper();uppers.append(min(d2.upper(),er));lowers.append(d2.lower());models.append(dmodel if d2.upper()<er else euclid)
    upper=max(uppers);lower=max(lowers)
    from kernel import sensitivities
    idx=max(range(6),key=lambda j:uppers[j])
    return dict(scores=sensitivities(models[idx]),excess_proposal=float(upper/(rad*rad)),ok=bool(upper<rad*rad),distance_squared_upper=str(upper),distance_squared_lower=str(lower),radius=str(F(cert['radius'])),certificate=cert,reference=ref)


def refit(H,ref):
    """Cheap moving-reference proposal in a retained permutation chart."""
    V=H.T if ref['transpose'] else H;rr=np.array(ref['rows']);cc=np.array(ref['cols'])
    base=rr[:,None]*cc[None,:]*(np.pi/3)
    A=(rr[:,None]%3==1)*(cc[None,:]%2);B=(rr[:,None]%3==2)*(cc[None,:]%2)
    old=base+float(2*np.pi*F(ref['a']))*A+float(2*np.pi*F(ref['b']))*B
    delta=np.angle(V*np.exp(-1j*old))
    def center(x):return x-x.mean(0,keepdims=True)-x.mean(1,keepdims=True)+x.mean()
    AA,BB=center(A),center(B);dc=center(delta)
    gram=np.array([[np.sum(AA*AA),np.sum(AA*BB)],[np.sum(AA*BB),np.sum(BB*BB)]])
    da,db=np.linalg.solve(gram,np.array([np.sum(AA*dc),np.sum(BB*dc)]))
    a=F(ref['a'])+F(round(float(da)/(2*np.pi)*2**30),2**30)
    b=F(ref['b'])+F(round(float(db)/(2*np.pi)*2**30),2**30)
    phase=base+float(2*np.pi*a)*A+float(2*np.pi*b)*B
    delta=np.angle(V*np.exp(-1j*phase));g=delta.mean(1);cg=(delta-g[:,None]).mean(0)
    new=dict(a=str(a),b=str(b),rows=ref['rows'],cols=ref['cols'],transpose=ref['transpose'],gauge=[str(F(float(x))) for x in g],column_gauge=[str(F(float(x))) for x in cg])
    new['certificate']=certificate(new['a'],new['b']);new['proposal_distance']=float(np.sqrt(np.maximum(0,1-abs(np.sum(np.exp(-1j*phase)*V*np.exp(-1j*g[:,None]),axis=0)/6)**2)).max())
    # Retain a previously snapped strong-cell reference if moving would
    # lose its certified radius. Both candidates still undergo tube_test.
    oldref=deepcopy(ref);oldref['certificate']=certificate(ref['a'],ref['b'])
    og=np.array([float(F(x)) for x in ref['gauge']])
    oldref['proposal_distance']=float(np.sqrt(np.maximum(0,1-abs(np.sum(np.exp(-1j*old)*V*np.exp(-1j*og[:,None]),axis=0)/6)**2)).max())
    strong=strong_reference_proposal(H,new)
    return min([new,oldref]+([strong] if strong else []),key=lambda r:r['proposal_distance']/float(F(r['certificate']['radius'])))


def minimax_gauge(H,ref,iterations=1200,radius=None):
    """Floating proposal for the largest column distance; never acceptance.

    Fix the Fourier parameters and permutation chart. A bounded five-
    variable simplex search adjusts row phases; the common phase is fixed.
    The caller must run the ordinary outward tube test on the exact dyadic
    phases returned here. No optimizer status or floating distance accepts.
    """
    from kernel import complex_mid
    V=H.T if ref['transpose'] else H
    J=np.array([[complex_mid(z) for z in row] for row in exact_reference(ref)])
    P=V*J.conj();g=np.array([float(F(v)) for v in ref['gauge']]);g-=g[0]
    def objective(x):
        overlap=np.sum(P*np.exp(-1j*np.r_[0,x])[:,None],axis=0)/6
        return np.max(1-abs(overlap)**2)
    x=g[1:]
    # If the centre already has a comfortable margin, width reduction is
    # cheaper. An optimized parent phase fit is reused until near the edge.
    if radius is not None:
        fraction=.98 if ref.get('minimax_gauge') else .90
        if objective(x)<=fraction*fraction*float(radius)**2:return ref
    X=np.array([x]+[x+np.eye(5)[i]*.002 for i in range(5)])
    Y=np.array([objective(v) for v in X])
    for _ in range(iterations):
        order=Y.argsort();X=X[order];Y=Y[order];mid=X[:-1].mean(0)
        reflected=2*mid-X[-1];value=objective(reflected)
        if value<Y[0]:
            expanded=3*mid-2*X[-1];ev=objective(expanded)
            X[-1],Y[-1]=(expanded,ev) if ev<value else (reflected,value)
        elif value<Y[-2]:X[-1],Y[-1]=reflected,value
        else:
            contracted=mid+.5*(X[-1]-mid);cv=objective(contracted)
            if cv<Y[-1]:X[-1],Y[-1]=contracted,cv
            else:
                X[1:]=(X[1:]+X[0])/2;Y[1:]=[objective(v) for v in X[1:]]
        if np.max(abs(X-X[0]))<1e-10:break
    phases=np.r_[0,X[Y.argmin()]];out=deepcopy(ref)
    out['gauge']=[str(F(float(v))) for v in phases];out['minimax_gauge']=True
    overlap=np.sum(P*np.exp(-1j*phases)[:,None],axis=0)/6
    out['column_gauge']=[str(F(float(v))) for v in np.angle(overlap)]
    out['proposal_distance']=float(np.sqrt(max(0,objective(phases[1:]))))
    return out
