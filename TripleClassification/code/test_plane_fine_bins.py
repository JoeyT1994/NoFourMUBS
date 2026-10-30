"""Fine-bin shortcuts must replay a complete necessary graph for every K pattern."""
import copy
import multiprocessing
import sys
import types
import unittest
from unittest.mock import patch
import plane_cell_certificate as W


class FineBinTests(unittest.TestCase):
    def setUp(self):
        self.cliques=[list(range(6)),list(range(1,7))]
        self.proposal=dict(schema='tc-plane-cell-proposal-v1',snapshot_sha256='input',record_sha256='record',
            columns={},witnesses=[dict(colours=c,columns=[],fine=True) for c in self.cliques])
        self.model={'ball':object(),'_fine_cover':{}}
        self.cover=(dict(record_sha256='record',subatlas='fixture',sub=0),self.model,None,
                    dict(snapshot_sha256='input'),{},self.cliques)

    def test_only_complete_empty_search_is_an_exclusion(self):
        for status in ('EXCLUDED','UNRESOLVED','REFINED','CERTIFIED'):
            fake=types.SimpleNamespace(FP=types.SimpleNamespace(refine=lambda *a:(None,dict(status=status))))
            with self.subTest(status=status),patch.dict(sys.modules,{'run':fake}):
                self.assertEqual(W.fine_excluded(self.model,self.cliques[0]),status=='EXCLUDED')

    def test_fine_witness_cannot_smuggle_a_saved_verdict_or_columns(self):
        W.validate_witnesses(self.cliques,self.proposal['witnesses'],set())
        changes=[dict(fine=False),dict(fine=1),dict(columns=[0]),dict(status='EXCLUDED'),dict(joint={})]
        for change in changes:
            rows=copy.deepcopy(self.proposal['witnesses']);rows[0].update(change)
            with self.subTest(change=change),self.assertRaisesRegex(ValueError,'fine-bin witness'):
                W.validate_witnesses(self.cliques,rows,set())

    def test_missing_pattern_or_unused_column_still_rejected(self):
        with self.assertRaisesRegex(ValueError,'incomplete pattern'):
            W.validate_witnesses(self.cliques,self.proposal['witnesses'][:1],set())
        with self.assertRaisesRegex(ValueError,'unused column'):
            W.validate_witnesses(self.cliques,self.proposal['witnesses'],{'0'})

    def test_producer_skips_plane_search_only_after_verified_exclusion(self):
        with patch.object(W,'complete_cover',return_value=self.cover),patch.object(W,'fine_excluded',return_value=True) as fine,patch.object(W.P,'prove_column') as plane:
            result=W.propose('fixture')
        self.assertEqual(result,self.proposal);self.assertEqual(fine.call_count,2);plane.assert_not_called()

    def test_replay_recomputes_each_fine_pattern(self):
        with patch.object(W,'complete_cover',return_value=self.cover),patch.object(W,'fine_excluded',return_value=True) as fine:
            result=W.check('fixture',self.proposal)
        self.assertEqual(fine.call_count,2);self.assertEqual(result['patterns_total'],2)
        self.assertEqual(result['status'],'CERTIFIED_EMPTY_RECORDED_H_CELL')

    def test_one_capped_or_surviving_pattern_prevents_certificate(self):
        with patch.object(W,'complete_cover',return_value=self.cover),patch.object(W,'fine_excluded',side_effect=[True,False]):
            with self.assertRaisesRegex(ValueError,'did not exclude'):W.check('fixture',self.proposal)

    @unittest.skipUnless('fork' in multiprocessing.get_all_start_methods(),'POSIX process pool')
    def test_parallel_replay_requires_every_fine_pattern(self):
        with patch.object(W,'complete_cover',return_value=self.cover),patch.object(W,'fine_excluded',return_value=True):
            serial=W.check('fixture',self.proposal);parallel=W.check('fixture',self.proposal,workers=2)
        serial.pop('seconds');parallel.pop('seconds');self.assertEqual(serial,parallel)
        with patch.object(W,'complete_cover',return_value=self.cover),patch.object(W,'fine_excluded',return_value=False):
            with self.assertRaisesRegex(ValueError,'did not exclude'):W.check('fixture',self.proposal,workers=2)


if __name__=='__main__':unittest.main()
