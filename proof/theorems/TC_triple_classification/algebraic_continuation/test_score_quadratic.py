import unittest
from unittest.mock import patch
from flint import arb,arb_mat,ctx
import score_quadratic as S
import unitary_score as U


class QuadraticScoreTests(unittest.TestCase):
    def setUp(self):ctx.prec=160

    def test_plaquette_gram_normalization(self):
        rows=[]
        for i,k in U.PAIRS:
            for j,l in U.PAIRS:
                row=[0]*36
                for a,b,sign in ((i,j,1),(k,l,1),(i,l,-1),(k,j,-1)):row[6*a+b]+=sign
                rows.append(row)
        r=arb_mat(rows);difference=r.transpose()*r-36*U.horizontal_projection()
        self.assertLess(U.norm(difference.entries()),arb('1e-40'))

    def test_product_of_balls_bounds_independent_phase_evaluations(self):
        phases=[[arb.pi()*i*j/3+arb(((i+2)*(j+1))%7)/40 for j in range(6)] for i in range(6)]
        direction=arb_mat([[arb((i*5)%11-5)/100,arb((i*7)%13-6)/100] for i in range(36)])
        bound=S.upper(phases,direction,[[0],[1]])
        self.assertIsNotNone(bound)
        for a,b in ((-1,-1),(-1,1),(1,-1),(1,1),(.3,-.2),(0,0)):
            shifted=[[phases[i][j]+direction[6*i+j,0]*arb(a)+direction[6*i+j,1]*arb(b)
                      for j in range(6)] for i in range(6)]
            self.assertLessEqual(U.score_upper(shifted),bound)
        triangle=U.score_upper(phases)+arb(2)/5*sum(
            (U.norm([direction[i,j] for i in range(36)]) for j in range(2)),arb(0))
        self.assertLess(bound,triangle)

    def test_invalid_domains_and_unverified_duals_are_rejected(self):
        phases=[[arb(0)]*6 for _ in range(6)];direction=arb_mat(36,2)
        for groups in ([],[[0]],[[0],[0]],[[0,1],[]]):
            with self.assertRaises(ValueError):S.upper(phases,direction,groups)
        with patch.object(S,'quadratic_lower',return_value=None):
            self.assertIsNone(S.upper(phases,direction,[[0],[1]]))


if __name__=='__main__':unittest.main()
