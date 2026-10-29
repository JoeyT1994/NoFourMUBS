"""Regression checks for shared-H exclusions and complete root accounting."""
import sys
import unittest
from pathlib import Path
from unittest.mock import patch
from flint import arb,arb_mat,ctx
import plane_joint_certificate as J
import test_plane_column_certificate as Base

sys.path.insert(0,str(Path(__file__).resolve().parents[2]/
                    'proof/theorems/TC_triple_classification/family_neighbourhoods'))


class JointTests(unittest.TestCase):
    def setUp(self):
        ctx.prec=160;t=Base.PlaneTests();self.model=t.model()
        self.captures=[(dict(v0=arb_mat([[arb(x)] for x in t.column(k)['v0']]),
                            T=arb_mat(6,4),model=self.model),arb(0)) for k in range(6)]

    def test_true_partial_and_full_bases_survive(self):
        # The unused zero placeholders violate orthogonality. They must have
        # no effect on the selected equations of the actual partial basis.
        for n in (1,2,3,6):self.assertIsNone(J.scalar_support(self.model,self.captures[:n]))

    def test_scalar_replay_uses_no_linear_solve(self):
        captures=[self.captures[0]]*3
        witness=J.scalar_support(self.model,captures)
        self.assertIsNotNone(witness)
        with patch.object(J.np.linalg,'solve',side_effect=AssertionError('solve in replay')):
            self.assertIsNotNone(J.scalar_support(self.model,captures,witness['direction_hex']))
        self.assertIsNone(J.scalar_support(self.model,captures,[0.0.hex()]*96))

    def test_inactive_equations_and_nonfinite_directions_are_rejected(self):
        direction=[0.0.hex()]*96;direction[95]=1.0.hex()
        with self.assertRaises(ValueError):J.scalar_support(self.model,self.captures[:3],direction)
        direction[95]='nan'
        with self.assertRaises(ValueError):J.scalar_support(self.model,self.captures[:3],direction)

    def test_root_enumeration_cannot_skip_a_surviving_combination(self):
        tubes={i:{0:self.captures[i]} for i in range(3)}
        empty=dict(order=[0,1,2],scalars=[])
        with self.assertRaises(ArithmeticError):J.exclude(self.model,tubes,[0,1,2],empty)
        # Adding an impossible branch does not remove the genuine branch.
        tubes[2][1]=self.captures[0]
        with self.assertRaises(ArithmeticError):J.exclude(self.model,tubes,[0,1,2],empty)

    def test_missing_foreign_and_unused_scalar_witnesses_are_rejected(self):
        tubes={i:{0:self.captures[i]} for i in range(3)}
        zeros=[0.0.hex()]*96
        for roots in ([[0,0],[1,0],[2,7]],[[0,0],[0,0],[2,0]]):
            proposal=dict(order=[0,1,2],scalars=[dict(roots=roots,direction=zeros)])
            with self.assertRaises(ValueError):J.exclude(self.model,tubes,[0,1,2],proposal)
        # A strictly excluded pair prunes this tuple before any scalar is used.
        tubes[1][0]=self.captures[0]
        proposal=dict(order=[0,1,2],scalars=[dict(roots=[[0,0],[1,0],[2,0]],direction=zeros)])
        with self.assertRaises(ValueError):J.exclude(self.model,tubes,[0,1,2],proposal)


if __name__=='__main__':unittest.main()
