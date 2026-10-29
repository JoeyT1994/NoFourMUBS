"""Closed-ball geometry and boundary-cell checks."""
import unittest
import numpy as np
from flint import arb
from load_native import MS
import partition_geometry as PG
import seed_partition as SP


class GeometryTests(unittest.TestCase):
    def test_corner_touching_only_at_boundary_is_retained(self):
        box=(2,3,3,3,3)
        self.assertFalse(SP.outside(box))
        c,r,info=PG.geometry(box,arb(1))
        self.assertLess(float(r),1e-6)
        self.assertLess(np.linalg.norm(MS.numeric(c)[:,0]-np.full(4,.5)),1e-12)

    def test_octant_enclosure_is_smaller_than_original_radius(self):
        c,r,info=PG.geometry((1,1,1,1,1),arb(1))
        self.assertLess(float(r),.87)
        self.assertGreaterEqual(float(r),np.sqrt(.75)-1e-12)

    def test_sampled_closed_intersections_are_enclosed(self):
        rng=np.random.default_rng(70712)
        for _ in range(80):
            point=rng.normal(size=4);point*=rng.uniform(.2,1)/np.linalg.norm(point)
            level=int(rng.integers(1,5));ids=np.minimum(np.floor((point+1)*2**level/2).astype(int),2**level-1)
            box=(level,*map(int,ids));self.assertFalse(SP.outside(box))
            c,r,_=PG.geometry(box,arb(1));center=MS.numeric(c)[:,0]
            self.assertLessEqual(np.linalg.norm(point-center),float(r)+1e-12)
            self.assertLessEqual(np.linalg.norm(center),1+1e-12)


if __name__=='__main__':unittest.main()
