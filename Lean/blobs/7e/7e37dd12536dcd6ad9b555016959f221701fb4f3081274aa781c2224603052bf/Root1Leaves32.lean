import ParametricAngularLeaf
import Root0Arcs07
import Root0Arcs08
import Root0Arcs09
import Root0Arcs11
import Root0Arcs12
import Root0Arcs13
import Root1CertificateData
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace ShoulderRoot1Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
open Root0Angular20261003 (ArcCert TrigCert Holds turnPhase split_x split_y)
open ShoulderAngular20261003
open ShoulderRoot1Data20261003
theorem leaf0768 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(13/64),(7/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0125 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0125_checked .re (by decide +kernel)
#print axioms leaf0768
theorem leaf0769 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(3/16),(13/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0116 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0116_checked .re (by decide +kernel)
#print axioms leaf0769
theorem leaf0770 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(11/32)⟩ ⟨(15/64),(1/4)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0210 Root0Angular20261003.arc0131 Root0Angular20261003.arc0210_checked Root0Angular20261003.arc0131_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0770
theorem leaf0771 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(43/128)⟩ ⟨(15/64),(1/4)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0184 Root0Angular20261003.arc0131 Root0Angular20261003.arc0184_checked Root0Angular20261003.arc0131_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0771
theorem leaf0772 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(11/32)⟩ ⟨(29/128),(15/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0210 Root0Angular20261003.arc0130 Root0Angular20261003.arc0210_checked Root0Angular20261003.arc0130_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0772
theorem leaf0773 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(11/32)⟩ ⟨(7/32),(29/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0210 Root0Angular20261003.arc0127 Root0Angular20261003.arc0210_checked Root0Angular20261003.arc0127_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0773
theorem leaf0774 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(43/128)⟩ ⟨(29/128),(15/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0184 Root0Angular20261003.arc0130 Root0Angular20261003.arc0184_checked Root0Angular20261003.arc0130_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0774
theorem leaf0775 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(43/128)⟩ ⟨(7/32),(29/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0184 Root0Angular20261003.arc0127 Root0Angular20261003.arc0184_checked Root0Angular20261003.arc0127_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0775
theorem leaf0776 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(21/64)⟩ ⟨(15/64),(1/4)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0156 Root0Angular20261003.arc0131 Root0Angular20261003.arc0156_checked Root0Angular20261003.arc0131_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0776
theorem leaf0777 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(41/128)⟩ ⟨(15/64),(1/4)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0147 Root0Angular20261003.arc0131 Root0Angular20261003.arc0147_checked Root0Angular20261003.arc0131_checked .re (by decide +kernel)
#print axioms leaf0777
theorem leaf0778 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(21/64)⟩ ⟨(7/32),(15/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0156 Root0Angular20261003.arc0128 Root0Angular20261003.arc0156_checked Root0Angular20261003.arc0128_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0778
theorem leaf0779 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(41/128)⟩ ⟨(7/32),(15/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0147 Root0Angular20261003.arc0128 Root0Angular20261003.arc0147_checked Root0Angular20261003.arc0128_checked .re (by decide +kernel)
#print axioms leaf0779
theorem leaf0780 : LeafStatement cap moments EX EY hull0 hull1 ⟨(87/256),(11/32)⟩ ⟨(27/128),(7/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0212 Root0Angular20261003.arc0126 Root0Angular20261003.arc0212_checked Root0Angular20261003.arc0126_checked .re (by decide +kernel)
#print axioms leaf0780
theorem leaf0781 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(87/256)⟩ ⟨(27/128),(7/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0209 Root0Angular20261003.arc0126 Root0Angular20261003.arc0209_checked Root0Angular20261003.arc0126_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0781
theorem leaf0782 : LeafStatement cap moments EX EY hull0 hull1 ⟨(87/256),(11/32)⟩ ⟨(13/64),(27/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0212 Root0Angular20261003.arc0124 Root0Angular20261003.arc0212_checked Root0Angular20261003.arc0124_checked .re (by decide +kernel)
#print axioms leaf0782
theorem leaf0783 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(87/256)⟩ ⟨(13/64),(27/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0209 Root0Angular20261003.arc0124 Root0Angular20261003.arc0209_checked Root0Angular20261003.arc0124_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0783
theorem leaf0784 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(43/128)⟩ ⟨(27/128),(7/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0184 Root0Angular20261003.arc0126 Root0Angular20261003.arc0184_checked Root0Angular20261003.arc0126_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0784
theorem leaf0785 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(43/128)⟩ ⟨(13/64),(27/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0198 Root0Angular20261003.arc0124 Root0Angular20261003.arc0198_checked Root0Angular20261003.arc0124_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0785
theorem leaf0786 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(85/256)⟩ ⟨(13/64),(27/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0183 Root0Angular20261003.arc0124 Root0Angular20261003.arc0183_checked Root0Angular20261003.arc0124_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0786
theorem leaf0787 : LeafStatement cap moments EX EY hull0 hull1 ⟨(87/256),(11/32)⟩ ⟨(25/128),(13/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0212 Root0Angular20261003.arc0122 Root0Angular20261003.arc0212_checked Root0Angular20261003.arc0122_checked .re (by decide +kernel)
#print axioms leaf0787
theorem leaf0788 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(87/256)⟩ ⟨(51/256),(13/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0209 Root0Angular20261003.arc0123 Root0Angular20261003.arc0209_checked Root0Angular20261003.arc0123_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0788
theorem leaf0789 : LeafStatement cap moments EX EY hull0 hull1 ⟨(173/512),(87/256)⟩ ⟨(25/128),(51/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0211 Root0Angular20261003.arc0121 Root0Angular20261003.arc0211_checked Root0Angular20261003.arc0121_checked .re (by decide +kernel)
#print axioms leaf0789
theorem leaf0790 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(173/512)⟩ ⟨(25/128),(51/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0208 Root0Angular20261003.arc0121 Root0Angular20261003.arc0208_checked Root0Angular20261003.arc0121_checked .re (by decide +kernel)
#print axioms leaf0790
theorem leaf0791 : LeafStatement cap moments EX EY hull0 hull1 ⟨(87/256),(11/32)⟩ ⟨(3/16),(25/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0212 Root0Angular20261003.arc0115 Root0Angular20261003.arc0212_checked Root0Angular20261003.arc0115_checked .re (by decide +kernel)
#print axioms leaf0791
end ShoulderRoot1Angular20261003
