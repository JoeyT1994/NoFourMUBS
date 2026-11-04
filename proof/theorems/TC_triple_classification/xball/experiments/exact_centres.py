#!/usr/bin/env python3
"""Exact algebra for four proposed difficult centre triples; no radius claim."""
import argparse, hashlib, json, sys
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import bootstrap as B
import model as XM
import run_xball as RX
import numpy as np
import sympy as sp
from sympy.polys.domains import QQ
from sympy.polys.matrices import DomainMatrix


def check_exact(h,k,labels):
    field=QQ.algebraic_field(sp.sqrt(3))
    one=field.one;zero=field.zero
    cs=[1,sp.sqrt(3)/2,sp.Rational(1,2),0,-sp.Rational(1,2),-sp.sqrt(3)/2,-1,-sp.sqrt(3)/2,-sp.Rational(1,2),0,sp.Rational(1,2),sp.sqrt(3)/2]
    co=[field.from_sympy(sp.sympify(v)) for v in cs]
    si=[co[(3-j)%12] for j in range(12)]
    phases=[int(v) for v in np.r_[h.ravel(),k.ravel()]]
    variables=[6*r+c for r in range(1,6) for c in range(1,6)]+[36+6*r+c for r in range(1,6) for c in range(6)]
    jac=[[zero for _ in variables] for _ in range(96)];res=[zero for _ in range(96)]
    for re,im,den,ell in B.MS.TERMS:
        angle=sum(int(a)*b for a,b in zip(ell,phases))%12
        c=co[angle]/field.convert(den);s=si[angle]/field.convert(den)
        res[re]+=c
        if im is not None:res[im]+=s
        for j,v in enumerate(variables):
            if ell[v]:
                jac[re][j]-=s*int(ell[v])
                if im is not None:jac[im][j]+=c*int(ell[v])
    if any(v!=zero for v in res):raise ArithmeticError('rounded proposal is not an exact triple')
    if sorted(labels)!=[0,0,1,1,2,2]:raise ArithmeticError('unbalanced proposed spectrum')
    permutations=[]
    for basis in (h,k):
        perm=[]
        for a in range(6):
            nonzero=[]
            for b in range(6):
                angles=[(int(basis[r,b])-int(basis[r,a])+4*labels[r])%12 for r in range(6)]
                re=sum((co[v] for v in angles),zero);im=sum((si[v] for v in angles),zero)
                if re!=zero or im!=zero:
                    if re*re+im*im!=36*one:raise ArithmeticError('non-monomial exact representation')
                    nonzero.append(b)
            if len(nonzero)!=1:raise ArithmeticError('exact representation is not monomial')
            perm.append(nonzero[0])
        if len(set(perm))!=6:raise ArithmeticError('invalid permutation')
        B.MS.cycle_positions(perm)
        permutations.append(perm)
    rank=DomainMatrix(jac,(96,55),field).rank()
    return dict(status='CERTIFIED EXACT CENTRE',exact_residual_zero=True,
                dephased_jacobian_rank=rank,balanced_labels=labels,
                monomial_permutations=permutations,
                recognition_dependency='../seed_method/reference/r0153/CHECKPOINT.md Section 8',
                positive_neighborhood_radius_certified=False)


def main():
    parser=argparse.ArgumentParser(description=__doc__);parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args()
    if args.output.exists():parser.error('output exists')
    source=Path(__file__);base=RX.binding()
    _,model,_=XM.load_original();qh=B.MS.numeric(model['Q0']).reshape(6,6)
    roots=B.NC.propose_roots(np.exp(1j*qh));cover=B.NC.complete_cover(model['ball'],model,roots)
    prepared,_,cliques,_=B.NC.contract_patterns(model,roots,cover)
    h=np.array([[2*r*c%12 for c in range(6)] for r in range(6)],dtype=int)
    results=[]
    for number,colors in enumerate(cliques[:4]):
        kp=np.stack([B.MS.numeric(prepared[c]['v0'])[:,0] for c in colors],axis=1)
        canonical=kp-qh[:,0,None]-kp[0,None,:]+qh[0,0]
        k=np.rint(canonical/(np.pi/6)).astype(int)%12
        phases=np.r_[h.ravel(),k.ravel()]*(np.pi/6)
        actions=[a for a in B.MS.proposed_actions(phases) if a['anchor']==0]
        result=check_exact(h,k,list(map(int,actions[0]['labels'])))
        result.update(number=number,colors=colors,H_exponents_mod12=h.tolist(),K_exponents_mod12=k.tolist())
        results.append(result);print(json.dumps({key:result[key] for key in ('number','status','dephased_jacobian_rank')}),flush=True)
    if RX.binding()['id']!=base['id']:raise ArithmeticError('base source changed')
    result=dict(base_binding=base['id'],script_sha256=hashlib.sha256(source.read_bytes()).hexdigest(),
                sympy_version=sp.__version__,status='CERTIFIED EXACT CENTRES ONLY',
                warning='No positive-radius neighborhood or all-K census is proved by this calculation.',patterns=results)
    args.output.parent.mkdir(parents=True,exist_ok=True);args.output.write_text(json.dumps(result,indent=2)+'\n')

if __name__=='__main__':main()
