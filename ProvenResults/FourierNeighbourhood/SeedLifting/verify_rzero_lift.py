"""Replay and independently audit the R=0-crossing seed-to-carrier cube."""
from pathlib import Path
from fractions import Fraction as Q
import argparse,json
import sympy as sp
from flint import ctx
from rzero_lift import (arb,acb,ROWS,COLS,cube_center,reference,replay_cube,
                        certify_box,frame_matrices,collect_labels,side_triples,sharp_R_cap)
from prune import R_jet


def exact_reference():
    z=(1+sp.sqrt(3)*sp.I)/2
    clean=lambda x:sp.simplify(sp.expand_complex(x))
    H=sp.Matrix([[clean(z**((r*c)%6)) for c in COLS] for r in ROWS])
    assert (H*H.conjugate().T-6*sp.eye(6)).applyfunc(clean)==sp.zeros(6)
    E=H[:3,:3]
    assert [clean(E[i,j]-z**k) for (i,j),k in zip([(1,1),(1,2),(2,1),(2,2)],[4,5,0,3])]==[0]*4
    G=(6*sp.eye(3)-E*E.conjugate().T).applyfunc(clean)
    x=sp.symbols('x')
    assert clean(G.charpoly(x).as_expr()-(x-3)*((x-3)**2-5))==0
    s,t,q=G[1,0],G[2,0],G[2,1]
    X,Y,Z=[clean(a*sp.conjugate(a)) for a in (s,t,q)]
    p=X+Y+Z;J=clean(s*q*sp.conjugate(t)+sp.conjugate(s*q)*t)
    W=X*Y+X*Z+Y*Z-X*Y*Z
    g=27-3*p+J;eta=9-p+J;chi=W-(p-9)*(p-18)+(p-15)*J
    assert clean(4*g*g*eta-chi*chi)==0
    e=Q(1,1024);b=Q(7,1000);c=Q(3,250);k=Q(3,4)-Q(10,2048)
    assert Q(9,4)**2>5 and 4**2*6<10**2
    assert (e*e+b*b+c*c)/6+(e+b+c)**2/k<Q(1,40)**2<Q(1,36)**2
    print('PASS: exact physical F6 reference, Gram spectrum, R=0, rational final bound',flush=True)


def independent_matching():
    # Assign each active label individually to its unique close reference.
    # This audit neither uses the primary cost matrix nor its permutation search.
    cc=cube_center();hh=[arb(1)/2048]*4;cap=sharp_R_cap(cc,hh);H=reference()
    refs=[[[H[r][c] for r in range(3)] for c in range(3,6)],
          [[H[r][c] for c in range(3)] for r in range(3,6)]]
    for order,ref,limit in zip(((0,1,2,3),(0,2,1,3)),refs,(arb(7)/1000,arb(3)/250)):
        labels,gram,_=collect_labels([cc[i]for i in order],hh,cap,depth=20)
        side,_=side_triples(labels,gram)
        vectors,triples=side
        assignment={};bounds={}
        for i in {j for triple in triples for j in triple}:
            candidates=[]
            for j,r in enumerate(ref):
                value=sum(abs((vectors[i][k]-r[k]).real).upper()**2+
                          abs((vectors[i][k]-r[k]).imag).upper()**2 for k in range(3)).upper()
                if value<arb(1)/256:
                    candidates.append((j,value))
            assert len(candidates)==1,(i,candidates)
            assignment[i],bounds[i]=candidates[0]
        assert all({assignment[i] for i in triple}=={0,1,2} for triple in triples)
        worst=max(sum(bounds[i] for i in triple).upper() for triple in triples)
        assert worst<limit*limit,(worst,limit)
    print('PASS: independent unique-label matching and rectangular-coordinate error bounds',flush=True)


def controls():
    cc=cube_center();h=arb(1)/2048
    # Strict signs at two exactly specified rational offsets, inside the cube.
    positive=[c-h for c in cc]
    negative=[c+x*h/100 for c,x in zip(cc,(-40,-98,-76,-4))]
    assert R_jet(positive,[arb(0)]*4).v.real>0
    assert R_jet(negative,[arb(0)]*4).v.real<0
    # The already proved exact CornerBounds curve has maximal R=M(v)>0.
    v=arb(1)/8192;delta=2*v.atan()
    point=[cc[0],cc[1]+delta,cc[2],cc[3]+delta]
    M=2304*v*v/(1+v*v)**4
    assert M>0 and delta<h
    assert (R_jet(point,[arb(0)]*4).v.real-M).contains(0)
    assert certify_box(point,[h/8]*4)['ok']
    assert not certify_box(cc,[arb.pi()/512]*4)['ok']
    assert not certify_box([arb(0)]*4,[h/100]*4)['ok']
    assert not replay_cube(budget=0)['ok']
    assert not replay_cube(maxlabels=0)['ok']
    assert not replay_cube(depth=10)['ok']
    for _,_,_,matrix in frame_matrices():
        transformed=[sum(a*c for a,c in zip(row,cc)) for row in matrix]
        widths=[sum(abs(a)*h/100 for a in row) for row in matrix]
        assert certify_box(transformed,widths)['ok']
    # Periodic wrapping must be covered by an integer proposal and Arb check.
    assert certify_box([c+2*arb.pi()*n for c,n in zip(cc,(7,-3,8,-2))],[h/2]*4)['ok']
    print('PASS: both signs of R; strict D0 curve nonvacuity; 72 frames; periodicity; failure controls',flush=True)


def main():
    parser=argparse.ArgumentParser();parser.add_argument('--output',type=Path);args=parser.parse_args()
    exact_reference()
    result=replay_cube();assert result['ok'],result
    assert [r['retained_triples']for r in result['sides']]==[5017,8749]
    print(json.dumps(result,indent=2),flush=True)
    independent_matching()
    controls()
    ctx.prec=160
    higher=replay_cube();assert higher['ok'],higher
    independent_matching()
    ctx.prec=96
    print('PASS: independent 160-bit replay; complete R=0-crossing seed cube excludes quartet edges',flush=True)
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(json.dumps(dict(status='PASS',precision96=result,precision160=higher),indent=2)+'\n')


if __name__=='__main__':
    main()
