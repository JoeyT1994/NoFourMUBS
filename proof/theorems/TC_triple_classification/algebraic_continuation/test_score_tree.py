import copy,unittest
import numpy as np
from flint import arb,ctx
import score_tree as S


class ScoreTreeTests(unittest.TestCase):
    def test_narrow_bins_across_the_projected_phase_cut(self):
        ctx.prec=160
        den=S.NC.stagec.DEN
        # The unprojected column has mean pi. Removing that mean before
        # wrapping can turn one grid step into an almost 2*pi separation.
        first=[den//2,den//2,den//2,3*den//4,3*den//4]
        second=list(first);second[0]+=1
        tree=object.__new__(S.Tree);tree.cache={};tree.model={}
        tree.assignment={0:[first,second]};rho=arb(1)/100
        tree.cover={'bin_radius':rho}
        prepared,bound=tree.column(0,(0,))
        # Their mean-zero phase distance is one grid step times sqrt(5/6).
        # The chosen midpoint halves that distance; the full bin radius
        # is still added, so every point of both closed bins is covered.
        exact=rho+arb.pi()/den*(arb(5)/6).sqrt()
        self.assertGreaterEqual(bound['phase_radius'],exact)
        self.assertLess(bound['phase_radius']-exact,arb('1e-14'))
        self.assertLess(bound['phase_radius'],arb('0.03'))

    def test_arc_pruning_preserves_every_compatible_tuple(self):
        graph=np.zeros((6,6),bool)
        for a,b in [(0,2),(0,3),(0,4),(1,3),(1,5),(2,4),(3,4),(3,5)]:graph[a,b]=graph[b,a]=True
        groups={0:(0,1),1:(2,3),2:(4,5)}
        before={(a,b,c) for a in groups[0] for b in groups[1] for c in groups[2]
                if graph[a,b] and graph[a,c] and graph[b,c]}
        out=S.prune(groups,graph)
        after={(a,b,c) for a in out[0] for b in out[1] for c in out[2]
               if graph[a,b] and graph[a,c] and graph[b,c]}
        self.assertEqual(before,after)

    def test_splits_cannot_drop_or_duplicate_a_label(self):
        groups={4:(1,3,5,7),9:(2,6)}
        left,right=S.split(groups,4,[3,7])
        self.assertFalse(set(left[4]) & set(right[4]))
        self.assertEqual(set(left[4])|set(right[4]),set(groups[4]))
        self.assertEqual(left[9],right[9])
        for bad in ([],[1,1],[1,2],[1,3,5,7]):
            with self.assertRaises(ArithmeticError):S.split(groups,4,bad)

    def test_replayer_rejects_missing_children_and_unresolved_leaves(self):
        tree=object.__new__(S.Tree);tree.groups={0:(0,1),1:(2,)}
        tree.cover={'label_graph':np.ones((3,3),bool)}
        # An independent leaf oracle is true only on singleton label sets.
        tree.evaluate=lambda groups,method=None:dict(status='FOURIER SCORE' if
            all(len(v)==1 for v in groups.values()) else 'NOT ESTABLISHED')
        leaf=dict(status='FOURIER SCORE',method='unitary')
        node=dict(status='SPLIT',color=0,left_labels=[0],children=[leaf,leaf])
        saved=dict(complete=True,tree=node)
        self.assertTrue(tree.replay(saved))
        self.assertEqual(tree.domain_at(saved,'0'),{0:(0,),1:(2,)})
        with self.assertRaises(ValueError):tree.domain_at(saved,'2')
        with self.assertRaises(ArithmeticError):tree.domain_at(saved,'00')
        broken=copy.deepcopy(saved);broken['tree']['children'].pop()
        with self.assertRaises(ArithmeticError):tree.replay(broken)
        broken=copy.deepcopy(saved);broken['tree']['children'][0]={'status':'NOT ESTABLISHED'}
        with self.assertRaises(ArithmeticError):tree.replay(broken)
        with self.assertRaises(ArithmeticError):tree.replay(dict(complete=False,tree=node))
        with self.assertRaises(ArithmeticError):tree.replay(dict(complete=True,tree=leaf))


if __name__=='__main__':unittest.main()
