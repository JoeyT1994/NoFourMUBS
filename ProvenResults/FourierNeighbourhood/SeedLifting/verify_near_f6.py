"""Replay the new near-F6 cubes and audit the analytic closure constants."""
from fractions import Fraction as Q
from itertools import combinations,product
from pathlib import Path
from collections import Counter
import argparse,importlib.util,json,sys,time
from flint import arb,ctx
import near_f6 as n
from residual_lift import certify_f6,sharp_R_cap
from fourier_max_R import maximum_corner_R

HERE=Path(__file__).resolve().parent
spec=importlib.util.spec_from_file_location('block_classification',HERE.parents[1]/'FourierBlocks/FourierBlockClassification.py')
blocks=importlib.util.module_from_spec(spec);spec.loader.exec_module(blocks)


def add(*zs):return tuple(sum(z[k] for z in zs) for k in range(2))
def neg(z):return tuple(-x for x in z)
def norm2(z):return z[0]**2-z[0]*z[1]+z[1]**2
def root(k):return blocks.ROOTS[k%3]
def dft(v):return [add(*(blocks.mul(v[j],root(j*k)) for j in range(3))) for k in range(3)]


def exact_R(seed):
    a,b,c,d=seed;one=(1,0)
    s,t=neg(add(one,a,b)),neg(add(one,c,d))
    r=neg(add(one,blocks.mul(c,blocks.star(a)),blocks.mul(d,blocks.star(b))))
    X,Y,Z=map(norm2,(s,t,r));p=X+Y+Z
    srbt=blocks.mul(blocks.mul(s,r),blocks.star(t));J=2*srbt[0]-srbt[1]
    W=X*Y+X*Z+Y*Z-X*Y*Z
    g,eta=27-3*p+J,9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J
    return 4*g*g*eta-chi*chi


def factorization_audit():
    """Exact Laurent identities, for arbitrary unit parameters, not samples."""
    import sympy as S
    p,q,r,s,w=S.symbols('p q r s w')
    def reduce(x):return S.rem(S.expand(x),w*w+w+1,w).expand()
    def phase(k):return (S.Integer(1),w,-1-w)[k%3]
    def star(x):
        return reduce(S.sympify(x).subs({p:1/p,q:1/q,r:1/r,s:1/s,w:-1-w},simultaneous=True))
    def fourier(v):return [reduce(sum(v[k]*phase(j*k) for k in range(3))) for j in range(3)]
    v,ww=[1,p,q],[1,r,s];vh=fourier(v)
    A=[reduce(vh[k]*star(vh[(k-1)%3])) for k in range(3)]
    alpha=[reduce(ww[m]*star(ww[(m+1)%3])) for m in range(3)]
    ah,alh=fourier(A),fourier(alpha)
    assert ah[0]==0
    wanted_A=[3*(q+w/p+(-1-w)*p/q),3*(p+w*q/p+(-1-w)/q)]
    wanted_alpha=[1/r+w*r/s+(-1-w)*s,1/r+(-1-w)*r/s+w*s]
    assert all(reduce(x-y)==0 for x,y in zip(ah[1:],wanted_A))
    assert all(reduce(x-y)==0 for x,y in zip(alh[1:],wanted_alpha))
    correlations=[]
    for k in range(3):
        z=[reduce(ww[m]*vh[(k-m)%3]) for m in range(3)]
        zh=fourier(z)
        autocorrelation=reduce(sum(z[m]*star(z[(m+1)%3]) for m in range(3)))
        convolution=reduce(sum(alpha[m]*A[(k-m)%3] for m in range(3)))
        assert reduce(autocorrelation-convolution)==0
        assert reduce(sum(zh[i]*star(zh[i])*phase(i) for i in range(3))/3-autocorrelation)==0
        for i in range(3):
            D=-sum(phase(i*m-m*j+j*k)*ww[m]*v[j] for m in range(3) for j in range(3))/3
            assert reduce(zh[i]+3*D)==0
        correlations.append(autocorrelation)
    ch=fourier(correlations)
    assert all(reduce(ch[j]-alh[j]*ah[j])==0 for j in range(3))
    return dict(arithmetic='exact Laurent polynomials over Q(omega)',
                nonconstant_factor_products=2,autocorrelations=3,block_entries=9)


