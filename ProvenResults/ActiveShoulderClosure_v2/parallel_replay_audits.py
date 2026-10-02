"""Negative controls for replay reuse. Synthetic responses are test data only."""
from copy import deepcopy
from fractions import Fraction as F
import campaign_terminals as ct
from parallel_replay import collect

def run():
    c=[F(1,3),F(2,7),F(3,11),F(4,13)];r=[F(1,2**20)]*4
    key=ct.replay_cover_key(c,r)
    success=dict(ok=True,centers=list(key[1]),radii=list(key[2]),nodes=5,node_budget=100,cpu_seconds=1)
    calls=[];original=ct.cover;previous=dict(ct._replay_cover_cache)
    try:
        ct._replay_cover_cache.clear()
        def fake(c,r,nodes,seconds,cube=False):
            calls.append((c,r));k=ct.replay_cover_key(c,r,cube)
            return dict(success,centers=list(k[1]),radii=list(k[2]))
        ct.cover=fake
        assert ct.replay_cover(c,r,100)['ok']
        assert ct.replay_cover(c,r,200)['replay_cached'] and len(calls)==1
        rr=r.copy();rr[0]*=2
        assert ct.replay_cover(c,rr,100)['ok'] and len(calls)==2
        assert ct.replay_cover([-x for x in c],r,100)['ok'] and len(calls)==3
        ct.replay_cover(c,r,100,cube=True);assert len(calls)==4
        ct._replay_cover_cache.clear()
        for invalid in [dict(success,ok=False),dict(success,ok=1),dict(success,centers=[0]*4),dict(success,radii=[0]*4)]:
            try:ct.retain_fresh_cover(key,invalid)
            except ValueError:pass
            else:raise AssertionError('failed or mismatched response accepted')
            assert not ct._replay_cover_cache
        t=dict(ok=True,method='accelerated_cover',conjugate_checked=False,statement='Hplus_not_quartet_edge',covers=[success])
        reg=dict(roots=[dict(centers=list(map(str,c)),radii=list(map(str,r)))])
        leaf=lambda path:dict(path=path,kind='leaf',report=dict(terminal=deepcopy(t)))
        record=dict(root=0,tree=[dict(path='',kind='split',axis=4),leaf('0'),leaf('1')])
        tasks,count=collect(reg,[record]);assert len(tasks)==1 and count==2
        bad=deepcopy(record);bad['tree'][1]['report']['terminal']['covers'][0]['radii'][0]*=2
        try:collect(reg,[bad])
        except ValueError:pass
        else:raise AssertionError('altered stored geometry accepted')
        bad=deepcopy(record);bad['tree'][1]['report']['terminal']['conjugate_checked']=True
        try:collect(reg,[bad])
        except ValueError:pass
        else:raise AssertionError('missing conjugate cover accepted')
    finally:
        ct.cover=original;ct._replay_cover_cache.clear();ct._replay_cover_cache.update(previous)
    return dict(status='PASS',same_geometry_reused=True,changed_radius_sign_mode_recomputed=True,
                false_nonboolean_and_mismatched_responses_rejected=True,altered_geometry_and_missing_sign_rejected=True,
                synthetic_test_entries_removed=True)

if __name__=='__main__':
    import json
    print(json.dumps(run(),indent=2))
