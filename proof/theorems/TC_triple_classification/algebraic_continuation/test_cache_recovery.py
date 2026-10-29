"""Interrupted appends must remain restartable without trusting lost data."""
import json
from pathlib import Path
import tempfile
import unittest
from recover_cache import recover


class CacheRecoveryTests(unittest.TestCase):
    def test_interrupted_append_then_restart(self):
        with tempfile.TemporaryDirectory() as directory:
            path=Path(directory)/'proposal.jsonl'
            original=b'{"id": 1}\n{"id": '
            path.write_bytes(original)
            result=recover(path)
            self.assertEqual(result['discarded_bytes'],7)
            with path.open('a') as stream:stream.write('{"id": 2}\n')
            self.assertEqual([json.loads(x) for x in path.read_text().splitlines()],[{'id':1},{'id':2}])
            backups=list(Path(directory).glob('*.interrupted-*'))
            self.assertEqual(len(backups),1);self.assertEqual(backups[0].read_bytes(),original)
            self.assertFalse(recover(path)['changed'])

    def test_complete_record_without_newline_is_preserved(self):
        with tempfile.TemporaryDirectory() as directory:
            path=Path(directory)/'proposal.jsonl';path.write_text('{"id": 1}')
            self.assertEqual(recover(path)['discarded_bytes'],0)
            self.assertEqual(path.read_text(),'{"id": 1}\n')

    def test_interior_corruption_is_rejected_without_changes(self):
        with tempfile.TemporaryDirectory() as directory:
            path=Path(directory)/'proposal.jsonl';raw=b'{"id":\n{"id": 2}\n';path.write_bytes(raw)
            with self.assertRaises(ValueError):recover(path)
            self.assertEqual(path.read_bytes(),raw)


if __name__=='__main__':unittest.main()