def algebra_audit():
    result=blocks.run()
    for record in result['records']:
        if not record['flat']:
            squared=[Q(norm2(z),9) for row in record['D_numerators_over_3'] for z in row]
            assert max(squared)<=3
            assert any(abs(s-1)>=Q(1,9) for s in squared)
    for p,q in product(range(3),repeat=2):
        v=[root(0),root(p),root(q)];vh=dft(v)
        A=[blocks.mul(vh[k],blocks.star(vh[(k-1)%3])) for k in range(3)]
        ah=dft(A)
        alpha=[blocks.mul(v[m],blocks.star(v[(m+1)%3])) for m in range(3)]
        alh=dft(alpha)
        assert ah[0]==(0,0)
        assert all(norm2(z) in (0,81) for z in ah[1:])
        assert all(norm2(z) in (0,9) for z in alh[1:])
        assert all(z==(0,0) for z in ah[1:]) == (q==2*p%3)
        assert all(z==(0,0) for z in alh[1:]) == (q==2*p%3)
    tao=blocks.TAO
    values=[]
    for rr in combinations(range(6),3):
        for cc in combinations(range(6),3):
            phases=[root(tao[rr[i]][cc[j]]-tao[rr[i]][cc[0]]
                         -tao[rr[0]][cc[j]]+tao[rr[0]][cc[0]])
                    for i,j in ((1,1),(1,2),(2,1),(2,2))]
            values.append(exact_R(phases))
    assert max(values)==243
    return dict(grid_classification=result['counts'],Tao_max_R=243,
                coefficient_grid_pairs=9)


def constant_audit():
    h=Q(1,2**42);sqrt_h=Q(1,2**21);tau=60*sqrt_h;eps=1800*sqrt_h
    assert tau<Q(1,1000) and eps<Q(1,1000)
    assert 27*126<3600 and tau*tau==3600*h
    assert 97*tau<9 and 33*tau<3
    assert 16**2*3<28**2 and 18**2*2<(42-16)**2
    assert 42*h+28*tau<eps
    assert 14*eps+Q(1,80)<Q(1,40)<Q(1,30)
    assert Q(1,2)+576*eps<2 and 2**2<243
    assert 10*Q(1,2**46)<=h and (41*Q(1,2**46))**2<3
    assert 36*h<3 and 2*h<Q(1,10)
    assert Q(21,5)**2<27  # 2(2+e)/sqrt(3)<3 for e<=1/10
    assert 4*n.UNIFORM_RADIUS==Q(1,2**46)
    assert n.SMALL_M_REFERENCE_CAP==Q(1,2**46)**2
    # pi<22/7 implies seed distance budget strictly less than half uniform.
    assert Q(22,7)*Q(1,2**46)/36<n.SMALL_M_SEED_RADIUS
    assert 2*n.SMALL_M_SEED_RADIUS==n.UNIFORM_RADIUS
    return dict(F3_entry_radius=str(h),rank_one_phase_radius=str(Q(1,2**46)),
                uniform_seed_radius=str(n.UNIFORM_RADIUS),
                Fourier_reference_M_cap=str(n.SMALL_M_REFERENCE_CAP),
                Fourier_reference_seed_radius=str(n.SMALL_M_SEED_RADIUS),
                worst_analytic_distance=str(14*eps+Q(1,80)))


