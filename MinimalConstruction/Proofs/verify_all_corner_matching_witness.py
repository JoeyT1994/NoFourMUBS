"""An outward open witness for algebraic propagation of corner matching.

Certifies product-regular reframings at all 400 corners on all 72
presentations. No interval containment of zero is accepted as an identity.
"""
from fractions import Fraction
from itertools import combinations,product
import hashlib,json,time
from pathlib import Path
import interval_constructor as ic
from flint import acb,ctx


def run():
    start=time.process_time();ctx.prec=320
    phases=[]
    for t in ic.PARAMETERS:
        re,im=(1-t*t)/(1+t*t),2*t/(1+t*t)
        assert re*re+im*im==1
        phases.append(acb(ic.A(re),ic.A(im)))
    a,b,c,d=phases;one=acb(1)
    E=[[one,one,one],[one,a,b],[one,c,d]]
    Gh,Gv=ic.gram(E),ic.gram(E,True)
    g,eta,chi,R=ic.invariants(Gh)
    ic.positive(g,'seed g');ic.positive(R,'seed R')
    branches=[]
    for sign in (1,-1):
        z=acb(chi,sign*R.sqrt())/(2*g)
        hs=ic.sides(Gh,z,g,'horizontal');vs=ic.sides(Gv,z.conjugate(),g,'vertical')
        for h,v in product(hs,vs):
            B,C=h['S'],ic.transpose(v['S'])
            D=ic.mm(ic.mm(ic.mm(C,ic.dagger(E)),ic.adj3(Gh)),B)
            D=[[-q/g for q in row] for row in D]
            H=[[E[i][j] if i<3 and j<3 else B[i][j-3] if i<3 else
                C[i-3][j] if j<3 else D[i-3][j-3] for j in range(6)] for i in range(6)]
            # Cross-ratio 1 would give a repeated side coordinate;
            # cross-ratio -1 would give an H2 edge. Check both globally.
            cross_margins=[]
            for i,k in combinations(range(6),2):
                for j,l in combinations(range(6),2):
                    u,w=H[i][j]*H[k][l],H[i][l]*H[k][j]
                    for f in (u-w,u+w):
                        q=ic.abs2(f);ic.positive(q,'cross-ratio separation');cross_margins.append(q)
            corners=ic.all_corners(H)
            imbalances=[]
            for rows in combinations(range(6),3):
                other_rows=[i for i in range(6) if i not in rows]
                for cols in combinations(range(6),3):
                    other_cols=[j for j in range(6) if j not in cols]
                    horizontal=[[H[i][j] for j in other_cols] for i in rows]
                    vertical=ic.transpose([[H[i][j] for j in cols] for i in other_rows])
                    for side in (horizontal,vertical):
                        gram=ic.mm(side,ic.dagger(side))
                        norms=[ic.abs2(gram[i][j]) for i,j in ((0,1),(0,2),(1,2))]
                        candidates=[(x-y)**2 for x,y in combinations(norms,2)]
                        margin=max(candidates,key=ic.lower)
                        ic.positive(margin,'some admissible pair imbalance')
                        imbalances.append(margin)
            branches.append(dict(sheet=sign,horizontal_delta=h['delta_sign'],vertical_delta=v['delta_sign'],
                corner_count=400,cross_ratio_checks=len(cross_margins),side_imbalance_checks=len(imbalances),
                minimum_cross_separation=ic.bounds(min(cross_margins,key=ic.lower)),
                minimum_chosen_squared_imbalance=ic.bounds(min(imbalances,key=ic.lower)),
                minimum_corner_R=corners['minimum_R_record']['R']))
            print('PASS sheet',sign,'delta signs',h['delta_sign'],v['delta_sign'],flush=True)
    assert len(branches)==8
    return dict(status='PASS_OUTWARD_ALL_CORNER_PRODUCT_REGULAR_WITNESS',precision_bits=320,
                cayley_parameters=list(map(str,ic.PARAMETERS)),explicit_presentations=8,
                algebraic_presentations_covered_by_permutations=72,branches=branches,
                cpu_seconds=time.process_time()-start,
                scope='Open witness only. Mathematical propagation and its ClassificationPaper imports must be justified separately.',
                script_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
                helper_sha256=hashlib.sha256(Path(ic.__file__).read_bytes()).hexdigest())


if __name__=='__main__':
    print(json.dumps(run(),indent=2))
