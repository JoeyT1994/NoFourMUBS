import copy
import unittest
from fractions import Fraction as Q
import numpy as np
from flint import arb, arb_mat, ctx
from bootstrap import C, MS
from intrinsic import PhaseJet, ResidualJet, critical_system
from implicit import ImplicitGraph
import barrier as B
from intervals import square, energy
import walls

ctx.prec = 160


def direct(q):
    h, k = np.exp(1j*q[:36].reshape(6, 6)), np.exp(1j*q[36:].reshape(6, 6))
    kk = k.conj().T@k
    return np.r_[[kk[a, b].real for a, b in C.PAIRS],
                 [kk[a, b].imag for a, b in C.PAIRS],
                 ((np.abs(h.conj().T@k)**2-6)/6).ravel()]


class ToyEnergy:
    wbox = [arb(0, 2)]*4
    def __init__(self, offset=0):
        self.offset = offset
    def energy_jet(self, box):
        n = len(box)
        return (self.offset+energy(box), arb_mat([[2*v] for v in box]), 2*C.Z.eye(n))


class LinearGraphOracle:
    turns = False
    def box_inside(self, wbox):
        return True
    def residual_jet(self, box):
        class Jet:
            pass
        out = Jet(); out.value = arb_mat(66, 1); out.jacobian = arb_mat(66, 34)
        for i in range(30):
            out.value[i, 0] = box[4+i]-box[i % 4]
            out.jacobian[i, 4+i] = 1; out.jacobian[i, i % 4] = -1
        out.value[30, 0] = 1+square(box[0])
        out.jacobian[30, 0] = 2*box[0]
        def weighted_hessian(weights):
            h = arb_mat(34, 34); h[0, 0] = 2*weights[30]
            return h
        out.weighted_hessian = weighted_hessian
        return out


