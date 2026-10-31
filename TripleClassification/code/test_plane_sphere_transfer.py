"""A transfer may use the original closed ball, but cannot imply its target's closure."""
import copy
import os
import unittest
from pathlib import Path
from unittest.mock import patch
from flint import arb, arb_mat, ctx
import plane_sphere_transfer as S


class SphereTransferTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        root=Path(os.environ.get('TC_ROOT',Path(__file__).resolve().parents[2]))
        cls.context=S.Context(root,815)
        cls.proposal=dict(target=1217,domain='original-ball-intersection-v1',
            group=dict(kind='T1',rows=[5,3,1],cols=[1,2,0],g='conj',wind=[-1,-1,-1,0]))

    def test_real_boundary_cell_transfers_only_after_sphere_bound(self):
        C=self.context;p=self.proposal;r=C.check(4,[3,13,10,12],p)
        self.assertGreater(r['bounds']['target_margin_lower'],0)
        self.assertEqual(r['original_radius_hex'],.1.hex())
        self.assertEqual(r['requires_target_ball_classification'],1217)
        self.assertFalse(r['original_ball_closed'])
        full=C.P.Transfer(C.model,C.SC.Ball(C.seeds[1217]),p['group']).check([4,3,13,10,12],use_sphere=False)
        self.assertFalse(full['ok'])

    def test_changed_domain_target_permutation_and_winding_are_rejected(self):
        edits=[lambda p:p.update(domain='sampled'),lambda p:p.update(target=815),
               lambda p:p.update(target=True),lambda p:p['group'].update(rows=[5,5,1]),
               lambda p:p['group'].update(wind=[0,0,0,0]),lambda p:p['group'].update(wind=[True,0,0,0])]
        for edit in edits:
            p=copy.deepcopy(self.proposal);edit(p)
            with self.subTest(proposal=p),self.assertRaises(ValueError):
                self.context.check(4,[3,13,10,12],p)

    def test_invalid_cell_rejected(self):
        for level,cell in [(True,[0]*4),(4,[16,0,0,0]),(4,[True,0,0,0])]:
            with self.subTest(level=level,cell=cell),self.assertRaises(ValueError):
                self.context.check(level,cell,self.proposal)

    def test_cached_dependency_from_another_root_rejected(self):
        C=self.context
        with patch.object(C.P.Z,'__file__',str(C.root/'foreign/wholeball.py')):
            with self.assertRaisesRegex(ValueError,'atlas checker root mismatch'):
                S.Context(C.root,815)

    def test_sphere_bound_retains_the_closed_boundary(self):
        ctx.prec=224;P=self.context.P;c,h,vertices=P.box_geometry([0,0,0,0,0],arb(1))
        I=arb_mat([[int(i==j) for j in range(4)] for i in range(4)]);a=arb_mat(4,1)
        full,_=P.affine_sphere_upper(a,I,c,vertices,arb(1),False)
        sphere,lam=P.affine_sphere_upper(a,I,c,vertices,arb(1),True)
        self.assertTrue(full>=2 and 1<=sphere<arb('1.000001') and lam>=0)


if __name__=='__main__':unittest.main()
