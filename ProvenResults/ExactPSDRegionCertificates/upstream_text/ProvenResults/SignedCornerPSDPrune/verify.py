#!/usr/bin/env python3
"""Exact algebra, arithmetic/physical controls, and independent receipt replay.

Run from any directory. Spawn workers import all required helpers at module
scope. No result is accepted from nearest-class metadata or a stored boolean.
"""
from __future__ import annotations
import argparse,ast,collections,concurrent.futures,copy,ctypes,gzip,hashlib
import importlib.util,json,math,multiprocessing,random,re,sys,time
from fractions import Fraction as F
from pathlib import Path
import sympy as sp
from mpmath.ctx_iv import MPIntervalContext
from predicate import (HERE,V,iv,bounds,library,coefficients,predicate,
                       radius_for_level,tao_absence)
from exact_reference import Q,reference

HI=MPIntervalContext();HI.dps=60

def say(text):print('PASS: '+text,flush=True)
def import_at(name,path):
    spec=importlib.util.spec_from_file_location(name,path)
    module=importlib.util.module_from_spec(spec);spec.loader.exec_module(module)
    return module

def D_terms():
    rows=re.findall(r'\{(-?\d+),(-?\d+),(-?\d+),(-?\d+),(-?\d+)\}',(HERE/'determinant_terms.hpp').read_text())
    assert len(rows)==48
    return [(int(a),tuple(map(int,(b,c,d,e)))) for a,b,c,d,e in rows]

def safe_expression(text,env):
    """Read only the small implemented polynomial expressions, never arbitrary code."""
    tree=ast.parse(text.strip(),mode='eval')
    allowed=(ast.Expression,ast.BinOp,ast.UnaryOp,ast.Call,ast.Name,ast.Load,
             ast.Constant,ast.Add,ast.Sub,ast.Mult,ast.Div,ast.USub,ast.UAdd)
    for node in ast.walk(tree):
        assert isinstance(node,allowed),(text,type(node))
        if isinstance(node,ast.Name):assert node.id in env,node.id
        if isinstance(node,ast.Call):assert isinstance(node.func,ast.Name) and not node.keywords
    return eval(compile(tree,'<checked polynomial>','eval'),{'__builtins__':{}},env)

