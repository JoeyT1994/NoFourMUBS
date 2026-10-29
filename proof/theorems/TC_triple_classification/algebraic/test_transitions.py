import unittest
import numpy as np
from flint import arb, ctx
import transitions as T

ctx.prec = 160


class Tests(unittest.TestCase):
    def test_all_transitions_and_shared_gauge(self):
        f2 = np.array([[1,1],[1,-1]])
        y2 = np.array([[1,1],[1j,-1j]])
        r,c = np.indices((3,3))
        h = np.kron(f2,np.exp(2j*np.pi*r*c/3))
        k = np.kron(y2,np.exp(2j*np.pi*(r*r+r*c)/3))
        q = [arb(float(v)) for v in np.r_[np.angle(h).ravel(),np.angle(k).ravel()]]
        w, d = T.gauge_matrices()
        self.assertEqual(w*d,w)
        for anchor in range(3):
            for swap in (False,True):
                p = T.transport(q,anchor,swap)
                a = np.exp(1j*np.array([float(v.mid()) for v in p[:36]])).reshape(6,6)
                b = np.exp(1j*np.array([float(v.mid()) for v in p[36:]])).reshape(6,6)
                self.assertLess(np.max(np.abs(a.conj().T@a-6*np.eye(6))),1e-12)
                self.assertLess(np.max(np.abs(b.conj().T@b-6*np.eye(6))),1e-12)
                self.assertLess(np.max(np.abs(np.abs(a.conj().T@b)**2-6)),1e-12)
                result=T.joint_inclusion(p,p,arb(1)/100)
                self.assertEqual(result['status'],'INCLUDED')
                self.assertFalse(result['target_classification_replayed'])
        result=T.hadamard_inclusion(q[:36],q[:36],arb(18)/100)
        self.assertEqual(result['status'],'INCLUDED')
        self.assertFalse(result['target_all_k_classification_replayed'])

    def test_zero_transition_and_bad_permutations_rejected(self):
        q=[arb(0)]*72
        q[36]=arb.pi()
        q[42]=arb.pi()
        q[48]=arb.pi()
        with self.assertRaises(ArithmeticError):
            T.transport(q,1)
        with self.assertRaises(ValueError):
            T.hadamard_inclusion([0]*36,[0]*36,1,rows=[0]*6)


if __name__=='__main__':
    unittest.main()
