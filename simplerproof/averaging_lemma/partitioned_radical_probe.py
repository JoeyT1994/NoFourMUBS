"""Finite-parent proposals and exact checks; no global claim."""
from pathlib import Path
import argparse,json,time,hashlib,gzip
import numpy as np
from flint import arb,ctx
import partitioned_radical_dual as pd
from reconstruction_polynomials import combined_polynomials
from j_localizing import exact_combined as exact_j
from half_p_localizing import exact_combined as exact_p
from eta_bounded_dual import radii
from dual_parent_cover import guard
HERE=Path(__file__).resolve().parent

def run():
    ap=argparse.ArgumentParser();ap.add_argument('--path',default='110100110001100011101000');ap.add_argument('--bins',type=int,default=1);ap.add_argument('--output',default='partitioned_radical_probe.json');args=ap.parse_args()
    ctx.prec=160;path=args.path;den=2**(len(path)//4)
    assert len(path)%4==0
    nums=[2*int(path[j::4],2)+1-den for j in range(4)];theta=np.pi*np.array(nums)/den;h=arb.pi()/den
    g=guard(nums,den,h);assert g is not None
    rr,record=radii(path);AJ=exact_j();AP=exact_p();rows=[]
    endpoints={1:['0','9/4'],2:['0','1','9/4'],4:['0','1/2','1','3/2','9/4']}[args.bins]
    poly={s:combined_polynomials(s) for s in [1,-1]}
    for lo,hi in zip(endpoints,endpoints[1:]):
        for sg in [1,-1]:
            start=time.monotonic();proposal=pd.propose(theta,sg,float(h.mid()),rr,[lo,hi])
            print('Proposal',path,sg,lo,hi,proposal['quadratic_objective'],flush=True)
            ps,shifts=pd.exact_polynomials(*poly[sg],AJ,AP,proposal)
            check=pd.support(ps,nums,h,den,record,[lo,hi])
            rows.append(dict(path=path,sigma=sg,q_interval=[lo,hi],side_radius=record,proposal=proposal,shifts=shifts,Tao_absence=g,check=check))
            print('Check',check['support_upper_decimal'],'seconds',time.monotonic()-start,flush=True)
            result=dict(scope='Finite-parent box checks only',global_confinement_proved=False,complete=False,rows=rows)
            (HERE/args.output).write_text(json.dumps(result,indent=2)+'\n')
    result.update(complete=all(r['check']['verified'] for r in rows),parent=path,radical_endpoints=endpoints,
        sources={name:hashlib.sha256((HERE/name).read_bytes()).hexdigest() for name in ['partitioned_radical_probe.py','partitioned_radical_dual.py','half_p_localizing.py','half_p_localizing_algebra_receipt.json','half_p_certificate.json','j_localizing.py','j_localizing_dual.py','j_localizing_algebra_receipt.json','eta_bounded_dual.py','eta_support_receipt.json','conditioned_dual.py','radical_dual.py','higher_support.py','verify_dual_witness.py','reconstruction_polynomials.py','seed_bernstein.py','seed_taylor.py','scalar_bernstein.py','dual_parent_cover.py','direct_bernstein_audit.py']})
    (HERE/args.output).write_text(json.dumps(result,indent=2)+'\n')
    print('Complete',result['complete'],flush=True)
if __name__=='__main__':run()
