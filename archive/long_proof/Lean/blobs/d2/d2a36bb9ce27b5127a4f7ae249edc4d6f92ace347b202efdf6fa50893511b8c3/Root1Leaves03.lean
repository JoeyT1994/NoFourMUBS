import ParametricAngularLeaf
import Root0Arcs09
import Root0Arcs10
import Root0Arcs11
import Root0Arcs12
import Root0Arcs13
import Root0Arcs16
import Root0Arcs17
import Root0Arcs18
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
theorem leaf0072 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(1365/2048)⟩ ⟨(337/1024),(675/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0293 Root0Angular20261003.arc0187 Root0Angular20261003.arc0293_checked Root0Angular20261003.arc0187_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0072
theorem leaf0073 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1365/2048),(683/1024)⟩ ⟨(673/2048),(337/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0296 Root0Angular20261003.arc0186 Root0Angular20261003.arc0296_checked Root0Angular20261003.arc0186_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0073
theorem leaf0074 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1365/2048),(683/1024)⟩ ⟨(21/64),(673/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0296 Root0Angular20261003.arc0180 Root0Angular20261003.arc0296_checked Root0Angular20261003.arc0180_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0074
theorem leaf0075 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(1365/2048)⟩ ⟨(673/2048),(337/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0293 Root0Angular20261003.arc0186 Root0Angular20261003.arc0293_checked Root0Angular20261003.arc0186_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0075
theorem leaf0076 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(1365/2048)⟩ ⟨(21/64),(673/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0293 Root0Angular20261003.arc0180 Root0Angular20261003.arc0293_checked Root0Angular20261003.arc0180_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0076
theorem leaf0077 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/1024),(341/512)⟩ ⟨(339/1024),(85/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0291 Root0Angular20261003.arc0193 Root0Angular20261003.arc0291_checked Root0Angular20261003.arc0193_checked .im (by decide +kernel)
#print axioms leaf0077
theorem leaf0078 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/1024),(341/512)⟩ ⟨(169/512),(339/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0291 Root0Angular20261003.arc0190 Root0Angular20261003.arc0291_checked Root0Angular20261003.arc0190_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0078
theorem leaf0079 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/128),(681/1024)⟩ ⟨(169/512),(85/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0286 Root0Angular20261003.arc0191 Root0Angular20261003.arc0286_checked Root0Angular20261003.arc0191_checked .re (by decide +kernel)
#print axioms leaf0079
theorem leaf0080 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(337/1024),(169/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0292 Root0Angular20261003.arc0188 Root0Angular20261003.arc0292_checked Root0Angular20261003.arc0188_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0080
theorem leaf0081 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/1024),(1363/2048)⟩ ⟨(337/1024),(169/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0290 Root0Angular20261003.arc0188 Root0Angular20261003.arc0290_checked Root0Angular20261003.arc0188_checked .re (by decide +kernel)
#print axioms leaf0081
theorem leaf0082 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(673/2048),(337/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0292 Root0Angular20261003.arc0186 Root0Angular20261003.arc0292_checked Root0Angular20261003.arc0186_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0082
theorem leaf0083 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1363/2048),(341/512)⟩ ⟨(21/64),(673/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0292 Root0Angular20261003.arc0180 Root0Angular20261003.arc0292_checked Root0Angular20261003.arc0180_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0083
theorem leaf0084 : LeafStatement cap moments EX EY hull0 hull1 ⟨(681/1024),(1363/2048)⟩ ⟨(21/64),(337/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0290 Root0Angular20261003.arc0181 Root0Angular20261003.arc0290_checked Root0Angular20261003.arc0181_checked .re (by decide +kernel)
#print axioms leaf0084
theorem leaf0085 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/128),(681/1024)⟩ ⟨(21/64),(169/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0286 Root0Angular20261003.arc0182 Root0Angular20261003.arc0286_checked Root0Angular20261003.arc0182_checked .re (by decide +kernel)
#print axioms leaf0085
theorem leaf0086 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/256),(85/128)⟩ ⟨(87/256),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0281 Root0Angular20261003.arc0212 Root0Angular20261003.arc0281_checked Root0Angular20261003.arc0212_checked .im (by decide +kernel)
#print axioms leaf0086
theorem leaf0087 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/256),(85/128)⟩ ⟨(43/128),(87/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0281 Root0Angular20261003.arc0209 Root0Angular20261003.arc0281_checked Root0Angular20261003.arc0209_checked .im (by decide +kernel)
#print axioms leaf0087
theorem leaf0088 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(169/256)⟩ ⟨(43/128),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0265 Root0Angular20261003.arc0210 Root0Angular20261003.arc0265_checked Root0Angular20261003.arc0210_checked .re (by decide +kernel)
#print axioms leaf0088
theorem leaf0089 : LeafStatement cap moments EX EY hull0 hull1 ⟨(169/256),(85/128)⟩ ⟨(21/64),(43/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0281 Root0Angular20261003.arc0184 Root0Angular20261003.arc0281_checked Root0Angular20261003.arc0184_checked .re (by decide +kernel)
#print axioms leaf0089
theorem leaf0090 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(169/256)⟩ ⟨(21/64),(43/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0265 Root0Angular20261003.arc0184 Root0Angular20261003.arc0265_checked Root0Angular20261003.arc0184_checked .re (by decide +kernel)
#print axioms leaf0090
theorem leaf0091 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/256),(43/64)⟩ ⟨(41/128),(21/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0301 Root0Angular20261003.arc0156 Root0Angular20261003.arc0301_checked Root0Angular20261003.arc0156_checked .re (by decide +kernel)
#print axioms leaf0091
theorem leaf0092 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1367/2048),(171/256)⟩ ⟨(335/1024),(21/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0299 Root0Angular20261003.arc0178 Root0Angular20261003.arc0299_checked Root0Angular20261003.arc0178_checked .re (by decide +kernel)
#print axioms leaf0092
theorem leaf0093 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(671/2048),(21/64)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0297 Root0Angular20261003.arc0179 Root0Angular20261003.arc0297_checked Root0Angular20261003.arc0179_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0093
theorem leaf0094 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(335/1024),(671/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0297 Root0Angular20261003.arc0177 Root0Angular20261003.arc0297_checked Root0Angular20261003.arc0177_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0094
theorem leaf0095 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1367/2048),(171/256)⟩ ⟨(167/512),(335/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0299 Root0Angular20261003.arc0174 Root0Angular20261003.arc0299_checked Root0Angular20261003.arc0174_checked .re (by decide +kernel)
#print axioms leaf0095
end ShoulderRoot1Angular20261003
