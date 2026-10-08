"""Meaningful negative/positive geometry and scheduling controls."""
import bootstrap
import base64, json, unittest
from fractions import Fraction as F
from unittest.mock import patch
from frontier_boxes import build_region, assignments, overlaps, certify
import driver

def row(c=0,r=F(1,10000)):
    return dict(centers=[str(c)]*4,radii=[str(r)]*4)

class Controls(unittest.TestCase):
    def run_search(self, **options):
        region=build_region([row()]); opts=dict(precision=128,max_nodes=1000,cpu_per_root=10,
            max_depth=4,max_tau_depth=0,transverse=False,psd_backoff=-1,cover_exception_limit=0,
            campaign_terminals=True,**options)
        failure=dict(ok=False,closed=[],reason='test_failed_bound',scores=[1,0,0,0])
        psd=dict(ok=False,method='signed_corner_PSD',cpu_seconds=.01)
        cv=dict(ok=False,method='accelerated_cover',covers=[dict(ok=False,reason='exception_ErrorException',detail='test error',backtrace='test trace')])
        with patch('production_cover.contains_box',return_value={'ok':False}),patch('rootfree_cubes.contains_box',return_value={'ok':False}),patch('fallback.candidate_patch',return_value=False),patch.object(driver,'evaluate',return_value=failure),patch('campaign_terminals.try_psd',return_value=psd) as pm,patch('campaign_terminals.try_cover',return_value=cv) as cm:
            result=driver.process_root((0,region,opts,None))
        return result,pm.call_count,cm.call_count

    def test_psd_branch_failure(self):
        record,calls,_=self.run_search()
        self.assertEqual(calls,1);self.assertEqual(record['nodes'],31)
        self.assertEqual(record['psd_deferred_nodes'],30);self.assertFalse(record['closed'])

    def test_psd_cpu_cap(self):
        original=driver.process_root
        def changed(task):
            rid,reg,opts,res=task
            return original((rid,reg,dict(opts,psd_backoff=0,psd_failure_fraction=.0005),res))
        with patch.object(driver,'process_root',side_effect=changed):record,calls,_=self.run_search()
        self.assertEqual(calls,1);self.assertFalse(record['closed'])

    def test_exception_circuit_breaker(self):
        # Configure via a separate wrapper to avoid duplicate keyword defaults.
        original=driver.process_root
        def changed(task):
            rid,reg,opts,res=task;opts=dict(opts,cover_exception_limit=2,cover_backoff=0)
            return original((rid,reg,opts,res))
        with patch.object(driver,'process_root',side_effect=changed): record,_,calls=self.run_search()
        self.assertEqual(calls,2);self.assertEqual(record['cover_exception_count'],2)
        self.assertEqual(record['cover_exception_samples'][0]['response']['detail'],'test error')
        self.assertFalse(record['closed'])

    def test_padding_pruned_before_kernel(self):
        original=driver.process_root
        def changed(task):
            rid,reg,opts,res=task
            # A strict inner box in the left part of the first seed axis.
            target=row();target['centers'][0]=str(-F(3,40000));target['radii'][0]=str(F(1,200000))
            return original((rid,reg,dict(opts,_frontier_boxes=[target]),res))
        with patch.object(driver,'process_root',side_effect=changed):record,_,_=self.run_search()
        self.assertGreater(record['padding_skipped_nodes'],0)
        self.assertLess(record['nodes'],31);self.assertFalse(record['frontier_covered'])

    def test_exact_root_and_guard(self):
        q=row(F(1,3),F(1,512)+F(1,2**40));reg=build_region([q,q])
        self.assertEqual(len(reg['roots']),1)
        a,m=assignments(reg,[q]);self.assertEqual(m,[]);self.assertEqual(len(a[0]),1)
        larger=row(F(1,3),F(q['radii'][0])+F(1,2**100))
        self.assertEqual(assignments(reg,[larger])[1],[0])

    def test_closed_faces(self):
        self.assertTrue(overlaps([F(0)]*4,[F(1)]*4,[F(2)]*4,[F(1)]*4))
        self.assertFalse(overlaps([F(0)]*4,[F(1)]*4,[F(2)+F(1,2**100)]*4,[F(1)]*4))
        reg=build_region([row(F(1,2),F(1,2))],grid=1)
        self.assertEqual(len(reg['roots']),16) # includes all upper boundary cells

    def test_padding_not_a_proof(self):
        reg=build_region([row()]);r=dict(root=0,closed=False,tree=[dict(path='',kind='leaf',ok=False)])
        self.assertFalse(certify(reg,{0:r},[F(0)]*4,[F(1,10000)]*4)['ok'])
        r=dict(root=0,closed=True,tree=[dict(path='',kind='leaf',ok=True)])
        self.assertTrue(certify(reg,{0:r},[F(0)]*4,[F(1,10000)]*4)['ok'])
        self.assertFalse(certify(reg,{0:r},[F(0)]*4,[F(1,9999)]*4)['ok'])

    def test_ft_fresh_positive_and_negative(self):
        from transverse import attempt,replay,DIRECTORY
        from geometry import pilot_radius
        q=json.loads((DIRECTORY/'data/positive_controls.json').read_text())[0]
        c=[F(float.fromhex(x)) for x in q['centres_hex']];r=[pilot_radius()]*4
        terminal=attempt(c,r);self.assertTrue(terminal['ok']);self.assertTrue(replay(c,r,terminal))
        with self.assertRaises(ValueError):replay([F(0)]*4,[F(10)]*4,terminal)
        self.assertTrue(terminal['evidence']['R_zero_slice_excluded'])

if __name__=='__main__': unittest.main()