class Tests(unittest.TestCase):
    def test_residual_energy_chain_rule(self):
        rng = np.random.default_rng(815)
        q0 = rng.normal(size=72)
        m = rng.normal(size=(72, 34))*.1
        hs = []
        for row in range(5):
            h = rng.normal(size=(34, 34))*.01; h = (h+h.T)/2
            hs.append((row, h))
        phase = PhaseJet(C.Z.mat(q0[:, None]), C.Z.mat(m), [(row, C.Z.mat(h)) for row, h in hs])
        jet = ResidualJet(phase)
        self.assertLess(np.max(np.abs(MS.numeric(jet.value)[:, 0]-direct(q0))), 1e-13)
        e, g, h = jet.energy_jet()
        gn, hn = MS.numeric(g)[:, 0], MS.numeric(h)
        def value(v):
            q = q0+m@v
            for row, hh in hs:
                q[row] += v@hh@v/2
            f = direct(q)
            return f@f
        zero = np.zeros(34)
        for _ in range(4):
            v = rng.normal(size=34); v /= np.linalg.norm(v)
            step = 1e-4
            linear = (value(step*v)-value(-step*v))/(2*step)
            quadratic = (value(step*v)-2*value(zero)+value(-step*v))/step**2
            self.assertLess(abs(linear-gn@v), 2e-6)
            self.assertLess(abs(quadratic-v@hn@v), 2e-4)

    def test_critical_dimensions_and_singular_levels(self):
        for n in (4, 34):
            g, j = critical_system(ToyEnergy().energy_jet([arb(0)]*n), arb(1)/4)
            self.assertEqual((g.nrows(), j.ncols()), (n, n))
            self.assertTrue(g[0, 0] == -arb(1)/4)
        with self.assertRaises(ValueError):
            critical_system(ToyEnergy().energy_jet([arb(0)]*4), arb(0))

    def test_implicit_graph_retains_all_other_equations(self):
        oracle = LinearGraphOracle()
        wb, kb = [arb(0, arb(1)/100)]*4, [arb(0, arb(1)/10)]*30
        graph = ImplicitGraph(oracle, wb, kb, selected=list(range(30)))
        self.assertEqual(len(graph.receipt['retained_residuals']), 36)
        self.assertTrue(graph.receipt['existence_for_every_parameter'])
        self.assertFalse(graph.receipt['exhaustive_all_k_cover_certified'])
        e, g, h = graph.energy_jet([arb(0)]*4)
        self.assertTrue(e.contains(1))
        self.assertTrue(g[0, 0].contains(0))
        self.assertTrue(h[0, 0].contains(4))
        replay = ImplicitGraph(oracle, wb, kb, selected=list(range(30)),
                               inverse_hex=graph.receipt['inverse_hex'])
        self.assertTrue(replay.receipt['uniqueness_on_entire_k_box'])
        with self.assertRaises(ArithmeticError):
            ImplicitGraph(oracle, [arb(0, 1)]*4, kb, selected=list(range(30)))

    def test_internal_faces_and_periodic_seams(self):
        root = B.parse_box([[-1, 1]]*4)
        active, _ = B.partition_leaves(root, dict(axis=0, left='active', right='active'))
        faces = B.exposed_faces(root, active)
        volume = sum((np.prod([b-a for a, b in face if a != b]) for face in faces), Q(0))
        self.assertEqual(volume, 64)
        torus_root = B.parse_box([[-1, 1]]*4+[['-1/2', '1/2']]*30)
        self.assertEqual(len(B.exposed_faces(torus_root, [torus_root], range(4, 34))), 8)
        with self.assertRaises(ValueError):
            B.partition_leaves(root, dict(axis=0, left='active'))

    def test_barrier_cannot_be_omitted(self):
        oracle = ToyEnergy()
        root = [['-1/10', '1/10']]*4
        # E<epsilon everywhere: the critical system is empty, but x=0 is
        # a zero. Only the missing boundary barrier prevents a false proof.
        self.assertIsNotNone(B.critical_test(oracle, B.parse_box(root), Q(1, 4), (Q(1),Q(0),Q(0),Q(0))))
        result = B.certify(oracle, root, '1/4', max_nodes=1)
        self.assertEqual(result['status'], 'NOT ESTABLISHED')
        self.assertEqual(result['interior'], [])
        result = B.certify(oracle, [[-1, 1]]*4, '1/4', max_nodes=1)
        self.assertEqual(result['status'], 'NOT ESTABLISHED')

    def test_complete_barrier_and_tampered_coverage(self):
        oracle = ToyEnergy(offset=1)
        result = B.certify(oracle, [[-1, 1]]*4, '1/2', max_nodes=1)
        self.assertEqual(result['status'], 'CERTIFIED DOMAIN ONLY')
        self.assertTrue(B.replay(oracle, result))
        tampered = copy.deepcopy(result); tampered['boundary'].pop()
        self.assertFalse(B.replay(oracle, tampered))
        missing = B.certify(oracle, [[-1, 1]]*4, '1/2', partition='known', max_nodes=1)
        self.assertEqual(missing['status'], 'NOT ESTABLISHED')

    def test_quantitative_walls(self):
        g = walls.product_gap(arb(2)/7, 60, arb(1)/210)
        self.assertTrue(g.contains(arb(1)/1470))
        epsilon = B.arbq(walls.epsilon_below([g]))
        self.assertTrue(epsilon < g*g)
        with self.assertRaises(ValueError):
            walls.regular_gap(1, 60, arb(1)/10, arb(1)/1000)
        with self.assertRaises(ValueError):
            walls.epsilon_below([])
        self.assertTrue(walls.unweighted_to_native(g).contains(arb(1)/8820))

    def test_seed_cap_contains_every_surviving_point(self):
        from localization import cap
        result = cap(arb(1), [arb(-1),arb(0),arb(0),arb(0)], arb(3)/5)
        self.assertEqual(result['status'], 'CAP')
        centre = MS.numeric(result['centre'])[:, 0]
        rho = C.Z.upper(result['radius'])
        rng = np.random.default_rng(314)
        for _ in range(10000):
            x = rng.normal(size=4); x /= np.linalg.norm(x)
            if x[0] >= .6:
                self.assertLessEqual(np.linalg.norm(x-centre), rho+1e-14)
        self.assertEqual(cap(arb(1),[arb(-1),arb(0),arb(0),arb(0)],arb(2))['status'],'EXCLUDED')


if __name__ == '__main__':
    unittest.main()