def frames_audit():
    matrices=[A for *_,A in n.frame_matrices()]
    assert len(matrices)==72 and max(sum(map(abs,row)) for A in matrices for row in A)==4
    def canonical(v):return min(tuple(sum(a*x for a,x in zip(row,v))%6 for row in A) for A in matrices)
    counts=Counter()
    for rr in combinations(range(6),3):
        for cc in combinations(range(6),3):
            v=tuple((rr[i]-rr[0])*(cc[j]-cc[0])%6 for i,j in ((1,1),(1,2),(2,1),(2,2)))
            counts[canonical(v)]+=1
            assert n.certify_f6_centered_cube(v,n.UNIFORM_RADIUS)['ok'],v
    expected={(0,0,2,4):48,(0,2,3,0):72,(0,2,3,1):144,
              (0,2,3,2):72,(1,2,2,4):36,(2,4,4,2):28}
    assert dict(counts)==expected
    assert {canonical(c['numerators']) for c in (*n.CUBES,*n.NEW_CUBES)}==set(expected)
    for case in (*n.CUBES,*n.NEW_CUBES):
        for A in matrices:
            image=tuple(sum(a*x for a,x in zip(row,case['numerators']))%6 for row in A)
            assert n.certify_f6_centered_cube(image,n.UNIFORM_RADIUS)['ok'],image
    assert not n.certify_f6_centered_cube((0,0,0,0),n.UNIFORM_RADIUS)['ok']
    assert not n.certify_f6_centered_cube((2,4,4,2),Q(1,10))['ok']
    return {str(k):v for k,v in counts.items()}


def replay(precision):
    ctx.prec=precision
    caps=[]
    for case in n.NEW_CUBES[1:]:
        cc,hh=n.cube_box(case);cap=sharp_R_cap(cc,hh)
        assert cap is not None and cap<arb(1)/4,(case,cap)
        caps.append(dict(cube=case['name'],R_cap=str(cap)))
    case=n.NEW_CUBES[0];cc,hh=n.cube_box(case)
    out=certify_f6(cc,hh,rows=tuple(range(6)),cols=tuple(range(6)),depth=22)
    assert out['ok'] and out['reason']=='residual_tube',out
    assert arb(out['column_distance'])<arb('0.031810')
    assert arb(out['R_cap'])>0  # No strict-R-only acceptance.
    for side in out['sides']:
        assert side['labels']==372 and side['retained_triples']==856
    for options in ({'budget':0},{'maxlabels':0},{'pair_budget':0},{'triple_budget':0}):
        fail=certify_f6(cc,hh,rows=tuple(range(6)),cols=tuple(range(6)),depth=22,**options)
        assert not fail['ok'],(options,fail)
    conditional=n.block_distance_bound(arb(1)/2**42,arb(1)/4)
    assert conditional['ok'] and arb(conditional['projector_distance_bound'])<arb(1)/40
    assert n.block_distance_bound(0,0)['ok']
    for h,m in ((arb(1)/2**41,0),(0,1),(-1,0),(0,-1)):
        assert not n.block_distance_bound(h,m)['ok']
    for case in n.NEW_CUBES:
        cc,hh=n.cube_box(case)
        assert n.certify_box(cc,[h/2 for h in hh])['ok']
        for *_,A in n.frame_matrices():
            transformed=[sum(a*c for a,c in zip(row,cc)) for row in A]
            assert n.certify_box(transformed,[arb(1)/2**50]*4)['ok'],case
    assert not n.certify_box([arb(0)]*4,[arb(1)]*4)['ok']
    assert not n.certify_box([arb('nan')]*4,[arb(0)]*4)['ok']
    nonvacuous=maximum_corner_R(arb(1)/2**52,0)
    assert 0<nonvacuous<arb(1)/2**92
    print('PASS:',precision,'bits: both analytic caps, complete 856-by-856 residual lift, 216 frames and failure controls',flush=True)
    return dict(precision=precision,analytic_caps=caps,residual_lift=out,conditional_bound=conditional,
                non_F6_reference_M=str(nonvacuous))


def main():
    parser=argparse.ArgumentParser(description=__doc__);parser.add_argument('--output',type=Path)
    args=parser.parse_args();start=time.monotonic()
    factors=factorization_audit();algebra=algebra_audit();constants=constant_audit();frames=frames_audit()
    print('PASS: exact 81-point classification, coefficient gaps, Tao R, rational constants and all 400 F6 corners',flush=True)
    reports=[replay(96),replay(160)]
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(json.dumps(dict(status='PASS',scope='All six F6 corner classes; analytic perturbation proof in NEAR_F6_CLOSURE.md',
            factorization=factors,algebra=algebra,constants=constants,F6_corner_classes=frames,replays=reports,
            seconds=time.monotonic()-start),indent=2)+'\n')


if __name__=='__main__':main()
