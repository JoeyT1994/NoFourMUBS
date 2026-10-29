import unittest
import subprocess,sys
from unittest.mock import patch
from types import SimpleNamespace
import numpy as np
import replay_phantom_cells as P


class PhantomReplayTests(unittest.TestCase):
    def test_import_preserves_native_binding(self):
        code="from load_native import R; before=R.binding(R.DEFAULT_ATLAS)['id']; import replay_phantom_cells as P; assert R.binding(R.DEFAULT_ATLAS)['id']==before==P.audit.NATIVE"
        subprocess.run([sys.executable,'-c',code],check=True,capture_output=True,text=True)

    def test_actual_cell_preconditions_are_required(self):
        args=dict(T=np.zeros((36,4)),P=np.zeros((6,6)),rcol=.01,rH=.01,nN=.001,rF=.02,radius=.02)
        with patch.object(P.NC.stagec,'opnorm_bound',return_value=1.):
            self.assertEqual(P.guard_local(args)['status'],'PASS')
            for name,value in (('rcol',-1.),('nN',float('nan')),('radius',1.)):
                with self.assertRaises(ArithmeticError):P.guard_local(dict(args,**{name:value}))
            args['T'][0,0]=1.01
            with self.assertRaises(ArithmeticError):P.guard_local(args)

    def test_unknown_and_missing_branches_do_not_close(self):
        tree=SimpleNamespace(groups={c:(c,) for c in range(6)},
            cover=dict(label_graph=np.ones((6,6),dtype=bool)))
        result=P.replay_tree(tree,dict(status='NOT ESTABLISHED'))
        self.assertFalse(result['pattern_cell_excluded']);self.assertEqual(result['open_paths'],[''])
        with self.assertRaises(ArithmeticError):P.replay_tree(tree,dict(status='GRAPH EMPTY'))
        with self.assertRaises(ArithmeticError):P.replay_tree(tree,dict(status='SPLIT',children=[{}]))


if __name__=='__main__':unittest.main()
