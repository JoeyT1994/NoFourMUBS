"""Closed original-ball boundaries must survive tighter cell enclosures."""
from fractions import Fraction
import itertools
import math
import unittest
from flint import arb,ctx
import plane_frontier_certificate as F


class IntersectionTests(unittest.TestCase):
    def setUp(self):ctx.prec=224

    def test_full_cube_keeps_original_center_and_radius(self):
        mid,r=F.cell_enclosure(3,[0,1,2,2])
        self.assertEqual(mid,[Fraction(-7,8),Fraction(-5,8),Fraction(-3,8),Fraction(-3,8)])
        self.assertEqual(r,arb(1)/4)

    def test_interior_cube_unchanged(self):
        self.assertEqual(F.cell_enclosure(2,[1]*4),F.cell_enclosure(2,[1]*4,True))

    def test_boundary_cell_is_tighter_and_retains_exact_inside_grid(self):
        cell=[0,1,2,2];mid,r=F.cell_enclosure(3,cell,True)
        self.assertLess(float(r),.09)
        points=0
        axes=[[Fraction(2*c-8,8)+Fraction(j,32) for j in range(9)] for c in cell]
        for point in itertools.product(*axes):
            if sum(x*x for x in point)<=1:
                dist=sum((x-y)**2 for x,y in zip(point,mid))
                self.assertTrue(arb(dist.numerator)/dist.denominator<=r.upper()**2);points+=1
        self.assertGreater(points,0)

    def test_closed_tangent_point_is_not_dropped(self):
        # This cell meets the unit sphere only at (-1/2,-1/2,-1/2,-1/2).
        mid,r=F.cell_enclosure(2,[0]*4,True)
        self.assertTrue(all(abs(float(x)+.5)<1e-15 for x in mid))
        distance=sum((x+Fraction(1,2))**2 for x in mid)
        self.assertTrue(arb(distance.numerator)/distance.denominator<=r.upper()**2)

    def test_root_encloses_the_entire_original_unit_ball(self):
        mid,r=F.cell_enclosure(0,[0]*4,True)
        self.assertEqual(mid,[Fraction(0)]*4);self.assertEqual(r,arb(1))

    def test_outside_cell_and_unknown_mode_rejected(self):
        with self.assertRaises(ValueError):F.cell_enclosure(3,[0]*4,True)
        with self.assertRaises(ValueError):F.input_clipped({'geometry_mode':'sampled'})

    def test_clipped_record_requires_explicit_domain_and_positive_margin(self):
        original=dict(theta0=[0.0.hex()]*4,Mth=[float(i==j).hex() for i in range(4) for j in range(4)],r=1.0.hex(),o=1,k=0)
        cell=[0,1,2,2];mid,r=F.cell_enclosure(3,cell,True)
        record=dict(original,theta0=[float(x).hex() for x in mid],r=(float(r)+1e-12).hex())
        F.cell_geometry(original,record,3,cell,True)
        with self.assertRaises(ValueError):F.cell_geometry(original,record,3,cell)
        with self.assertRaises(ValueError):F.cell_geometry(original,dict(record,r=(float(r)/2).hex()),3,cell,True)


if __name__=='__main__':unittest.main()
