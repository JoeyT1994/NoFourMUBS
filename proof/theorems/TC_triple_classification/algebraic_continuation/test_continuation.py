"""Regression checks for the new proof operations and failure behavior."""
import unittest
import numpy as np
from flint import arb,arb_mat,ctx
from load_native import C,MS
import chordal_support as CS
import seed_partition as SP
import bin_quadratic as BQ


class ContinuationTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        ctx.prec=160;rng=np.random.default_rng(81902);cls.rng=rng
        q=rng.normal(size=(36,1));u=rng.normal(size=(36,4))*.1
        hh=rng.normal(size=(36,4,4))*.03;hh=(hh+hh.transpose(0,2,1))/2
        x=rng.normal(size=(36,3))*.04
        cls.model=dict(Q0=C.Z.mat(q),U=C.Z.mat(u),H2=C.Z.mat(hh.reshape(36,16)),
                       X=C.Z.mat(x),r=arb('0.1'),tau=arb('0.001'))
        cls.pp={};cls.bb={}
        p6=C.project6()
        for c in range(6):
            t=p6*C.Z.mat(rng.normal(size=(6,4))*.1)
            v=p6*C.Z.mat(rng.normal(size=(6,1)))
            eps=arb('0.03');phase=(C.Z.spectral(t)*cls.model['r']+eps).upper()
            cls.pp[c]=dict(v0=v,T=t,Tnorm=C.Z.spectral(t))
            cls.bb[c]=dict(epsilon=eps,phase_radius=phase)
        cls.data=CS.prepare(cls.model,cls.pp,cls.bb,list(range(6)))
        cls.f,cls.g,cls.q=CS.numeric_coefficients(cls.data)

    def test_exact_polynomials_and_mixed_remainders(self):
        rng=self.rng;m=self.model
        for _ in range(40):
            w=rng.normal(size=4);w*=.095/np.linalg.norm(w)
            z=rng.normal(size=3);z*=.0009/np.linalg.norm(z)
            phase=(MS.numeric(m['Q0'])[:,0]+MS.numeric(m['U'])@w+
                   MS.numeric(m['H2'])@np.outer(w,w).ravel()/2+MS.numeric(m['X'])@z).reshape(6,6)
            phase-=phase.mean(axis=0,keepdims=True);h=np.exp(1j*phase)
            k=np.zeros((6,6),complex);v=np.zeros(76);v[:4]=w/.1
            for c in range(6):
                p=self.pp[c];error=rng.normal(size=6);error-=error.mean();error*=.029/np.linalg.norm(error)
                angles=MS.numeric(p['v0'])[:,0]+MS.numeric(p['T'])@w+error
                k[:,c]=np.exp(1j*angles)
                kk=self.data['k'][c];k0=CS.cn(kk['k0'])[:,0];b=CS.cn(kk['b'])
                displacement=k[:,c]-k0-b[:,:4]@v[:4]
                eta=float(kk['eta'])
                v[4+12*c:16+12*c:2]=displacement.real/eta
                v[5+12*c:16+12*c:2]=displacement.imag/eta
                self.assertLessEqual(np.linalg.norm(v[4+12*c:16+12*c]),1+1e-12)
            gram=k.conj().T@k
            actual=np.r_[(abs(k)**2-1).T.ravel(),
                         [gram[a,b].real for a,b in C.PAIRS],
                         [gram[a,b].imag for a,b in C.PAIRS],
                         ((abs(h.conj().T@k)**2-6)/6).ravel()]
            poly=self.f+self.g@v+np.einsum('i,kij,j->k',v,self.q,v)/2
            self.assertLess(np.max(abs(actual[:66]-poly[:66])),2e-12)
            self.assertTrue(np.all(abs(actual[66:]-poly[66:])<=np.array([float(x) for x in self.data['tails']])+2e-12))

    def test_arb_scalar_matches_search_coefficients(self):
        y=self.rng.normal(size=102)
        c,q,g,tail=CS.scalar(self.data,y.tolist())
        self.assertLess(abs(float(c)-y@self.f),1e-11)
        self.assertLess(np.max(abs(MS.numeric(g)[:,0]-y@self.g)),1e-11)
        self.assertLess(np.max(abs(MS.numeric(q)-np.einsum('k,kij->ij',y,self.q))),1e-11)
        self.assertGreaterEqual(float(tail)+1e-14,np.abs(y[66:])@np.array([float(x) for x in self.data['tails']]))

    def test_zero_direction_cannot_exclude(self):
        self.assertIsNone(CS.receipt(self.data,[0.]*102,[1.]*7))

    def test_negative_multiplier_rejected(self):
        with self.assertRaises(ValueError):CS.receipt(self.data,[0.]*102,[-1.]*7)

    def test_partition_requires_every_branch(self):
        leaves=[dict(box=list(b),status='NOT ESTABLISHED') for b in SP.children((0,0,0,0,0))]
        self.assertTrue(SP.check_partition(leaves))
        with self.assertRaises(ArithmeticError):SP.check_partition(leaves[:-1])

    def test_partition_rejects_overlap_and_false_outside(self):
        leaves=[dict(box=[0,0,0,0,0],status='EXCLUDED'),dict(box=[1,0,0,0,0],status='EXCLUDED')]
        with self.assertRaises(ArithmeticError):SP.check_partition(leaves)
        with self.assertRaises(ArithmeticError):SP.check_partition([dict(box=[0,0,0,0,0],status='OUTSIDE')])

    def test_closed_boundary_is_retained(self):
        self.assertFalse(SP.outside((2,3,3,3,3)))
        self.assertTrue(SP.outside((3,7,7,7,7)))

    def test_bin_quadratic_coefficients_and_remainder(self):
        data=BQ.setup(self.model);index=[3,19,61,117,175]
        f,g,q,x=BQ.numeric(data,[index]);y=self.rng.normal(size=6)
        c,qa,ga,tail=BQ.exact(data,index,y.tolist())
        self.assertLess(abs(float(c)-y@f[0]),1e-11)
        self.assertLess(np.max(abs(MS.numeric(ga)[:,0]-y@g[0])),1e-11)
        self.assertLess(np.max(abs(MS.numeric(qa)-np.einsum('a,aij->ij',y,q[0]))),1e-11)
        m=self.model
        for _ in range(30):
            seed=self.rng.normal(size=4);seed*=.95/np.linalg.norm(seed)
            v=np.r_[seed,self.rng.uniform(-1,1,size=5)];w=.1*seed
            normal=self.rng.normal(size=3);normal*=.00099/np.linalg.norm(normal)
            hphase=(MS.numeric(m['Q0'])[:,0]+MS.numeric(m['U'])@w+
                    MS.numeric(m['H2'])@np.outer(w,w).ravel()/2+MS.numeric(m['X'])@normal).reshape(6,6)
            kphase=np.r_[0,2*np.pi*np.array(index)/192+np.pi*v[4:]/96]
            h=np.exp(1j*hphase);k=np.exp(1j*kphase)
            actual=(abs(h.conj().T@k)**2-6)/6
            value=float(c)+MS.numeric(ga)[:,0]@v+v@MS.numeric(qa)@v/2
            self.assertLessEqual(abs(y@actual-value),float(tail)+1e-11)

    def test_zero_bin_direction_cannot_exclude(self):
        self.assertIsNone(BQ.receipt(BQ.setup(self.model),[1,3,5,7,9],[0.]*6,[1.]*6))

    def test_bin_replay_rejects_tampering_and_duplicates(self):
        import copy
        model=dict(Q0=arb_mat(36,1),U=arb_mat(36,4),H2=arb_mat(36,16),
                   X=arb_mat(36,1),r=arb('0.1'),tau=arb(0))
        data=BQ.setup(model);index=[1]*5
        proof=BQ.receipt(data,index,[1.,0.,0.,0.,0.,0.],[.1]*6)
        self.assertIsNotNone(proof);proof=dict(color=0,**proof)
        cover=dict(bin_indices=[[list(index)] for _ in range(6)],
                   bin_deltas=[[[arb(0)]*6] for _ in range(6)],
                   initial_radii=[arb('.1')]*6,bin_radius=arb('.08'),
                   cliques=[list(range(6))],adjacency=[63^(1<<i) for i in range(6)],
                   valid_labels=np.ones(6,dtype=bool),label_colors=np.arange(6))
        out=BQ.replay_pruning(model,cover,dict(witnesses=[proof]))
        self.assertEqual(out['cliques'],[])
        with self.assertRaises(ArithmeticError):BQ.replay_pruning(model,cover,dict(witnesses=[proof,proof]))
        forged=copy.deepcopy(proof);forged['direction_hex']=[float(0).hex()]*6
        with self.assertRaises(ArithmeticError):BQ.replay_pruning(model,cover,dict(witnesses=[forged]))
        forged=copy.deepcopy(proof);forged['index']=[3]*5
        with self.assertRaises(ArithmeticError):BQ.replay_pruning(model,cover,dict(witnesses=[forged]))


if __name__=='__main__':unittest.main()
