#!/usr/bin/env python3
"""NONRIGOROUS active-corner-pattern logging on saved minimax trajectories."""
import json
from pathlib import Path
import time
from collections import Counter
import numpy as np
import explore_minimax as E
C=E.C
P=Path(__file__).resolve().parent


def corner_class(rows,cols):
    return min((rows,cols),(C.COMP[rows],C.COMP[cols]))


def partition(rows,cols):
    return (min(rows,C.COMP[rows]), min(cols,C.COMP[cols]))


def analyze(phi,M):
    vals=C.R_all(C.Hmat(phi))
    tolerance=max(1e-7,1e-8*M)
    active=np.flatnonzero(vals>=M-tolerance)
    near=np.flatnonzero(vals>=.99*M)
    ac={corner_class(*C.CORNERS[i]) for i in active}
    ap={partition(*C.CORNERS[i]) for i in active}
    nc={corner_class(*C.CORNERS[i]) for i in near}
    nparts={partition(*C.CORNERS[i]) for i in near}
    counts=Counter(partition(*q) for q in ac)
    allclasses={corner_class(*rc):float(vals[k]) for k,rc in enumerate(C.CORNERS)}
    top=sorted(((v,q) for q,v in allclasses.items()),reverse=True)[:12]
    return {'M':M,'tolerance':tolerance,'active_corners':len(active),
            'active_classes':len(ac),'active_partitions':len(ap),
            'has_complementary_pair_active':any(v==2 for v in counts.values()),
            'near_classes_one_percent':len(nc),'near_partitions_one_percent':len(nparts),
            'active_class_labels':[[list(r),list(c)] for r,c in sorted(ac)],
            'top_class_values':[{'R':v,'rows':list(q[0]),'cols':list(q[1])} for v,q in top],
            'phi':phi.tolist()}


def main():
    saved=json.loads((P/'minimax_results.json').read_text())
    original=E.values_grad
    outcomes=[];started=time.monotonic()
    for record in saved['results']:
        if 'initial_phi' not in record:continue
        calls=[]
        def capture(phi):
            f,g=original(phi)
            M=float(np.max(np.abs(f))**2)
            if .01<M<60:calls.append((M,phi.copy()))
            return f,g
        E.values_grad=capture
        _,result=E.descend(np.array(record['initial_phi']),started+120)
        points=[]
        for item in result['trace']:
            M=item['M']
            if .01<M<60:
                candidates=[v for v in calls if abs(v[0]-M)<1e-10]
                assert candidates
                points.append(analyze(candidates[0][1],M))
        if points:outcomes.append({'start_index':record['start_index'],'points':points})
    E.values_grad=original
    counts=Counter();nears=Counter();crosscounts=Counter();pairs=0;n=0
    for outcome in outcomes:
        for v in outcome['points']:
            counts[(v['active_classes'],v['active_partitions'])]+=1
            nears[(v['near_classes_one_percent'],v['near_partitions_one_percent'])]+=1
            pairs+=v['has_complementary_pair_active'];n+=1
            if v['active_classes']>1:
                partitions=[partition(*tuple(map(tuple,q))) for q in v['active_class_labels']]
                crosscounts[(v['active_classes'],len({a for a,b in partitions}),len({b for a,b in partitions}))]+=1
    result={'classification':'floating-point observations on sampled descent trajectories only',
            'M_window':[.01,60],'number_of_points':n,'number_of_trajectories':len(outcomes),
            'active_class_partition_counts':[{ 'classes':k[0], 'partitions':k[1], 'observations':v} for k,v in sorted(counts.items())],
            'near_class_partition_counts_one_percent':[{ 'classes':k[0], 'partitions':k[1], 'observations':v} for k,v in sorted(nears.items())],
            'cross_partition_distinct_row_column_counts':[{'active_classes':k[0],'row_partitions':k[1],'column_partitions':k[2],'observations':v} for k,v in sorted(crosscounts.items())],
            'complementary_pair_observations':pairs,'elapsed_seconds':time.monotonic()-started,
            'outcomes':outcomes}
    (P/'active_patterns.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps({k:v for k,v in result.items() if k!='outcomes'},indent=2))


if __name__=='__main__':main()
