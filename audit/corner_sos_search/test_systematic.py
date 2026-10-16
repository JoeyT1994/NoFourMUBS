"""Check finite coverage, exact cancellation and safe ideal pruning."""
import gzip
import hashlib
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import search as s
import systematic as t


class SystematicTests(unittest.TestCase):
    def test_missing_conjugate_terms_may_cancel_but_may_not_be_dropped(self):
        x, y = ((0, 1),), ((1, 1),)
        index = {(): 0, s.real_key(y): 1}
        self.assertEqual(t.contained_row({x: 1, s.neg(x): -1, y: 3}, (), index), {1: 3})
        self.assertIsNone(t.contained_row({x: 1, s.neg(x): 1, y: 3}, (), index))
        # Cancellation can occur after a nonzero shift as well.
        self.assertEqual(t.contained_row({(): 2, ((0, -2),): -2}, x, index), {})

    def test_finite_enumeration_matches_full_independent_expansion(self):
        x = ((0, 1),)
        keys = [(), s.real_key(x), s.real_key(((0, 2),))]
        index = {e: i for i, e in enumerate(keys)}
        f = {(): -1, x: 1}
        equations = {'control': f, 'scaled-duplicate': {e: 7*c for e, c in f.items()}}
        model = dict(metadata={}, moments=keys, rows=[], row_provenance=[],
                     target={1: 1}, blocks=[('core', [(), x], [[0, 1], [1, 0]])])
        expected = set()
        for poly in equations.values():
            for shift in t.multiplier_pool(model) | {s.neg(e) for e in poly}:
                full = s.fold({s.plus(e, shift): c for e, c in poly.items()})
                if full and set(full) <= set(index):
                    expected.add(s.normalized_row({index[e]: c for e, c in full.items()}))
        with patch.object(t, 'equations_for', return_value=equations):
            report = t.saturate(model, [1, 0, 0])
        self.assertEqual({tuple(sorted(r.items())) for r in model['rows']}, expected)
        self.assertEqual(report['totals']['tested_pairs'], 6)
        self.assertEqual(report['added_rows'], 2)
        # Every new row has a full reconstructible generator/multiplier.
        from fractions import Fraction
        for row, provenance in zip(model['rows'], model['row_provenance']):
            shifted = s.fold({s.plus(e, provenance['multiplier']): c
                             for e, c in equations[provenance['equation']].items()})
            actual = {index[e]: Fraction(provenance['normalization'])*c
                      for e, c in shifted.items()}
            self.assertEqual(row, actual)

    def test_peeling_preserves_a_combination_and_removes_forced_zero_rows(self):
        rows = [{0: 1, 1: 1}, {1: 1}, {0: 1, 2: 1}, {2: 1, 3: 1}, {7: 1, 8: 1}, {7: 1, 8: -1}]
        kept, report = t.peel_ideal_rows(rows, {0: 1})
        self.assertEqual(kept, [0, 1])
        self.assertEqual(report['forced_zero_rows'], 2)
        self.assertEqual(report['target_orphan_columns'], [])
        self.assertEqual({i: rows[0].get(i, 0)-rows[1].get(i, 0)
                          for i in [0, 1]}, {0: 1, 1: 0})

    def test_peeling_detects_an_exact_orphan_without_claiming_sos_impossibility(self):
        kept, report = t.peel_ideal_rows([{0: 1, 1: 1}, {1: 1, 2: 1}], {0: 1})
        self.assertEqual(kept, [])
        self.assertEqual(report['target_orphan_columns'], [0])
        self.assertIn('not an SOS obstruction', report['applicability'])

    def test_saved_model_is_hash_pinned_and_sector_is_checked(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory)/'model.gz'
            raw = json.dumps(dict(metadata={}, moments=[[]], rows=[], blocks=[], target={'0': '1/2'})).encode()
            with gzip.open(path, 'wb') as out:
                out.write(raw)
            self.assertEqual(str(t.load_saved(path, hashlib.sha256(raw).hexdigest())['target'][0]), '1/2')
            with self.assertRaisesRegex(ValueError, 'pinned'):
                t.load_saved(path, '0'*64)
        with self.assertRaisesRegex(ValueError, 'Unreviewed auxiliary'):
            t.equations_for(dict(rational_transition_lift=True, classification_case='000',
                                 auxiliary_classification_case='009'))


if __name__ == '__main__':
    unittest.main()
