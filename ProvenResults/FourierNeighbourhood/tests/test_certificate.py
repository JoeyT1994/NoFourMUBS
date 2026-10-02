"""Exact arithmetic and deliberate-corruption regression tests.
These tests supplement; they do not replace the complete verify.py run.
"""
from pathlib import Path
from fractions import Fraction as F
from unittest import TestCase, main
from unittest.mock import patch
import gzip, json, random, shutil, sys, tempfile
sys.path.insert(0,str(Path(__file__).resolve().parents[1]))
import verify as v
from dump_cover import leaf_records

class CertificateTests(TestCase):
    @classmethod
    def setUpClass(cls):
        cls.raw,cls.centers=v.load_centers()
        cls.ex=cls.inc=None
        for row in leaf_records():
            if row['kind']=='exclude' and cls.ex is None: cls.ex=row
            if row['kind']=='include' and cls.inc is None: cls.inc=row
            if cls.ex is not None and cls.inc is not None: break

    def temp_root(self):
        d=tempfile.TemporaryDirectory();self.addCleanup(d.cleanup)
        root=Path(d.name);shutil.copytree(v.ROOT/'data',root/'data')
        return root

    def test_interval_products_enclose_exact_values(self):
        rng=random.Random(841)
        for _ in range(100):
            a=F(rng.randrange(-10**8,10**8),rng.randrange(1,10**6))
            b=F(rng.randrange(-10**8,10**8),rng.randrange(1,10**6))
            lo,hi=v.imul(v.frac_interval(a),v.frac_interval(b))
            self.assertLessEqual(F(lo,v.SCALE),a*b)
            self.assertGreaterEqual(F(hi,v.SCALE),a*b)

    def test_physical_coefficients(self):
        v.physical_coefficients_check()

    def test_modified_physical_coefficient_rejected(self):
        root=self.temp_root();p=root/'data/field_coefficients.json'
        d=json.loads(p.read_text());d['coefficients'][0][0][0]+=1
        p.write_text(json.dumps(d))
        with patch.object(v,'ROOT',root),self.assertRaisesRegex(ValueError,'physical coefficient'):
            v.physical_coefficients_check()

    def test_exclusion_and_opposite_sign(self):
        r=self.ex;args=(r['lo'],r['hi'],r['chart'])
        v.accept_exclusion(r['weights'],*args)
        with self.assertRaisesRegex(ValueError,'failed exclusion'):
            v.accept_exclusion([-x for x in r['weights']],*args)
        with self.assertRaisesRegex(ValueError,'invalid separating multiplier'):
            v.accept_exclusion([0]*6,*args)

    def test_inclusion_and_wrong_label(self):
        r=self.inc;args=(r['lo'],r['hi'],r['chart'],self.centers)
        v.accept_inclusion(r['center'],*args)
        with self.assertRaisesRegex(ValueError,'failed inclusion'):
            v.accept_inclusion((r['center']+1)%48,*args)

    def test_invalid_opcode_rejected(self):
        root=self.temp_root();p=root/'data/cover.bin.gz'
        code=bytearray(gzip.decompress(p.read_bytes()));code[0]=255
        p.write_bytes(gzip.compress(code,mtime=0))
        with patch.object(v,'ROOT',root),self.assertRaisesRegex(ValueError,'invalid cover opcode'):
            v.verify_forest(self.centers,check_leaves=False)

    def test_missing_chart_rejected(self):
        root=self.temp_root();p=root/'data/cover.bin.gz'
        p.write_bytes(gzip.compress(bytes([128])*31,mtime=0))
        with patch.object(v,'ROOT',root),self.assertRaisesRegex(ValueError,'truncated phase cover'):
            v.verify_forest(self.centers,check_leaves=False)

    def test_truncated_multiplier_rejected(self):
        root=self.temp_root();p=root/'data/multipliers.i16.gz'
        p.write_bytes(gzip.compress(gzip.decompress(p.read_bytes())[:-1],mtime=0))
        with patch.object(v,'ROOT',root),self.assertRaisesRegex(ValueError,'truncated multiplier'):
            v.verify_forest(self.centers,check_leaves=False)

    def test_trailing_chart_rejected(self):
        root=self.temp_root();p=root/'data/cover.bin.gz'
        p.write_bytes(gzip.compress(gzip.decompress(p.read_bytes())+bytes([128]),mtime=0))
        with patch.object(v,'ROOT',root),self.assertRaisesRegex(ValueError,'unused cover bytes'):
            v.verify_forest(self.centers,check_leaves=False)

    def test_corrupted_graph_rejected(self):
        root=self.temp_root();p=root/'data/compatibility_graph.json'
        d=json.loads(p.read_text());d['orth_neighbors'][0].append(0)
        p.write_text(json.dumps(d))
        with patch.object(v,'ROOT',root),self.assertRaisesRegex(ValueError,'saved compatibility graph'):
            v.exact_graph(self.raw)

    def test_scalar_implications(self):
        v.scalar_implications_check()

if __name__=='__main__':main(verbosity=2)
