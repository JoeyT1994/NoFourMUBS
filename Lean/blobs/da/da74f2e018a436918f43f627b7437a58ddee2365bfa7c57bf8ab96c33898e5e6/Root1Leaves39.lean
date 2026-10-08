import ParametricAngularLeaf
import Root0Arcs04
import Root0Arcs05
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
theorem leaf0936 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(89/512),(179/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0079 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0079_checked .re (by decide +kernel)
#print axioms leaf0936
theorem leaf0937 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(357/2048),(179/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0081 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0081_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0937
theorem leaf0938 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(89/512),(357/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0078 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0078_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0938
theorem leaf0939 : LeafStatement cap moments EX EY hull0 hull1 ⟨(343/1024),(43/128)⟩ ⟨(11/64),(89/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0207 Root0Angular20261003.arc0070 Root0Angular20261003.arc0207_checked Root0Angular20261003.arc0070_checked .re (by decide +kernel)
#print axioms leaf0939
theorem leaf0940 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(177/1024),(89/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0076 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0076_checked .re (by decide +kernel)
#print axioms leaf0940
theorem leaf0941 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(355/2048),(89/512)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0077 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0077_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0941
theorem leaf0942 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(177/1024),(355/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0075 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0075_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0942
theorem leaf0943 : LeafStatement cap moments EX EY hull0 hull1 ⟨(685/2048),(343/1024)⟩ ⟨(11/64),(177/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0206 Root0Angular20261003.arc0069 Root0Angular20261003.arc0206_checked Root0Angular20261003.arc0069_checked .re (by decide +kernel)
#print axioms leaf0943
theorem leaf0944 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(353/2048),(177/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0074 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0074_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0944
theorem leaf0945 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/512),(685/2048)⟩ ⟨(11/64),(353/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0203 Root0Angular20261003.arc0068 Root0Angular20261003.arc0203_checked Root0Angular20261003.arc0068_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0945
theorem leaf0946 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(359/2048),(45/256)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0084 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0084_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0946
theorem leaf0947 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(179/1024),(359/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0082 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0082_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0947
theorem leaf0948 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(359/2048),(45/256)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0084 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0084_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0948
theorem leaf0949 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(179/1024),(359/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0082 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0082_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0949
theorem leaf0950 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(357/2048),(179/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0081 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0081_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0950
theorem leaf0951 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/2048),(171/512)⟩ ⟨(89/512),(357/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0202 Root0Angular20261003.arc0078 Root0Angular20261003.arc0202_checked Root0Angular20261003.arc0078_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0951
theorem leaf0952 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(357/2048),(179/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0081 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0081_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0952
theorem leaf0953 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/1024),(683/2048)⟩ ⟨(89/512),(357/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0200 Root0Angular20261003.arc0078 Root0Angular20261003.arc0200_checked Root0Angular20261003.arc0078_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0953
theorem leaf0954 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(359/2048),(45/256)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0084 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0084_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0954
theorem leaf0955 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(179/1024),(359/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0082 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0082_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0955
theorem leaf0956 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(359/2048),(45/256)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0084 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0084_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0956
theorem leaf0957 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/256),(681/2048)⟩ ⟨(179/1024),(359/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0195 Root0Angular20261003.arc0082 Root0Angular20261003.arc0195_checked Root0Angular20261003.arc0082_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0957
theorem leaf0958 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(357/2048),(179/1024)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0081 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0081_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0958
theorem leaf0959 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/2048),(341/1024)⟩ ⟨(89/512),(357/2048)⟩ := by
  exact keep_right_leaf cap Root0Angular20261003.arc0199 Root0Angular20261003.arc0078 Root0Angular20261003.arc0199_checked Root0Angular20261003.arc0078_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0959
end ShoulderRoot1Angular20261003
