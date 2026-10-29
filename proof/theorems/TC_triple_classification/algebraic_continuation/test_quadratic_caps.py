"""Check the cap objective and a known necessary unit-seed bound."""
import unittest
import numpy as np
from load_native import MS
import test_continuation as fixture
import cubic_chordal as CC
import quadratic_caps as QC


class CapTests(unittest.TestCase):
    def test_squared_distance_objective(self):
        rng=np.random.default_rng(8755);center=rng.normal(size=4)
        c,q,g=QC.objective(center)
        for _ in range(20):
            v=rng.normal(size=76)
            found=float(c)+MS.numeric(g)[:,0]@v+v@MS.numeric(q)@v/2
            self.assertAlmostEqual(found,np.linalg.norm(v[:4]-center)**2,places=11)
        with self.assertRaises(ValueError):QC.objective([float('nan')]*4)

    def test_unit_seed_cap_and_saved_replay(self):
        fixture.ContinuationTests.setUpClass();f=fixture.ContinuationTests
        d=CC.prepare(f.model,f.pp,f.bb,list(range(6)))
        lam=[2.0001]+[1e-7]*6+[0.]*18
        proof,upper=QC.receipt(d,[0.]*4,[0.]*102,lam)
        self.assertGreaterEqual(float(upper),1.)
        self.assertLess(float(upper),1.001)
        again,value=QC.replay(d,proof)
        self.assertTrue(upper.overlaps(value));self.assertFalse(again['excluded'])
        lam[0]=-1.
        with self.assertRaises(ValueError):QC.receipt(d,[0.]*4,[0.]*102,lam)


if __name__=='__main__':unittest.main()
