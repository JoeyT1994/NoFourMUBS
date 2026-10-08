import AngularLeaf
import Root0CoverData
import Root0Arcs09
import Root0Arcs11
import Root0Arcs12
import Root0Arcs13
import Root0Arcs17
import Root0Arcs18
import Root0Arcs19
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem leaf0048 : LeafStatement moments EX EY hull0 hull1 ⟨(43/64),(11/16)⟩ ⟨(5/16),(11/32)⟩ := by
  exact moment_leaf arc0305 arc0149 arc0305_checked arc0149_checked .re (by decide +kernel)
#print axioms leaf0048
theorem leaf0049 : LeafStatement moments EX EY hull0 hull1 ⟨(171/256),(43/64)⟩ ⟨(43/128),(11/32)⟩ := by
  exact moment_leaf arc0301 arc0210 arc0301_checked arc0210_checked .re (by decide +kernel)
#print axioms leaf0049
theorem leaf0050 : LeafStatement moments EX EY hull0 hull1 ⟨(85/128),(171/256)⟩ ⟨(87/256),(11/32)⟩ := by
  exact moment_leaf arc0288 arc0212 arc0288_checked arc0212_checked .im (by decide +kernel)
#print axioms leaf0050
theorem leaf0051 : LeafStatement moments EX EY hull0 hull1 ⟨(85/128),(171/256)⟩ ⟨(43/128),(87/256)⟩ := by
  exact moment_leaf arc0288 arc0209 arc0288_checked arc0209_checked .im (by decide +kernel)
#print axioms leaf0051
theorem leaf0052 : LeafStatement moments EX EY hull0 hull1 ⟨(171/256),(43/64)⟩ ⟨(21/64),(43/128)⟩ := by
  exact moment_leaf arc0301 arc0184 arc0301_checked arc0184_checked .re (by decide +kernel)
#print axioms leaf0052
theorem leaf0053 : LeafStatement moments EX EY hull0 hull1 ⟨(341/512),(171/256)⟩ ⟨(171/512),(43/128)⟩ := by
  exact moment_leaf arc0295 arc0205 arc0295_checked arc0205_checked .im (by decide +kernel)
#print axioms leaf0053
theorem leaf0054 : LeafStatement moments EX EY hull0 hull1 ⟨(341/512),(171/256)⟩ ⟨(85/256),(171/512)⟩ := by
  exact corner_leaf arc0295 arc0197 arc0295_checked arc0197_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0054
theorem leaf0055 : LeafStatement moments EX EY hull0 hull1 ⟨(85/128),(341/512)⟩ ⟨(171/512),(43/128)⟩ := by
  exact moment_leaf arc0287 arc0205 arc0287_checked arc0205_checked .im (by decide +kernel)
#print axioms leaf0055
theorem leaf0056 : LeafStatement moments EX EY hull0 hull1 ⟨(85/128),(341/512)⟩ ⟨(85/256),(171/512)⟩ := by
  exact moment_leaf arc0287 arc0197 arc0287_checked arc0197_checked .im (by decide +kernel)
#print axioms leaf0056
theorem leaf0057 : LeafStatement moments EX EY hull0 hull1 ⟨(683/1024),(171/256)⟩ ⟨(339/1024),(85/256)⟩ := by
  exact corner_leaf arc0298 arc0193 arc0298_checked arc0193_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0057
theorem leaf0058 : LeafStatement moments EX EY hull0 hull1 ⟨(1367/2048),(171/256)⟩ ⟨(169/512),(339/1024)⟩ := by
  exact moment_leaf arc0299 arc0190 arc0299_checked arc0190_checked .re (by decide +kernel)
#print axioms leaf0058
theorem leaf0059 : LeafStatement moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(169/512),(339/1024)⟩ := by
  exact corner_leaf arc0297 arc0190 arc0297_checked arc0190_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0059
theorem leaf0060 : LeafStatement moments EX EY hull0 hull1 ⟨(341/512),(683/1024)⟩ ⟨(339/1024),(85/256)⟩ := by
  exact moment_leaf arc0294 arc0193 arc0294_checked arc0193_checked .im (by decide +kernel)
#print axioms leaf0060
theorem leaf0061 : LeafStatement moments EX EY hull0 hull1 ⟨(341/512),(683/1024)⟩ ⟨(169/512),(339/1024)⟩ := by
  exact corner_leaf arc0294 arc0190 arc0294_checked arc0190_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0061
theorem leaf0062 : LeafStatement moments EX EY hull0 hull1 ⟨(1367/2048),(171/256)⟩ ⟨(337/1024),(169/512)⟩ := by
  exact moment_leaf arc0299 arc0188 arc0299_checked arc0188_checked .re (by decide +kernel)
#print axioms leaf0062
theorem leaf0063 : LeafStatement moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(675/2048),(169/512)⟩ := by
  exact corner_leaf arc0297 arc0189 arc0297_checked arc0189_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0063
theorem leaf0064 : LeafStatement moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(337/1024),(675/2048)⟩ := by
  exact corner_leaf arc0297 arc0187 arc0297_checked arc0187_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0064
theorem leaf0065 : LeafStatement moments EX EY hull0 hull1 ⟨(1367/2048),(171/256)⟩ ⟨(21/64),(337/1024)⟩ := by
  exact moment_leaf arc0299 arc0181 arc0299_checked arc0181_checked .re (by decide +kernel)
#print axioms leaf0065
theorem leaf0066 : LeafStatement moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(673/2048),(337/1024)⟩ := by
  exact corner_leaf arc0297 arc0186 arc0297_checked arc0186_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0066
theorem leaf0067 : LeafStatement moments EX EY hull0 hull1 ⟨(683/1024),(1367/2048)⟩ ⟨(21/64),(673/2048)⟩ := by
  exact keep_left_leaf arc0297 arc0180 arc0297_checked arc0180_checked (by decide +kernel) (by decide +kernel)
#print axioms leaf0067
theorem leaf0068 : LeafStatement moments EX EY hull0 hull1 ⟨(1365/2048),(683/1024)⟩ ⟨(675/2048),(169/512)⟩ := by
  exact corner_leaf arc0296 arc0189 arc0296_checked arc0189_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0068
theorem leaf0069 : LeafStatement moments EX EY hull0 hull1 ⟨(1365/2048),(683/1024)⟩ ⟨(337/1024),(675/2048)⟩ := by
  exact corner_leaf arc0296 arc0187 arc0296_checked arc0187_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0069
theorem leaf0070 : LeafStatement moments EX EY hull0 hull1 ⟨(341/512),(1365/2048)⟩ ⟨(675/2048),(169/512)⟩ := by
  exact moment_leaf arc0293 arc0189 arc0293_checked arc0189_checked .im (by decide +kernel)
#print axioms leaf0070
theorem leaf0071 : LeafStatement moments EX EY hull0 hull1 ⟨(341/512),(1365/2048)⟩ ⟨(337/1024),(675/2048)⟩ := by
  exact corner_leaf arc0293 arc0187 arc0293_checked arc0187_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0071
end Root0Angular20261003
