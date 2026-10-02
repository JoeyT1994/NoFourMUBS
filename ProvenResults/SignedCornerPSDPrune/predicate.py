"""Whole-box strict-D0 exclusion by signed-corner PSD pencils.

Rational inputs are radians. True authorizes exclusion of ALL physical
strict-D0 completions, not just H+. No carrier radius is used.
"""
from __future__ import annotations
import ctypes, hashlib, math, os, subprocess, tempfile
from pathlib import Path
from fractions import Fraction
from mpmath import iv
iv.dps = 35
HERE=Path(__file__).resolve().parent
_LIB=None

def _rational(x):
    if isinstance(x,bool) or not isinstance(x,(int,float,Fraction)):
        raise ValueError('expected int, Fraction, or exact finite binary float')
    if isinstance(x,float) and not math.isfinite(x): raise ValueError('nonfinite input')
    return Fraction(x)
def V(x):
    x=Fraction(x);return iv.mpf(x.numerator)/x.denominator

def bounds(x):
    a=math.nextafter(float(x.a),-math.inf);b=math.nextafter(float(x.b),math.inf)
    if not (math.isfinite(a) and math.isfinite(b)):raise ValueError('binary64 range')
    if not (iv.mpf(a)<=x.a and iv.mpf(b)>=x.b):
        raise ArithmeticError('outward endpoint conversion failed')
    return [a,b]

def radius_for_level(level):
    if not isinstance(level,int) or level<0:raise ValueError('level')
    return bounds(iv.pi/(2**level)+iv.mpf(2)**-40)[1]

def library():
    global _LIB
    if _LIB is not None:return _LIB
    source=HERE/'engine.cpp'; key=hashlib.sha256(source.read_bytes()+(HERE/'determinant_terms.hpp').read_bytes()).hexdigest()[:24]
    directory=Path(tempfile.gettempdir())/('nofourmubs-signed-psd-'+key)
    directory.mkdir(exist_ok=True);target=directory/'engine.so'
    if not target.exists():
        fd,tmp=tempfile.mkstemp(suffix='.so',dir=directory);os.close(fd)
        try:
            subprocess.run(['g++','-std=c++17','-O3','-fno-fast-math','-ffp-contract=off',
                            '-fPIC','-shared',str(source),'-o',tmp],check=True,capture_output=True,text=True)
            os.replace(tmp,target)
        finally:
            if os.path.exists(tmp):os.unlink(tmp)
    lib=ctypes.CDLL(str(target));ptr=ctypes.POINTER(ctypes.c_double)
    lib.compute.argtypes=[ptr,ptr,ctypes.c_int];lib.compute.restype=ctypes.c_int
    lib.certify.argtypes=[ptr,ctypes.c_int,ctypes.c_int,ptr];lib.certify.restype=ctypes.c_int
    lib.test_arithmetic.argtypes=[ctypes.c_int,ptr,ptr];lib.test_arithmetic.restype=ctypes.c_int
    _LIB=lib;return lib

def _phases(centers,radii):
    out=[]
    for c,r in zip(centers,radii):
        z=V(c)+iv.mpf([-1,1])*V(r)
        out.extend(bounds(iv.cos(z)));out.extend(bounds(iv.sin(z)))
    return out

def coefficients(centers,radii,transpose=False,cleared=False,paired=False):
    if transpose:
        order=[0,2,1,3];centers=[centers[i] for i in order];radii=[radii[i] for i in order]
    data=_phases(centers,[0]*4)+_phases(centers,radii)+[bounds(V(r))[1] for r in radii]
    inp=(ctypes.c_double*36)(*data);out=(ctypes.c_double*112)()
    status=library().compute(inp,out,int(cleared)+2*int(paired))
    if status!=112:return None,status
    return list(out),status

def _one(centers,radii,transpose,maxdepth,maxnodes,cleared=False,paired=False):
    co,status=coefficients(centers,radii,transpose,cleared,paired)
    if co is None:return dict(ok=False,reason='denominator_or_range',status=status,transpose=transpose)
    inp=(ctypes.c_double*112)(*co);witness=(ctypes.c_double*(16*maxnodes+8))()
    n=library().certify(inp,maxdepth,maxnodes,witness)
    if n>0:
        return dict(ok=True,reason='R_nonpositive' if witness[0]==-1 and co[1]<=0 else 'signed_corner_PSD',
                    transpose=transpose,cleared=cleared,paired=paired,R=co[:2],coefficients=co,
                    q_cover=[] if co[1]<=0 else [list(witness[8*i:8*i+8]) for i in range(n)])
    return dict(ok=False,reason='unresolved' if n==0 else 'arithmetic_range',transpose=transpose,R=co[:2])

def side_predicate(centers,radii,transpose=None,*,q_depth=8,q_nodes=511,cleared=False,paired=False):
    """Only ok=True certifies. Four independently specified seed half-widths.

    transpose=None tries both orientations; bool chooses just that orientation.
    q_depth/q_nodes bound a univariate *radical-value* cover, not a seed or
    matrix radius. Resource exhaustion always returns unresolved.
    """
    centers=list(centers);radii=list(radii)
    if len(centers)!=4 or len(radii)!=4:raise ValueError('four centers and radii required')
    centers=list(map(_rational,centers));radii=list(map(_rational,radii))
    if not all(r>0 for r in radii):raise ValueError('positive seed radii required')
    if transpose is not None and not isinstance(transpose,bool):raise ValueError('transpose must be None or bool')
    if not isinstance(q_depth,int) or not 0<=q_depth<=16:raise ValueError('q_depth must be 0..16')
    if not isinstance(q_nodes,int) or not 1<=q_nodes<=131071:raise ValueError('q_nodes must be 1..131071')
    for tr in ([False,True] if transpose is None else [transpose]):
        result=_one(centers,radii,tr,q_depth,q_nodes,cleared,paired)
        if result['ok']:return result
    return result

