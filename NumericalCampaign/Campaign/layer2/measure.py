"""Evidence-only cost strata; mathematical acceptance is audited separately."""
import argparse,collections,csv,json,math,statistics,sys
from fractions import Fraction as Q
from pathlib import Path
ROOT=Path(__file__).resolve().parents[3]
sys.path.insert(0,str(ROOT/'ProvenResults/FourierNeighbourhood/SeedAtlas'))
from atlas import distance_squared_turns

def main():
    p=argparse.ArgumentParser();p.add_argument('results',type=Path);p.add_argument('output',type=Path)
    p.add_argument('--supplemental',action='store_true',help='Do not project a targeted cohort onto all survivors')
    a=p.parse_args();rows=[];cpu=0.;groups=collections.defaultdict(list)
    for folder in sorted(a.results.iterdir()):
        if not (folder/'done.json').exists():continue
        meta=json.loads((folder/'done.json').read_text());cpu+=meta['julia_cpu_seconds']
        second=list(map(json.loads,(folder/'second.jsonl').open()))
        data=collections.defaultdict(list)
        for r in map(json.loads,(folder/'cover.jsonl').open()):data[r['cell']].append(r)
        sides=collections.defaultdict(list)
        if (folder/'sideleaf.jsonl').exists():
            for r in map(json.loads,(folder/'sideleaf.jsonl').open()):sides[r['cell']].append(r)
        ts=collections.defaultdict(list)
        for r in map(json.loads,(folder/'t2.jsonl').open()):ts[r['cell']].append(r)
        for r in second:
            cid=r['cell'];cellrows=data[cid];sc=r['cpu_seconds'];cpu+=sc
            evidence=next((x for x in cellrows if x.get('evidence_only')),None)
            julia_wall=next((x['wall_seconds'] for x in cellrows if x.get('done')),0.)
            completed=next((x for x in cellrows if x.get('done')),{})
            side_cpu=completed.get('side_tree_cpu_seconds',sum(x['cpu_seconds'] for x in sides[cid]))
            extra=side_cpu+sum(x['cpu_seconds'] for x in ts[cid]);cpu+=extra
            dist=None
            if r['certificate']['ok']:kind='second_pass_excluded'
            elif evidence['nD0']>0:kind='sampled_D0_positive_R'
            else:
                q2,_,_=distance_squared_turns(tuple(Q(x/(2*math.pi)) for x in r['theta']))
                dist=math.sqrt(float(q2))*2*math.pi
                kind='sampled_R_zero_near_Fourier' if evidence['Rmin']<=0<=evidence['Rmax'] and dist<=2*math.pi/2**r['level'] else 'other'
            closed=r['certificate']['ok']
            if not closed:
                accepted={tuple(x['path']) for x in sides[cid] if x['certificate']['ok']}
                accepted.update(tuple(x['path']) for x in ts[cid] if x['result'] is not None)
                closed=all(x['status']!='open' or tuple(x['path']) in accepted for x in cellrows if 'status' in x)
            row=dict(cell=cid,class_evidence_only=kind,closed_provisional=closed,
                second_cpu_seconds=sc,julia_cell_wall_seconds=julia_wall,post_cpu_seconds=extra,
                cost_proxy_seconds=sc+julia_wall+extra,atlas_distance_float=dist,evidence=evidence)
            rows.append(row);groups[kind].append(row)
    report=dict(cells=len(rows),measured_process_cpu_seconds=cpu,
        cpu_hours_full_linear=None if a.supplemental else cpu/max(len(rows),1)*623187/3600,
        cost_note='Process CPU includes Julia startup and accepted side-leaf replays, excludes separate Julia replay. Class means use cell wall-time for Julia plus Python CPU; diagnostic classes are not certificates.',
        near_Fourier_rule='No sampled D0 point; sampled R range contains zero; centre Euclidean atlas distance <= 2*rho (float evidence only).',
        strata={k:dict(n=len(v),closed_provisional=sum(x['closed_provisional'] for x in v),
            mean_cost_proxy_seconds=statistics.mean(x['cost_proxy_seconds'] for x in v),
            max_cost_proxy_seconds=max(x['cost_proxy_seconds'] for x in v)) for k,v in groups.items()},rows=rows)
    with a.output.open('x') as f:json.dump(report,f,indent=2);f.write('\n')
    print(json.dumps({k:v for k,v in report.items() if k!='rows'},indent=2))

if __name__=='__main__':main()
