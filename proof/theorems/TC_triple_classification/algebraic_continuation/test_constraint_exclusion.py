import unittest
import numpy as np
from flint import arb,arb_mat,ctx
import constraint_exclusion as E
import unitary_score as U
import test_unitary_score as examples
from load_native import S,C


class ConstraintExclusionTests(unittest.TestCase):
    def setUp(self):ctx.prec=160

    def test_covered_exact_triple_is_not_excluded(self):
        model,prepared,bounds=examples.UnitaryScoreTests().shared_row_gauge_example()
        for color in range(6):
            shift=C.project6()*arb_mat([[arb(((a+2)*(color+1))%7-3)/100] for a in range(6)])
            prepared[color]=dict(prepared[color],v0=prepared[color]['v0']+shift)
            bounds[color]=dict(epsilon=U.norm(shift.entries()),phase_radius=bounds[color]['phase_radius']+U.norm(shift.entries()))
        self.assertIsNone(E.exclude(model,prepared,bounds,list(range(6))))

    def test_H_center_error_keeps_a_true_triple(self):
        model,prepared,bounds=examples.UnitaryScoreTests().shared_row_gauge_example()
        shift=U.column_projection()*arb_mat([[arb((i*7)%11-5)/100] for i in range(36)])
        model['Q0']+=shift
        model['X']=arb_mat([[int(i==j) for j in range(36)] for i in range(36)])
        model['tau']=U.up(U.norm(shift.entries()))
        self.assertIsNone(E.exclude(model,prepared,bounds,list(range(6))))

    def test_multiplier_zero_matches_existing_scalar_polynomial(self):
        model,prepared,bounds=examples.UnitaryScoreTests().shared_row_gauge_example()
        data=S.data(model,prepared,bounds,list(range(6)));direction=np.arange(96,dtype=float)/97
        old=S.direction_quadratic(data,direction)
        new=E.scalar(data,direction,np.zeros((36,96)))
        self.assertLess(abs(old[0]-new[0]),arb('1e-40'))
        self.assertLess(U.norm((old[1]-new[1]).entries()),arb('1e-40'))
        self.assertLess(U.norm((old[2]-new[2]).entries()),arb('1e-40'))
        self.assertGreaterEqual(new[3],old[3].lower())
        self.assertLess(new[4],arb('1e-16'))

    def test_inconsistent_narrow_tube_has_replayable_exclusion(self):
        model,prepared,bounds=examples.UnitaryScoreTests().shared_row_gauge_example()
        model['r']=arb(0)
        prepared[1]=dict(prepared[0])
        bounds={c:dict(epsilon=arb(1)/1000,phase_radius=arb(1)/1000) for c in range(6)}
        proof=E.exclude(model,prepared,bounds,list(range(6)))
        self.assertIsNotNone(proof)
        self.assertIsNotNone(E.replay(model,prepared,bounds,list(range(6)),proof))
        proof['direction_hex']=[float(0).hex() for _ in range(96)]
        self.assertIsNone(E.replay(model,prepared,bounds,list(range(6)),proof))

    def test_invalid_multipliers_fail_closed(self):
        model,prepared,bounds=examples.UnitaryScoreTests().shared_row_gauge_example()
        data=S.data(model,prepared,bounds,list(range(6)))
        for bottom in (np.zeros((35,96)),np.full((36,96),np.nan)):
            with self.assertRaises(ValueError):E.scalar(data,np.zeros(96),bottom)
        with self.assertRaises(ValueError):E.scalar(data,np.zeros(95),np.zeros((36,96)))


if __name__=='__main__':unittest.main()
