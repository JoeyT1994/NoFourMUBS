"""Interrupted audits must stay open, report their exit and be retried unchanged."""
import hashlib
import json
from pathlib import Path
import signal
import subprocess
import tempfile
from types import SimpleNamespace
import unittest
from unittest.mock import patch
import assemble


def digest(path):
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


class AuditFailureTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        root = Path(self.tmp.name)
        for d in ('split', 'work'): (root / d).mkdir()
        auditor = root / 'auditor.py'; auditor.write_text('fixture')
        builder = root / 'builder.py'; builder.write_text('fixture')
        (root / 'split/b768_l2.json.gz').write_text('fixture')
        (root / 'split/b768_l2.jsonl').write_text(json.dumps(dict(index=0, status='NOT ESTABLISHED')) + '\n')
        self.a = SimpleNamespace(tree_auditor=str(auditor), tree_auditor_sha=digest(auditor),
            work=str(root / 'work'), split_version=[str(builder)], split_dir=str(root / 'split'),
            l3_dir=[], chain_dir=[], cache=str(root / 'cache.json'), plane_dir=None, plane_root=None,
            tc_tree=str(root), workers=1, gamma=[], gamma_dir=None, gamma_sha=None, gamma_lower=None,
            gamma_rules='', anchored_dir=None, anchored_sha=None, anchored_runner_sha=None,
            graph_receipts=None, graph_dir=None, graph_sha=None, graph_runner_sha=None)
        self.rc = SimpleNamespace(sha_file=digest)
        self.open_report = subprocess.CompletedProcess([], 0, json.dumps(dict(
            status='OPEN_CELLS', level=2, unresolved_cells=[[0, 1, 2, 3]])), '')

    def run_audit(self, response):
        with patch.object(subprocess, 'run', return_value=response) as run:
            result = assemble.trees(self.a, SimpleNamespace(guards=set()), {}, self.rc)
        return result[768], run.call_count

    def test_killed_audit_is_never_closed_or_cached_then_retries(self):
        # Even a partial success-looking stdout cannot override a killed process.
        killed = subprocess.CompletedProcess([], -signal.SIGKILL,
            '{"status":"GEOMETRY_AND_RECEIPTS_VERIFIED"}', '')
        result, calls = self.run_audit(killed)
        self.assertEqual(calls, 1)
        self.assertIn('SIGKILL', result['status'])
        self.assertEqual(result['auditor_returncode'], -signal.SIGKILL)
        self.assertEqual(json.loads(Path(self.a.cache).read_text()), {})
        result, calls = self.run_audit(self.open_report)
        self.assertEqual(calls, 1)
        self.assertEqual(result['open_cells'], [[0, 1, 2, 3]])

    def test_legacy_blank_failure_cache_is_ignored(self):
        self.run_audit(self.open_report)
        path = Path(self.a.cache); cached = json.loads(path.read_text())
        self.assertTrue(cached)
        for key in cached: cached[key] = dict(status='audit failed: ', route='level 2')
        path.write_text(json.dumps(cached))
        result, calls = self.run_audit(self.open_report)
        self.assertEqual(calls, 1)
        self.assertEqual(result['open_cells'], [[0, 1, 2, 3]])

    def test_valid_open_verdict_is_still_cached(self):
        self.run_audit(self.open_report)
        result, calls = self.run_audit(subprocess.CompletedProcess([], 99, '', 'must not run'))
        self.assertEqual(calls, 0)
        self.assertEqual(result['open_cells'], [[0, 1, 2, 3]])

    def test_bad_output_or_exit_never_closes(self):
        for code, stdout, stderr, reason in (
            (7, '', '', 'exit code 7'),
            (0, '[]', '', 'missing verified audit report'),
            (0, '{unfinished', '', 'missing verified audit report'),
            (1, '', 'traceback\nValueError: source binding mismatch', 'source binding mismatch'),
        ):
            with self.subTest(code=code, stdout=stdout):
                result, calls = self.run_audit(subprocess.CompletedProcess([], code, stdout, stderr))
                self.assertEqual(calls, 1)
                self.assertIn(reason, result['status'])
                self.assertNotEqual(result['status'], 'closed')
                self.assertEqual(json.loads(Path(self.a.cache).read_text()), {})


if __name__ == '__main__': unittest.main()
