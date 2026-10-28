#!/usr/bin/env python3
"""NUMERICAL centre diagnostics; no classification verdict is produced."""
import argparse
import json
from pathlib import Path

import bootstrap as B
import model as XM
import run_xball as RX
import numpy as np


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output',type=Path,required=True)
    args=parser.parse_args()
    if args.output.exists():parser.error('output exists')
    bound=RX.binding()
    _,model,_=XM.load_original()
    q=B.MS.numeric(model['Q0'])[:,0]
    roots=B.NC.propose_roots(np.exp(1j*q.reshape(6,6)))
    cover=B.NC.complete_cover(model['ball'],model,roots)
    prepared,_,cliques,_=B.NC.contract_patterns(model,roots,cover)
    values=[]
    for number,colors in enumerate(cliques):
        k=np.stack([B.MS.numeric(prepared[c]['v0'])[:,0] for c in colors],axis=1)
        phases=np.r_[q,k.ravel()]
        actions=B.MS.proposed_actions(phases)
        gauge=B.MS.group(actions[0])[0][1]
        jac=B.MS.numeric(B.MS.jacobian(B.C.Z.mat(phases[:,None])))
        s=np.linalg.svd(jac@B.MS.numeric(gauge),compute_uv=False)
        sk=np.linalg.svd(jac[:,36:]@np.kron(np.eye(6)-np.ones((6,6))/6,np.eye(6)),compute_uv=False)
        values.append(dict(number=number,colors=colors,status='NUMERICAL',
            rank_threshold=1e-8,full_rank_proposal=int(sum(s>1e-8)),
            fixed_H_K_rank_proposal=int(sum(sk>1e-8)),singular_values=s.tolist(),
            candidate_actions=actions,phases_hex=[float(v).hex() for v in phases]))
    if RX.binding()['id']!=bound['id']:raise ArithmeticError('source changed')
    args.output.parent.mkdir(parents=True,exist_ok=True)
    args.output.write_text(json.dumps(dict(status='NUMERICAL',binding=bound['id'],
        warning='Ranks, root proposals, and action scores are not proof evidence.',
        patterns=values),indent=2,allow_nan=False,default=lambda value:value.tolist())+'\n')


if __name__=='__main__':main()
