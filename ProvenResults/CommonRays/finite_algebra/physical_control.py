"""Cross-check: accept fixed dyadic root proposals of the archive's CWT
product reconstruction by interval contraction, not root search.

Physicality of these enclosures rests on the archive's CWT/Omega
reconstruction theorem, which is NOT an accepted input of the active project.
The certificate used by the active library is active_control.py.
"""
from pathlib import Path
import hashlib
import itertools as it
import json
import sys
from flint import arb,acb,acb_mat,ctx

HERE=Path(__file__).resolve().parent
sys.path.insert(0,str(HERE))
from interval_carrier import side_coeff,poly,adjoint


def root(coeff,proposal,power):
    center=acb(*[float.fromhex(x)for x in proposal])
    derivative=[i*coeff[i]for i in range(1,len(coeff))]
    yc=1/poly(derivative,center)
    Y=acb(yc.real.mid(),yc.imag.mid())
    radius=arb(2)**(-power)
    delta=acb(arb(0,radius),arb(0,radius));X=center+delta
    C=1-Y*poly(derivative,X)
    K=-Y*poly(coeff,center)+C*delta
    assert abs(C.real)+abs(C.imag)<1
    assert delta.real.contains_interior(K.real) and delta.imag.contains_interior(K.imag)
    return X


def side_block(S,u,proposals,power):
    s,t,r,A,B=S[:5]
    xs=[root([-u,u*s.conjugate(),-s,acb(1)],proposal,power)for proposal in proposals]
    assert len(xs)==3 and all(not (x-y).contains(0)for x,y in it.combinations(xs,2))
    den=[poly(B,x)for x in xs]
    assert all(not z.contains(0)for z in den)
    ys=[-poly(A,x)/b for x,b in zip(xs,den)]
    return acb_mat([[acb(1)]*3,xs,ys])


def verify():
    data=json.loads((HERE/'physical_proposals.json').read_text())
    ctx.prec=data['precision_bits']
    ii=acb(0,1)
    # These are exact rational phases, not decimal input coordinates.
    a=acb(1);b=(-24-7*ii)/25;c=(-8-15*ii)/17;d=-ii
    E=[[acb(1)]*3,[acb(1),a,b],[acb(1),c,d]]
    h=side_coeff(E);v=side_coeff(list(map(list,zip(*E))))
    assert all(not z.contains(0)for z in (h[5],h[6],v[5],v[6]))
    assert (h[-2]*h[-2].conjugate()).real-4 < -arb(39)/10
    assert (v[-2]*v[-2].conjugate()).real-4 < 0
    products=[root([h[-1],-h[-2],acb(1)],s['u'],data['product_radius_power'])for s in data['sheets']]
    assert len(products)==2 and not (products[0]-products[1]).contains(0)
    for u,sheet in zip(products,data['sheets']):
        mv=(v[-2]-v[6]*h[5]/(h[6]*v[5])*(2*u-h[-2]))/2
        B=side_block(h,u,sheet['horizontal'],data['cubic_radius_power'])
        Ct=side_block(v,mv,sheet['vertical'],data['cubic_radius_power'])
        C=Ct.transpose();Em=acb_mat(E)
        assert all(not M.det().contains(0)for M in (Em,B,C))
        # Check the formal Laurent adjoints before invoking physicality.
        # Conjugation equals reciprocal only after that theorem is applied.
        for M in (B,C):
            sharp=acb_mat([[1/M[j,k]for j in range(3)]for k in range(3)])
            assert not sharp.det().contains(0)
        D=-C*adjoint(Em)*adjoint(B).inv()
        H=[[Em[i,j]if i<3 and j<3 else B[i,j-3]if i<3 else C[i-3,j]if j<3 else D[i-3,j-3]
            for j in range(6)]for i in range(6)]
        for k in (2,3):
            for rs in it.combinations(range(6),k):
                for cs in it.combinations(range(6),k):
                    if k==2 and rs==cs==(0,1):
                        assert H[0][0]==H[0][1]==H[1][0]==H[1][1]==1
                        continue
                    determinant=acb_mat([[H[i][j]for j in cs]for i in rs]).det()
                    bound=arb(1)/50 if k==2 else arb(1)/2
                    assert abs(determinant)>bound
        for i,j in it.combinations(range(6),2):
            for k,l in it.combinations(range(6),2):
                assert abs(H[i][k]*H[j][l]+H[i][l]*H[j][k])>arb(1)/50
    print('PASS physical rational seed: both guarded sheets, exactly one zero 2-minor, no H2 block',flush=True)
    return {'evidence_label':'Certified computation','seed':data['seed'],
            'sheets':2,'precision_bits':ctx.prec,
            'all_root_existence_and_uniqueness_by_interval_contraction':True,
            'formal_reciprocal_determinant_guards_checked_before_physicality':True,
            'horizontal_normalized_Omega_upper_bound':'-39/10',
            'vertical_normalized_Omega_upper_bound':'0 (strict)',
            'zero_2_minor_rows_columns_zero_based':[[0,1],[0,1]],
            'other_224_2_minors_modulus_lower_bound':'1/50',
            'all_400_3_minors_modulus_lower_bound':'1/2',
            'all_225_2_permanents_modulus_lower_bound':'1/50',
            'physical_existence_dependency':'Archive CWT reconstruction and Omega physical-domain theorem (not an active accepted input)',
            'not_claimed':'A triple, a quartet, or quartet exclusion at this seed'}


if __name__=='__main__':
    if not __debug__:raise SystemExit('Assertions must remain enabled')
    print(json.dumps(verify(),indent=2,sort_keys=True))
