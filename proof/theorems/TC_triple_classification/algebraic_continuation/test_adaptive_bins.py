"""Geometry, Taylor remainder, and adversarial closed-tree replay checks."""
import copy, unittest
from fractions import Fraction as F
import numpy as np
from flint import arb,arb_mat,ctx
from load_native import C,MS
import bin_quadratic as BQ
import adaptive_bins as AB


class AdaptiveBinTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        ctx.prec=160;cls.rng=np.random.default_rng(10029);r=cls.rng
        hh=r.normal(size=(36,4,4))*.03;hh=(hh+hh.transpose(0,2,1))/2
        cls.model=dict(Q0=C.Z.mat(r.normal(size=(36,1))),U=C.Z.mat(r.normal(size=(36,4))*.1),
            H2=C.Z.mat(hh.reshape(36,16)),X=C.Z.mat(r.normal(size=(36,3))*.04),r=arb('.1'),tau=arb('.001'))
        cls.geometry=AB.Geometry(cls.model)
        cls.flat=dict(Q0=arb_mat(36,1),U=arb_mat(36,4),H2=arb_mat(36,16),
            X=arb_mat(36,1),r=arb('.1'),tau=arb(0))

    def test_root_is_original_polynomial(self):
        index=[3,19,61,117,175]
        for a,b in zip(BQ.numeric(BQ.setup(self.model),[index]),BQ.numeric(self.geometry.data(AB.ROOT),[index])):
            np.testing.assert_array_equal(a,b)
        self.assertEqual(AB.radius_squared(AB.ROOT[1]),F(29,6))

    def test_children_cover_closed_parent(self):
        domain=AB.ROOT
        for axis in [0,1,2,3,4,0,3,0]:
            left,right=AB.split(domain,axis);c,h=domain
            self.assertEqual(left[0][axis]-left[1][axis],c[axis]-h[axis])
            self.assertEqual(left[0][axis]+left[1][axis],right[0][axis]-right[1][axis])
            self.assertEqual(right[0][axis]+right[1][axis],c[axis]+h[axis])
            for j in range(5):
                if j!=axis:self.assertEqual((left[0][j],left[1][j]),(c[j],h[j]))
            domain=right

    def test_child_polynomial_and_full_H_remainder(self):
        domain=AB.ROOT
        for axis,side in [(0,1),(2,0),(4,1),(2,1)]:domain=AB.split(domain,axis)[side]
        data=self.geometry.data(domain);index=[3,19,61,117,175];y=self.rng.normal(size=6)
        c,q,g,tail=BQ.exact(data,index,y.tolist());f,gn,qn,_=BQ.numeric(data,[index])
        self.assertLess(abs(float(c)-y@f[0]),1e-11)
        np.testing.assert_allclose(MS.numeric(g)[:,0],y@gn[0],atol=1e-12)
        np.testing.assert_allclose(MS.numeric(q),np.einsum('a,aij->ij',y,qn[0]),atol=1e-12)
        center,half=map(lambda v:np.array(v,dtype=float),domain);m=self.model
        for _ in range(80):
            seed=self.rng.normal(size=4);seed*=.999/np.linalg.norm(seed)
            t=self.rng.uniform(-1,1,size=5);v=np.r_[seed,t];w=.1*seed
            z=self.rng.normal(size=3);z*=.000999/np.linalg.norm(z)
            h=(MS.numeric(m['Q0'])[:,0]+MS.numeric(m['U'])@w+
               MS.numeric(m['H2'])@np.outer(w,w).ravel()/2+MS.numeric(m['X'])@z).reshape(6,6)
            k=np.r_[0,2*np.pi*np.array(index)/192+np.pi*(center+half*t)/96]
            actual=(abs(np.exp(-1j*h).T@np.exp(1j*k))**2-6)/6
            polynomial=float(c)+MS.numeric(g)[:,0]@v+v@MS.numeric(q)@v/2
            self.assertLessEqual(abs(y@actual-polynomial),float(tail)+1e-11)
            projected=np.r_[0,half*t];projected-=projected.mean()
            self.assertLessEqual(projected@projected,float(AB.radius_squared(domain[1]))+1e-14)

    def make_tree(self):
        geometry=AB.Geometry(self.flat);index=[1]*5;children=[]
        for domain in AB.split(AB.ROOT,0):
            proof=BQ.receipt(geometry.data(domain),index,[1.,0.,0.,0.,0.,0.],[.1]*6)
            self.assertIsNotNone(proof);children.append(dict(leaf=proof))
        return geometry,index,dict(axis=0,children=children)

    def test_valid_tree_and_tampering(self):
        geometry,index,tree=self.make_tree()
        self.assertEqual(AB.replay_tree(geometry,index,tree),2)
        for tamper in ('missing','axis','index','zero','negative','nan','label'):
            forged=copy.deepcopy(tree)
            if tamper=='missing':forged['children'].pop()
            elif tamper=='axis':forged['axis']=True
            elif tamper=='index':forged['children'][0]['leaf']['index']=[3]*5
            elif tamper=='zero':forged['children'][0]['leaf']['direction_hex']=[0.0.hex()]*6
            elif tamper=='negative':forged['children'][0]['leaf']['dual_multipliers_hex'][0]=(-1.0).hex()
            elif tamper=='nan':forged['children'][0]['leaf']['dual_multipliers_hex'][0]='nan'
            else:forged['children'][0]={'status':'EXCLUDED'}
            with self.assertRaises((ArithmeticError,ValueError)):AB.replay_tree(geometry,index,forged)

    def test_cover_membership_and_duplicates(self):
        geometry,index,tree=self.make_tree();w=dict(color=0,index=index,tree=tree)
        cover=dict(bin_indices=[[list(index)] for _ in range(6)],bin_deltas=[[[arb(0)]*6] for _ in range(6)],
            initial_radii=[arb('.1')]*6,bin_radius=arb('.08'),cliques=[list(range(6))],
            adjacency=[63^(1<<i) for i in range(6)],valid_labels=np.ones(6,dtype=bool),label_colors=np.arange(6))
        out,n=AB.replay_pruning(self.flat,cover,dict(witnesses=[w]));self.assertEqual(n,2)
        self.assertEqual(out['cliques'],[])
        for ws in ([w,w],[dict(w,index=[3]*5)],[dict(w,color=10)]):
            with self.assertRaises(ArithmeticError):AB.replay_pruning(self.flat,cover,dict(witnesses=ws))

    def test_failed_search_keeps_bin(self):
        search=AB.Search(self.model,max_depth=0,max_nodes=1)
        from unittest.mock import patch
        with patch.object(BQ.Search,'propose',return_value=None):self.assertIsNone(search.exclude([1]*5))

    def test_replay_requires_original_identity_and_all_patterns(self):
        import hashlib,json
        from replay_adaptive_bins import validate_identity
        record=dict(r=(.1).hex(),frame='original')
        row=dict(index=754,radius_hex=(.1).hex(),
            seed_sha256=hashlib.sha256(json.dumps(record,sort_keys=True).encode()).hexdigest(),
            status='CERTIFIED EMPTY',patterns=[dict(status='EXCLUDED')],patterns_after_column_filter=1)
        validate_identity(row,record,754)
        for change in (dict(index=True),dict(radius_hex=(.05).hex()),dict(seed_sha256='changed'),
                       dict(patterns=[]),dict(patterns=[dict(status='NOT ESTABLISHED')]),dict(status='CERTIFIED')):
            with self.assertRaises(ValueError):validate_identity(dict(row,**change),record,754)


if __name__=='__main__':unittest.main()