def exact_algebra(root):
    mod=import_at('psd_accepted_corner_algebra',root/'ProvenResults/CornerBounds/verify.py')
    seeds,D,R=mod.generic_polynomials();a,b,c,d=seeds
    assert sp.expand(R-R.subs({b:c,c:b},simultaneous=True))==0
    terms=D_terms()
    assert collections.Counter(terms)==collections.Counter(mod.laurent_terms(D,seeds))
    assert sp.expand(D-D.subs({a:b,b:a,c:d,d:c},simultaneous=True))==0
    assert sp.expand(D.subs({b:a,d:c}))==0
    # Check the actual C++ six coefficient expressions against det L.
    source=(HERE/'engine.cpp').read_text()
    block=source.split('static array<J,6> coeffs',1)[1].split('return {',1)[1].split('};}',1)[0]
    cs=[safe_expression(s,dict(A=a,B=c,ai=1/a,bi=1/c,sq=lambda z:z*z,J=sp.Integer)) for s in block.split(',')]
    assert len(cs)==6
    conj=lambda x:sp.sympify(x).subs({a:1/a,c:1/c},simultaneous=True)
    pq=[(1,1),(1,-1),(2,-1),(0,1),(-1,2),(1,0)]
    expr=sum(v*b**p*d**q-conj(v)*b**(-p)*d**(-q) for v,(p,q) in zip(cs,pq))
    assert sp.expand(expr-D)==0
    say('implemented six coefficients, all 48 retained terms, determinant symmetry, transpose R')
    # Check the actual C++ scaled moment recurrences over six independent phases.
    xs=sp.symbols('x0:3',nonzero=True);ys=sp.symbols('y0:3',nonzero=True)
    Delta=sp.symbols('Delta',real=True)
    bar=lambda z:sp.sympify(z).subs({x:1/x for x in xs+ys},simultaneous=True)
    s,t=sum(xs),sum(ys);r=sum(y/x for x,y in zip(xs,ys))
    u0,v0=sp.prod(xs),sp.prod(ys);pi0=s*t-sum(x*y for x,y in zip(xs,ys))
    M={}
    def put(p,q,z):M[p,q]=z;M[-p,-q]=bar(z)
    env=dict(scale=Delta,s=s,t=t,r=r,u=Delta*u0,v=Delta*v0,w=Delta*u0/v0,
             Pi=Delta*pi0,C1=Delta*u0*bar(pi0),C2=Delta*v0*bar(pi0),
             L=lambda z:z,C=sp.sympify,cj=bar,sq=lambda z:z*z,
             set=put,get=lambda p,q:M[p,q])
    block=source.split('set(0,0,L(scale*C(3)))',1)[1].split('array<J,3>xx',1)[0]
    block='set(0,0,L(scale*C(3)))'+block
    for statement in block.split(';'):
        if statement.strip():safe_expression(statement,env)
    assert len(M)==31
    for (p,q),z in M.items():assert sp.expand(z-Delta*sum(x**p*y**q for x,y in zip(xs,ys)))==0,(p,q)
    say('all 31 implemented moments, including common positive scaling, as exact Laurent identities')
    # Exact radical cancellations and positive denominator clearing.
    g,ch,eta,h=sp.symbols('g chi eta h',real=True,nonzero=True)
    kk=sp.symbols('k0:3',real=True);PP=sp.symbols('P0:3',nonzero=True);BB=sp.symbols('barP0:3',nonzero=True)
    z=(ch+sp.I*h)/(2*g);zb=(ch-sp.I*h)/(2*g)
    def zero_mod(expr):
        num,den=sp.fraction(sp.cancel(expr))
        assert sp.rem(sp.Poly(num,h),sp.Poly(h*h-4*g*g*eta+ch*ch,h)).as_expr()==0
    for i,j in [(0,1),(0,2),(2,1)]:
        num=2*g*g+2*kk[i]*kk[j]*eta+(kk[i]+kk[j])*ch+sp.I*(kk[j]-kk[i])*h
        zero_mod((g+kk[i]*zb)*(g+kk[j]*z)/(BB[i]*PP[j])-num/(2*BB[i]*PP[j]))
        third=3-i-j
        assert sp.cancel(sp.prod(PP[k]*BB[k] for k in range(3))*num/(2*BB[i]*PP[j])
                         -num*PP[i]*BB[j]*PP[third]*BB[third]/2)==0
    zero_mod(z*(g+kk[0]*zb)/BB[0]-(ch+2*kk[0]*eta+sp.I*h)/(2*BB[0]))
    for i in [1,2]:zero_mod(zb*(g+kk[i]*z)/PP[i]-(ch+2*kk[i]*eta-sp.I*h)/(2*PP[i]))
    aa,bb,cc,dd=sp.symbols('aa bb cc dd')
    zero_mod((aa+h*bb)*(cc+h*dd)-(aa*cc+(4*g*g*eta-ch*ch)*bb*dd+h*(aa*dd+bb*cc)))
    diag=sp.symbols('D',real=True);zs,zt,zr,bs,bt,br=sp.symbols('zs zt zr bs bt br')
    matrix=sp.Matrix([[diag,bs,bt],[zs,diag,br],[zt,zr,diag]])
    assert sp.expand(matrix.det()-(diag**3+zs*zr*bt+bs*br*zt-diag*(zs*bs+zt*bt+zr*br)))==0
    say('six affine symmetric formulas, denominator clearing, h^2 reduction, PSD determinant')
    paired_identity(terms)
    mod.corner_census(seeds,D,R);mod.positive_sheet_and_witness()
    say('physical control family: exact Hadamard, matched-side data and all 400 maximal-corner values')

