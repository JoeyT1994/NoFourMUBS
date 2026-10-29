"""Check bin-slab containment, ball constraints and rejected invalid duals."""
import itertools,unittest
import numpy as np
from flint import arb
from load_native import C,MS
import test_continuation as fixture
import phase_hull as PH


class HullTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        fixture.ContinuationTests.setUpClass();f=fixture.ContinuationTests
        cls.model=f.model;cls.pp=f.pp;rng=np.random.default_rng(80015)
        cls.bb={c:dict(epsilon=arb('.3'),phase_radius=arb('.3')) for c in range(6)}
        cls.ds=[]
        for c in range(6):
            a=rng.normal(size=(8,6))*.015;a-=a.mean(axis=1,keepdims=True)
            cls.ds.append([[arb(float(x)) for x in row] for row in a])
        cls.cover=dict(bin_deltas=cls.ds,bin_radius=(arb(29)/6).sqrt()*arb.pi()/96)
        cls.d=PH.prepare(cls.model,cls.pp,cls.bb,cls.cover,list(range(6)))

    def test_every_closed_bin_corner_satisfies_saved_geometry(self):
        rng=np.random.default_rng(91);d=self.d
        slabs=MS.numeric(d['slabs']);highs=MS.numeric(d['highs'])[:,0]
        ellipsoids=np.array([MS.numeric(e) for e in d['ellipsoids']])
        for bits in itertools.product((-1,1),repeat=5):
            z=np.zeros(40);seed=rng.normal(size=4);seed*=.99/np.linalg.norm(seed);z[:4]=seed
            noise=np.r_[0,bits]*np.pi/96;noise-=noise.mean()
            for c in range(6):
                center=np.array([float(x) for x in self.ds[c][rng.integers(8)]])
                delta=center+noise
                error=(delta-MS.numeric(self.pp[c]['T'])@(.1*seed))/.3
                z[4+c:40:6]=error
            self.assertLessEqual(np.max(slabs@z-highs),1e-12)
            self.assertLessEqual(np.einsum('i,kij,j->k',z,ellipsoids,z).max(),1+1e-12)

    def test_negative_multiplier_cannot_be_used(self):
        from flint import arb_mat
        n=self.d['slabs'].nrows()
        with self.assertRaises(ValueError):PH.dual(self.d,arb_mat(40,40),arb_mat(40,1),[-1.]*13,[0.]*n)

    def test_saved_directions_reconstruct_the_same_slabs(self):
        d=PH.prepare(self.model,self.pp,self.bb,self.cover,list(range(6)),self.d['directions'])
        self.assertTrue(np.array_equal(MS.numeric(d['slabs']),MS.numeric(self.d['slabs'])))
        self.assertTrue(np.array_equal(MS.numeric(d['highs']),MS.numeric(self.d['highs'])))


if __name__=='__main__':unittest.main()
