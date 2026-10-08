import ParametricAngularLeaf
import Root0Arcs08
import Root0Arcs09
import Root0Arcs11
import Root0Arcs13
import Root0Arcs14
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
theorem leaf0696 : LeafStatement cap moments EX EY hull0 hull1 ⟨(17/64),(9/32)⟩ ⟨(13/32),(7/16)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0136 Root0Angular20261003.arc0228 Root0Angular20261003.arc0136_checked Root0Angular20261003.arc0228_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0696
theorem leaf0697 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(17/64)⟩ ⟨(13/32),(7/16)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0132 Root0Angular20261003.arc0228 Root0Angular20261003.arc0132_checked Root0Angular20261003.arc0228_checked .im (by decide +kernel)
#print axioms leaf0697
theorem leaf0698 : LeafStatement cap moments EX EY hull0 hull1 ⟨(17/64),(9/32)⟩ ⟨(25/64),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0136 Root0Angular20261003.arc0226 Root0Angular20261003.arc0136_checked Root0Angular20261003.arc0226_checked .im (by decide +kernel)
#print axioms leaf0698
theorem leaf0699 : LeafStatement cap moments EX EY hull0 hull1 ⟨(17/64),(9/32)⟩ ⟨(3/8),(25/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0136 Root0Angular20261003.arc0221 Root0Angular20261003.arc0136_checked Root0Angular20261003.arc0221_checked .re (by decide +kernel)
#print axioms leaf0699
theorem leaf0700 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(17/64)⟩ ⟨(25/64),(13/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0132 Root0Angular20261003.arc0226 Root0Angular20261003.arc0132_checked Root0Angular20261003.arc0226_checked .re (by decide +kernel)
#print axioms leaf0700
theorem leaf0701 : LeafStatement cap moments EX EY hull0 hull1 ⟨(1/4),(17/64)⟩ ⟨(3/8),(25/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0132 Root0Angular20261003.arc0221 Root0Angular20261003.arc0132_checked Root0Angular20261003.arc0221_checked .re (by decide +kernel)
#print axioms leaf0701
theorem leaf0702 : LeafStatement cap moments EX EY hull0 hull1 ⟨(47/128),(3/8)⟩ ⟨(23/64),(3/8)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0219 Root0Angular20261003.arc0218 Root0Angular20261003.arc0219_checked Root0Angular20261003.arc0218_checked .re (by decide +kernel)
#print axioms leaf0702
theorem leaf0703 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(47/128)⟩ ⟨(23/64),(3/8)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0217 Root0Angular20261003.arc0218 Root0Angular20261003.arc0217_checked Root0Angular20261003.arc0218_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0703
theorem leaf0704 : LeafStatement cap moments EX EY hull0 hull1 ⟨(47/128),(3/8)⟩ ⟨(11/32),(23/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0219 Root0Angular20261003.arc0214 Root0Angular20261003.arc0219_checked Root0Angular20261003.arc0214_checked .re (by decide +kernel)
#print axioms leaf0704
theorem leaf0705 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(47/128)⟩ ⟨(11/32),(23/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0217 Root0Angular20261003.arc0214 Root0Angular20261003.arc0217_checked Root0Angular20261003.arc0214_checked .re (by decide +kernel)
#print axioms leaf0705
theorem leaf0706 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(23/64),(3/8)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0214 Root0Angular20261003.arc0218 Root0Angular20261003.arc0214_checked Root0Angular20261003.arc0218_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0706
theorem leaf0707 : LeafStatement cap moments EX EY hull0 hull1 ⟨(45/128),(23/64)⟩ ⟨(11/32),(23/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0216 Root0Angular20261003.arc0214 Root0Angular20261003.arc0216_checked Root0Angular20261003.arc0214_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0707
theorem leaf0708 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(45/128)⟩ ⟨(11/32),(23/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0213 Root0Angular20261003.arc0214 Root0Angular20261003.arc0213_checked Root0Angular20261003.arc0214_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0708
theorem leaf0709 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(21/64),(11/32)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0185 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0185_checked .re (by decide +kernel)
#print axioms leaf0709
theorem leaf0710 : LeafStatement cap moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(5/16),(21/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0218 Root0Angular20261003.arc0148 Root0Angular20261003.arc0218_checked Root0Angular20261003.arc0148_checked .re (by decide +kernel)
#print axioms leaf0710
theorem leaf0711 : LeafStatement cap moments EX EY hull0 hull1 ⟨(45/128),(23/64)⟩ ⟨(21/64),(11/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0216 Root0Angular20261003.arc0185 Root0Angular20261003.arc0216_checked Root0Angular20261003.arc0185_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0711
theorem leaf0712 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(45/128)⟩ ⟨(21/64),(11/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0213 Root0Angular20261003.arc0185 Root0Angular20261003.arc0213_checked Root0Angular20261003.arc0185_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0712
theorem leaf0713 : LeafStatement cap moments EX EY hull0 hull1 ⟨(45/128),(23/64)⟩ ⟨(5/16),(21/64)⟩ := by
  exact moment_leaf cap Root0Angular20261003.arc0216 Root0Angular20261003.arc0148 Root0Angular20261003.arc0216_checked Root0Angular20261003.arc0148_checked .re (by decide +kernel)
#print axioms leaf0713
theorem leaf0714 : LeafStatement cap moments EX EY hull0 hull1 ⟨(11/32),(45/128)⟩ ⟨(5/16),(21/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0213 Root0Angular20261003.arc0148 Root0Angular20261003.arc0213_checked Root0Angular20261003.arc0148_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0714
theorem leaf0715 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(23/64),(3/8)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0218 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0218_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0715
theorem leaf0716 : LeafStatement cap moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(11/32),(23/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0185 Root0Angular20261003.arc0214 Root0Angular20261003.arc0185_checked Root0Angular20261003.arc0214_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0716
theorem leaf0717 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(23/64),(3/8)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0218 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0218_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0717
theorem leaf0718 : LeafStatement cap moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(11/32),(23/64)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0148 Root0Angular20261003.arc0214 Root0Angular20261003.arc0148_checked Root0Angular20261003.arc0214_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0718
theorem leaf0719 : LeafStatement cap moments EX EY hull0 hull1 ⟨(43/128),(11/32)⟩ ⟨(21/64),(11/32)⟩ := by
  exact corner_leaf cap Root0Angular20261003.arc0210 Root0Angular20261003.arc0185 Root0Angular20261003.arc0210_checked Root0Angular20261003.arc0185_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0719
end ShoulderRoot1Angular20261003
