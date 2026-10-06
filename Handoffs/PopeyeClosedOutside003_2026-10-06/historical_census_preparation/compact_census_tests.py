#!/usr/bin/env python3
import gzip
import hashlib
import importlib.util
import json
from fractions import Fraction as Q
from pathlib import Path
import tempfile
import unittest


PATH = Path(__file__).with_name("compact_census.py")
SPEC = importlib.util.spec_from_file_location("compact_census", PATH)
c = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(c)


def qtext(value):
    value = Q(value)
    return f"{value.numerator}/{value.denominator}"


def row(ident=0, center=None, radius=Q(1, 2**20), seed="2,4,4,2"):
    center = center or [Q(2, 3) * Q(355, 113), -Q(2, 3) * Q(355, 113),
                        -Q(2, 3) * Q(355, 113), Q(2, 3) * Q(355, 113)]
    # Synthetic values must use divisors of 2^80; use dyadic centers in tests.
    return {"id": ident, "centers": [qtext(v) for v in center],
            "radii": [qtext(radius)] * 4, "seed": seed}


class GeometryTests(unittest.TestCase):
    def test_pi_enclosure_contains_known_rational_bounds(self):
        self.assertGreater(c.PI_LOWER, Q(314159265358979323846, 10**20))
        self.assertLess(c.PI_UPPER, Q(314159265358979323847, 10**20))
        self.assertGreater(Q(4, 3) * c.PI_LOWER - 3, Q(3, 100))

    def test_comparators_exclude_equality(self):
        value = c.COMMON_DENOMINATOR // 32
        self.assertFalse(c.less_scaled_fraction(value, Q(1, 32)))
        self.assertFalse(c.greater_scaled_fraction(value, Q(1, 32)))

    def test_strict_boundary_and_whole_box_not_center(self):
        # Coordinate zero has interval ending exactly at seed-3/100: excluded.
        target_dyadic = Q(2_108_287, 2**20)
        radius = Q(1, 2**20)
        left = c.THRESHOLDS[1][0]
        # Find the largest dyadic upper endpoint not greater than the exact bound.
        scale = c.COMMON_DENOMINATOR
        upper_int = (left.numerator * scale) // left.denominator
        exact_upper = Q(upper_int, scale)
        exact_center = exact_upper - radius
        signs = (1, -1, -1, 1)
        centers = [exact_center if s == 1 else -Q(2_196_132, 2**20) for s in signs]
        test = row(center=centers, radius=radius)
        self.assertTrue(c.whole_box_strictly_outside003(test))
        # Move endpoint to the conservative boundary/inside side; other dimensions overlap.
        centers[0] = Q(2_196_132, 2**20)
        test = row(center=centers, radius=Q(1, 2**10))
        self.assertFalse(c.whole_box_strictly_outside003(test))

    def test_both_seed_classes_and_circular_alias(self):
        far = [Q(0), Q(0), Q(0), Q(0)]
        self.assertTrue(c.whole_box_strictly_outside003(row(center=far, seed="2,4,4,2")))
        self.assertTrue(c.whole_box_strictly_outside003(row(center=far, seed="4,2,2,4")))

    def test_exact_real_database_samples_match_fraction_reference(self):
        root = PATH.parents[4] / "campaign/full_ring.sqlite"
        if not root.exists():
            self.skipTest("local full_ring.sqlite unavailable")
        db = c.open_database(root)
        try:
            samples = []
            for batch in (0, 100, 24006, 48012):
                rows, _ = c.load_batch(db, batch)
                samples.extend((rows[0], rows[-1]))
        finally:
            db.close()
        for exact in samples:
            expected = False
            for center, radius, sign in zip(exact["centers"], exact["radii"], c.SEED_SIGNS[exact["seed"]]):
                center, radius = Q(center), Q(radius)
                left, right = c.THRESHOLDS[sign]
                expected |= center + radius < left or center - radius > right
            self.assertEqual(c.whole_box_strictly_outside003(exact), expected)


