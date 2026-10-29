#!/usr/bin/env python3
"""Discover and validate an implicit K graph on an actual native chart.

This produces input for run_barrier.py. It is a regional regression and
does not classify a whole atlas ball. Numerical root finding only proposes
the graph centre; ImplicitGraph checks existence, uniqueness and coverage
of roots inside the specified K box.
"""
import argparse
from fractions import Fraction as Q
import json
from pathlib import Path
import numpy as np
from scipy.optimize import root
import scipy.linalg as sla
from flint import arb, ctx
from bootstrap import C, MS, NC, native_run as R
from intrinsic import NativeChart
from implicit import ImplicitGraph
import barrier as B


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--index',type=int,default=1864)
    parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args()
    if args.output.exists():parser.error('output exists')
    ctx.prec=160
    chart=NativeChart.from_atlas(R.DEFAULT_ATLAS,args.index)
    model=chart.model
    h=np.exp(1j*MS.numeric(model['Q0']).reshape(6,6))
    roots=NC.propose_roots(h)
    cover=NC.complete_cover(model['ball'],model,roots)
    prepared,bounds,cliques,_=NC.contract_patterns(model,roots,cover)
    preferred=[5,15,34,70,76,90]
    clique=preferred if preferred in cliques else cliques[0]
    pp,_,_,fit=R.PP.fit(model,prepared,bounds,cover,clique)
    kp=np.array([[float(pp[clique[c]]['v0'][r,0].mid()) for c in range(6)] for r in range(6)])
    kp-=kp[0:1]
    qh=MS.numeric(model['Q0'])[:,0]
    def all_values(x):
        k=np.exp(1j*np.r_[np.zeros(6),x].reshape(6,6));kk=k.conj().T@k
        return np.r_[[kk[a,b].real for a,b in C.PAIRS],
                     [kk[a,b].imag for a,b in C.PAIRS],((np.abs(h.conj().T@k)**2-6)/6).ravel()]
    def all_jacobian(x):
        phase=C.Z.mat(np.r_[qh,np.zeros(6),x][:,None])
        return MS.numeric(MS.jacobian(phase))[30:,42:]
    start=kp[1:].ravel()
    _,_,piv=sla.qr(all_jacobian(start).T,pivoting=True,mode='economic')
    selected=list(map(int,piv[:30]))
    proposal=root(lambda x:all_values(x)[selected],start,jac=lambda x:all_jacobian(x)[selected],tol=1e-11)
    if not np.isfinite(proposal.x).all() or np.max(np.abs(all_values(proposal.x)[selected]))>1e-9:
        raise ArithmeticError('no selected-equation root proposal')
    centre=[Q(float(v)) for v in proposal.x]
    trials=[]
    for wd,kd in ((10000,100),(100000,1000),(1000000,10000)):
        wb=[[-Q(1,wd),Q(1,wd)]]*4
        kb=[[v-Q(1,kd),v+Q(1,kd)] for v in centre]
        try:
            graph=ImplicitGraph(chart,B.interval_box(B.parse_box(wb)),B.interval_box(B.parse_box(kb)),selected=selected)
        except (ArithmeticError,ZeroDivisionError,ValueError) as exc:
            trials.append(dict(w_halfwidth=str(Q(1,wd)),reason=str(exc)))
            continue
        config=dict(index=args.index,root=B.serial_box(B.parse_box(wb)),
                    graph_k_box=B.serial_box(B.parse_box(kb)),graph_selected=selected,
                    graph_inverse_hex=graph.receipt['inverse_hex'],epsilon='1/1000000',
                    height=[1,0,0,0],partition='active',turns=False)
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(json.dumps(config,indent=2)+'\n')
        summary=dict(status=graph.receipt['status'],clique=clique,fit=fit,
                     selected_root_residual=float(np.max(np.abs(all_values(proposal.x)[selected]))),
                     remaining_residual_norm=float(np.linalg.norm(all_values(proposal.x)[graph.remaining])),
                     graph=graph.receipt,trials=trials,all_k_atlas_classification=False)
        args.output.with_suffix('.discovery.json').write_text(json.dumps(summary,indent=2)+'\n')
        print(json.dumps({k:summary[k] for k in ('status','clique','selected_root_residual','remaining_residual_norm')}))
        return 0
    raise ArithmeticError('graph certification failed on every pilot domain: '+str(trials))


if __name__=='__main__':raise SystemExit(main())
