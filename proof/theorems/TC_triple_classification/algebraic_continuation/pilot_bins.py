"""Diagnostic: strengthen the original exhaustive column cover algebraically."""
import argparse,gzip,json,time
import numpy as np
from flint import ctx
from load_native import R,NC,MS
import seedcert as SC
import patches as P
import bin_quadratic as BQ

if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--index',type=int,required=True);p.add_argument('--output',required=True)
    p.add_argument('--max-bins',type=int);a=p.parse_args();ctx.prec=160
    records=json.load(gzip.open(R.DEFAULT_ATLAS,'rt'))['seeds'];ball=SC.Ball(records[a.index])
    if not SC.certify_c1(ball,max_boxes=4096)['ok']:raise ArithmeticError('C1 failed')
    model=P.normal_form(ball,prec=160);roots=NC.propose_roots(np.exp(1j*MS.numeric(model['Q0']).reshape(6,6)))
    cover=NC.complete_cover(ball,model,roots)
    _,_,cliques,_=NC.contract_patterns(model,roots,cover)
    cover=BQ.restrict_cliques(cover,cliques)
    refined,proof=BQ.prune(model,cover,max_bins=a.max_bins,progress=lambda row:print(json.dumps(row),flush=True))
    pp,bb,cliques,_=NC.contract_patterns(model,refined['roots'],refined)
    proof.update(index=a.index,status='EXPERIMENTAL DIAGNOSTIC ONLY',remaining_patterns=len(cliques),
                 column_errors={str(c):str(b['epsilon']) for c,b in bb.items()})
    with open(a.output,'w') as f:json.dump(proof,f,indent=2)
