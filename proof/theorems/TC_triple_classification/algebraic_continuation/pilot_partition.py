"""Experimental full-domain partition on a rebuilt original all-K cover."""
import argparse,json,time
from load_native import R
import run_algebraic
import seed_partition as SP

old_final=R.final_pattern


def final(model,prepared,bounds,cover,clique,allow_fine=True):
    if not allow_fine:return old_final(model,prepared,bounds,cover,clique,allow_fine=False)
    start=time.monotonic()
    result=SP.certify(model,prepared,bounds,cover,clique,max_level=3,cell_cap=500)
    counts={s:sum(x['status']==s for x in result['leaves']) for s in set(x['status'] for x in result['leaves'])}
    print(json.dumps(dict(colors=list(clique),status=result['status'],cells=result['tested_cells'],
                          leaves=counts,seconds=time.monotonic()-start)),flush=True)
    return result


R.final_pattern=final
if __name__=='__main__':
    p=argparse.ArgumentParser();p.add_argument('--index',type=int,required=True);p.add_argument('--output',required=True)
    a=p.parse_args();row=R.run_ball(str(R.DEFAULT_ATLAS),a.index,R.binding(R.DEFAULT_ATLAS)['id'])
    row['status']='EXPERIMENTAL DIAGNOSTIC ONLY';row.pop('claim',None)
    with open(a.output,'w') as f:json.dump(row,f,indent=2)
