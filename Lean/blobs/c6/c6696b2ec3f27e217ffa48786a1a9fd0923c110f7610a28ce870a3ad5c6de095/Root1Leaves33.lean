import ParametricAngularLeaf
import Root0Arcs07
import Root0Arcs09
import Root0Arcs10
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
theorem leaf0792 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(87/256)⟩ ⟨(49/256),(25/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0209 Root0Angular20261003.arc0120 Root0Angular20261003.arc0209_checked Root0Angular20261003.arc0120_checked .re (by decide +kernel)
#print axioms leaf0792
theorem leaf0793 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(87/256)⟩ ⟨(3/16),(49/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0209 Root0Angular20261003.arc0114 Root0Angular20261003.arc0209_checked Root0Angular20261003.arc0114_checked .re (by decide +kernel)
#print axioms leaf0793
theorem leaf0794 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(43/128)⟩ ⟨(51/256),(13/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0198 Root0Angular20261003.arc0123 Root0Angular20261003.arc0198_checked Root0Angular20261003.arc0123_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0794
theorem leaf0795 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(43/128)⟩ ⟨(25/128),(51/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0198 Root0Angular20261003.arc0121 Root0Angular20261003.arc0198_checked Root0Angular20261003.arc0121_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0795
theorem leaf0796 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(85/256)⟩ ⟨(51/256),(13/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0183 Root0Angular20261003.arc0123 Root0Angular20261003.arc0183_checked Root0Angular20261003.arc0123_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0796
theorem leaf0797 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(85/256)⟩ ⟨(25/128),(51/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0183 Root0Angular20261003.arc0121 Root0Angular20261003.arc0183_checked Root0Angular20261003.arc0121_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0797
theorem leaf0798 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(43/128)⟩ ⟨(49/256),(25/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0205 Root0Angular20261003.arc0120 Root0Angular20261003.arc0205_checked Root0Angular20261003.arc0120_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0798
theorem leaf0799 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(171/512)⟩ ⟨(49/256),(25/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0197 Root0Angular20261003.arc0120 Root0Angular20261003.arc0197_checked Root0Angular20261003.arc0120_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0799
theorem leaf0800 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(43/128)⟩ ⟨(97/512),(49/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0205 Root0Angular20261003.arc0119 Root0Angular20261003.arc0205_checked Root0Angular20261003.arc0119_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0800
theorem leaf0801 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(43/128)⟩ ⟨(3/16),(97/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0205 Root0Angular20261003.arc0113 Root0Angular20261003.arc0205_checked Root0Angular20261003.arc0113_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0801
theorem leaf0802 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(171/512)⟩ ⟨(97/512),(49/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0197 Root0Angular20261003.arc0119 Root0Angular20261003.arc0197_checked Root0Angular20261003.arc0119_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0802
theorem leaf0803 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(171/512)⟩ ⟨(3/16),(97/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0197 Root0Angular20261003.arc0113 Root0Angular20261003.arc0197_checked Root0Angular20261003.arc0113_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0803
theorem leaf0804 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(85/256)⟩ ⟨(49/256),(25/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0191 Root0Angular20261003.arc0120 Root0Angular20261003.arc0191_checked Root0Angular20261003.arc0120_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0804
theorem leaf0805 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(49/256),(25/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0120 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0120_checked .re (by decide +kernel)
#print axioms leaf0805
theorem leaf0806 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(85/256)⟩ ⟨(97/512),(49/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0191 Root0Angular20261003.arc0119 Root0Angular20261003.arc0191_checked Root0Angular20261003.arc0119_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0806
theorem leaf0807 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/512),(85/256)⟩ ⟨(3/16),(97/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0191 Root0Angular20261003.arc0113 Root0Angular20261003.arc0191_checked Root0Angular20261003.arc0113_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0807
theorem leaf0808 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(169/512)⟩ ⟨(3/16),(49/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0182 Root0Angular20261003.arc0114 Root0Angular20261003.arc0182_checked Root0Angular20261003.arc0114_checked .re (by decide +kernel)
#print axioms leaf0808
theorem leaf0809 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(21/64)⟩ ⟨(27/128),(7/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0156 Root0Angular20261003.arc0126 Root0Angular20261003.arc0156_checked Root0Angular20261003.arc0126_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0809
theorem leaf0810 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(13/64),(27/128)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0124 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0124_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0810
theorem leaf0811 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(83/256)⟩ ⟨(13/64),(27/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0155 Root0Angular20261003.arc0124 Root0Angular20261003.arc0155_checked Root0Angular20261003.arc0124_checked .re (by decide +kernel)
#print axioms leaf0811
theorem leaf0812 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(41/128)⟩ ⟨(13/64),(7/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0147 Root0Angular20261003.arc0125 Root0Angular20261003.arc0147_checked Root0Angular20261003.arc0125_checked .re (by decide +kernel)
#print axioms leaf0812
theorem leaf0813 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(51/256),(13/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0123 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0123_checked .re (by decide +kernel)
#print axioms leaf0813
theorem leaf0814 : LeafStatement cap moments EX EY hull0 hull1 ⟨(83/256),(21/64)⟩ ⟨(25/128),(51/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0168 Root0Angular20261003.arc0121 Root0Angular20261003.arc0168_checked Root0Angular20261003.arc0121_checked .re (by decide +kernel)
#print axioms leaf0814
theorem leaf0815 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/128),(83/256)⟩ ⟨(25/128),(13/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0155 Root0Angular20261003.arc0122 Root0Angular20261003.arc0155_checked Root0Angular20261003.arc0122_checked .re (by decide +kernel)
#print axioms leaf0815
end ShoulderRoot1Angular20261003
