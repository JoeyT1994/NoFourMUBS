"""Check the curvature contraction against actual admissible phase errors."""
import unittest
import numpy as np
from flint import arb,arb_mat,ctx
from load_native import C,MS
import contracted_symmetry as CS


class ContractedSymmetryTests(unittest.TestCase):
    def setUp(self):
        ctx.prec=160
        self.rng=np.random.default_rng(6711)

    def test_tensor_contraction_matches_operator_action(self):
        hh=self.rng.normal(size=(8,3,5));indices=[6,1,4]
        carrier=self.rng.normal(size=(3,4));t=self.rng.normal(size=4)
        v=self.rng.normal(size=5)
        block=CS.contracted_matrix([C.Z.mat(x) for x in hh],indices,C.Z.mat(carrier))
        actual=sum((carrier@t)[i]*hh[k]@v for i,k in enumerate(indices))
        self.assertLess(np.max(abs(MS.numeric(block)@np.kron(t,v)-actual)),1e-12)

    def test_bound_contains_admissible_H_and_K_errors(self):
        hh=self.rng.normal(size=(72,3,5))
        h2=self.rng.normal(size=(36,4,4));h2=(h2+h2.transpose(0,2,1))/2
        h2=h2.reshape(36,16);x=self.rng.normal(size=(36,3))
        model=dict(H2=C.Z.mat(h2),X=C.Z.mat(x),r=arb('.2'),tau=arb('.01'))
        eps=np.linspace(.01,.06,6);bounds={c:dict(epsilon=arb(float(eps[c]))) for c in range(6)}
        upper,_=CS.contracted_error([C.Z.mat(a) for a in hh],model,bounds,list(range(6)))
        for _ in range(50):
            w=self.rng.normal(size=4);w*=.2/np.linalg.norm(w)
            z=self.rng.normal(size=3);z*=.01/np.linalg.norm(z)
            errors=np.zeros(72);errors[:36]=h2@np.outer(w,w).ravel()/2+x@z
            for c in range(6):
                e=self.rng.normal(size=6);e-=e.mean();e*=eps[c]/np.linalg.norm(e)
                errors[36+c:72:6]=e
            matrix=np.einsum('k,kij->ij',errors,hh)
            self.assertLessEqual(np.linalg.norm(matrix,2),float(upper)+1e-12)

    def test_contraction_preserves_cancellation_before_norm(self):
        hh=[arb_mat(2,2) for _ in range(72)]
        hh[0]=arb_mat([[1,2],[3,4]]);hh[1]=-hh[0]
        h2=arb_mat(36,16);h2[0,0]=1;h2[1,0]=1
        x=arb_mat(36,1);x[0,0]=2;x[1,0]=2
        model=dict(H2=h2,X=x,r=arb('.1'),tau=arb('.01'))
        bounds={c:dict(epsilon=arb('.1')) for c in range(6)}
        upper,_=CS.contracted_error(hh,model,bounds,list(range(6)))
        self.assertTrue(upper.is_zero())
        self.assertGreater(float(CS.spectral(hh[0])*CS.spectral(h2)),0)

    def test_rejects_wrong_carrier_dimension(self):
        with self.assertRaises(ValueError):
            CS.contracted_matrix([arb_mat(2,2)]*3,[0,1],arb_mat(3,1))


if __name__=='__main__':unittest.main()
