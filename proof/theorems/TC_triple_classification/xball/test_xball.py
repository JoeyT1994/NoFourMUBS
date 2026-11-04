import copy
import inspect
import unittest

import bootstrap as B
import coupled
import geometry
import model as XM
import pipeline
import run_shells
import numpy as np
from flint import arb, arb_mat, ctx

ctx.prec=XM.PRECISION


class Tests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.record,cls.original,_=XM.load_original()

    def test_frozen_sources_and_dispatch(self):
        self.assertEqual(B.verify_frozen_native()['id'],B.FROZEN_NATIVE_BINDING)
        self.assertEqual(inspect.getsource(pipeline.final_pattern).strip(),
                         inspect.getsource(B.native_run.final_pattern).strip())

    def test_exact_cover_and_closed_boundary(self):
        cover=geometry.make_cover()
        self.assertEqual(geometry.verify_cover(cover)['counts'],
                         dict(OUTSIDE=0,CORE=16,SHELL=720))
        self.assertEqual(geometry.radial_squares((2,0,0,0,0))[0],1)
        leaf=next(v for v in cover['leaves'] if v['cell']==[2,0,0,0,0])
        self.assertEqual(leaf['kind'],'SHELL')
        for change in ('remove','duplicate','outside','core'):
            bad=copy.deepcopy(cover)
            if change=='remove':bad['leaves'].pop()
            elif change=='duplicate':bad['leaves'].append(bad['leaves'][0])
            else:bad['leaves'][0]['kind']=change.upper()
            with self.assertRaises(ValueError):geometry.verify_cover(bad)

    def test_accounting_never_accepts_partial_cover(self):
        cover=geometry.make_cover()
        result=run_shells.account(cover,[],'binding')
        self.assertEqual(result['status'],'NOT ESTABLISHED')
        self.assertEqual(len(result['shell_untested']),720)
        wrong=dict(binding='other',subset=dict(radius_ratio=[1,4]))
        with self.assertRaises(ValueError):run_shells.account(cover,[],'binding',wrong)

    def test_stage_c_magnitude_guards(self):
        self.assertEqual(XM.stage_c_preconditions(self.original)['status'],'CERTIFIED')
        bad=dict(self.original);bad['U']=self.original['U']*10
        with self.assertRaises(ArithmeticError):XM.stage_c_preconditions(bad)
        bad=dict(self.original);bad['Q0']=arb_mat(36,1)
        with self.assertRaises(ArithmeticError):XM.stage_c_preconditions(bad)

    def test_core_keeps_original_frame_and_explicit_radius(self):
        core,info=XM.core_model(self.record,2)
        self.assertEqual(info['original_radius_hex'],self.record['r'])
        self.assertEqual(core['ball'].r,self.original['ball'].r/4)
        self.assertTrue(np.array_equal(core['ball'].Mth,self.original['ball'].Mth))

    def test_local_model_boundary_and_frame(self):
        local,data=XM.cell_model(self.original,(2,0,0,0,0))
        self.assertLess(local['r'],arb('1e-25'))
        self.assertEqual(local['X'].ncols(),36)
        self.assertFalse(data['chart_extension_outside_original_ball_assumed'])
        for cell in [(2,0,1,1,1),(4,6,7,7,7)]:
            local,data=XM.cell_model(self.original,cell)
            self.assertLess(local['r'],self.original['r'])
            self.assertEqual(XM.stage_c_preconditions(local)['status'],'CERTIFIED')

    def test_normal_coordinate_22_is_not_discarded(self):
        # The old literal range(21) drops this entire H-column correction.
        x=arb_mat(36,22);x[0,21]=1
        model=dict(self.original);model.update(X=x,H2=arb_mat(36,16),tau=arb('.01'))
        hphase=B.MS.numeric(model['Q0'])[:,0]
        roots=B.NC.propose_roots(np.exp(1j*hphase.reshape(6,6)))
        prepared={c:B.C.build(model,roots[c]) for c in range(6)}
        data=coupled.build(model,prepared,list(range(6)))
        self.assertGreater(data['nc'][0],arb('.009'))


if __name__=='__main__':unittest.main()
