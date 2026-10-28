#!/usr/bin/env python3
"""Exact commuting symmetries and mixed quadratic obstruction at both crossings."""
import argparse
import hashlib
import json
from pathlib import Path
import sys
sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import bootstrap as B
import run_xball as RX
import sympy as sp
from sympy.polys.domains import QQ
from sympy.polys.matrices import DomainMatrix as DM


FIELD = QQ.algebraic_field(sp.sqrt(3))
ZERO = FIELD.zero
CS = [1, sp.sqrt(3)/2, sp.Rational(1,2), 0, -sp.Rational(1,2), -sp.sqrt(3)/2,
      -1, -sp.sqrt(3)/2, -sp.Rational(1,2), 0, sp.Rational(1,2), sp.sqrt(3)/2]
CO = [FIELD.from_sympy(sp.sympify(v)) for v in CS]
SI = [CO[(3-i)%12] for i in range(12)]
VARIABLES = [6*r+c for r in range(1,6) for c in range(1,6)] + [36+6*r+c for r in range(1,6) for c in range(6)]


def matrix(values):
    return DM([[FIELD.convert(v) for v in row] for row in values],
              (len(values), len(values[0])), FIELD).to_dense()


def identity(n):
    return matrix([[int(i==j) for j in range(n)] for i in range(n)])


def exact_system(phases):
    rows = [[ZERO for _ in range(72)] for _ in range(96)]
    residual = [ZERO]*96
    for re, im, den, ell in B.MS.TERMS:
        angle = sum(int(a)*b for a,b in zip(ell, phases)) % 12
        co, si = CO[angle]/den, SI[angle]/den
        residual[re] += co
        if im is not None: residual[im] += si
        for j, value in enumerate(ell):
            if value:
                rows[re][j] -= si*int(value)
                if im is not None: rows[im][j] += co*int(value)
    if any(v != ZERO for v in residual):
        raise ArithmeticError('centre is not an exact zero')
    return matrix(rows)


def covariance(phases, action):
    """Verify every Fourier term, including base phases, in F(Px)=YF(x)."""
    rr, ss, tt = [action[key] for key in ('R','S','T')]
    perm = [36*b+6*rr[r]+(ss if b==0 else tt)[c]
            for b in range(2) for r in range(6) for c in range(6)]
    p = matrix([[int(j==perm[i]) for j in range(72)] for i in range(72)])
    y = [[ZERO for _ in range(96)] for _ in range(96)]
    for block, columns in enumerate((ss,tt)):
        for number,(s,t) in enumerate(B.C.PAIRS):
            u,v=columns[s],columns[t]
            source=B.C.PAIRS.index(tuple(sorted((u,v))))
            sign=1 if u<v else -1
            differences=[]
            for r in range(6):
                angle=phases[36*block+6*r+t]-phases[36*block+6*r+s]
                other=phases[36*block+6*rr[r]+v]-phases[36*block+6*rr[r]+u]
                differences.append((angle-other)%12)
            if len(set(differences))!=1: raise ArithmeticError('nonconstant orthogonality phase')
            co,si=CO[differences[0]],SI[differences[0]]
            re=30*block+number;im=re+15;sr=30*block+source;ii=sr+15
            y[re][sr]=co;y[re][ii]=-sign*si
            y[im][sr]=si;y[im][ii]=sign*co
    for s in range(6):
        for t in range(6):
            offsets=[]
            for r in range(6):
                angle=phases[36+6*r+t]-phases[6*r+s]
                other=phases[36+6*rr[r]+tt[t]]-phases[6*rr[r]+ss[s]]
                offsets.append((angle-other)%12)
            if len(set(offsets))!=1:raise ArithmeticError('mixed terms do not covary')
            y[60+6*s+t][60+6*ss[s]+tt[t]]=FIELD.one
    y=matrix(y)
    if p**3 != identity(72) or y**3 != identity(96) or y.transpose()*y != identity(96):
        raise ArithmeticError('finite orthogonal action failed')
    return p,y


def independent_columns(a):
    return a.extract(list(range(a.shape[0])), list(a.rref()[1]))


def strings(a):
    return [[str(FIELD.to_sympy(v)) for v in row] for row in a.to_list()]


