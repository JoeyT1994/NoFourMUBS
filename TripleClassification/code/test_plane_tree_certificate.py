"""Parallel replay must check every leaf and preserve the serial conclusion."""
import json
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch
import plane_tree_certificate as T


class TreeReplayTests(unittest.TestCase):
    def setUp(self):
        self.tmp=tempfile.TemporaryDirectory();self.addCleanup(self.tmp.cleanup)
        self.folder=Path(self.tmp.name);self.path=self.folder/'tree.json'
        self.entry=dict(ball=825,level=2,cell=[1]*4)
        self.leaf=dict(input={},proposal={})
        self.write(dict(children=[self.leaf]*16))
        self.original=dict(r=float(.1).hex())

    def write(self,node):
        self.path.write_text(json.dumps(dict(schema='tc-plane-tree-proposal-v1',
            root_entry_sha256=T.F.jsonsha(self.entry),tree=node)))

    def result(self,task):
        return dict(level=task[2],cell=task[3],status='CERTIFIED_CLASSIFIED_RECORDED_H_CELL'
            if task[3]==[3]*4 else 'CERTIFIED_EMPTY_RECORDED_H_CELL')

    def test_parallel_replays_every_leaf_in_serial_order(self):
        with patch.object(T.F,'original_record',return_value=self.original),\
             patch.object(T,'replay_leaf',side_effect=self.result) as replay,\
             patch.object(T,'ProcessPoolExecutor') as pool:
            pool.return_value.__enter__.return_value.map.side_effect=lambda f,x,**kw:map(f,x)
            serial=T.check(self.entry,self.path)
            parallel=T.check(self.entry,self.path,workers=4)
            self.assertEqual(serial,parallel);self.assertEqual(replay.call_count,32)
            self.assertEqual(parallel['counts']['certified'],16)
            self.assertEqual(parallel['status'],'CERTIFIED_CLASSIFIED_DYADIC_CELL')
            self.assertEqual(pool.call_args.kwargs['max_workers'],4)
            self.assertEqual(pool.call_args.kwargs['mp_context'].get_start_method(),'spawn')

    def test_bad_partition_rejected_before_workers_start(self):
        self.write(dict(children=[self.leaf]*15))
        with patch.object(T.F,'original_record',return_value=self.original),\
             patch.object(T,'ProcessPoolExecutor') as pool:
            with self.assertRaisesRegex(ValueError,'incomplete'):T.check(self.entry,self.path,4)
            pool.assert_not_called()

    def test_worker_failure_prevents_receipt(self):
        with patch.object(T.F,'original_record',return_value=self.original),\
             patch.object(T,'ProcessPoolExecutor') as pool:
            pool.return_value.__enter__.return_value.map.side_effect=ArithmeticError('leaf failed')
            with self.assertRaisesRegex(ArithmeticError,'leaf failed'):T.check(self.entry,self.path,4)

    def test_changed_tree_during_replay_is_rejected(self):
        def changed(task):
            self.path.write_text('{}');return self.result(task)
        with patch.object(T.F,'original_record',return_value=self.original),\
             patch.object(T,'replay_leaf',side_effect=changed):
            with self.assertRaisesRegex(ValueError,'tree changed'):T.check(self.entry,self.path)

    def test_changed_leaf_during_replay_is_rejected(self):
        inp=self.folder/'input.json';inp.write_text(json.dumps(dict(record={})))
        prop=self.folder/'proposal.json';prop.write_text('{}')
        node=dict(input=dict(path=inp.name,sha256=T.digest(inp)),
                  proposal=dict(path=prop.name,sha256=T.digest(prop)))
        def changed(*args,**kwargs):
            prop.write_text('{"changed":true}')
            return dict(status='CERTIFIED_EMPTY_RECORDED_H_CELL',patterns_total=1,dependencies_sha256={})
        with patch.object(T.F,'cell_geometry',return_value={}),patch.object(T.F.Whole,'check',side_effect=changed):
            with self.assertRaisesRegex(ValueError,'changed'):
                T.replay_leaf((self.folder,node,2,[1]*4,self.original,1))

    def test_invalid_worker_counts_rejected(self):
        for workers in (0,-1,True,1.5,257):
            with self.subTest(workers=workers),self.assertRaisesRegex(ValueError,'worker count'):
                T.check(self.entry,self.path,workers)


if __name__=='__main__':unittest.main()
