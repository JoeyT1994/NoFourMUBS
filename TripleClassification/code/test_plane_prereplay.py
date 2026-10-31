"""Distributed replay must cover every uncached job as sibling caches grow."""
import importlib.util
from pathlib import Path
import sys
import types
import unittest
from unittest.mock import patch

spec = importlib.util.spec_from_file_location('tested_prereplay', Path(__file__).parent/'rusty/plane_prereplay.py')
R = importlib.util.module_from_spec(spec); spec.loader.exec_module(R)


class ReplaySchedulingTests(unittest.TestCase):
    def test_growing_cache_cannot_skip_work(self):
        jobs = [(4, [i//8, i%8, 0, 0]) for i in range(80)]
        for order in ([0, 1, 2, 3], [3, 1, 0, 2]):
            cached = set()
            for part in order:
                selected = [i for i, job in enumerate(jobs) if i not in cached and R.owns(job, (part, 4))]
                cached.update(selected)
            self.assertEqual(cached, set(range(len(jobs))))

    def test_every_job_has_exactly_one_owner(self):
        for n in (1, 2, 7, 32):
            for identity in ([4, [3, 2, 1, 0]], ['a'*64, 'b'*64]):
                self.assertEqual(sum(R.owns(identity, (i, n)) for i in range(n)), 1)
        self.assertTrue(R.owns([], None))

    def test_invalid_partition_rejected(self):
        for part in ((0, 0), (-1, 2), (2, 2), (True, 2), (0, 1.5)):
            with self.subTest(part=part), self.assertRaises(ValueError): R.owns([], part)

    def test_leaf_worker_does_not_reload_whole_manifest(self):
        fake = types.ModuleType('plane_audit_manifest')
        def forbidden(*args): raise AssertionError('whole manifest reread by a leaf worker')
        fake.PlaneManifest = forbidden
        with patch.dict(sys.modules, {'plane_audit_manifest': fake}), patch.object(sys, 'path', list(sys.path)):
            R.init('/unused', '/unused/manifest.json', 768, True)

    def test_forked_tree_worker_reuses_validated_parent_map(self):
        fake = types.ModuleType('plane_audit_manifest')
        def forbidden(*args): raise AssertionError('validated parent map was needlessly rebuilt')
        fake.PlaneManifest = forbidden
        parent = types.SimpleNamespace(path=Path('/proof/manifest.json'), ball=768)
        with patch.dict(sys.modules, {'plane_audit_manifest': fake}), patch.object(sys, 'path', list(sys.path)), patch.object(R, 'M', parent), patch.object(R, 'M_ROOT', Path('/root')):
            R.init('/root', '/proof/manifest.json', 768)
            self.assertIs(R.M, parent)


if __name__ == '__main__': unittest.main()
