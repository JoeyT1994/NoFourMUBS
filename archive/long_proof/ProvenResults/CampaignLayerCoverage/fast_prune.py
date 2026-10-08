"""Bounded exact binary cover using F ordering before the existing side prune."""
from pathlib import Path
import sys
from ordering import exclude_F,arb
sys.path.insert(0,str(Path(__file__).resolve().parent.parent/'CornerBounds/CampaignSecondPass'))
from second_pass import leaf_box,audit_partition,check_leaf

def certify_box(centers,radii,max_depth=8,node_budget=511):
    cc,hh=list(map(arb,centers)),list(map(arb,radii))
    if len(cc)!=4 or len(hh)!=4 or not all(h>0 for h in hh):raise ValueError('Invalid box')
    if not all(x.is_finite() for x in cc+hh):return dict(ok=False,reason='unbounded_input')
    if max_depth<0 or node_budget<0:raise ValueError('Invalid budget')
    queue=[''];leaves=[];nodes=0
    while queue:
        if nodes>=node_budget:return dict(ok=False,reason='node_budget',nodes=nodes)
        path=queue.pop();nodes+=1;c,h=leaf_box(cc,hh,path)
        result=exclude_F(c,h)
        if result['ok']:
            leaves.append(dict(path=path,engine='F',certificate=result));continue
        result=check_leaf(c,h,8)
        if result['ok']:
            leaves.append(dict(path=path,engine='side',phase_depth=8,certificate=result));continue
        if len(path)==max_depth:
            result=check_leaf(c,h,10)
            if result['ok']:
                leaves.append(dict(path=path,engine='side',phase_depth=10,certificate=result));continue
            return dict(ok=False,reason='depth_limit',nodes=nodes,failed_path=path,last_reason=result['reason'])
        queue.extend((path+'1',path+'0'))
    audit_partition(x['path'] for x in leaves)
    return dict(ok=True,reason='complete_seed_cover',scope='outside_D0_intersect_F',nodes=nodes,leaves=leaves)

def replay(centers,radii,cert):
    if cert.get('ok') is not True or cert.get('scope')!='outside_D0_intersect_F':raise ValueError('Wrong scope')
    audit_partition(x['path'] for x in cert['leaves'])
    if cert['nodes']!=2*len(cert['leaves'])-1:raise ValueError('Wrong node count')
    for leaf in cert['leaves']:
        c,h=leaf_box(centers,radii,leaf['path'])
        if leaf['engine']=='F':out=exclude_F(c,h)
        elif leaf['engine']=='side' and leaf['phase_depth'] in (8,10):out=check_leaf(c,h,leaf['phase_depth'])
        else:raise ValueError('Unknown leaf engine')
        if not out['ok']:return False
    return True