def paired_identity(terms):
    # Eight formal variables: known x,y, followed by three x's and three y's.
    # Compare the excluded-index expression against S*M_w - incidence exactly.
    for wx,wy in [(0,0),(1,0),(0,1),(-1,1)]:
        difference=collections.defaultdict(F)
        def add(l,m,n,factor):
            for co,(p,q,r,s) in terms:
                e=[-p-q,-r-s,0,0,0,0,0,0]
                e[2+l]+=p;e[2+m]+=q;e[5+l]+=r;e[5+m]+=s
                e[2+n]+=wx;e[5+n]+=wy
                difference[tuple(e)]+=factor*co
        for n in range(3):
            l,m=[j for j in range(3) if j!=n];add(l,m,n,F(1))
        for l in range(3):
            for m in range(3):
                for n in range(3):add(l,m,n,F(-1,2))
        for n in range(3):
            for l in range(3):add(n,l,n,F(1))
        assert not any(difference.values()),(wx,wy)
    say('one-known/two-side weighted identity for all four matrix entries (exact sparse Laurent arithmetic)')

def exact_inside(interval,value):
    lo,hi=map(F,interval);assert lo<=value<=hi,(lo,value,hi)

def arithmetic_controls():
    lib=library();ptr=ctypes.POINTER(ctypes.c_double)
    rng=random.Random(639140)
    tests=[]
    for _ in range(500):
        points=sorted(math.ldexp(float(rng.randint(-2**30,2**30)),rng.randrange(-300,250)) for j in range(2))
        points2=sorted(math.ldexp(float(rng.randint(-2**30,2**30)),rng.randrange(-300,250)) for j in range(2))
        tests.append(points+points2)
    tests += [[0.0,0.0,0.0,0.0],[2**-1074,2**-1073,2**-1074,2**-1073],
              [-2**-1073,2**-1073,-1.0,1.0],[0.0,2**-1074,1.0,1.0]]
    count=0
    for arr in tests:
        inp=(ctypes.c_double*4)(*arr)
        a,b,c,d=map(F,arr)
        for op in range(6):
            out=(ctypes.c_double*2)();status=lib.test_arithmetic(op,inp,out)
            if op==3 and c<=0<=d or op==5 and a<0:
                assert status<0;continue
            if op==3 and max(abs(1/c),abs(1/d))>F(sys.float_info.max):
                assert status<0  # reciprocal overflow must fail closed
                continue
            assert status==0
            lo,hi=map(F,out)
            if op==0:x,y=a+c,b+d
            elif op==1:x,y=a-d,b-c
            elif op==2:x,y=min(a*c,a*d,b*c,b*d),max(a*c,a*d,b*c,b*d)
            elif op==3:x,y=min(a/c,a/d,b/c,b/d),max(a/c,a/d,b/c,b/d)
            elif op==4:x,y=(F(0) if a<=0<=b else min(a*a,b*b)),max(a*a,b*b)
            else:
                assert lo>=0 and lo*lo<=a and hi*hi>=b;count+=1;continue
            assert lo<=x<=y<=hi;count+=1
    assert iv.sin(iv.mpf([1,2])).b>=1 and iv.cos(iv.mpf([-1,1])).b>=1
    assert iv.sin(iv.mpf([-10,10])).a<=-1 and iv.sin(iv.mpf([-10,10])).b>=1
    for level in [9,11,12,13,14]:assert V(radius_for_level(level)).a >= (iv.pi/2**level+V(F(1,2**40))).b
    # Taylor series with exact rational remainder, used as a backend regression.
    for x in [F(k,4) for k in range(-24,25)]:
        N=100
        for parity,fun in [(1,iv.sin),(0,iv.cos)]:
            val=sum((-1)**j*x**(2*j+parity)/math.factorial(2*j+parity) for j in range(N))
            err=abs(x)**(2*N+parity)/math.factorial(2*N+parity)
            interval=fun(V(x));assert not (interval.b<V(val-err).a or interval.a>V(val+err).b)
    # Independently evaluate all value/first/second derivative entries at rational phases.
    lib.test_jets.argtypes=[ptr,ptr];lib.test_jets.restype=ctypes.c_int
    sy=sp.symbols('a b c d',nonzero=True)
    ff=sy[0]*sy[1]+2*sy[3]/sy[2]+1/(3+sy[0]+sy[2])
    deriv=lambda f,j:sp.I*sy[j]*sp.diff(f,sy[j])
    fs=[ff]+[deriv(ff,j) for j in range(4)]+[deriv(deriv(ff,j),k) for j in range(4) for k in range(j,4)]
    phase=[Q(F(3,5),F(4,5)),Q(F(5,13),F(12,13)),Q(F(8,17),F(15,17)),Q(F(7,25),F(24,25))]
    data=[]
    for z in phase:data+=bounds(V(z.re))+bounds(V(z.im))
    out=(ctypes.c_double*60)();assert lib.test_jets((ctypes.c_double*16)(*data),out)==60
    sub={s:sp.Rational(z.re.numerator,z.re.denominator)+sp.I*sp.Rational(z.im.numerator,z.im.denominator) for s,z in zip(sy,phase)}
    for j,f in enumerate(fs):
        val=sp.expand_complex(sp.cancel(f.subs(sub)))
        for k,x in enumerate([sp.re(val),sp.im(val)]):
            exact_inside(list(out[4*j+2*k:4*j+2*k+2]),F(int(sp.numer(x)),int(sp.denom(x))))
    say(f'{count} binary64 enclosures against exact rationals, subnormals, trig/radii and all 15 jet entries')


