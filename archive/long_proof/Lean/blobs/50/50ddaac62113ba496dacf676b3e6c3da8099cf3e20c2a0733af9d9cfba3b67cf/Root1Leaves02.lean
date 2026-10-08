import ParametricAngularLeaf
import Root0Arcs09
import Root0Arcs11
import Root0Arcs12
import Root0Arcs13
import Root0Arcs17
import Root0Arcs18
import Root0Arcs19
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
theorem leaf0048 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/64),(11/16)⟩ ⟨(5/16),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0305 Root0Angular20261003.arc0149 Root0Angular20261003.arc0305_checked Root0Angular20261003.arc0149_checked .re (by decide +kernel)
#print axioms leaf0048
theorem leaf0049 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/256),(43/64)⟩ ⟨(43/128),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0301 Root0Angular20261003.arc0210 Root0Angular20261003.arc0301_checked Root0Angular20261003.arc0210_checked .re (by decide +kernel)
#print axioms leaf0049
theorem leaf0050 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/128),(171/256)⟩ ⟨(87/256),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0288 Root0Angular20261003.arc0212 Root0Angular20261003.arc0288_checked Root0Angular20261003.arc0212_checked .im (by decide +kernel)
#print axioms leaf0050
theorem leaf0051 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/128),(171/256)⟩ ⟨(43/128),(87/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0288 Root0Angular20261003.arc0209 Root0Angular20261003.arc0288_checked Root0Angular20261003.arc0209_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0051
theorem leaf0052 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/256),(43/64)⟩ ⟨(21/64),(43/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0301 Root0Angular20261003.arc0184 Root0Angular20261003.arc0301_checked Root0Angular20261003.arc0184_checked .re (by decide +kernel)
#print axioms leaf0052
theorem leaf0053 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(171/256)⟩ ⟨(171/512),(43/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0295 Root0Angular20261003.arc0205 Root0Angular20261003.arc0295_checked Root0Angular20261003.arc0205_checked .im (by decide +kernel)
#print axioms leaf0053
theorem leaf0054 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/1024),(171/256)⟩ ⟨(85/256),(171/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0298 Root0Angular20261003.arc0197 Root0Angular20261003.arc0298_checked Root0Angular20261003.arc0197_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0054
theorem leaf0055 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(683/1024)⟩ ⟨(85/256),(171/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0294 Root0Angular20261003.arc0197 Root0Angular20261003.arc0294_checked Root0Angular20261003.arc0197_checked .im (by decide +kernel)
#print axioms leaf0055
theorem leaf0056 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/128),(341/512)⟩ ⟨(171/512),(43/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0287 Root0Angular20261003.arc0205 Root0Angular20261003.arc0287_checked Root0Angular20261003.arc0205_checked .im (by decide +kernel)
#print axioms leaf0056
theorem leaf0057 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/128),(341/512)⟩ ⟨(85/256),(171/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0287 Root0Angular20261003.arc0197 Root0Angular20261003.arc0287_checked Root0Angular20261003.arc0197_checked .im (by decide +kernel)
#print axioms leaf0057
theorem leaf0058 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/1024),(171/256)⟩ ⟨(339/1024),(85/256)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0298 Root0Angular20261003.arc0193 Root0Angular20261003.arc0298_checked Root0Angular20261003.arc0193_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0058
theorem leaf0059 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1367/2048),(171/256)⟩ ⟨(169/512),(339/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0299 Root0Angular20261003.arc0190 Root0Angular20261003.arc0299_checked Root0Angular20261003.arc0190_checked .re (by decide +kernel)
#print axioms leaf0059
theorem leaf0060 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(169/512),(339/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0297 Root0Angular20261003.arc0190 Root0Angular20261003.arc0297_checked Root0Angular20261003.arc0190_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0060
theorem leaf0061 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(683/1024)⟩ ⟨(339/1024),(85/256)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0294 Root0Angular20261003.arc0193 Root0Angular20261003.arc0294_checked Root0Angular20261003.arc0193_checked .im (by decide +kernel)
#print axioms leaf0061
theorem leaf0062 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(683/1024)⟩ ⟨(169/512),(339/1024)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0294 Root0Angular20261003.arc0190 Root0Angular20261003.arc0294_checked Root0Angular20261003.arc0190_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0062
theorem leaf0063 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1367/2048),(171/256)⟩ ⟨(337/1024),(169/512)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0299 Root0Angular20261003.arc0188 Root0Angular20261003.arc0299_checked Root0Angular20261003.arc0188_checked .re (by decide +kernel)
#print axioms leaf0063
theorem leaf0064 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(675/2048),(169/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0297 Root0Angular20261003.arc0189 Root0Angular20261003.arc0297_checked Root0Angular20261003.arc0189_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0064
theorem leaf0065 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(337/1024),(675/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0297 Root0Angular20261003.arc0187 Root0Angular20261003.arc0297_checked Root0Angular20261003.arc0187_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0065
theorem leaf0066 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1367/2048),(171/256)⟩ ⟨(21/64),(337/1024)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0299 Root0Angular20261003.arc0181 Root0Angular20261003.arc0299_checked Root0Angular20261003.arc0181_checked .re (by decide +kernel)
#print axioms leaf0066
theorem leaf0067 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(673/2048),(337/1024)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0297 Root0Angular20261003.arc0186 Root0Angular20261003.arc0297_checked Root0Angular20261003.arc0186_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0067
theorem leaf0068 : LeafStatement cap moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(21/64),(673/2048)⟩ := by
  exact keep_left_leaf cap Root0Angular20261003.arc0297 Root0Angular20261003.arc0180 Root0Angular20261003.arc0297_checked Root0Angular20261003.arc0180_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0068
theorem leaf0069 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1365/2048),(683/1024)⟩ ⟨(675/2048),(169/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0296 Root0Angular20261003.arc0189 Root0Angular20261003.arc0296_checked Root0Angular20261003.arc0189_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0069
theorem leaf0070 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1365/2048),(683/1024)⟩ ⟨(337/1024),(675/2048)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0296 Root0Angular20261003.arc0187 Root0Angular20261003.arc0296_checked Root0Angular20261003.arc0187_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0070
theorem leaf0071 : LeafStatement cap moments EX EY hull0 hull1 ⟨(341/512),(1365/2048)⟩ ⟨(675/2048),(169/512)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0293 Root0Angular20261003.arc0189 Root0Angular20261003.arc0293_checked Root0Angular20261003.arc0189_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0071
end ShoulderRoot1Angular20261003
