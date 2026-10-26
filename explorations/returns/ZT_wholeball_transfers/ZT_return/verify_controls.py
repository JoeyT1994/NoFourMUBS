"""Negative controls for the certificate checker, using real supplied data."""
from pathlib import Path
from copy import deepcopy
import argparse,json
import zt_patch as P
from replay_geometry import membership

def main():
    p=argparse.ArgumentParser();p.add_argument('certificate');p.add_argument('output');a=p.parse_args()
    d=P.load_certificate(a.certificate);source=d['seeds'][6]
    model=P.normal_form(P.SC.Ball(source))
    group=next(g for g in source['transfers'] if g['kind']=='T1')
    target=P.SC.Ball(d['seeds'][group['target']]);box=group['boxes'][0]
    bad=deepcopy(group);bad['wind'][0]+=1
    result=P.Transfer(model,target,bad).check(box)
    assert not result['ok'], 'wrong winding was accepted'
    try:
        P.Transfer(model,target,group).check([2,-1,0,0,0])
    except ValueError:badbox=True
    else:badbox=False
    assert badbox,'malformed dyadic box was accepted'
    assert not membership((1,1,1,1,1),[-1,-1,-1,-1])
    assert membership((1,1,1,1,1),[1,1,1,1])
    # NaN must cause rejection, not enter the outward-rounding loop.
    try:P.Z.upper(P.arb('nan'))
    except ArithmeticError:nonfinite=True
    else:nonfinite=False
    assert nonfinite
    out=dict(status='PASS',wrong_winding_rejected=True,malformed_box_rejected=True,
             exact_sphere_witness_membership=True,nonfinite_bound_rejected=True)
    Path(a.output).write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out))

if __name__=='__main__':main()
