import ParametricAngularLeaf
import Root0Arcs05
import Root0Arcs06
import Root0Arcs12
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
theorem leaf0912 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(365/2048),(183/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0096 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0096_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0912
theorem leaf0913 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(91/512),(365/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0093 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0093_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0913
theorem leaf0914 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(365/2048),(183/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0096 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0096_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0914
theorem leaf0915 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(91/512),(365/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0093 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0093_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0915
theorem leaf0916 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(363/2048),(91/512)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0092 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0092_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0916
theorem leaf0917 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(181/1024),(363/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0090 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0090_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0917
theorem leaf0918 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(363/2048),(91/512)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0092 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0092_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0918
theorem leaf0919 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(181/1024),(363/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0090 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0090_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0919
theorem leaf0920 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(361/2048),(181/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0089 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0089_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0920
theorem leaf0921 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(45/256),(361/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0085 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0085_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0921
theorem leaf0922 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(361/2048),(181/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0089 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0089_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0922
theorem leaf0923 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(45/256),(361/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0085 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0085_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0923
theorem leaf0924 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(363/2048),(91/512)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0092 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0092_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0924
theorem leaf0925 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(181/1024),(363/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0090 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0090_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0925
theorem leaf0926 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(363/2048),(91/512)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0092 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0092_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0926
theorem leaf0927 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(181/1024),(363/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0090 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0090_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0927
theorem leaf0928 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(361/2048),(181/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0089 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0089_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0928
theorem leaf0929 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(45/256),(361/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0085 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0085_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0929
theorem leaf0930 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(361/2048),(181/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0089 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0089_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0930
theorem leaf0931 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(45/256),(361/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0085 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0085_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0931
theorem leaf0932 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(89/512),(45/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0080 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0080_checked .re (by decide +kernel)
#print axioms leaf0932
theorem leaf0933 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(179/1024),(45/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0083 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0083_checked .re (by decide +kernel)
#print axioms leaf0933
theorem leaf0934 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(359/2048),(45/256)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0084 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0084_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0934
theorem leaf0935 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(179/1024),(359/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0082 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0082_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0935
end ShoulderRoot1Angular20261003
