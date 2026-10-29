import unittest
from flint import arb,arb_mat,acb,acb_mat,ctx
import unitary_score as U
import constraint_score as C
import test_unitary_score as examples


class ConstraintScoreTests(unittest.TestCase):
    def setUp(self):ctx.prec=160

    def test_exact_triple_with_displaced_K_center(self):
        model,prepared,bounds=examples.UnitaryScoreTests().shared_row_gauge_example()
        model['r']=arb(0);model['U']=arb_mat(36,4)
        true_h=U.column_projection()*model['Q0']
        h=acb_mat([[acb(0,true_h[6*a+k,0]).exp() for k in range(6)] for a in range(6)])
        true_k=acb_mat([[acb(0,prepared[k]['v0'][a,0]).exp() for k in range(6)] for a in range(6)])
        for k in range(6):
            shift=U.C.project6()*arb_mat([[arb(((a+1)*(k+2))%7-3)/100] for a in range(6)])
            prepared[k]=dict(v0=prepared[k]['v0']+shift,T=arb_mat(6,4))
            bounds[k]=dict(phase_radius=U.norm(shift.entries()),epsilon=U.norm(shift.entries()))
        context=U.prepare_h(model);result=C.pattern(context,prepared,bounds,list(range(6)))
        kc=acb_mat([[acb(0,prepared[k]['v0'][a,0].mid()).exp() for k in range(6)] for a in range(6)])
        centre=context['Hc'].conjugate().transpose()*kc/arb(6).sqrt()
        actual=h.conjugate().transpose()*true_k/arb(6).sqrt()
        theta=arb_mat([[(actual[a,k]*centre[a,k].conjugate()).arg()] for a in range(6) for k in range(6)])
        correction=arb_mat([[x] for x in result['constraint_correction']])
        error=U.norm((U.horizontal_projection()*theta+correction).entries())
        self.assertLessEqual(error,result['constraint_phase_error'])
        self.assertGreater(result['constraint_phase_error'],0)
        self.assertLess(result['g_up_L'],result['g_up_L_unsigned'])


if __name__=='__main__':unittest.main()
