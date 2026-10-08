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
theorem leaf0888 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(367/2048),(23/128)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0099 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0099_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0888
theorem leaf0889 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(183/1024),(367/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0097 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0097_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0889
theorem leaf0890 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(91/512),(183/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0094 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0094_checked .re (by decide +kernel)
#print axioms leaf0890
theorem leaf0891 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(365/2048),(183/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0096 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0096_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0891
theorem leaf0892 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(91/512),(365/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0093 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0093_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0892
theorem leaf0893 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(45/256),(91/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0087 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0087_checked .re (by decide +kernel)
#print axioms leaf0893
theorem leaf0894 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(181/1024),(91/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0091 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0091_checked .re (by decide +kernel)
#print axioms leaf0894
theorem leaf0895 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(363/2048),(91/512)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0092 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0092_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0895
theorem leaf0896 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(181/1024),(363/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0090 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0090_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0896
theorem leaf0897 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(45/256),(181/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0086 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0086_checked .re (by decide +kernel)
#print axioms leaf0897
theorem leaf0898 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(361/2048),(181/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0089 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0089_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0898
theorem leaf0899 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(45/256),(361/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0085 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0085_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0899
theorem leaf0900 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(367/2048),(23/128)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0099 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0099_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0900
theorem leaf0901 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(183/1024),(367/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0097 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0097_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0901
theorem leaf0902 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(367/2048),(23/128)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0099 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0099_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0902
theorem leaf0903 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(183/1024),(367/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0097 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0097_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0903
theorem leaf0904 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(365/2048),(183/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0096 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0096_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0904
theorem leaf0905 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(91/512),(365/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0093 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0093_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0905
theorem leaf0906 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(365/2048),(183/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0096 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0096_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0906
theorem leaf0907 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(91/512),(365/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0093 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0093_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0907
theorem leaf0908 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(367/2048),(23/128)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0099 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0099_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0908
theorem leaf0909 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(183/1024),(367/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0097 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0097_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0909
theorem leaf0910 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(367/2048),(23/128)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0099 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0099_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0910
theorem leaf0911 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(183/1024),(367/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0097 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0097_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0911
end ShoulderRoot1Angular20261003
