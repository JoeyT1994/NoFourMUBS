import ParametricAngularLeaf
import Root0Arcs04
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
theorem leaf0960 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(357/2048),(179/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0081 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0081_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0960
theorem leaf0961 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(89/512),(357/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0078 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0078_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0961
theorem leaf0962 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(355/2048),(89/512)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0077 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0077_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0962
theorem leaf0963 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(177/1024),(355/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0075 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0075_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0963
theorem leaf0964 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(355/2048),(89/512)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0077 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0077_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0964
theorem leaf0965 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(177/1024),(355/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0075 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0075_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0965
theorem leaf0966 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(353/2048),(177/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0074 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0074_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0966
theorem leaf0967 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(11/64),(353/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0068 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0068_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0967
theorem leaf0968 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(353/2048),(177/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0074 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0074_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0968
theorem leaf0969 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(11/64),(353/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0068 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0068_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0969
theorem leaf0970 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(355/2048),(89/512)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0077 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0077_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0970
theorem leaf0971 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(177/1024),(355/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0075 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0075_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0971
theorem leaf0972 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(355/2048),(89/512)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0077 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0077_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0972
theorem leaf0973 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(177/1024),(355/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0075 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0075_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0973
theorem leaf0974 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(353/2048),(177/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0074 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0074_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0974
theorem leaf0975 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(11/64),(353/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0068 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0068_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0975
theorem leaf0976 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(353/2048),(177/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0074 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0074_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0976
theorem leaf0977 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(11/64),(353/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0068 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0068_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0977
theorem leaf0978 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(367/2048),(23/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0099 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0099_checked .re (by decide +kernel)
#print axioms leaf0978
theorem leaf0979 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(183/1024),(367/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0097 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0097_checked .re (by decide +kernel)
#print axioms leaf0979
theorem leaf0980 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(183/1024),(23/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0098 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0098_checked .re (by decide +kernel)
#print axioms leaf0980
theorem leaf0981 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(365/2048),(183/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0096 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0096_checked .re (by decide +kernel)
#print axioms leaf0981
theorem leaf0982 : LeafStatement cap moments EX EY hull0 hull1 ⟨(679/2048),(85/256)⟩ ⟨(91/512),(365/2048)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0194 Root0Angular20261003.arc0093 Root0Angular20261003.arc0194_checked Root0Angular20261003.arc0093_checked .re (by decide +kernel)
#print axioms leaf0982
theorem leaf0983 : LeafStatement cap moments EX EY hull0 hull1 ⟨(339/1024),(679/2048)⟩ ⟨(91/512),(183/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0192 Root0Angular20261003.arc0094 Root0Angular20261003.arc0192_checked Root0Angular20261003.arc0094_checked .re (by decide +kernel)
#print axioms leaf0983
end ShoulderRoot1Angular20261003