class LedgerTests(unittest.TestCase):
    def make_record(self, exact, closed):
        value = {"id": exact["id"], "input_sha256": c.digest(exact),
                 "tree": "L" if closed else "P", "stage": 4,
                 "closed": closed, "reason": "freshly_replayed_complete_cover" if closed else "cpu_budget"}
        if closed:
            value["replay"] = {"status": "PASS", "certificate_sha256": c.digest(
                {key: value[key] for key in ("id", "input_sha256", "tree")})}
        return value

    def test_fresh_receipt_and_candidate_escape(self):
        exact = row(center=[Q(0)] * 4)
        record = self.make_record(exact, True)
        self.assertEqual(c.validate_record(exact, record), 0)
        record["replay"]["certificate_sha256"] = "0" * 64
        with self.assertRaises(ValueError):
            c.validate_record(exact, record)

    def test_pinned_prior_replay_is_separate_from_campaign_freshness(self):
        exact = row(center=[Q(0)] * 4)
        record = self.make_record(exact, True)
        record["reason"] = "whole_box_signed_mean_cover"
        self.assertEqual(c.classify_record(exact, record, [0], {}, {"0": record}),
                         c.RAW_NATIVE_REUSED)
        with self.assertRaises(ValueError):
            c.classify_record(exact, record, [0], {}, {})

    def test_range_output_is_deterministic_and_omits_zero(self):
        values = bytearray([0, 1, 1, 0, 3, 3, 3, 6, 0])
        with tempfile.TemporaryDirectory() as temp:
            first = c.write_ranges(Path(temp), values)
            data = gzip.decompress((Path(temp) / first["path"]).read_bytes()).splitlines()
            self.assertEqual([json.loads(line) for line in data], [
                {"count": 2, "end": 2, "start": 1, "status": c.STATUS_NAMES[1], "status_code": 1},
                {"count": 3, "end": 6, "start": 4, "status": c.STATUS_NAMES[3], "status_code": 3},
                {"count": 1, "end": 7, "start": 7, "status": c.STATUS_NAMES[6], "status_code": 6},
            ])
            self.assertEqual(first["logical_sha256"], hashlib.sha256(b"\n".join(data) + b"\n").hexdigest())

    def test_corrected_category_resolution(self):
        old_records = c.RECORDS
        try:
            c.RECORDS = 6
            # reps: 0 native, 2 external, 4 unresolved; odd entries transport.
            plan = [0, 0x80000000, 2, 0x80000002, 4, 0x80000004]
            categories = bytearray([c.RAW_NATIVE_FRESH | c.OUTSIDE_BIT,
                                    c.RAW_TRANSPORT | c.OUTSIDE_BIT,
                                    c.RAW_EXTERNAL | c.OUTSIDE_BIT,
                                    c.RAW_TRANSPORT | c.OUTSIDE_BIT,
                                    c.RAW_UNRESOLVED | c.OUTSIDE_BIT,
                                    c.RAW_TRANSPORT | c.OUTSIDE_BIT])
            # The production-size expected totals intentionally reject a toy run;
            # verify mapping semantics directly instead.
            self.assertEqual(c.representative(plan, 1), 0)
            self.assertEqual(c.representative(plan, 3), 2)
            self.assertEqual(c.representative(plan, 5), 4)
        finally:
            c.RECORDS = old_records

    def test_release_manifest_binds_every_executable_source(self):
        names = {"README.md", "SOURCE_INVENTORY.json", "compact_census.py",
                 "compact_census.sbatch", "compact_census_tests.py"}
        with tempfile.TemporaryDirectory() as temp:
            directory = Path(temp)
            for name in names:
                (directory / name).write_bytes((name + "\n").encode())
            body = {"schema": "mub6-outside003-census-release-v1",
                    "status": "FROZEN_READ_ONLY_CENSUS",
                    "files": {name: hashlib.sha256((name + "\n").encode()).hexdigest()
                              for name in sorted(names)},
                    "physical_lean_admissions": 0}
            body["release_sha256"] = c.digest(body)
            manifest = directory / "RELEASE.json"
            manifest.write_text(json.dumps(body))
            self.assertEqual(c.verify_release(manifest)["release_sha256"], body["release_sha256"])
            (directory / "compact_census.py").write_text("changed\n")
            with self.assertRaises(ValueError):
                c.verify_release(manifest)


if __name__ == "__main__":
    unittest.main()
