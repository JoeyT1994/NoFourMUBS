"""Containment and fail-closed tests for intersected K enclosures."""
import unittest
import numpy as np
from flint import arb,arb_mat
import test_continuation as fixture
from load_native import MS
import chordal_support as CS
import intersection_chordal as IC


class IntersectionTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        fixture.ContinuationTests.setUpClass();f=fixture.ContinuationTests
        cls.model=f.model;cls.pp=f.pp;cls.bb=f.bb
        cls.d=IC.prepare(f.model,f.pp,f.bb,list(range(6)))

    def test_actual_phase_tubes_obey_all_25_constraints(self):
        rng=np.random.default_rng(17705)
        es=np.array([MS.numeric(e) for e in self.d['ellipsoids']])
        self.assertEqual(len(es),25)
        for _ in range(100):
            seed=rng.normal(size=4);seed*=rng.uniform(.7,1)/np.linalg.norm(seed)
            w=.1*seed;v=np.zeros(76);v[:4]=seed
            for c in range(6):
                p=self.pp[c];k=self.d['k'][c]
                error=rng.normal(size=6);error-=error.mean()
                error*=.03*rng.uniform(.7,1)/np.linalg.norm(error)
                angles=MS.numeric(p['v0'])[:,0]+MS.numeric(p['T'])@w+error
                displacement=np.exp(1j*angles)-CS.cn(k['k0'])[:,0]-CS.cn(k['b'])[:,:4]@seed
                eta=float(k['eta'])
                v[4+12*c:16+12*c:2]=displacement.real/eta
                v[5+12*c:16+12*c:2]=displacement.imag/eta
            self.assertLessEqual(np.einsum('i,kij,j->k',v,es,v).max(),1+1e-11)

    def test_general_dual_matches_analytic_square_completion(self):
        q=arb_mat([[2,0],[0,2]]);g=arb_mat([[1],[2]]);e=arb_mat([[1,0],[0,1]])
        result=IC.dual(q,g,[e],[1.])
        self.assertTrue(result.overlaps(-arb(4)/3))

    def test_bad_multipliers_fail_closed(self):
        q=arb_mat([[2]]);g=arb_mat([[1]]);e=arb_mat([[1]])
        for lam in ([-1.],[float('nan')],[]):
            with self.assertRaises(ValueError):IC.dual(q,g,[e],lam)
        with self.assertRaises(ArithmeticError):IC.dual(-q,g,[e],[0.])

    def test_zero_direction_does_not_exclude(self):
        self.assertIsNone(IC.receipt(self.d,[0.]*102,[1.]*25))


if __name__=='__main__':unittest.main()
