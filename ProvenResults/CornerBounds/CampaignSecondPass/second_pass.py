"""Bounded second pass on production-size branch-layer survivors.

Uses the retained PairedSidePrune certificate on a complete closed binary
seed cover. A failed leaf or resource limit leaves the entire cell unresolved.
With a threshold, success excludes only the R<=threshold part of D0.
"""
from pathlib import Path
import sys
sys.path.insert(0,str(Path(__file__).resolve().parent.parent/'PairedSidePrune'))
from paired_prune import arb,sharp_R_cap,cover_paired_sides


def check_leaf(centers,radii,phase_depth,threshold=None):
    cap=sharp_R_cap(centers,radii)
    if cap is None:
        return dict(ok=False,reason='unbounded_R')
    # Physical corner R is nonnegative. Equality alone is never a discard.
    if cap<0:
        return dict(ok=True,reason='R_negative',R_cap=str(cap))
    if threshold is not None and threshold<cap:
        cap=threshold
    result=cover_paired_sides(centers,radii,cap,depth=phase_depth,
                            maxlabels=512,budget=50000,pair_budget=150000,
                            triple_budget=100000,cross_budget=250000,
                            matching_budget=1000000)
    return dict(result,R_cap=str(cap))


def leaf_box(centers,radii,path):
    cc,hh=list(map(arb,centers)),list(map(arb,radii))
    for depth,bit in enumerate(path):
        if bit not in '01':raise ValueError('Binary paths required')
        axis=depth%4;hh[axis]/=2
        cc[axis]+=(-1 if bit=='0' else 1)*hh[axis]
    return cc,hh


def audit_partition(paths):
    """Exact tree check: every node is either a leaf or has both children."""
    paths=list(paths)
    if not paths or len(paths)!=len(set(paths)) or any(set(p)-set('01') for p in paths):
        raise ValueError('Empty, duplicated or malformed partition')
    leaves=set(paths);prefixes={p[:k] for p in paths for k in range(len(p))}
    if leaves & prefixes:raise ValueError('A leaf has descendants')
    def visit(path):
        if path in leaves:return
        if path not in prefixes:raise ValueError('Missing subtree')
        visit(path+'0');visit(path+'1')
    visit('')


def certify_box(centers,radii,*,max_depth=4,node_budget=31,threshold=None):
    cc,hh=list(map(arb,centers)),list(map(arb,radii))
    if len(cc)!=4 or len(hh)!=4 or not all(h>0 for h in hh):
        raise ValueError('Need four centres and positive radii in radians')
    if not all(x.is_finite() for x in cc+hh):
        return dict(ok=False,reason='unbounded_input')
    if max_depth<0 or node_budget<0:raise ValueError('Nonnegative resource limits required')
    if threshold is not None:
        threshold=arb(threshold)
        if not threshold.is_exact() or not threshold>0:
            raise ValueError('An exact positive threshold is required')
    queue=[''];leaves=[];nodes=0;checks=0
    while queue:
        if nodes>=node_budget:
            return dict(ok=False,reason='seed_node_budget',nodes=nodes,checks=checks)
        path=queue.pop();nodes+=1
        c,h=leaf_box(cc,hh,path)
        accepted=False
        # Freeze this policy before the independent holdout benchmark.
        for phase_depth in ((12,10) if not path else (10,)):
            result=check_leaf(c,h,phase_depth,threshold);checks+=1
            if result['ok']:
                leaves.append(dict(path=path,phase_depth=phase_depth,certificate=result))
                accepted=True;break
        if accepted:continue
        if len(path)>=max_depth:
            return dict(ok=False,reason='seed_depth_limit',nodes=nodes,checks=checks,
                        failed_path=path,last_reason=result['reason'])
        queue.extend((path+'1',path+'0'))
    audit_partition(leaf['path'] for leaf in leaves)
    assert nodes==2*len(leaves)-1
    scope='outside_physical_D0' if threshold is None else 'D0_implies_R_above_threshold'
    return dict(ok=True,reason='complete_seed_cover',scope=scope,
                threshold=None if threshold is None else str(threshold),
                nodes=nodes,checks=checks,leaves=leaves)


def replay(centers,radii,result):
    """Independently replay every accepted leaf; never trust recorded balls."""
    if not result.get('ok') or result.get('reason')!='complete_seed_cover':
        raise ValueError('A complete accepted certificate is required')
    threshold=result.get('threshold')
    expected='outside_physical_D0' if threshold is None else 'D0_implies_R_above_threshold'
    if result.get('scope')!=expected:raise ValueError('Certificate scope mismatch')
    if threshold is not None:
        threshold=arb(threshold)
        if not threshold.is_exact() or not threshold>0:raise ValueError('Invalid threshold')
    audit_partition(leaf['path'] for leaf in result['leaves'])
    for leaf in result['leaves']:
        cc,hh=leaf_box(centers,radii,leaf['path'])
        out=check_leaf(cc,hh,leaf['phase_depth'],threshold)
        if not out['ok']:return False
    return True
