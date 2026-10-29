import hashlib
import json
import unittest
from audit_current import validate_identity


class AuditIdentityTests(unittest.TestCase):
    def setUp(self):
        self.record = dict(r=float(.08).hex(),theta0=['example'])
        self.row = dict(index=853,radius_hex=self.record['r'],status='CERTIFIED EMPTY',
                        seed_sha256=hashlib.sha256(json.dumps(self.record,sort_keys=True).encode()).hexdigest(),
                        patterns_after_column_filter=1,patterns=[dict(status='EXCLUDED')])

    def test_original_complete_identity(self):
        validate_identity(self.row,self.record,853)

    def test_rejects_changed_index_radius_or_seed(self):
        for field,value in [('index',852),('index',True),('radius_hex',float(.04).hex()),('seed_sha256','wrong')]:
            row = dict(self.row,**{field:value})
            with self.assertRaises(ValueError):
                validate_identity(row,self.record,853)

    def test_rejects_missing_or_open_pattern(self):
        for patterns in ([],None,[dict(status='NOT ESTABLISHED')]):
            row = dict(self.row,patterns=patterns)
            with self.assertRaises(ValueError):
                validate_identity(row,self.record,853)

    def test_rejects_other_status(self):
        for status in ('NOT ESTABLISHED','CERTIFIED','unknown'):
            with self.assertRaises(ValueError):
                validate_identity(dict(self.row,status=status),self.record,853)


if __name__ == '__main__':
    unittest.main()
