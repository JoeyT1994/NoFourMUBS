import unittest
from flint import arb,arb_mat,acb,acb_mat,ctx
import unitary_score as U


class UnitaryScoreTests(unittest.TestCase):
    def setUp(self):ctx.prec=160

    def test_fourier_phase_gauges_and_wraps(self):
        p=[[2*arb.pi()*i*j/6+arb(i)/7-arb(j)/11+2*arb.pi()*(i-j)
            for j in range(6)] for i in range(6)]
        self.assertLess(U.score_upper(p),arb('1e-40'))
        with self.assertRaises(ValueError):U.score_upper(p,([0]*6,list(range(6))))

    def test_unit_modulus_angle_and_radial_contradiction(self):
        ones=acb_mat([[acb(1) for _ in range(6)] for _ in range(6)])
        self.assertEqual(U.phase_error(ones,arb(0),arb(0))['phase_error'],0)
        bound=U.phase_error(ones,arb(1)/10,arb(1)/10)['phase_error']
        self.assertGreaterEqual(bound,arb(1)/10)
        self.assertLess(bound,arb('0.1001'))
        halves=ones/2
        self.assertTrue(U.phase_error(halves,arb(1),arb(1)/6)['incompatible'])
        self.assertIsNone(U.phase_error(acb_mat(6,6),arb(10),arb(2))['phase_error'])
        self.assertIsNone(U.phase_error(ones,arb(2),arb(2))['phase_error'])

    def shared_row_gauge_example(self):
        # F2 tensor F3 and the quadratic-phase basis give an exact MUB
        # triple. Their shared row phase changes with one common variable.
        h=[];k=[]
        for i in range(6):
            a,b=divmod(i,3)
            hr=[];kr=[]
            for j in range(6):
                c,d=divmod(j,3)
                value=arb.pi()*a*c+2*arb.pi()*b*d/3
                hr.append(value);kr.append(value+arb.pi()*a/2+2*arb.pi()*b*b/3)
            h.append(hr);k.append(kr)
        slope=[arb(2*i-5)/10 for i in range(6)]
        model=dict(Q0=arb_mat([[h[i][j]] for i in range(6) for j in range(6)]),
            U=arb_mat([[slope[i],0,0,0] for i in range(6) for j in range(6)]),
            H2=arb_mat(36,16),X=arb_mat(36,1),r=arb(1)/50,tau=arb(0))
        prepared={};bounds={};p6=U.C.project6()
        for j in range(6):
            prepared[j]=dict(v0=p6*arb_mat([[k[i][j]] for i in range(6)]),
                            T=arb_mat([[slope[i],0,0,0] for i in range(6)]))
            bounds[j]=dict(epsilon=arb(0),phase_radius=U.norm(slope)*model['r'])
        return model,prepared,bounds

    def test_shared_row_gauge_has_zero_horizontal_motion(self):
        model,prepared,bounds=self.shared_row_gauge_example()
        result=U.pattern(U.prepare_h(model),prepared,bounds,list(range(6)))
        # The inherited spectral enclosure includes a conservative 1e-15
        # numerical proposal cushion, even for the zero projected map.
        self.assertLess(result['horizontal_K'],arb('1e-15'))
        self.assertLess(result['g_up_K'],arb('1e-15'))
        self.assertGreater(result['dK'],0)
        self.assertFalse(result['incompatible'])
        self.assertTrue(result['fourier_threshold_met'])

    def test_radial_subtraction_preserves_nonzero_angles(self):
        c=arb(6)/5;theta=arb(1)/5
        centre=acb_mat([[acb(c) for _ in range(6)] for _ in range(6)])
        displacement=U.up(abs(acb(0,theta).exp()-c))
        result=U.phase_error(centre,6*displacement,displacement)
        self.assertFalse(result['incompatible'])
        self.assertGreaterEqual(result['phase_error'],6*theta)

    def test_invalid_domains_fail_closed(self):
        model,prepared,bounds=self.shared_row_gauge_example()
        with self.assertRaises(ValueError):U.pattern(U.prepare_h(model),prepared,bounds,[0]*6)
        model['r']=arb(-1)
        with self.assertRaises(ValueError):U.prepare_h(model)
        model['r']=arb(1);model['U']=arb_mat(6,4)
        with self.assertRaises(ValueError):U.prepare_h(model)


if __name__=='__main__':unittest.main()