# High-level coupled controller. Kept separate from the single-orientation
# primitive to make the extra accepted matching input explicit.
def tao_absence(centers, radii):
    """A sufficient whole-box certificate that no dephased Tao corner occurs."""
    for j,(c,r) in enumerate(zip(centers,radii)):
        a=3*(V(c)+iv.mpf([-1,1])*V(r))
        for name,x in [('sin',iv.sin(a)),('cos_minus_one',iv.cos(a)-1)]:
            lo,hi=bounds(x)
            if lo>0 or hi<0:return dict(coordinate=j,test=name,bound=[lo,hi])
    return None

def joint_certificate(providers, *, matched, q_depth=8, q_nodes=511):
    if not providers:return None
    lib=library();ptr=ctypes.POINTER(ctypes.c_double)
    lib.certify_joint.argtypes=[ptr,ctypes.c_int,ctypes.POINTER(ctypes.c_int),ctypes.c_int,ctypes.c_int,ctypes.c_int,ptr]
    lib.certify_joint.restype=ctypes.c_int
    data=[x for p in providers for x in p['coefficients']]
    co=(ctypes.c_double*len(data))(*data)
    orient=(ctypes.c_int*len(providers))(*[int(p['transpose']) for p in providers])
    witness=(ctypes.c_double*(9*4*q_nodes+9))()
    n=lib.certify_joint(co,len(providers),orient,int(matched),q_depth,q_nodes,witness)
    if n<=0:return None
    R=[max(p['coefficients'][0] for p in providers),min(p['coefficients'][1] for p in providers)]
    return dict(reason='R_nonpositive' if R[1]<=0 else 'signed_corner_PSD',
                pairing='matched_non_Tao' if matched else 'all_four',R=R,
                providers=providers[:],q_cover=[] if R[1]<=0 else [list(witness[9*i:9*i+9]) for i in range(n)])

def coupled_leaf(centers, radii, *, extra=True, q_depth=8, q_nodes=511):
    guard=tao_absence(centers,radii);providers=[]
    for paired in ([False,True] if extra else [False]):
        for cleared in [False,True]:
            for transpose in [False,True]:
                co,status=coefficients(centers,radii,transpose,cleared,paired)
                if co is None:continue
                providers.append(dict(transpose=transpose,cleared=cleared,paired=paired,coefficients=co))
                matched=guard is not None and len({p['transpose'] for p in providers})==2
                cert=joint_certificate(providers,matched=matched,q_depth=q_depth,q_nodes=q_nodes)
                if cert is not None:
                    if matched:cert['tao_absence']=guard
                    return cert
    return None

def predicate(centers,radii,*,extra=True,seed_depth=8,seed_nodes=255,q_depth=8,q_nodes=511):
    """Authorizes exclusion only when ok=True. Exact seed subdivision is bounded."""
    centers=list(map(_rational,centers));radii=list(map(_rational,radii))
    if len(centers)!=4 or len(radii)!=4 or not all(r>0 for r in radii):raise ValueError('four centers and four positive seed radii required')
    for name,val,hi,lo in [('seed_depth',seed_depth,16,0),('seed_nodes',seed_nodes,131071,1),('q_depth',q_depth,16,0),('q_nodes',q_nodes,131071,1)]:
        if isinstance(val,bool) or not isinstance(val,int) or not lo<=val<=hi:raise ValueError(name+' outside supported range')
    if not isinstance(extra,bool):raise ValueError('extra must be bool')
    stack=[('',centers,radii)];leaves=[];nodes=0
    while stack:
        path,c,r=stack.pop();nodes+=1
        if nodes>seed_nodes:return dict(ok=False,reason='seed_node_budget',nodes=nodes-1)
        cert=coupled_leaf(c,r,extra=extra and not path,q_depth=q_depth,q_nodes=q_nodes)
        if cert is not None:
            leaves.append(dict(path=path,certificate=cert));continue
        if len(path)>=seed_depth:return dict(ok=False,reason='unresolved',nodes=nodes)
        j=max(range(4),key=lambda k:r[k]);rr=r[:];rr[j]/=2
        cp=c[:];cp[j]+=rr[j];cm=c[:];cm[j]-=rr[j]
        stack.append((path+'1',cp,rr));stack.append((path+'0',cm,rr))
    return dict(ok=True,reason='whole_box_PSD_cover',nodes=nodes,leaves=leaves)

# Backwards-compatible descriptive alias for programmatic callers.
exclude_box = predicate

if __name__ == '__main__':
    import argparse,json
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--centers',nargs=4,required=True)
    ap.add_argument('--radii',nargs=4,required=True)
    ap.add_argument('--seed-depth',type=int,default=8)
    ap.add_argument('--seed-nodes',type=int,default=255)
    ap.add_argument('--basic-only',action='store_true')
    args=ap.parse_args()
    result=predicate([Fraction(x) for x in args.centers],
                     [Fraction(x) for x in args.radii],extra=not args.basic_only,
                     seed_depth=args.seed_depth,seed_nodes=args.seed_nodes)
    print(json.dumps(result,allow_nan=False))
