"""Closed-boundary, true-solution, and tamper tests for the plane checker."""
import copy
import itertools
import unittest
from unittest.mock import patch
import numpy as np
from flint import arb,arb_mat,ctx
import plane_column_certificate as P
import plane_cell_certificate as Whole
import plane_frontier_certificate as Frontier
import plane_tree_certificate as Tree


class PlaneTests(unittest.TestCase):
    def setUp(self):ctx.prec=160

    def model(self):
        return dict(Q0=arb_mat([[2*arb.pi()*i*j/6] for i in range(6) for j in range(6)]),
            U=arb_mat(36,4),H2=arb_mat(36,16),X=arb_mat(36,1),r=arb(0),tau=arb(0))

    def column(self,k=0):
        # A quadratic chirp and its Fourier translates are orthogonal and
        # unbiased to the Fourier matrix. Their residuals are checked below.
        phase=[arb.pi()*(i*i+2*i*k)/6 for i in range(6)]
        mean=sum(phase,arb(0))/6
        return dict(v0=[str(x-mean) for x in phase],phase_radius='0.2',colour=k)

    def test_exact_orthogonal_frame(self):
        frame=P.frame(np.array([[1.,2.,3.,4.,5.],[3.,-2.,1.,5.,-4.]]))
        gram=frame.transpose()*frame
        for i,j in itertools.product(range(5),repeat=2):
            self.assertTrue((gram[i,j]-int(i==j)).contains(0))
            self.assertTrue(abs(gram[i,j]-int(i==j))<arb('1e-40'))
        for j in range(5):self.assertTrue(sum((frame[i,j] for i in range(6)),arb(0)).contains(0))

    def test_bad_frame_and_nonfinite_proposal(self):
        with self.assertRaises(ValueError):P.frame(np.zeros((2,5)))
        with self.assertRaises(ValueError):P.hex_array(['nan'],(1,))
        with self.assertRaises(ValueError):P.hex_array(['0x0p+0'],(2,))

    def test_tangent_rectangle_is_retained(self):
        col=P.Column(self.model(),self.column())
        # At level 1 each cell contains the origin, including its boundaries.
        for index in itertools.product(range(2),repeat=2):
            _,_,remaining=col.geometry(1,index)
            self.assertFalse(remaining<0)
        with self.assertRaises(ValueError):col.geometry(2,(4,0))

    def test_incomplete_and_unresolved_tree_rejected(self):
        col=P.Column(self.model(),self.column())
        for node in ({'children':[{}]*3},{'kind':'unknown'},{}):
            with self.assertRaises(ValueError):P.verify_tree(col,node,[],None)

    def test_zero_preconditioner_cannot_capture(self):
        col=P.Column(self.model(),self.column())
        for averaged in (False,True):
            proposal=col.propose_slab(4,(7,7),averaged=averaged);proposal['P']=P.encode(np.zeros((3,6)))
            with self.assertRaises(ArithmeticError):col.check_slab(4,(7,7),proposal)

    def test_true_fourier_chirp_is_not_excluded(self):
        col=P.Column(self.model(),self.column())
        f,_=col.equations(np.zeros(5),P.A.numeric(P.A.basis()))
        self.assertLess(np.linalg.norm(f),1e-12)
        # The true root has weak coordinates zero. All four cells sharing
        # zero must retain it, including with the numerical optimizer disabled.
        radius=col.radius
        for averaged,index in itertools.product((False,True),itertools.product((7,8),repeat=2)):
            proposal=col.propose_slab(4,index,averaged=averaged)
            with patch.object(P,'least_squares',side_effect=AssertionError('optimization during replay')):
                result=col.check_slab(4,index,proposal)
            self.assertEqual(result['status'],'CAPTURED')
            distance=P.A.norm([arb(x)-y for x,y in zip(self.column()['v0'],result['center'])])
            self.assertTrue(distance<result['radius'])
            self.assertEqual(col.radius,radius)

    def test_segment_bound_is_below_exact_integrated_jacobian(self):
        # A diagonal Jacobian with entries cos(x_j)-sin(x_j). Its integral
        # on a straight segment is analytic, independent of our majorant.
        terms=[];left=arb('.05');right=arb('.7')
        for j in range(3):
            z=[P.A.acb(0)]*6;z[j]=P.A.acb(arb('.5'),arb('-.5'))
            terms.append((z,[arb(int(i==j)) for i in range(3)]))
        pre=arb_mat([[int(i==j) for j in range(6)] for i in range(3)])
        lower=P.segment_monotonicity(pre,terms,left,right,arb(0))
        exact=(right.sin()-left.sin()+right.cos()-left.cos())/(right-left)
        self.assertTrue(lower>0)
        self.assertTrue(lower<exact)
        self.assertTrue(lower>P.monotonicity(pre,terms,right,arb(0)))

    def test_segment_mode_and_bounds_reject_invalid_data(self):
        col=P.Column(self.model(),self.column());proposal=col.propose_slab(4,(7,7))
        proposal['averaged']='yes'
        with self.assertRaises(ValueError):col.check_slab(4,(7,7),proposal)
        pre=arb_mat(3,6)
        for bad in (arb(-1),arb('nan')):
            with self.assertRaises(ValueError):P.segment_monotonicity(pre,[],bad,arb(1),arb(0))

    def test_actual_orthogonal_pair_cannot_be_excluded(self):
        model=self.model();columns=[self.column(k) for k in (0,1)]
        tubes=[]
        for col in columns:
            tubes.append(dict(model=model,v0=arb_mat([[arb(x)] for x in col['v0']]),T=arb_mat(6,4)))
        self.assertFalse(P.pair_margin(tubes[0],arb(0),tubes[1],arb(0))>0)
        self.assertFalse(P.directional_pair_margin(tubes[0],arb(0),tubes[1],arb(0))>0)

    def test_directional_pair_bound_handles_a_wide_same_center_pair(self):
        tube=dict(model=self.model(),v0=arb_mat(6,1),T=arb_mat(6,4))
        self.assertFalse(P.pair_margin(tube,arb(1),tube,arb(1))>0)
        self.assertTrue(P.directional_pair_margin(tube,arb(1),tube,arb(1))>0)

    def test_directional_pair_retains_a_zero_with_motion_and_errors(self):
        model=self.model();model['r']=arb('.2');w=arb('.19');tubes=[]
        for c in (0,1):
            motion=arb_mat([[arb((a+2*c)%5-2)/10,0,0,0] for a in range(6)])
            error=arb_mat([[arb((2*a+c)%7-3)/1000] for a in range(6)])
            center=arb_mat([[arb(x)] for x in self.column(c)['v0']])-motion*arb_mat([[w],[0],[0],[0]])-error
            tubes.append(dict(model=model,v0=center,T=motion))
        self.assertFalse(P.directional_pair_margin(tubes[0],arb('.02'),tubes[1],arb('.02'))>0)

    def test_replay_never_trusts_a_leaf_label(self):
        col=P.Column(self.model(),self.column())
        node=col.propose_slab(0,(0,0));node['kind']='excluded'
        with self.assertRaises((ValueError,ArithmeticError)):P.verify_tree(col,node,[],None)

    def test_whole_cell_requires_every_complete_cover_pattern(self):
        cliques=[[0,1,2,3,4,5],[0,1,2,3,4,6]]
        witnesses=[dict(colours=c,columns=[0,1]) for c in cliques]
        Whole.validate_witnesses(cliques,witnesses,{'0','1'})
        for changed in (witnesses[:1],list(reversed(witnesses))):
            with self.assertRaises(ValueError):Whole.validate_witnesses(cliques,changed,{'0','1'})

    def test_whole_cell_rejects_foreign_or_missing_columns(self):
        cliques=[[0,1,2,3,4,5]];witnesses=[dict(colours=cliques[0],columns=[0,6])]
        with self.assertRaises(ValueError):Whole.validate_witnesses(cliques,witnesses,{'0','6'})
        witnesses[0]['columns']=[0,1]
        with self.assertRaises(ValueError):Whole.validate_witnesses(cliques,witnesses,{'0'})
        with self.assertRaises(ValueError):Whole.validate_witnesses(cliques,witnesses,{'0','1','2'})

    def test_failed_pair_bound_does_not_abort_search(self):
        with patch.object(P,'pair_margin',side_effect=ArithmeticError('unverified spectrum')):
            self.assertFalse(P.pair_excluded({0:({},0)},{0:({},0)}))

    def test_constant_tube_keeps_the_entire_phase_capture(self):
        class ConstantOnly:
            @staticmethod
            def project6():return arb_mat([[arb(int(i==j))-arb(1)/6 for j in range(6)] for i in range(6)])
        capture=dict(center=[arb(0)]*6,radius=arb('.2'))
        p,e=P.tube(ConstantOnly,self.model(),[1.,0.,0.,0.,0.,0.],capture,'constant')
        self.assertTrue(all(x==0 for x in p['T'].entries()))
        self.assertTrue(e>=capture['radius']+P.A.norm(p['v0'].entries()))
        with self.assertRaises(ValueError):P.tube(ConstantOnly,self.model(),[0.]*6,capture,'unknown')

    def test_rebuilt_cell_keeps_the_full_closed_cube(self):
        original=dict(theta0=[0.0.hex()]*4,Mth=[float(i==j).hex() for i in range(4) for j in range(4)],
                      r=1.0.hex(),o=1,k=0)
        cell=[1]*4
        record=dict(original,theta0=[(-.25).hex()]*4,r=(.500000000000001).hex())
        Frontier.cell_geometry(original,record,2,cell)
        # The far corner is distance 1/2 from the cell center. An inscribed
        # radius 1/4, a shifted center, or a changed frame cannot cover it.
        for changed in (dict(record,r=(.25).hex()),dict(record,theta0=[0.0.hex()]*4),
                        dict(record,k=1),dict(record,Mth=[0.0.hex()]*16)):
            with self.assertRaises(ValueError):Frontier.cell_geometry(original,changed,2,cell)

    def test_rebuilt_cell_rejects_invalid_coordinates(self):
        for level,cell in ((-1,[0]*4),(2,[4]*4),(2,[1]*3),(2,[1.,1,1,1])):
            with self.assertRaises(ValueError):Frontier.cell_geometry({}, {},level,cell)

    def test_full_child_partition_retains_every_closed_child(self):
        leaf=dict(input={},proposal={});visited=[]
        counts=Tree.walk(dict(children=[leaf]*16),2,[1]*4,lambda n,l,c:visited.append((l,c)))
        self.assertEqual(counts['certified'],16)
        self.assertEqual(visited,[(3,list(c)) for c in itertools.product((2,3),repeat=4)])
        with self.assertRaises(ValueError):Tree.walk(dict(children=[leaf]*15),2,[1]*4,lambda *a:None)

    def test_tree_cannot_discard_a_tangent_boundary(self):
        # This cube touches the unit sphere at (-1/2,-1/2,-1/2,-1/2).
        self.assertFalse(Tree.misses_ball(2,[0]*4))
        with self.assertRaises(ValueError):Tree.walk(dict(outside=True),2,[0]*4,lambda *a:None)
        self.assertTrue(Tree.misses_ball(3,[0]*4))
        self.assertEqual(Tree.walk(dict(outside=True),3,[0]*4,lambda *a:None)['outside'],1)

    def test_tree_rejects_an_unresolved_or_failed_leaf(self):
        with self.assertRaises(ValueError):Tree.walk({},2,[1]*4,lambda *a:None)
        def fail(*args):raise ArithmeticError('all-K proof missing')
        with self.assertRaises(ArithmeticError):Tree.walk(dict(input={},proposal={}),2,[1]*4,fail)


if __name__=='__main__':unittest.main()
