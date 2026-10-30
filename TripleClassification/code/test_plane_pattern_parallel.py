"""Pattern workers must account for the entire reconstructed K cover."""
import copy
import multiprocessing
import types
import unittest
from unittest.mock import patch
from flint import arb
import plane_cell_certificate as W


@unittest.skipUnless('fork' in multiprocessing.get_all_start_methods(),'POSIX process pool')
class PatternParallelTests(unittest.TestCase):
    def setUp(self):
        self.cliques=[list(range(6)),list(range(1,7))]
        self.proposal=dict(schema='tc-plane-cell-proposal-v1',snapshot_sha256='input',record_sha256='record',
            columns={'1':dict(weak=[[0.0.hex()]*5]*2,tree={},roots=[])},
            witnesses=[dict(colours=c,columns=[1]) for c in self.cliques])
        cover=(dict(record_sha256='record',subatlas='fixture',sub=0),{},None,
               dict(snapshot_sha256='input'),{1:{}},self.cliques)
        for obj,key,value in ((W,'complete_cover',cover),(W.P,'Column',types.SimpleNamespace(radius=arb(1))),
                              (W.P,'verify_tree',({},{}))):
            p=patch.object(obj,key,return_value=value);p.start();self.addCleanup(p.stop)

    def test_real_process_pool_matches_serial_receipt(self):
        serial=W.check('fixture',self.proposal);parallel=W.check('fixture',self.proposal,workers=2)
        serial.pop('seconds');parallel.pop('seconds');self.assertEqual(serial,parallel)
        self.assertEqual(parallel['patterns_total'],2)

    def test_one_failed_pattern_prevents_whole_cell_receipt(self):
        with patch.object(W.P,'verify_tree',return_value=({}, {0:({},arb(0))})):
            with self.assertRaisesRegex(ValueError,'surviving tubes'):
                W.check('fixture',self.proposal,workers=2)

    def test_missing_pattern_rejected_before_pool(self):
        proposal=copy.deepcopy(self.proposal);proposal['witnesses'].pop()
        with patch.object(W,'ProcessPoolExecutor') as pool:
            with self.assertRaisesRegex(ValueError,'incomplete pattern'):W.check('fixture',proposal,2)
            pool.assert_not_called()

    def test_invalid_worker_count_rejected(self):
        for count in (0,True,1.5,257):
            with self.subTest(count=count),self.assertRaisesRegex(ValueError,'worker count'):
                W.check('fixture',self.proposal,count)

    def test_worker_reuses_verified_pairs_but_reports_each_pattern(self):
        tubes={c:{0:({},arb(0))} for c in (0,1)}
        item=(0,list(range(6)),dict(columns=[0,1]))
        W._pattern_init({},tubes)
        with patch.object(W.P,'pair_margin',return_value=arb(1)) as margin:
            first=W._pattern_chunk([item]);second=W._pattern_chunk([item])
        self.assertEqual(first[0],second[0])
        self.assertTrue(first[1]);self.assertEqual(second[1],{})
        self.assertEqual(len(second[0]),1)
        margin.assert_called_once()

    def test_new_cell_cannot_reuse_another_cells_positive_inequality(self):
        tubes={c:{0:({},arb(0))} for c in (0,1)}
        item=(0,list(range(6)),dict(columns=[0,1]))
        with patch.object(W.P,'pair_margin',side_effect=[arb(1),arb(-1)]) as margin:
            W._pattern_init({'cell':'first'},tubes);W._pattern_chunk([item])
            W._pattern_init({'cell':'second'},tubes)
            with self.assertRaisesRegex(ArithmeticError,'may be orthogonal'):
                W._pattern_chunk([item])
        self.assertEqual(margin.call_count,2)


if __name__=='__main__':unittest.main()
