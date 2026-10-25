#!/usr/bin/env python3
"""Exact finite certificate for a conditional full-domain 72-isotropy theorem.

Hypotheses for each of two phase matrices:
  tangent predictor horizontal Frobenius norm <=1/5;
  phase correction outside lower-right 3x3 <=153/10000;
  phase correction inside lower-right 3x3 <=11/50.
All claims below use Python integers and Fractions only.  The hypotheses
must be established by the chart certificate; this script does not do so.
"""
from collections import Counter
from fractions import Fraction as F
from itertools import combinations, permutations
import hashlib
import json


def check():
    def atan_partial(x,n):
        return sum((-1)**k*x**(2*k+1)/F(2*k+1) for k in range(n))
    pi_lower=16*atan_partial(F(1,5),6)-4*atan_partial(F(1,239),3)
    sqrt3_lower=F(173205,100000)
    assert sqrt3_lower**2<3
    tangent_bound=F(4,5)/sqrt3_lower
    visible=F(153,10000)
    hidden=F(11,50)
    admissible={}
    margins={}
    for gap in (1,2,3):
        for m in range(9):
            margin=gap*pi_lower/3-tangent_bound-(8-m)*visible-m*hidden
            admissible[gap,m]=margin>0
            margins[gap,m]=margin
    assert admissible[2,2]
    assert min(v for key,v in margins.items() if admissible[key])>F(1,20)
    assert F(109,500)**2<F(11,50)**2*(1-F(109,1000)**2)

    # Exact maximum rectangle norm on the four-dimensional Fourier tangent.
    basis=[]
    for k in range(4):
        f=[0,int(k==0),int(k==1)]
        g=[0,int(k==2),int(k==3)]
        basis.append([[(i%2)*f[j%3]+(j%2)*g[i%3] for j in range(6)] for i in range(6)])
    pairs=list(combinations(range(6),2))
    maxnorm=F(0)
    for i,k in pairs:
        for j,l in pairs:
            v=[b[i][j]-b[i][l]-b[k][j]+b[k][l] for b in basis]
            norm2=F(2,3)*(v[0]**2+v[0]*v[1]+v[1]**2+v[2]**2+v[2]*v[3]+v[3]**2)
            maxnorm=max(maxnorm,norm2)
    assert maxnorm==F(4,3)

    rho=F(3,20)
    boundary_extract=rho+F(4,3)*rho**2+F(10,3)*rho**3+F(249,24)*rho**4
    assert boundary_extract==F(251523,1280000)<F(1,5)
    assert F(1,5)-boundary_extract==F(4477,1280000)

    ps=list(permutations(range(6)))
    affine={tuple((u*i+b)%6 for i in range(6)):u for u in (1,-1) for b in range(6)}
    stabilizers=0
    visible_witnesses=0
    hidden_witnesses=0
    witness_counts=Counter()
    sha=hashlib.sha256()
    for ir,r in enumerate(ps):
        for ic,c in enumerate(ps):
            if r in affine and c in affine and affine[r]==affine[c]:
                stabilizers+=1
                continue
            witness=None
            # First exploit rectangles whose eight occurrences are all visible.
            for i,k in pairs:
                cols=[j for j in range(6)
                      if (k<3 or j<3) and (max(r[i],r[k])<3 or c[j]<3)]
                if len(cols)<2:
                    continue
                j=cols[0]
                for l in cols[1:]:
                    discrepancy=((i-k)*(j-l)-(r[i]-r[k])*(c[j]-c[l]))%6
                    gap=min(discrepancy,6-discrepancy)
                    if gap:
                        witness=(i,k,j,l,gap,0)
                        break
                if witness is not None:
                    break
            if witness is not None:
                visible_witnesses+=1
            else:
                # Exactly 100 pairs require a rectangle containing hidden cells.
                for i,k in pairs:
                    for j,l in pairs:
                        discrepancy=((i-k)*(j-l)-(r[i]-r[k])*(c[j]-c[l]))%6
                        gap=min(discrepancy,6-discrepancy)
                        if not gap:
                            continue
                        cells=((i,j),(i,l),(k,j),(k,l))
                        m=sum(a>=3 and b>=3 for a,b in cells)+sum(r[a]>=3 and c[b]>=3 for a,b in cells)
                        if admissible[gap,m]:
                            witness=(i,k,j,l,gap,m)
                            break
                    if witness is not None:
                        break
                assert witness is not None,('unexcluded pair',r,c)
                hidden_witnesses+=1
            i,k,j,l,gap,m=witness
            assert admissible[gap,m]
            witness_counts[gap,m]+=1
            sha.update(bytes((ir//256,ir%256,ic//256,ic%256,i,k,j,l,gap,m)))
    assert stabilizers==72
    assert visible_witnesses==518228
    assert hidden_witnesses==100
    assert stabilizers+visible_witnesses+hidden_witnesses==720**2
    return {
        'status':'PASS',
        'theorem':'conditional on the three explicit phase-tube hypotheses',
        'tangent_radius':'1/5',
        'visible_phase_correction':'153/10000',
        'hidden_phase_correction':'11/50',
        'rectangle_tangent_norm_squared':'4/3',
        'boundary_radius':'3/20',
        'boundary_extraction_upper_bound':str(boundary_extract),
        'boundary_extraction_strict_margin':str(F(1,5)-boundary_extract),
        'pairs_checked':720**2,
        'stabilizers':stabilizers,
        'visible_rectangle_exclusions':visible_witnesses,
        'additional_hidden_rectangle_exclusions':hidden_witnesses,
        'witness_counts':{f'gap{a}_hidden{b}':v for (a,b),v in sorted(witness_counts.items())},
        'witness_sha256':sha.hexdigest(),
        'critical_margin_greater_than':'1/20',
    }

if __name__=='__main__':
    print(json.dumps(check(),sort_keys=True,indent=2))
