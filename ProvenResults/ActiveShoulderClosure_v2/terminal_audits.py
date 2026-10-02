"""Campaign terminal controls. No control takes a stored success as proof."""
from fractions import Fraction as F
from geometry import ROOT
from campaign_terminals import enclosing_cube,enclosing_box,try_psd,try_cover,replay,psd_replay

def run():
    import multiplier_terminal
    assert multiplier_terminal.propose([F(0)]*4,[F(1)]*4) is None
    try:multiplier_terminal.replay([F(0)]*4,[F(1)]*4,{'ok':True})
    except ValueError:pass
    else:raise AssertionError('uninstalled multiplier accepted')
    from subtree_sweep import partition,merge
    from copy import deepcopy
    from assemble import preserves_acceptance,select
    reg=dict(roots=[dict(centers=['0']*4,radii=['1']*4)])
    baseline=dict(root=0,nodes=1,cpu_seconds=0,closed=False,leaves=2,accepted_leaves=0,tree=[dict(path='',kind='split',axis=0),dict(path='0',kind='leaf',ok=False,reason='open'),dict(path='1',kind='leaf',ok=False,reason='open')])
    assert partition(baseline,2)==['0','1']
    left=deepcopy(baseline);left['tree'][1]['ok']=True;left['accepted_leaves']=1
    right=deepcopy(baseline);right['tree'][2]['ok']=True;right['accepted_leaves']=1
    assert not preserves_acceptance(left,right) and select(left,right) is left
    assert preserves_acceptance(baseline,left) and select(baseline,left) is left
    changed=deepcopy(left);changed['tree'][0]['axis']=1
    assert not preserves_acceptance(left,changed)
    from tree import audit_root
    deferred=deepcopy(baseline)
    deferred['tree'][1].update(ok=True,report=dict(closed=[],reason='campaign_terminal',terminal=dict(ok=True,method='signed_corner_PSD',statement='deliberately_invalid',certificate=None)))
    deferred['accepted_leaves']=1
    scoped=audit_root(reg,deferred,replay=True,replay_prefix='1')
    assert scoped['status']=='SCOPED_REPLAY' and not scoped['replayed_terminal_statements']
    try:audit_root(reg,deferred,replay=True)
    except ValueError:pass
    else:raise AssertionError('scoped replay mistaken for complete proof audit')
    assert not merge(reg,baseline,['0','1'],[deepcopy(baseline),deepcopy(baseline)])['closed']
    bad=deepcopy(baseline);bad['tree'][2]['reason']='tampered outside assigned prefix'
    try:merge(reg,baseline,['0','1'],[bad,deepcopy(baseline)])
    except ValueError:pass
    else:raise AssertionError('unassigned subtree modification accepted')
    p=psd_replay()
    p.exact_algebra(ROOT);p.arithmetic_controls();p.rational_reference_controls()
    negative=p.physical_controls()
    # Exact, highly asymmetric widths and non-binary rational centers.
    c=[F(1,3),F(-2,7),F(9,11),F(1,2**100)]
    r=[F(1,2**40),F(1,7),F(1,2**20),F(1,2**80)]
    cc,h=enclosing_cube(c,r)
    assert all(abs(F(x)-y)+z<=F(h) for x,y,z in zip(cc,c,r))
    aa,bb=enclosing_box(c,r)
    assert all(abs(F(x)-y)+z<=F(h) for x,y,z,h in zip(aa,c,r,bb))
    # The pinned production driver's deterministic positive control.
    f=list(map(float,(ROOT/'NumericalCampaign/Certification/data/cover_failed_depth2_2026-09-29.txt').read_text().splitlines()[0].split()))
    c=list(map(F,f[:4]));r=[F(f[4])+F(1,2**40)]*4
    t=try_cover(c,r,seconds=180)
    assert t['ok'],t
    replay(c,r,t)
    try:replay(c,r,t,require_both=True)
    except ValueError:pass
    else:raise AssertionError('single Hplus certificate accepted for both production signs')
    both=try_cover(c,r,both=True,seconds=180);assert both['ok'],both;replay(c,r,both,require_both=True)
    # Anisotropic Taylor input is the same scalar tmvar for each axis.
    rr=list(r);rr[0]/=8;rr[1]/=2
    aniso=try_cover(c,rr,seconds=180);assert aniso['ok'],aniso;replay(c,rr,aniso)
    budget=try_cover(c,r,nodes=1,seconds=180)
    assert not budget['ok'],budget
    from worker_isolation import run as isolation_controls
    isolated=isolation_controls(c,r)
    return dict(status='PASS',worker_isolation=isolated,PSD_exact_algebra=True,PSD_arithmetic=True,PSD_physical_negative_controls=negative,
                asymmetric_exact_cube_enclosure=True,both_sheet_cover_and_replay=both,anisotropic_cover_and_replay=aniso,cover_positive_and_fresh_replay=t,cover_budget_inconclusive=budget)