def rational_reference_controls():
    terms=D_terms();lib=library();count=0
    for ts in [[F(1,2),F(2,3),F(-1,3),F(3,5)],[F(2,5),F(-1,4),F(3,7),F(-2,3)]]:
        phases=[Q(1,t)/Q(1,-t) for t in ts]
        for transpose in [False,True]:
            p=[phases[i] for i in ([0,2,1,3] if transpose else range(4))]
            phasebounds=[]
            for z in p:phasebounds+=bounds(V(z.re))+bounds(V(z.im))
            inp=(ctypes.c_double*36)(*(phasebounds+phasebounds+[0.0]*4))
            for cleared in [False,True]:
                for paired in [False,True]:
                    exact=reference(p,terms,cleared,paired);out=(ctypes.c_double*112)()
                    assert lib.compute(inp,out,int(cleared)+2*int(paired))==112
                    for j,x in enumerate(exact):exact_inside(list(out[2*j:2*j+2]),x)
                    count+=len(exact)
    say(f'{count} exact-rational full coefficients, independently evaluated in both orientations/families/scalings')

def physical_controls():
    result=[]
    for delta in [F(1,100),F(1,5),F(1,2)]:
        exact=[-2*iv.pi/3,-iv.pi/3+V(delta),V(0),-iv.pi+V(delta)]
        centers=[float(x.mid) for x in exact]
        for transpose in [False,True]:
            order=[0,2,1,3] if transpose else list(range(4))
            c=[centers[j] for j in order];e=[exact[j] for j in order]
            radii=[F(1,2**35)]*4
            assert all(abs(x-V(y)).b<V(r).a for x,y,r in zip(e,c,radii))
            out=predicate(c,radii)
            assert not out['ok'],(delta,transpose)
            # Nonuniform-radius regression through the same complete public API.
            rr=[F(j+1,2**37) for j in range(4)]
            assert all(abs(x-V(y)).b<V(r).a for x,y,r in zip(e,c,rr))
            assert not predicate(c,rr)['ok']
            result.append(dict(delta=str(delta),transpose=transpose,centers=c,
                               seed_radii=[float(r) for r in radii],ok=out['ok'],reason=out['reason']))
    # At a cube-root corner the opposite-sign shortcut must not activate.
    roots=[0,2,4,2];c=[float((iv.pi*(j/3)).mid) for j in roots]
    assert tao_absence(c,[F(1,2**30)]*4) is None
    for c,r in [([math.nan,0,0,0],[1]*4),([0]*4,[0]*4),([0]*3,[1]*4),([0]*4,[math.inf]*4),([False]*4,[1]*4)]:
        try:predicate(c,r)
        except ValueError:pass
        else:raise AssertionError('invalid input accepted')
    for name,value in [('seed_depth',-1),('seed_nodes',0),('q_nodes',0),('extra',1)]:
        try:predicate([0]*4,[F(1,2**20)]*4,**{name:value})
        except ValueError:pass
        else:raise AssertionError('invalid configuration accepted')
    say('six physical strict-D0 negative controls, unequal radii, Tao guard and invalid-input controls')
    return result


