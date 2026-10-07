"""Close an actual global-frontier box by polynomial reconstruction witnesses.

Sixteen dyadic children exactly cover the parent. Every accepted child has
an outward rule or two independently checked sign-pairing certificates.
Solver data never authorize acceptance. A partial result retains open leaves.
"""
from pathlib import Path
import itertools,json,time,hashlib,sys,gzip
import numpy as np
from flint import arb,ctx
from global_seed_cover import evaluate
from seed_taylor import Taylor
from robust_dual_proposal import propose
from verify_dual_witness import rounded_witness,aggregate,taylor_support
from reconstruction_polynomials import combined_polynomials
HERE=Path(__file__).resolve().parent

def guard(nums,den,h):
    for j,n in enumerate(nums):
        a=3*(arb.pi()*n/den+arb(0,h))
        for name,v in [('sin',a.sin()),('cos_minus_one',a.cos()-1)]:
            if not v.contains(0):return dict(coordinate=j,test=name,enclosure=str(v))
    return None

def main():
    import argparse
    ap=argparse.ArgumentParser();ap.add_argument('--parent',default='100110010110110101000110');ap.add_argument('--output',default='dual_parent_cover.json')
    ap.add_argument('--reuse');ap.add_argument('--replay-only',action='store_true')
    args=ap.parse_args();parent=args.parent;assert len(parent)%4==0
    cached={}
    if args.reuse:
        previous=json.loads((HERE/args.reuse).read_text());assert previous['parent']==parent
        cached={(r['path'],w['sigma']):w['proposal'] for r in previous['rows'] for w in r['witnesses']}
    if args.replay_only:assert args.reuse
    source_names=['dual_parent_cover.py','verify_dual_witness.py','reconstruction_polynomials.py',
                  'dual_reconstruction.py','global_seed_cover.py','seed_taylor.py']
    hashes={name:hashlib.sha256((HERE/name).read_bytes()).hexdigest() for name in source_names}
    ctx.prec=160;children=[parent+''.join(b) for b in itertools.product('01',repeat=4)]
    level=len(children[0])//4;den=2**level;T=Taylor(level);ctx.prec=160
    coefficients=T.coefficients(children);poly={sg:combined_polynomials(sg) for sg in [1,-1]}
    rows=[];start=time.monotonic()
    for path,co in zip(children,coefficients):
        now=time.monotonic();cheap=evaluate(path);lo,hi=T.enclosure(co)
        if cheap is None and (hi<0 or lo>=5):cheap=dict(reason='seed_Taylor',bounds=[str(lo),str(hi)])
        row=dict(path=path,closed=cheap is not None,cheap=cheap,witnesses=[])
        if cheap is None:
            nums=[2*int(path[j::4],2)+1-den for j in range(4)];h=arb.pi()/den
            g=guard(nums,den,h);assert g is not None
            for sg in [1,-1]:
                theta=np.pi*np.array(nums)/den
                proposal=cached.get((path,sg))
                if proposal is None:
                    assert not args.replay_only, 'Missing witness in replay-only mode'
                    proposal=propose(theta,sg,float(h.mid()))
                A,E=poly[sg];Y,lam,shifts=rounded_witness(proposal)
                ps=aggregate(A,E,Y,lam);check=taylor_support(ps,nums,h,degree=5,denominator=den)
                row['witnesses'].append(dict(sigma=sg,proposal=proposal,dual_positive_definite=True,shifts=shifts,Tao_absence=g,check=check))
                if not check['verified']:break
            row['closed']=len(row['witnesses'])==2 and all(w['check']['verified'] for w in row['witnesses'])
        row['seconds']=time.monotonic()-now;rows.append(row)
        complete=len(rows)==16;accepted=complete and all(r['closed'] for r in rows)
        receipt=dict(scope='One specified global-frontier box under strict maximality and M<5',parent=parent,
            parent_closed=accepted,partition_complete=complete,global_confinement_proved=False,
            source_sha256=hashes,solver_used=not args.replay_only,
            child_radius='pi/'+str(den),Taylor_degree=5,rows=rows,seconds=time.monotonic()-start)
        (HERE/args.output).write_text(json.dumps(receipt,indent=2)+'\n')
        print(len(rows),path[-4:],row['closed'],cheap['reason'] if cheap else [w['check']['support_upper_decimal'] for w in row['witnesses']],round(row['seconds'],2),flush=True)
    assert [r['path'] for r in rows]==children
    print('Entire parent closed:',accepted,'seconds',time.monotonic()-start,flush=True)
if __name__=='__main__':main()
