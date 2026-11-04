"""Negative checks and independent derivative/geometry checks for TC."""
from fractions import Fraction as Q
import itertools
import unittest

from flint import acb, arb, ctx
import sympy as sp

from cells import bounds, enclosure, hex_rational, misses_unit_ball
from local import H_POS, K_POS, PAIRS, contraction, residual_jacobian
from replay import PRODUCT_ROWS, exact_anchors, family_patch, to_acb
from tao import no_clique


class TCChecks(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        ctx.prec=160
        cls.exact=exact_anchors()

    def arb_pair(self,name):
        return [[[to_acb(m[r,c]) for c in range(6)] for r in range(6)] for m in self.exact[name]]

    def test_directional_derivative(self):
        # Independently differentiate the matrix equations symbolically in t.
        t=sp.Symbol('t',real=True)
        direction=[(7*j+3) % 5-2 for j in range(55)]
        for name,(h,k) in self.exact.items():
            ht,kt=sp.MutableDenseMatrix(h),sp.MutableDenseMatrix(k)
            for p,(r,c) in enumerate(H_POS):
                ht[r,c] *= sp.exp(sp.I*t*direction[p])
            for p,(r,c) in enumerate(K_POS):
                kt[r,c] *= sp.exp(sp.I*t*direction[25+p])
            gh,gk,s=ht.H*ht,kt.H*kt,ht.H*kt
            symbolic=([sp.re(gh[a,b]) for a,b in PAIRS]+[sp.im(gh[a,b]) for a,b in PAIRS]
                      +[sp.re(gk[a,b]) for a,b in PAIRS]+[sp.im(gk[a,b]) for a,b in PAIRS]
                      +[sp.re(x*sp.conjugate(x))-6 for x in s])
            _,j=residual_jacobian(*self.arb_pair(name))
            for row,expr in zip(j,symbolic):
                expected=to_acb(sp.simplify(sp.expand(sp.diff(expr,t).subs(t,0)))).real
                actual=sum((x*d for x,d in zip(row,direction)),arb(0))
                self.assertTrue(expected.overlaps(actual))

    def test_large_transverse_box_rejected(self):
        _,j=residual_jacobian(*self.arb_pair('product'))
        with self.assertRaises(ValueError):
            contraction(j,[],arb(1),PRODUCT_ROWS)

    def test_singular_transverse_matrix_rejected(self):
        with self.assertRaises((ValueError,ZeroDivisionError)):
            contraction([[arb(0)]*55 for _ in range(96)],[],arb(1)/8192,PRODUCT_ROWS)

    def test_duplicate_rows_rejected(self):
        _,j=residual_jacobian(*self.arb_pair('product'))
        with self.assertRaises(ValueError):
            contraction(j,[],arb(1)/8192,[PRODUCT_ROWS[0]]*55)

    def test_family_large_and_invalid_radii_rejected(self):
        for rho in (arb(1),arb(-1),arb(0),arb('nan')):
            with self.assertRaises(ValueError):
                family_patch(rho)

    def test_complete_graphs(self):
        for n in (5,6,7):
            graph=[((1 << n)-1) ^ (1 << j) for j in range(n)]
            self.assertEqual(no_clique(graph)[0],n<6)

    def test_graph_exhaustion_and_asymmetry(self):
        graph=[63 ^ (1 << j) for j in range(6)]
        with self.assertRaises(RuntimeError):
            no_clique(graph,cap=0)
        with self.assertRaises(ValueError):
            no_clique([2,0])

    def test_exact_hex_and_boundary_cells(self):
        self.assertEqual(hex_rational('-0x1.8p-3'),Q(-3,16))
        self.assertEqual(hex_rational('0x1.00000000000001p+0'),1+Q(1,16**14))
        for text in ('nan','inf','1.0'):
            with self.assertRaises(ValueError): hex_rational(text)
        # This corner box meets the sphere at exactly (-1/2)^4.
        self.assertFalse(misses_unit_ball(2,[0,0,0,0]))
        self.assertTrue(misses_unit_ball(3,[0,0,0,0]))
        self.assertEqual(bounds(0,[0,0,0,0]),[(Q(-1),Q(1))]*4)
        with self.assertRaises(ValueError): bounds(2,[4,0,0,0])

    def test_cell_enclosure_all_corners(self):
        # Nonrepresentable binary64 center products remain exact rationals.
        seed={'r':'0x1.0000000000001p-3','n':'0x1p-10','P':['0x1p-7']*36,
              'U':['0x1.0000000000001p+0','-0x1.8p-2','0x1p-3','0x1p-4']*36}
        out=enclosure(seed,3,[2,3,4,5])
        r,n=hex_rational(seed['r']),hex_rational(seed['n'])
        u=list(map(hex_rational,seed['U'][:4]))
        for corner in itertools.product(*bounds(3,[2,3,4,5])):
            value=Q(1,128)+sum(x*r*y for x,y in zip(u,corner))
            for sign in (-1,1):
                expected=value+sign*n
                self.assertGreaterEqual(out['center'][0]+out['half_widths'][0],expected)
                self.assertLessEqual(out['center'][0]-out['half_widths'][0],expected)
                self.assertTrue(out['phase_intervals'][0].contains(arb(expected.numerator)/expected.denominator))
        self.assertEqual(out['normal_remainder'],n)


if __name__ == '__main__':
    unittest.main()
