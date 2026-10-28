"""Coverage, provenance and crash-recovery tests; intended for remote replay."""
import copy
import hashlib
import json
from pathlib import Path
import tempfile
import unittest

import campaign as C
import geometry


class Tests(unittest.TestCase):
    def test_core_refinement_preserves_old_shells(self):
        old = geometry.make_cover()
        new = C.extend_core(old)
        self.assertEqual(new['verification']['counts'], dict(CORE=16, SHELL=1920, OUTSIDE=0))
        old_shells = {v['id']: v for v in old['leaves'] if v['kind'] == 'SHELL'}
        new_shells = {v['id']: v for v in new['leaves'] if v['kind'] == 'SHELL'}
        self.assertTrue(all(new_shells[k] == v for k, v in old_shells.items()))
        broken = copy.deepcopy(new)
        broken['leaves'].pop()
        with self.assertRaisesRegex(ValueError, 'missing cell'):
            geometry.verify_cover(broken)

    def test_failed_leaf_splits_exactly_and_cannot_be_reused(self):
        cover = C.extend_core(geometry.make_cover())
        leaves = {v['id']: v for v in cover['leaves']}
        key = '2:0:1:1:1'
        row = dict(id=key, cell=leaves[key]['cell'], binding='test', status='NOT ESTABLISHED')
        done = {}
        children = C.apply_row(leaves, done, row, 11, 'test')
        self.assertNotIn(key, leaves)
        self.assertGreater(len(children), 0)
        geometry.verify_cover(dict(cover, leaves=list(leaves.values())))
        with self.assertRaises(KeyError):
            C.apply_row(leaves, done, row, 11, 'test')

    def test_max_depth_failure_is_retained(self):
        cover = C.extend_core(geometry.make_cover())
        leaves = {v['id']: v for v in cover['leaves']}
        key = '2:0:1:1:1'
        row = dict(id=key, cell=leaves[key]['cell'], binding='test', status='NOT ESTABLISHED')
        done = {}
        self.assertEqual(C.apply_row(leaves, done, row, 2, 'test'), [])
        self.assertEqual(done[key]['status'], 'NOT ESTABLISHED')

    def test_journal_recovery_and_corruption(self):
        row = dict(id='example', status='NOT ESTABLISHED')
        event = dict(previous='initial', row=row)
        event['sha256'] = hashlib.sha256(C.encoded(event)).hexdigest()
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / 'events.jsonl'
            path.write_bytes(C.encoded(event) + b'\n{"partial":')
            with self.assertRaisesRegex(ValueError, 'incomplete journal'):
                C.replay_journal(path, 'initial', lambda r: None)
            seen = []
            head, count = C.replay_journal(path, 'initial', seen.append, repair=True)
            self.assertEqual((head, count, seen), (event['sha256'], 1, [row]))
            self.assertEqual(C.replay_journal(path, 'initial', lambda r: None), (head, count))
            event['row']['status'] = 'CERTIFIED'
            path.write_bytes(C.encoded(event) + b'\n')
            with self.assertRaisesRegex(ValueError, 'hash chain'):
                C.replay_journal(path, 'initial', lambda r: None, repair=True)

    def test_actual_core_and_partial_whole_ball(self):
        import run_xball as RX
        import run_shells as RS
        binding = RX.binding()['id']
        core_path = C.HERE / 'results/core7_complete_20261028.json'
        core = C.verified_core(core_path, binding)
        cover = C.extend_core(json.loads((C.HERE / 'results/screen_20261028.cover.json').read_text()))
        rows = [json.loads(line) for line in
                (C.HERE / 'results/screen_20261028.cells.jsonl').read_text().splitlines()]
        result = RS.account(cover, rows, binding, core)
        self.assertEqual(result['core_status'], 'CERTIFIED')
        self.assertEqual(result['status'], 'NOT ESTABLISHED')
        self.assertEqual((result['shell_required'], result['shell_closed']), (2406, 501))
        self.assertEqual(len(result['shell_unresolved']), 121)
        self.assertEqual(len(result['shell_untested']), 1784)
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / 'bad-core.json'
            bad = json.loads(core_path.read_text())
            bad['patterns'][1]['kernel_bound'] = '1'
            path.write_text(json.dumps(bad))
            with self.assertRaisesRegex(ValueError, 'whole-pattern inclusion'):
                C.verified_core(path, binding)
            bad = json.loads(core_path.read_text())
            bad['extension_sources_sha256']['experiments/core_crossing.py'] = '0'*64
            path.write_text(json.dumps(bad))
            with self.assertRaisesRegex(ValueError, 'hash mismatch'):
                C.verified_core(path, binding)


if __name__ == '__main__':
    unittest.main()
