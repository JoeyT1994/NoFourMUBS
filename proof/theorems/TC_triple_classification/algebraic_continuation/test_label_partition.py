import unittest
import numpy as np
from flint import arb,ctx
import label_partition as L


class LabelPartitionTests(unittest.TestCase):
    def setUp(self):ctx.prec=160

    def test_closed_bin_assignment_after_original_center_removed(self):
        cover=dict(label_colors=np.array([0,0]),valid_labels=np.ones(2,bool),
                   label_centres=np.array([[0]*5,[.5]*5]),label_radii=np.array([.02,.02]),
                   bin_indices=[[[1]*5,[96]*5]],bin_radius=arb(1)/100)
        assignment,restricted=L.assign_bins(cover,[0])
        self.assertEqual(assignment,{0:[[1]*5],1:[[96]*5]})
        self.assertTrue(restricted['valid_labels'].all())
        cover['label_radii'][0]=0
        with self.assertRaises(ArithmeticError):L.assign_bins(cover,[0])

    def test_unused_labels_removed_without_losing_bins(self):
        cover=dict(label_colors=np.array([0,0]),valid_labels=np.ones(2,bool),
                   label_centres=np.array([[0]*5,[.5]*5]),label_radii=np.array([.02,.02]),
                   bin_indices=[[[0]*5]],bin_radius=arb(1)/100)
        assignment,restricted=L.assign_bins(cover,[0])
        self.assertEqual(assignment[0],[[0]*5]);self.assertFalse(restricted['valid_labels'][1])
        cover['bin_indices'][0].append([0]*5)
        with self.assertRaises(ArithmeticError):L.assign_bins(cover,[0])


if __name__=='__main__':unittest.main()
