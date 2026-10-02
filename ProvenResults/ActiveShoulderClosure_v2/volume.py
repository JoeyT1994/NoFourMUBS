"""Certified four-dimensional seed-volume lower bound, never tau-tree mass.

Tile each open root by an exact, finite dyadic mesh and ask whole-box
containment. Accepted mesh cells have disjoint interiors. Closed faces
are checked too. A mesh failure is not evidence that its interior is open.
"""
import argparse,json,time
from fractions import Fraction as F
from itertools import product
from geometry import initial_box
from tree import query_tree
from assemble import load_shard,sha

def measure(region,records,subdivisions=4):
    if type(subdivisions)!=int or subdivisions<1:raise ValueError('positive subdivision count')
    start=time.process_time();total=F(0);certified=F(0);rows=[]
    for record in records:
        c,r=initial_box(region,record['root']);vol=F(1)
        for h in r:vol*=2*h
        count=subdivisions**4 if record['closed'] else 0
        if not record['closed']:
            rr=[h/subdivisions for h in r]
            for k in product(range(subdivisions),repeat=4):
                cc=[x-h+(2*i+1)*hh for x,h,i,hh in zip(c,r,k,rr)]
                count+=int(query_tree(region,record,cc,rr))
        lower=vol*F(count,subdivisions**4);total+=vol;certified+=lower
        rows.append(dict(root=record['root'],certified_cells=count,cells=subdivisions**4,
                         seed_volume=str(vol),certified_seed_volume_lower_bound=str(lower)))
    return dict(method='exact closed mesh containment; lower bound',subdivisions_per_axis=subdivisions,
                total_seed_volume=str(total),certified_seed_volume_lower_bound=str(certified),
                certified_volume_fraction_lower_bound=str(certified/total) if total else '1',
                certified_fraction_float=float(certified/total) if total else 1,cpu_seconds=time.process_time()-start,roots=rows)

def main():
    from pathlib import Path
    ap=argparse.ArgumentParser(description=__doc__);ap.add_argument('--region',type=Path,required=True);ap.add_argument('--forest',type=Path,required=True);ap.add_argument('--output',type=Path,required=True);ap.add_argument('--subdivisions',type=int,default=4);a=ap.parse_args()
    if a.output.exists():ap.error('fresh output required')
    reg=json.loads(a.region.read_text());rows=load_shard(a.forest,reg,sha(a.region))
    if 'grid' not in reg:ap.error('reported union-volume requires the disjoint grid roots')
    if {r['root'] for r in rows}!=set(range(len(reg['roots']))):ap.error('complete forest required')
    r=measure(reg,rows,a.subdivisions);r.update(region_sha256=sha(a.region),forest_sha256=sha(a.forest))
    a.output.write_text(json.dumps(r,indent=2)+'\n');print(json.dumps({k:v for k,v in r.items() if k!='roots'}))
if __name__=='__main__':main()
