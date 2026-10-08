"""Exact affine-phase audit of movable references and complete seed tests."""
from pathlib import Path
from fractions import Fraction as F
from itertools import product
import argparse,json
from flint import ctx
import moving_reference_lift as m
from family_side_lift import certified_patch_center
from residual_lift import arb,acb

P=(F(1),F(0),F(0));Q=(F(0),F(1),F(0));ZERO=(F(0),)*3
add=lambda a,b:tuple(x+y for x,y in zip(a,b))
scale=lambda k,a:tuple(k*x for x in a)
sub=lambda a,b:add(a,scale(-1,b))
constant=lambda k:(F(0),F(0),F(k))

def phase(i,j,a=P,b=Q):
    t=ZERO if i%3==0 else a if i%3==1 else b
    return add(constant(F(i*j,6)),scale(j%2,t))


def equal(a,b):
    return a[:2]==b[:2] and (a[2]-b[2]).denominator==1


def identities():
    count=0;t=(ZERO,P,Q)
    for u,v in product((1,-1),range(3)):
        assert len({(u*i+v)%6 for i in range(6)})==6
        assert len({u*j%6 for j in range(6)})==6
        a,b=sub(t[(u+v)%3],t[v]),sub(t[(2*u+v)%3],t[v])
        for i,j in product(range(6),repeat=2):
            correction=sub(constant(-F(u*v*j,6)),scale(j%2,t[v]))
            assert equal(phase(i,j,a,b),add(phase((u*i+v)%6,u*j%6),correction))
            count+=1
    for i,j in product(range(6),repeat=2):
        assert equal(phase(i,j,scale(-1,P),scale(-1,Q)),scale(-1,phase(i,(-j)%6)))
        count+=1
        for which in (1,2):
            a=add(P,constant(F(1,2)))if which==1 else P
            b=add(Q,constant(F(1,2)))if which==2 else Q
            r=(i+3)%6 if i%3==which else i
            assert equal(phase(i,j,a,b),phase(r,j));count+=1
        for k in (1,2):
            s=(j+2*k*(j%2))%6
            assert equal(phase(i,j,add(P,constant(F(k,3))),add(Q,constant(F(2*k,3)))),phase(i,s))
            count+=1
    assert count==396
    return count


def image_control(a,b,x,y,op):
    sign=-1 if op['conjugate'] else 1
    t=(F(0),sign*a,sign*b);u,v,k=op['u'],op['v'],op['odd_shift']
    ma,mb=op['half_periods']
    assert x==t[(u+v)%3]-t[v]+F(k,3)-F(ma,2)
    assert y==t[(2*u+v)%3]-t[v]+F(2*k,3)-F(mb,2)
    assert 0<=x<F(1,2) and 0<=y<F(1,2)


def main():
    parser=argparse.ArgumentParser();parser.add_argument('--output',type=Path);args=parser.parse_args()
    count=identities();print('PASS:',count,'exact affine-phase generator identities for all real parameters',flush=True)
    checked=0
    for a,b in product((F(-7,3),F(-1,1024),F(0),F(7,360),F(3,17),F(51,2)),repeat=2):
        images=list(m.parameter_images(a,b));assert 1<=len(images)<=36
        for x,y,op in images:image_control(a,b,x,y,op);checked+=1
        certificate=m.reference_certificate(a,b)
        if certificate['kind']=='regional':
            x,y=map(F,certificate['image']);c=certificate['cell'];n=c['grid']
            assert F(c['a'],n)<=x<=F(c['a']+1,n) and F(c['b'],n)<=y<=F(c['b']+1,n)
            assert certificate['radius']==F(1,6*c['tolerance_denominator'])
        elif certificate['kind']=='F6':
            assert certificate['image']==['0','0'] and certificate['radius']==F(1,30)
        else:assert certificate['kind']=='uniform' and certificate['radius']==F(1,16384)
    assert m.reference_certificate(0,0)['radius']==F(1,30)
    fallback=m.reference_certificate(F(29,180),F(1,360))
    assert fallback['kind']=='uniform' and fallback['radius']==F(1,16384)
    assert m.reference_certificate(F(7,360),F(-1,2048))['radius']>=F(1,48)
    q=m.reference_certificate(F(7,360),F(-1,2048));q['radius']=F(1)
    assert m.reference_certificate(F(7,360),F(-1,2048))['radius']<F(1)
    print('PASS:',checked,'exact image-composition controls, regional membership, F6 specialization and metadata isolation',flush=True)
    reports=[]
    for precision in (96,160):
        ctx.prec=precision
        # Full previously certified non-F6 patch, tested through this policy.
        result=m.certify_box(certified_patch_center(),[arb(1)/2000]*4,F(7,360),F(0))
        assert result['ok'] and result['reason']=='residual_tube'
        assert arb(result['column_distance'])<arb(1)/50
        # A tiny reflected-reference seed box. A domain discard would not
        # test the lifting path, so require a completion-lift outcome here.
        a,b=F(7,360),F(-1,100000)
        seed=[F(2,3),-F(1,3)+2*a,-F(2,3),-F(2,3)+2*b]
        projected=m.certify_projected_box(seed,[F(1,10**7)]*4)
        assert projected['ok'] and projected['reason']=='residual_tube',projected
        assert m.projected_parameters(seed)==(a,b)
        reports.append(dict(precision=precision,regional_patch=result,reflected_probe=projected))
        print('PASS:',precision,'bits, complete regional patch and reflected-reference box:',projected['reason'],flush=True)
    ctx.prec=96
    for options in ({'budget':0},{'maxlabels':0},{'pair_budget':0},{'triple_budget':0}):
        assert not m.certify_box(certified_patch_center(),[arb(1)/2000]*4,F(7,360),F(0),**options)['ok']
    print('PASS: complete-cover and resource failure controls',flush=True)
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(json.dumps(dict(status='PASS',identities=count,image_controls=checked,replays=reports),indent=2)+'\n')


if __name__=='__main__':main()