def interval_from(co,j):return HI.mpf([co[j],co[j+1]])
def complex_from(co,j):return HI.mpc(interval_from(co,j),interval_from(co,j+2))
def bar(z):return HI.mpc(z.real,-z.imag)
def norm(z):return z.real**2+z.imag**2

def replay_certificate(cert,centers,radii):
    ps=cert['providers'];assert 1<=len(ps)<=8
    for p in ps:
        assert all(isinstance(p[k],bool) for k in ['transpose','cleared','paired'])
        recorded=p['coefficients'];assert len(recorded)==112 and all(math.isfinite(x) for x in recorded)
        co,status=coefficients(centers,radii,p['transpose'],p['cleared'],p['paired']);assert status==112
        for j in range(0,112,2):assert recorded[j]<=co[j]<=co[j+1]<=recorded[j+1]
    RR=[max(p['coefficients'][0] for p in ps),min(p['coefficients'][1] for p in ps)]
    assert RR==cert['R'] and RR[0]<=RR[1]
    matched=cert['pairing']=='matched_non_Tao';assert matched or cert['pairing']=='all_four'
    if matched:
        guard=tao_absence(centers,radii);assert guard is not None
        assert guard==cert['tao_absence']
    if RR[1]<=0:
        assert cert['reason']=='R_nonpositive' and not cert['q_cover'];return 0
    assert cert['reason']=='signed_corner_PSD'
    Qrange=HI.sqrt(HI.mpf([max(0,RR[0]),RR[1]]));groups=collections.defaultdict(list)
    for witness in cert['q_cover']:
        assert len(witness)==9
        code,lo,hi,provider,j,eps,test,blo,bhi=witness
        assert code==int(code) and code in ([1,2] if matched else [0,1,2,3])
        assert provider==int(provider) and 0<=provider<len(ps)
        assert j==int(j) and 0<=j<3 and eps in [-1,1] and test==int(test) and 0<=test<=4
        assert all(math.isfinite(x) for x in witness) and 0<=lo<=hi and blo<=bhi<0
        code,provider,j,test=map(int,[code,provider,j,test])
        p=ps[provider];co=p['coefficients'];q=HI.mpf([lo,hi])
        sg=(1 if code%2==0 else -1) if p['transpose'] else (1 if code<2 else -1)
        hh=q*sg;scale=interval_from(co,2)
        offset=16+32*j
        f0=interval_from(co,offset)+hh*interval_from(co,offset+4)
        dd=3*q*scale+eps*f0
        z=[]
        for m in range(3):
            off=offset+8*(m+1)
            ff=complex_from(co,off)+hh*complex_from(co,off+4)
            z.append(q*complex_from(co,4+4*m)+eps*ff)
        if test==0:det=dd
        elif test<=3:det=dd**2-norm(z[test-1])
        else:det=dd*dd*dd+2*(z[0]*z[2]*bar(z[1])).real-dd*sum(norm(zz) for zz in z)
        assert det.b<0,(code,j,test,det)
        groups[code].append((lo,hi))
    for code in ([1,2] if matched else [0,1,2,3]):
        intervals=sorted(groups[code]);assert intervals
        end=intervals[0][0];assert HI.mpf(end)<=Qrange.a
        for lo,hi in intervals:
            assert lo<=end,'gap in q cover'
            end=max(end,hi)
        assert HI.mpf(end)>=Qrange.b,'incomplete q cover'
    return len(cert['q_cover'])


