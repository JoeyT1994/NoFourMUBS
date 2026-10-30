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

    def test_directional_pairs_are_versioned_and_old_replays_keep_their_bound(self):
        capture=(self.captures[0][0],arb(1));tubes={c:{0:capture} for c in range(2)}
        proposal=J.exclude(self.model,tubes,[0,1])
        self.assertEqual(proposal['pair_bound'],'directional-v1')
        J.exclude(self.model,tubes,[0,1],proposal)
        old=dict(order=[0,1],scalars=[])
        with self.assertRaises(ArithmeticError):J.exclude(self.model,tubes,[0,1],old)
        proposal['pair_bound']='unknown'
        with self.assertRaises(ValueError):J.exclude(self.model,tubes,[0,1],proposal)

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

    def test_known_basis_is_classified_but_never_called_empty(self):
        captures=[(p,arb('1e-6')) for p,e in self.captures]
        tubes={c:{0:capture} for c,capture in enumerate(captures)}
        with self.assertRaises(ArithmeticError):J.exclude(self.model,tubes,list(range(6)))
        proposal=J.exclude(self.model,tubes,list(range(6)),allow_known=True)
        self.assertTrue(proposal['known'])
        import moving_symmetry as MS
        with patch.object(MS,'classify',side_effect=AssertionError('action search during replay')):
            J.exclude(self.model,tubes,list(range(6)),proposal,allow_known=True)
        with self.assertRaises(ValueError):J.exclude(self.model,tubes,list(range(6)),proposal)
        with patch.object(J,'known_support',return_value=None):
            with self.assertRaises(ValueError):J.exclude(self.model,tubes,list(range(6)),proposal,allow_known=True)
        proposal['known'][0]['action']['labels']=[0]*6
        with self.assertRaises(ValueError):J.exclude(self.model,tubes,list(range(6)),proposal,allow_known=True)

    def test_pooled_capture_retains_centers_motion_and_errors(self):
        self.model['r']=arb('.1');captures=[]
        for c in range(2):
            p=dict(self.captures[c][0]);p['T']=arb_mat(6,4)
            p['T'][0,0]=arb(c+1);p['T'][1,0]=-arb(c+1)
            captures.append((p,arb('.01')))
        pooled,error=J.pooled_capture(self.model,captures)
        self.assertTrue(all(x==0 for x in pooled['T'].entries()))
        for p,e in captures:
            bound=e+J.P.A.norm([p['v0'][i,0]-pooled['v0'][i,0] for i in range(6)])+\
                J.P.A.operator_norm(p['T'])*self.model['r']
            self.assertTrue(error+arb('1e-8')>=bound)
        with self.assertRaises(ValueError):J.pooled_capture(self.model,[])

    def test_nonzero_common_motion_and_normal_errors_retain_a_zero(self):
        m=self.model;r=arb('.2');w=arb('.15');z=arb('.025')
        m['r']=r;m['tau']=arb('.04')
        for i in range(36):
            m['U'][i,0]=arb(i%11-5)/10;m['H2'][i,0]=arb(i%7-3)/10;m['X'][i,0]=arb(i%5-2)/10
            m['Q0'][i,0]-=m['U'][i,0]*w+m['H2'][i,0]*w*w/2+m['X'][i,0]*z
        import native_columns as C
        captures=[]
        for c,(p,e) in enumerate(self.captures):
            t=C.project6()*arb_mat([[arb((a+c)%5-2)/10,0,0,0] for a in range(6)])
            error=arb_mat([[arb(2*a-5)/1000] for a in range(6)])
            center=p['v0']-t*arb_mat([[w],[0],[0],[0]])-error
            captures.append((dict(v0=center,T=t),arb('.02')))
        for n in (3,6):self.assertIsNone(J.scalar_support(m,captures[:n]))


if __name__=='__main__':unittest.main()
