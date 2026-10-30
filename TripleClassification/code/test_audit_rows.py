"""Streaming receipt loading preserves selection and rejects interior corruption."""
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch
import audit_select as A


class ReceiptRowsTests(unittest.TestCase):
    def read(self, text):
        with tempfile.TemporaryDirectory() as tmp:
            p=Path(tmp)/'rows.jsonl';p.write_text(text)
            with patch.object(Path,'read_text',side_effect=AssertionError('whole-file buffering')):
                return A.rows(p)

    def test_duplicate_selection_and_ties(self):
        incomplete=dict(index=1,status='NOT ESTABLISHED',patterns=[],patterns_after_column_filter=2)
        complete=dict(incomplete,patterns=[{},{}])
        closed=dict(incomplete,status='CERTIFIED EMPTY')
        other=dict(closed,index=2)
        rr=[incomplete,complete,closed,dict(closed,ignored_later_tie=True),other,incomplete]
        self.assertEqual(self.read('\n'.join(map(json.dumps,rr))),{1:closed,2:other})
        self.assertEqual(self.read('\n'.join(map(json.dumps,rr[:2]))),{1:complete})

    def test_only_final_truncated_write_is_tolerated(self):
        good=json.dumps(dict(index=1,status='CERTIFIED EMPTY'))
        self.assertEqual(set(self.read(good+'\n{"index":')), {1})
        with self.assertRaisesRegex(ValueError,'unparsable receipt line'):
            self.read(good+'\n{"index":\n'+good)

    def test_nonfinite_numbers_are_never_tolerated(self):
        for value in ('NaN','Infinity','-Infinity'):
            with self.subTest(value=value),self.assertRaisesRegex(ValueError,'nonfinite'):
                self.read('{"index":1,"value":'+value+'}')

    def test_empty_newline_and_complete_final_rows(self):
        self.assertEqual(self.read(''),{})
        row=dict(index=0,status='CERTIFIED EMPTY');line=json.dumps(row)
        for ending in ('','\n','\r\n','\n\n'):
            with self.subTest(ending=ending):self.assertEqual(self.read(line+ending),{0:row})


if __name__=='__main__':unittest.main()
