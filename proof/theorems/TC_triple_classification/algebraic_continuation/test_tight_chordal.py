"""Check the contracted H-jet remainder independently of certificate search."""
import unittest
import numpy as np
import test_continuation as fixture
import chordal_support as CS
import tight_chordal as TC


class TightChordalTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        fixture.ContinuationTests.setUpClass()
        for name in ('rng','model','pp','bb'):
            setattr(cls,name,getattr(fixture.ContinuationTests,name))
        cls.old=CS.prepare(cls.model,cls.pp,cls.bb,list(range(6)))
        cls.data=TC.prepare(cls.model,cls.pp,cls.bb,list(range(6)))
        cls.f,cls.g,cls.q=CS.numeric_coefficients(cls.data)

    def test_exact_polynomials_and_tighter_mixed_remainders(self):
        fixture.ContinuationTests.test_exact_polynomials_and_mixed_remainders(self)

    def test_coefficients_unchanged(self):
        old=CS.numeric_coefficients(self.old)
        for a,b in zip((self.f,self.g,self.q),old):
            self.assertTrue(np.array_equal(a,b))

    def test_bounds_improve(self):
        a=np.array([float(t) for t in self.old['tails']])
        b=np.array([float(t) for t in self.data['tails']])
        self.assertTrue(np.all(b<=a+1e-14))
        self.assertTrue(np.any(b<a-1e-6))


if __name__=='__main__':unittest.main()
