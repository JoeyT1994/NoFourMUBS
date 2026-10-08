"""Try a complete 16-child cover of a previously unresolved remote parent.

All acceptance is by outward scalar bounds or rounded whole-box dual
certificates. Solver status and numerical objectives are not acceptance.
"""
from pathlib import Path
import json,itertools,time,hashlib
import numpy as np
from flint import arb,ctx
from seed_bernstein import Bernstein
from scalar_bernstein import ScalarBernstein,conditions
from reconstruction_polynomials import combined_polynomials
from j_localizing import exact_combined
from j_localizing_dual import propose,exact_polynomials,checked_support
from dual_parent_cover import guard
from direct_bernstein_audit import audit
HERE=Path(__file__).resolve().parent

def run():
    ctx.prec=160;started=time.monotonic();parent='111011110001111001101011'
    proof=json.loads((HERE/'j_localizing_algebra_receipt.json').read_text())
    for name,h in proof['sources'].items():assert hashlib.sha256((HERE/name).read_bytes()).hexdigest()==h
    paths=[parent+''.join(bits) for bits in itertools.product('01',repeat=4)]
    original=paths.copy();closed=[];scalars=[];rows=[]
    T=Bernstein(7);co=T.coefficients(paths);T.audit_coefficients(paths[0],co[0])
    keep=[]
    bounds=T.enclosures(co,audit=False);audit(T,paths[0],co[0],bounds[0])
    for path,(lo,hi) in zip(paths,bounds):
        assert lo.is_finite() and hi.is_finite()
        if hi<=0 or lo>=5:closed.append(path);scalars.append(dict(path=path,condition='seed_R',bound=[str(lo),str(hi)]))
        else:keep.append(path)
    paths=keep
    for name,poly in conditions().items():
        if not paths:break
        T=ScalarBernstein(7,poly);co=T.coefficients(paths);T.audit_coefficients(paths[0],co[0]);keep=[]
        bounds=T.enclosures(co,audit=False);audit(T,paths[0],co[0],bounds[0])
        for path,(lo,hi) in zip(paths,bounds):
            assert lo.is_finite() and hi.is_finite()
            reject=(lo>arb(5).sqrt() or hi<-arb(5).sqrt()) if name=='signed_complement' else hi<0
            if reject:closed.append(path);scalars.append(dict(path=path,condition=name,bound=[str(lo),str(hi)]))
            else:keep.append(path)
        paths=keep
    print('Scalar exclusions',len(closed),'remaining children',len(paths),flush=True)
    polynomials={sg:combined_polynomials(sg) for sg in [1,-1]};AJ=exact_combined();pending=[]
    for path in paths:
        den=128;nums=[2*int(path[j::4],2)+1-den for j in range(4)]
        theta=np.pi*np.array(nums)/den;h=arb.pi()/den;g=guard(nums,den,h)
        if g is None:pending.append(path);continue
        accepted=[]
        for sign in [1,-1]:
            begin=time.monotonic();proposal=propose(theta,sign,float(h.mid()))
            ps,shifts=exact_polynomials(*polynomials[sign],AJ,proposal)
            check=checked_support(ps,nums,h,degree=5,denominator=den,hull_degree=3)
            rows.append(dict(path=path,sigma=sign,radius='pi/128',proposal=proposal,shifts=shifts,Tao_absence=g,check=check))
            accepted.append(check['verified'])
            print(path,sign,check['support_upper_decimal'],'seconds',time.monotonic()-begin,flush=True)
        if all(accepted):closed.append(path)
        else:pending.append(path)
        (HERE/'j_localizing_parent_cover.json').write_text(json.dumps(dict(parent=parent,complete=False,scalars=scalars,dual_rows=rows,closed_children=closed,pending_children=pending+paths[paths.index(path)+1:],global_confinement_proved=False),indent=2)+'\n')
    assert sorted(closed+pending)==sorted(original) and len(set(closed+pending))==16
    result=dict(parent=parent,complete=not pending,exact_child_partition=True,scalars=scalars,dual_rows=rows,closed_children=closed,pending_children=pending,global_confinement_proved=False,seconds=time.monotonic()-started,
        sources={name:hashlib.sha256((HERE/name).read_bytes()).hexdigest() for name in ['j_localizing_parent_cover.py','j_localizing.py','j_localizing_dual.py','j_localizing_algebra_receipt.json','practical_scalar_regions.json','positive_scalar_rule.py','conditioned_dual.py','radical_dual.py','higher_support.py','verify_dual_witness.py','reconstruction_polynomials.py','seed_bernstein.py','seed_taylor.py','scalar_bernstein.py','dual_parent_cover.py','direct_bernstein_audit.py']})
    (HERE/'j_localizing_parent_cover.json').write_text(json.dumps(result,indent=2)+'\n')
    print('Complete',not pending,'closed children',len(closed),'pending',pending,flush=True)

if __name__=='__main__':run()
