import ParametricAngularLeaf
import Root0Arcs08
import Root0Arcs13
import Root0Arcs14
import Root0Arcs15
import Root0Arcs16
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
theorem leaf0024 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(11/16)⟩ ⟨(5/8),(11/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0251 Root0Angular20261003.arc0251 Root0Angular20261003.arc0251_checked Root0Angular20261003.arc0251_checked .re (by decide +kernel)
#print axioms leaf0024
theorem leaf0025 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/16),(3/4)⟩ ⟨(1/2),(5/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0311 Root0Angular20261003.arc0237 Root0Angular20261003.arc0311_checked Root0Angular20261003.arc0237_checked .im (by decide +kernel)
#print axioms leaf0025
theorem leaf0026 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(11/16)⟩ ⟨(9/16),(5/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0251 Root0Angular20261003.arc0243 Root0Angular20261003.arc0251_checked Root0Angular20261003.arc0243_checked .re (by decide +kernel)
#print axioms leaf0026
theorem leaf0027 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(11/16)⟩ ⟨(1/2),(9/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0268 Root0Angular20261003.arc0236 Root0Angular20261003.arc0268_checked Root0Angular20261003.arc0236_checked .re (by decide +kernel)
#print axioms leaf0027
theorem leaf0028 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(21/32)⟩ ⟨(1/2),(9/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0250 Root0Angular20261003.arc0236 Root0Angular20261003.arc0250_checked Root0Angular20261003.arc0236_checked .re (by decide +kernel)
#print axioms leaf0028
theorem leaf0029 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/16),(3/4)⟩ ⟨(3/8),(1/2)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0311 Root0Angular20261003.arc0224 Root0Angular20261003.arc0311_checked Root0Angular20261003.arc0224_checked .s (by decide +kernel)
#print axioms leaf0029
theorem leaf0030 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(11/16)⟩ ⟨(15/32),(1/2)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0268 Root0Angular20261003.arc0234 Root0Angular20261003.arc0268_checked Root0Angular20261003.arc0234_checked .re (by decide +kernel)
#print axioms leaf0030
theorem leaf0031 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(11/16)⟩ ⟨(7/16),(15/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0268 Root0Angular20261003.arc0231 Root0Angular20261003.arc0268_checked Root0Angular20261003.arc0231_checked .re (by decide +kernel)
#print axioms leaf0031
theorem leaf0032 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(21/32)⟩ ⟨(7/16),(1/2)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0250 Root0Angular20261003.arc0232 Root0Angular20261003.arc0250_checked Root0Angular20261003.arc0232_checked .im (by decide +kernel)
#print axioms leaf0032
theorem leaf0033 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(11/16)⟩ ⟨(13/32),(7/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0268 Root0Angular20261003.arc0228 Root0Angular20261003.arc0268_checked Root0Angular20261003.arc0228_checked .im (by decide +kernel)
#print axioms leaf0033
theorem leaf0034 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/64),(11/16)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0305 Root0Angular20261003.arc0222 Root0Angular20261003.arc0305_checked Root0Angular20261003.arc0222_checked .re (by decide +kernel)
#print axioms leaf0034
theorem leaf0035 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(43/64)⟩ ⟨(3/8),(13/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0267 Root0Angular20261003.arc0222 Root0Angular20261003.arc0267_checked Root0Angular20261003.arc0222_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0035
theorem leaf0036 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(21/32)⟩ ⟨(13/32),(7/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0250 Root0Angular20261003.arc0228 Root0Angular20261003.arc0250_checked Root0Angular20261003.arc0228_checked .im (by decide +kernel)
#print axioms leaf0036
theorem leaf0037 : LeafStatement cap moments EX EY hull0 hull1 ⟨(41/64),(21/32)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0256 Root0Angular20261003.arc0222 Root0Angular20261003.arc0256_checked Root0Angular20261003.arc0222_checked .im (by decide +kernel)
#print axioms leaf0037
theorem leaf0038 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/8),(41/64)⟩ ⟨(3/8),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0249 Root0Angular20261003.arc0222 Root0Angular20261003.arc0249_checked Root0Angular20261003.arc0222_checked .im (by decide +kernel)
#print axioms leaf0038
theorem leaf0039 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/16),(3/4)⟩ ⟨(1/4),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0311 Root0Angular20261003.arc0135 Root0Angular20261003.arc0311_checked Root0Angular20261003.arc0135_checked .s (by decide +kernel)
#print axioms leaf0039
theorem leaf0040 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/64),(11/16)⟩ ⟨(11/32),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0305 Root0Angular20261003.arc0215 Root0Angular20261003.arc0305_checked Root0Angular20261003.arc0215_checked .s (by decide +kernel)
#print axioms leaf0040
theorem leaf0041 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/128),(43/64)⟩ ⟨(23/64),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0289 Root0Angular20261003.arc0218 Root0Angular20261003.arc0289_checked Root0Angular20261003.arc0218_checked .im (by decide +kernel)
#print axioms leaf0041
theorem leaf0042 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(85/128)⟩ ⟨(23/64),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0266 Root0Angular20261003.arc0218 Root0Angular20261003.arc0266_checked Root0Angular20261003.arc0218_checked .im (by decide +kernel)
#print axioms leaf0042
theorem leaf0043 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/128),(43/64)⟩ ⟨(45/128),(23/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0289 Root0Angular20261003.arc0216 Root0Angular20261003.arc0289_checked Root0Angular20261003.arc0216_checked .im (by decide +kernel)
#print axioms leaf0043
theorem leaf0044 : LeafStatement cap moments EX EY hull0 hull1 ⟨(171/256),(43/64)⟩ ⟨(11/32),(45/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0301 Root0Angular20261003.arc0213 Root0Angular20261003.arc0301_checked Root0Angular20261003.arc0213_checked .re (by decide +kernel)
#print axioms leaf0044
theorem leaf0045 : LeafStatement cap moments EX EY hull0 hull1 ⟨(85/128),(171/256)⟩ ⟨(11/32),(45/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0288 Root0Angular20261003.arc0213 Root0Angular20261003.arc0288_checked Root0Angular20261003.arc0213_checked .im (by decide +kernel)
#print axioms leaf0045
theorem leaf0046 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(85/128)⟩ ⟨(45/128),(23/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0266 Root0Angular20261003.arc0216 Root0Angular20261003.arc0266_checked Root0Angular20261003.arc0216_checked .im (by decide +kernel)
#print axioms leaf0046
theorem leaf0047 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/32),(85/128)⟩ ⟨(11/32),(45/128)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0266 Root0Angular20261003.arc0213 Root0Angular20261003.arc0266_checked Root0Angular20261003.arc0213_checked .im (by decide +kernel)
#print axioms leaf0047
end ShoulderRoot1Angular20261003
