"""Exact identities, adverse controls, and optional complete-cover replay."""
from fractions import Fraction as Q
from pathlib import Path
import argparse, gzip, hashlib, json, sys, time
from flint import arb, acb, ctx
from joint_lift import (Verifier, Jet, exact_references, carrier, path_box,
                        q_polynomial, ROOT, TERMS)


def identity_checks():
    import sympy as S
    a,b=S.symbols('a b',real=True)
    x,y=[0,2*S.pi/3,a],[0,4*S.pi/3,b]
    z=[v-u for u,v in zip(x,y)]
    q=sum(sign*S.sin(x[bb]-x[aa])*S.sin(y[d]-y[c])*S.sin(z[i]-z[j])
          for i,j,aa,bb,c,d,sign in TERMS)
    wanted=3*(S.sin(a-2*b)+S.sin(a+b)-S.sin(2*a-b))/4
    assert S.trigsimp(S.expand_trig(q-wanted)) == 0
    product_form=3*S.sin((a-2*b)/2)*S.sin((a+b)/2)*S.sin((2*a-b)/2)
    assert S.trigsimp(S.expand_trig(wanted-product_form),method='fu') == 0
    references=exact_references()
    assert len(references)==63
    # Sufficient constants for the structural approximation and normalized error.
    assert Q(36,20)<3 and Q(2,20)<=Q(1,10)
    assert 18**2*2 < (42-16)**2
    assert 4+256+256+1764 == 2280 and Q(2280,6)<20**2
    return dict(side_identity='exact symbolic',exact_F6_references=len(references))


def path_containing(turns,depth=64):
    # Invert the cyclic fundamental-domain scaling before binary subdivision.
    v=[Q(x)*(3 if k in (0,2) else 1) for k,x in enumerate(turns)]
    if not all(0<=x<=1 for x in v):
        raise ValueError('Point outside fundamental rectangle')
    lo=[Q(0)]*4;hi=[Q(1)]*4;path=''
    for d in range(depth):
        k=d%4;mid=(lo[k]+hi[k])/2
        if v[k]<=mid:
            path+='0';hi[k]=mid
        else:
            path+='1';lo[k]=mid
    return path


def controls():
    v=Verifier('1/1048576','1/1048576')
    assert v.evaluate('') is None, 'Full parameter domain must not pass a local test'
    near=v.evaluate('0'*64)
    assert near is not None and near['reason']=='F6_tube'
    try:
        Verifier('1/10','1')
    except ValueError:
        pass
    else:
        raise AssertionError('Out-of-theorem radius accepted')
    # A physical non-F6 Fourier point cannot be excluded with a permissive cap.
    # v=(1,1,1), w=(1,exp(2pi i/8),exp(2pi i/5)).
    permissive=Verifier('0','1000')
    family_path=path_containing([0,0,Q(1,8),Q(1,5)])
    assert permissive.evaluate(family_path) is None
    # Jet rules: an exact real polynomial gives exact values and derivatives.
    j=Jet(2,[acb(1),acb(0),acb(0),acb(0)])
    f=j*j*j+3*j
    assert f.v==14 and f.d[0]==15 and all(x==0 for x in f.d[1:])
    return dict(broad_domain_rejected=True,F6_local_tube=True,
                physical_nonF6_not_discarded=True,out_of_range_rejected=True)


def audit_paths(paths):
    """Exact prefix partition audit via the corresponding dyadic intervals."""
    endpoint=Q(0)
    for path in sorted(paths):
        assert set(path)<=set('01')
        start=Q(int(path,2) if path else 0,2**len(path))
        assert start==endpoint, 'Missing, duplicate, overlapping, or nested path'
        endpoint+=Q(1,2**len(path))
    assert endpoint==1, 'Incomplete fundamental-domain cover'


def replay(source,h,m,precision=160):
    ctx.prec=precision
    reader=gzip.open if str(source).endswith('.gz') else open
    with reader(source,'rt') as stream:
        records=[json.loads(line) for line in stream]
    audit_paths([r['path'] for r in records])
    verifier=Verifier(h,m)
    start=time.process_time()
    accepted=0;open_count=0
    for record in records:
        if record['reason']=='open':
            open_count+=1
            continue
        assert verifier.evaluate(record['path']) is not None, record
        accepted+=1
    return dict(status='PASS' if not open_count else 'PASS_PARTIAL_ONLY',
                precision=precision,accepted=accepted,open=open_count,
                cpu_seconds=time.process_time()-start,
                leaf_sha256=hashlib.sha256(source.read_bytes()).hexdigest())


def native_caps(h='1/1048576',m='1/1048576'):
    sys.path.insert(0,str(ROOT/'ProvenResults/CornerBounds/PairedSidePrune'))
    from paired_prune import sharp_R_cap
    result=[]
    for bits in (96,160):
        ctx.prec=bits
        radius=arb(Q(h).numerator)/Q(h).denominator
        cap=sharp_R_cap([arb(k)*arb.pi()/3 for k in (2,4,4,2)],[radius]*4)
        threshold=arb(Q(m).numerator)/Q(m).denominator
        assert cap is not None and cap<threshold
        result.append(dict(bits=bits,cap=str(cap)))
    return result


if __name__=='__main__':
    p=argparse.ArgumentParser()
    p.add_argument('--certificate',type=Path)
    p.add_argument('--h',default='1/1048576')
    p.add_argument('--M',default='1/1048576')
    p.add_argument('--precision',type=int,default=160)
    args=p.parse_args()
    ctx.prec=args.precision
    result=dict(status='PASS_METHOD_CHECKS_ONLY',identities=identity_checks(),
                controls=controls(),native_caps=native_caps())
    if args.certificate:
        result['cover']=replay(args.certificate,args.h,args.M,args.precision)
    print(json.dumps(result,indent=2),flush=True)
