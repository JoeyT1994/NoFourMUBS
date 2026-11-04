"""Exact anchor checks and rejection tests for the whole-native-ball transfer."""
import copy
import gzip
import json
from pathlib import Path
import tempfile
import unittest

from flint import acb, arb, ctx
import known_family as KF
import transfer_r0153 as T


class TransferTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        ctx.prec = 192
        doc = json.loads(gzip.decompress(
            (T.ROOT/'proof/seed_atlas/results/seed_atlas_certificate.json.gz').read_bytes()))
        cls.record = doc['seeds'][1879]

    def test_exact_anchor_agrees_with_independent_construction(self):
        h, _ = KF.matrices([arb(0)]*4, KF.NATIVE_1879)
        units = [acb(1), acb(0,1), acb(-1), acb(0,-1)]
        codes = T.anchor_codes()
        self.assertEqual(h, [[units[c] for c in row] for row in codes])

    def test_whole_original_radius_and_strict_margin(self):
        ball = T.SC.Ball(self.record)
        out = T.inclusion(ball)
        self.assertEqual(ball.r.hex(), '0x1.020c49ba5e354p-4')
        self.assertLess(arb(float.fromhex(out['total_upper_hex'])), arb('0.120873737696'))
        self.assertGreater(arb(float.fromhex(out['margin_lower_hex'])), arb('0.032126262304'))
        codes = T.anchor_codes()
        self.assertEqual([v % 4 for v in out['anchor_quarter_turns']], sum(codes, []))
        self.assertEqual(ball.theta0.tolist(), [float.fromhex(v) for v in self.record['theta0']])
        self.assertEqual(ball.Mth.ravel().tolist(), [float.fromhex(v) for v in self.record['Mth']])

    def test_enlarged_ball_rejected(self):
        record = copy.deepcopy(self.record)
        record['r'] = float(.2).hex()
        with self.assertRaisesRegex(ArithmeticError, 'does not fit'):
            T.inclusion(T.SC.Ball(record))

    def test_wrong_centre_or_gauge_rejected(self):
        with self.assertRaisesRegex(ArithmeticError, 'does not fit'):
            T.inclusion(T.SC.Ball(self.record), rows=list(range(6)), columns=list(range(6)))
        record = copy.deepcopy(self.record)
        record.pop('gauge')
        with self.assertRaisesRegex(ArithmeticError, 'horizontal C1 gauge'):
            T.inclusion(T.SC.Ball(record))

    def test_invalid_symmetry_rejected(self):
        with self.assertRaises(ArithmeticError):
            T.anchor_codes(rows=[0]*6)
        with self.assertRaises(ArithmeticError):
            T.anchor_codes(conjugate='yes')

    def test_changed_source_and_unsafe_path_rejected(self):
        with tempfile.TemporaryDirectory() as name:
            root = Path(name)
            p = root/'input.py'
            p.write_text('original')
            binding = {'input.py':T.sha(p)}
            T.check_hashes(root, binding)
            p.write_text('changed')
            with self.assertRaisesRegex(ArithmeticError, 'hash mismatch'):
                T.check_hashes(root, binding)
            with self.assertRaisesRegex(ArithmeticError, 'invalid bound path'):
                T.check_hashes(root, {'../input.py':'bad'})

    def test_incomplete_local_receipt_rejected(self):
        with tempfile.TemporaryDirectory() as name:
            root = Path(name)
            local = root/T.THEOREM
            local.mkdir(parents=True)
            p = local/'verification.json'
            p.write_text(json.dumps({'status':'SPECIAL_AFFINE_PASS'}))
            with self.assertRaisesRegex(ArithmeticError, 'complete all-K theorem'):
                T.check_local_receipt(root, {})
            p.write_text(json.dumps({'status':'LOCAL_H_BALL_COMPLETENESS_PASS',
                                     'H_radius_radians':'153/1000', 'quantifier':'Some K'}))
            with self.assertRaisesRegex(ArithmeticError, 'quantifier'):
                T.check_local_receipt(root, {})


if __name__ == '__main__':
    unittest.main()
