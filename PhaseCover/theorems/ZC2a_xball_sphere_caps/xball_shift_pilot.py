"""NUMERICAL comparison of extra axis-shift fractions on remaining holes."""
import argparse
import gzip
import json
from pathlib import Path
import time
import numpy as np
import xball_groups_build as G
from xball_axis_heuristics import optimized_axis,contains_direction


def main():
    ap=argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--caps',type=Path,default=G.F.B.ROOT/'results/xball_final_proposal.json')
    ap.add_argument('--weighted',type=Path,default=G.F.B.ROOT/'results/groups_weighted_proposal.json')
    ap.add_argument('--out',type=Path,default=G.F.B.ROOT/'results/shift_extra_pilot.json')
    ap.add_argument('--holes',type=int,default=12)
    args=ap.parse_args();started=time.perf_counter()
    base=json.loads(args.caps.read_text());weighted=json.loads(args.weighted.read_text())
    geometry={}
    for cap in base['caps']+weighted['caps']:
        key=tuple(cap['v'])
        if key not in geometry or G.F.B.scalar(cap['h'])<G.F.B.scalar(geometry[key]['h']):geometry[key]=cap
    hull,bad=G.F.B.hull_diagnostic(list(geometry.values()),bad_count=6000)
    holes=[]
    for direction in bad:
        if all(np.linalg.norm(direction-other)>.04 for other in holes):holes.append(direction)
        if len(holes)>=args.holes:break
    with gzip.open(G.F.B.ROOT/'data/xball_headers.json.gz','rt') as f:data=json.load(f)
    search=G.GroupSearch(data)
    curvature={row['group_index']:row['weighted_curvature'] for row in weighted['info']['groups']
               if 'weighted_curvature' in row}
    rows=[];chosen=[]
    for hi,direction in enumerate(holes):
        v=np.rint(direction*2**26).astype(np.int64)
        c,qc,dc=search.source.jet(v)
        y=(search.amat@qc+search.offsets)/search.radii[:,None]
        ff=search.r*(search.amat@dc)/search.radii[:,None,None]
        fe=ff@direction
        tangent2=np.sum(ff*ff,axis=(1,2))-np.sum(fe*fe,axis=1)
        # Match production score exactly: sqrt(tangent2) divided by sqrt(2).
        scores=(1-np.linalg.norm(y,axis=1))/np.maximum(1e-5,np.sqrt(np.maximum(tangent2,0))/2**.5)
        groups=[];baseline=[];extended=[]
        for gi in np.argsort(-scores)[:64]:
            gi=int(gi);tr=search.transfer(gi)
            if gi in curvature:tr.curvA=float(curvature[gi])
            local=tr.local_data(v)
            if any(side['const']+side['l']@direction<=1e-9 for side in local['sides']):continue
            optimum=optimized_axis(search,gi,direction)
            trials=[]
            for fraction in (0.,1.,.75,.5,.25):
                axis=(1-fraction)*direction+fraction*optimum;axis/=np.linalg.norm(axis)
                cap=tr.cap(axis,mode='local_sphere')
                contains=cap is not None and contains_direction(cap,direction)
                trials.append(dict(fraction=fraction,radius=None if cap is None else cap['info']['numerical_radius'],contains=contains))
                if contains:
                    extended.append(cap)
                    if fraction in (0.,1.,.5):baseline.append(cap)
            groups.append(dict(group_index=gi,weighted_curvature=gi in curvature,trials=trials))
            if len(groups)>=5:break
        old=max(baseline,key=lambda cap:cap['info']['numerical_radius']) if baseline else None
        new=max(extended,key=lambda cap:cap['info']['numerical_radius']) if extended else None
        if new:chosen.append(new)
        rows.append(dict(hole=hi,direction=direction.tolist(),baseline_radius=None if old is None else old['info']['numerical_radius'],
                         extended_radius=None if new is None else new['info']['numerical_radius'],
                         ratio=None if old is None or new is None else new['info']['numerical_radius']/old['info']['numerical_radius'],groups=groups))
        print(json.dumps({k:v for k,v in rows[-1].items() if k not in ('groups','direction')}),flush=True)
    ratios=[row['ratio'] for row in rows if row['ratio'] is not None]
    out=dict(status='NUMERICAL',caps=chosen,holes=rows,info=dict(hull=hull,curvature_groups=len(curvature),holes=len(rows),
             ratio_min=min(ratios),ratio_median=float(np.median(ratios)),ratio_max=max(ratios),
             improved=sum(r>1.000001 for r in ratios),seconds=time.perf_counter()-started))
    args.out.write_text(json.dumps(out,indent=2)+'\n');print(json.dumps(out['info']),flush=True)


if __name__=='__main__':main()
