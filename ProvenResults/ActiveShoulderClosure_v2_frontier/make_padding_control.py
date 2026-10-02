"""Create an actual outward proof fixture with deliberately open padding."""
import bootstrap,gzip,json
from fractions import Fraction as F
from bootstrap import HERE
from geometry import pilot_radius
from transverse import DIRECTORY,attempt
from predicate import sha

def main():
    q=json.loads((DIRECTORY/'data/positive_controls.json').read_text())[0]
    c=[F(float.fromhex(x)) for x in q['centres_hex']];r=[pilot_radius()]*4
    terminal=attempt(c,r)
    if not terminal['ok']:raise ValueError('control box did not certify')
    bc=c.copy();br=r.copy();bc[0]+=r[0];br[0]*=2
    root=lambda c,r:dict(centers=list(map(str,c)),radii=list(map(str,r)))
    region=dict(format=2,layout='exact_boxes',roots=[root(bc,br),root([F(100)]*4,[F(1)]*4)])
    rp=HERE/'data/padding_region.json';bp=HERE/'data/padding_boxes.jsonl';fp=HERE/'receipts/padding_forest.jsonl.gz'
    if any(p.exists() for p in (rp,bp,fp)):raise ValueError('fresh fixture paths required')
    rp.write_text(json.dumps(region,indent=2)+'\n')
    bp.write_text(json.dumps(root(c,[x/2 for x in r]))+'\n')
    record=dict(root=0,nodes=3,closed=False,leaves=2,accepted_leaves=1,
        tree=[dict(path='',kind='split',axis=0,report=dict(closed=[],reason='control_split')),
              dict(path='0',kind='leaf',ok=True,report=dict(closed=[],reason='campaign_terminal',terminal=terminal)),
              dict(path='1',kind='leaf',ok=False,reason='outside_frontier')])
    with gzip.open(fp,'wt') as f:
        for q in (dict(type='header',format=2,region_sha256=sha(rp),roots=[0]),record,
                  dict(type='summary',roots=1,closed=0,status='UNVERIFIED')):f.write(json.dumps(q)+'\n')
if __name__=='__main__':main()