def box_from_path(centers,radii,path):
    c=list(map(F,centers));r=list(map(F,radii))
    assert len(path)<=8 and set(path)<=set('01')
    for bit in path:
        j=max(range(4),key=lambda k:r[k]);r[j]/=2;c[j]+=(1 if bit=='1' else -1)*r[j]
    return c,r

def replay_one(row):
    # Top-level, spawn-picklable worker: every helper is imported at module scope.
    src=row['source'];r=row['seed_radii'];assert len(r)==4
    assert all(V(x).a>=(iv.pi/2**src['level']+V(F(1,2**40))).b for x in r)
    result=row['result'];assert isinstance(result['ok'],bool)
    if not result['ok']:
        fresh=predicate(src['theta'],r,extra=row['mode']!='fast',seed_depth=8 if row['mode']=='bounded' else 0)
        assert not fresh['ok'],row['index'];return (False,0,0)
    leaves=result['leaves'];paths={x['path'] for x in leaves};assert len(paths)==len(leaves)
    prefixes={p[:j] for p in paths for j in range(len(p)+1)}
    def complete(p):
        if p in paths:
            assert p+'0' not in prefixes and p+'1' not in prefixes;return
        assert p+'0' in prefixes and p+'1' in prefixes,'incomplete seed cover'
        complete(p+'0');complete(p+'1')
    complete('');assert result['nodes']==2*len(leaves)-1 and result['nodes']<=255
    count=0
    for leaf in leaves:
        c,rr=box_from_path(src['theta'],r,leaf['path'])
        count+=replay_certificate(leaf['certificate'],c,rr)
    return (True,len(leaves),count)


def source_checks(root):
    manifest=json.loads((HERE/'INPUTS.json').read_text());root=root.resolve()
    for name,digest in manifest['sha256'].items():
        path=(root/name).resolve();assert path.is_relative_to(root)
        assert hashlib.sha256(path.read_bytes()).hexdigest()==digest,name
    say(f"{len(manifest['sha256'])} upstream source SHA256 pins")

