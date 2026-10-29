import unittest
import numpy as np
from flint import arb, arb_mat, ctx
from bootstrap import C, MS
from intervals import dual_lower, quadratic_lower, square
import scalar_support as S

ctx.prec = 160


class Tests(unittest.TestCase):
    def test_square_crossing_zero(self):
        x = square(arb(0, 1))
        self.assertTrue(x.is_finite())
        self.assertTrue(x.contains(0) and x.contains(1))

    def test_signed_quadratic_improvement(self):
        # min_{|x|<=1} x^2+0.2x = -0.01. The unsigned bound is -1.2.
        q, g = arb_mat([[2]]), arb_mat([[arb(1)/5]])
        lower = dual_lower(q, g, [[0]], [0])
        self.assertTrue(lower.contains(-arb(1)/100))
        self.assertTrue(lower > -arb(11)/1000)

    def test_group_dual_and_rejections(self):
        rng = np.random.default_rng(32)
        raw = rng.normal(size=(6, 6))
        qn = (raw+raw.T)/2
        gn = rng.normal(size=6)
        groups = [[0, 1], [2, 3, 4, 5]]
        result = quadratic_lower(C.Z.mat(qn), C.Z.mat(gn[:, None]), groups)
        self.assertIsNotNone(result)
        lower = float(result[0].lower())
        for _ in range(1000):
            v = rng.normal(size=6)
            for group in groups:
                v[group] /= max(1., np.linalg.norm(v[group]))
            self.assertGreaterEqual(gn@v+v@qn@v/2, lower-1e-12)
        with self.assertRaises(ArithmeticError):
            dual_lower(arb_mat([[-1]]), arb_mat([[0]]), [[0]], [0])
        with self.assertRaises(ValueError):
            dual_lower(arb_mat([[1]]), arb_mat([[0]]), [[0]], [-1])
        with self.assertRaises(ValueError):
            dual_lower(arb_mat([[1]]), arb_mat([[0]]), [[0], [0]], [1, 1])

    def test_known_zero_survives_correlated_quadratic(self):
        rng = np.random.default_rng(1864)
        f2 = np.array([[1, 1], [1, -1]])
        y2 = np.array([[1, 1], [1j, -1j]])
        rows, cols = np.indices((3, 3))
        f3 = np.exp(2j*np.pi*rows*cols/3)
        k3 = np.exp(2j*np.pi*(rows*rows+rows*cols)/3)
        hphase = np.angle(np.kron(f2, f3)).ravel()
        kp = np.angle(np.kron(y2, k3)); kp -= kp.mean(axis=0)
        u = rng.normal(size=(36, 4))*.1
        h2 = rng.normal(size=(36, 16))*.02
        x = rng.normal(size=(36, 21))*.01
        def horizontal(a):
            return np.column_stack([MS.numeric(C.Z.horizontal_vector(C.Z.mat(a[:,i:i+1])))[:,0]
                                    for i in range(a.shape[1])])
        u, h2, x = map(horizontal, (u, h2, x))
        w = np.array([.003, -.004, .002, .001]); z = np.ones(21)*.0001
        q0 = hphase-u@w-h2@np.outer(w, w).ravel()/2-x@z
        model = dict(Q0=C.Z.mat(q0[:, None]), U=C.Z.mat(u), H2=C.Z.mat(h2),
                     X=C.Z.mat(x), r=arb('.01'), tau=arb('.001'))
        prepared, bounds = {}, {}
        for c in range(6):
            e = rng.normal(size=6)*.002; e -= e.mean()
            prepared[c] = dict(v0=C.Z.mat((kp[:, c]-e)[:, None]), T=arb_mat(6, 4))
            bounds[c] = dict(epsilon=arb('.02'), phase_radius=arb('.02'))
        self.assertIsNone(S.exclude(model, prepared, bounds, list(range(6))))

    def test_positive_gap_and_replay(self):
        # Identical columns cannot form a Hadamard basis. A small explicit
        # tube around all-zero phases has a large directly verifiable gap.
        model = dict(Q0=arb_mat(36, 1), U=arb_mat(36, 4), H2=arb_mat(36, 16),
                     X=arb_mat(36, 21), r=arb('.01'), tau=arb(0))
        prepared = {c:dict(v0=arb_mat(6, 1), T=arb_mat(6, 4)) for c in range(6)}
        bounds = {c:dict(epsilon=arb('.001')) for c in range(6)}
        d = S.data(model, prepared, bounds, list(range(6)))
        direction = np.zeros(96); direction[30] = 1
        witness = S.receipt(d, direction, [1.]*7)
        self.assertIsNotNone(witness)
        self.assertFalse(witness['positive_level_cover_certified'])
        self.assertIsNotNone(S.replay(model, prepared, bounds, list(range(6)), witness))
        witness['direction_hex'][30] = (-1.).hex()
        self.assertIsNone(S.replay(model, prepared, bounds, list(range(6)), witness))


if __name__ == '__main__':
    unittest.main()