def analyse(entry, proposals):
    phases=sum(entry['H_exponents_mod12'],[])+sum(entry['K_exponents_mod12'],[])
    j=exact_system(phases);jd=j.extract(list(range(96)), VARIABLES)
    if jd.rank()!=51:raise ArithmeticError('not a rank-51 crossing')
    nd=jd.nullspace(divide_last=True).transpose()
    lift=matrix([[int(i==v) for v in VARIABLES] for i in range(72)])
    _,w,_,_=B.MS.group(proposals[0],rational=True)[0]
    w=matrix([[sp.Rational(str(w[i,k])) for k in range(72)] for i in range(72)])
    n=w*lift*nd
    if n.rank()!=4 or not (j*n).is_zero_matrix:raise ArithmeticError('kernel lift failed')
    actions=[covariance(phases,a) for a in proposals]
    (p0,y0),(p1,y1)=actions
    if p0*p1!=p1*p0 or y0*y1!=y1*y0:raise ArithmeticError('actions do not commute')
    for p,y in actions:
        if j*p!=y*j or p*w!=w*p:raise ArithmeticError('linear covariance failed')
    third=FIELD.one/FIELD.convert(3)
    g0=(identity(72)+p0+p0*p0).mul(third)
    g1=(identity(72)+p1+p1*p1).mul(third)
    n0=independent_columns(g0*n);n1=independent_columns(g1*n)
    if n0.shape!=(72,2) or n1.shape!=(72,2) or not (g0*g1*n).is_zero_matrix:
        raise ArithmeticError('fixed planes are not complementary two-planes')
    if not (n0.transpose()*n1).is_zero_matrix:
        raise ArithmeticError('fixed planes not orthogonal')
    mixed=[[ZERO]*4 for _ in range(96)]
    a0=n0.to_list();a1=n1.to_list()
    for re,im,den,ell in B.MS.TERMS:
        angle=sum(int(a)*b for a,b in zip(ell,phases))%12
        d0=[sum((FIELD.convert(ell[k])*a0[k][i] for k in range(72)),ZERO) for i in range(2)]
        d1=[sum((FIELD.convert(ell[k])*a1[k][i] for k in range(72)),ZERO) for i in range(2)]
        for i in range(2):
            for k in range(2):
                mixed[re][2*i+k]-=CO[angle]*d0[i]*d1[k]/den
                if im is not None:mixed[im][2*i+k]-=SI[angle]*d0[i]*d1[k]/den
    mixed=matrix(mixed)
    augmented_rank=jd.hstack(mixed).rank()
    if augmented_rank!=55:raise ArithmeticError('mixed obstruction does not have rank four')
    return dict(number=entry['number'],status='CERTIFIED EXACT CROSSING STRUCTURE',
        jacobian_rank=51,commuting_actions=True,exact_fourier_covariance=True,
        fixed_plane_dimensions=[2,2],orthogonal_fixed_planes=True,
        augmented_rank=augmented_rank,mixed_cokernel_rank=4,
        actions=[{k:a[k] for k in ('anchor','labels','R','S','T')} for a in proposals],
        fixed_plane_basis_0=strings(n0),fixed_plane_basis_1=strings(n1),
        mixed_hessian=strings(mixed),positive_radius_certified=False)


def main():
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('--output',type=Path,required=True)
    args=p.parse_args()
    if args.output.exists():p.error('output exists')
    base=RX.binding();root=Path(__file__).resolve().parents[1]
    sources=[root/'results/exact_centres.json',root/'results/centre_diagnostics.json']
    exact,diagnostics=[json.loads(f.read_text()) for f in sources]
    results=[]
    for number in (1,2):
        entry=exact['patterns'][number]
        proposals=[a for a in diagnostics['patterns'][number]['candidate_actions'] if a['score']<1e-8]
        if len(proposals)!=2:raise ArithmeticError('expected exactly two proposed actions')
        value=analyse(entry,proposals);results.append(value)
        print(json.dumps({k:v for k,v in value.items() if k not in ('fixed_plane_basis_0','fixed_plane_basis_1','mixed_hessian','actions')}),flush=True)
    if RX.binding()!=base:raise ArithmeticError('base changed')
    result=dict(status='CERTIFIED EXACT STRUCTURE ONLY',base_binding=base['id'],
        controller_sha256=hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        inputs_sha256={str(f.relative_to(root)):hashlib.sha256(f.read_bytes()).hexdigest() for f in sources},patterns=results)
    args.output.parent.mkdir(parents=True,exist_ok=True);args.output.write_text(json.dumps(result,indent=2)+'\n')


if __name__=='__main__':main()