def load_and_audit(root):
    modes=['fast','root','bounded'];records={}
    for mode in modes:
        records[mode]=[json.loads(l) for l in (HERE/'data'/('pilot_'+mode+'.jsonl')).read_text().splitlines()]
        assert len(records[mode])==1000
        assert all(row['mode']==mode for row in records[mode])
    selected={1+i*(338054-1)//999:i for i in range(1000)}
    path=root/'NumericalCampaign/Campaign/branch_bins_study_2026-09-30/results/residual_boxes_level13.txt.gz'
    with gzip.open(path,'rt') as f:
        for count,line in enumerate(f,1):
            if count not in selected:continue
            index=selected[count];parts=line.split()
            for mode in modes:
                row=records[mode][index];src=row['source']
                assert row['index']==index and src['line']==count
                assert src['theta']==[float(x) for x in parts[3:7]]
                assert src['level']==int(parts[2]) and str(src['cell'])==parts[0]
                assert src['f6kind']==parts[9] and src['f6class']==parts[10]
                assert src['R_sample']==[float(x) for x in parts[7:9]] and src['distance']==float(parts[11])
    assert count==338054
    baseline=[json.loads(l) for l in (root/'ProvenResults/SymmetricSignedCornerPrune/data/pilot_00000.jsonl').read_text().splitlines()]
    for mode in modes:
        summary=json.loads((HERE/'data'/('pilot_'+mode+'_summary.json')).read_text())
        rr=records[mode]
        for i,row in enumerate(rr):
            assert row['source']==records['bounded'][i]['source']
            assert baseline[i]['index']==i and baseline[i]['source']==row['source']
            assert row['old_ok']==baseline[i]['result']['ok']
            assert not row['old_ok'] or row['result']['ok'],'earlier exclusion lost'
        assert summary['n']==len(rr) and summary['closed']==sum(x['result']['ok'] for x in rr)
        for cls,item in summary['by_class'].items():
            group=[x for x in rr if x['source']['f6class']==cls]
            assert item['n']==len(group) and item['closed']==sum(x['result']['ok'] for x in group)
            assert item['old_closed']==sum(x['old_ok'] for x in group)
    say('all 1000 deterministic source lines, all three pilot summaries, and retention of all 511 earlier exclusions')
    return records


def tamper_controls(rows):
    row=next(x for x in rows if x['result']['ok'] and len(x['result']['leaves'])>1)
    bad=copy.deepcopy(row);bad['result']['leaves'].pop()
    try:replay_one(bad)
    except AssertionError:pass
    else:raise AssertionError('incomplete seed cover accepted')
    row=next(x for x in rows if x['result']['ok'] and x['result']['leaves'][0]['certificate']['q_cover'])
    bad=copy.deepcopy(row);cert=bad['result']['leaves'][0]['certificate']
    code=cert['q_cover'][0][0];cert['q_cover']=[x for x in cert['q_cover'] if x[0]!=code]
    try:replay_one(bad)
    except AssertionError:pass
    else:raise AssertionError('missing sign combination accepted')
    say('tampered seed and sign covers rejected')

def main():
    if not __debug__:raise RuntimeError('run verifier without Python -O')
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--project-root',type=Path,default=HERE.parents[1])
    ap.add_argument('--all',action='store_true',help='independently replay all 3,000 pilot records')
    ap.add_argument('--workers',type=int,default=4)
    ap.add_argument('--receipt',type=Path)
    args=ap.parse_args();assert 1<=args.workers<=8
    start=time.perf_counter();source_checks(args.project_root)
    exact_algebra(args.project_root);arithmetic_controls();rational_reference_controls()
    controls=physical_controls();records=load_and_audit(args.project_root);tamper_controls(records['bounded'])
    library() # compile/load in parent before starting clean spawn workers
    replayed={}
    with concurrent.futures.ProcessPoolExecutor(max_workers=args.workers,mp_context=multiprocessing.get_context('spawn')) as ex:
        for mode,rows in records.items():
            chosen=rows if args.all else [rows[i] for i in [0,8,100,140,250,400,600,750,841,884,900,999]]
            results=list(ex.map(replay_one,chosen,chunksize=4))
            replayed[mode]=dict(records=len(chosen),closed=sum(x[0] for x in results),seed_leaves=sum(x[1] for x in results),minor_witnesses=sum(x[2] for x in results))
            assert replayed[mode]['closed']==sum(x['result']['ok'] for x in chosen)
            say(f'{mode}: '+json.dumps(replayed[mode]))
    receipt=dict(status='PASS',all_records=args.all,workers=args.workers,start_method='spawn',
                 replay=replayed,physical_negative_controls=controls,wall_seconds=time.perf_counter()-start,
                 source_digest=hashlib.sha256((HERE/'engine.cpp').read_bytes()).hexdigest())
    if args.receipt:
        if args.receipt.exists():raise FileExistsError(args.receipt)
        args.receipt.write_text(json.dumps(receipt,indent=2)+'\n')
    print(json.dumps(receipt,indent=2),flush=True)

if __name__=='__main__':main()
