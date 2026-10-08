import AngularLeaf
import Root0CoverData
import Root0Arcs08
import Root0Arcs09
import Root0Arcs11
import Root0Arcs13
import Root0Arcs14
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem leaf0696 : LeafStatement moments EX EY hull0 hull1 ⟨(1/4),(17/64)⟩ ⟨(25/64),(13/32)⟩ := by
  exact moment_leaf arc0132 arc0226 arc0132_checked arc0226_checked .re (by decide +kernel)
#print axioms leaf0696
theorem leaf0697 : LeafStatement moments EX EY hull0 hull1 ⟨(1/4),(17/64)⟩ ⟨(3/8),(25/64)⟩ := by
  exact moment_leaf arc0132 arc0221 arc0132_checked arc0221_checked .re (by decide +kernel)
#print axioms leaf0697
theorem leaf0698 : LeafStatement moments EX EY hull0 hull1 ⟨(47/128),(3/8)⟩ ⟨(23/64),(3/8)⟩ := by
  exact moment_leaf arc0219 arc0218 arc0219_checked arc0218_checked .re (by decide +kernel)
#print axioms leaf0698
theorem leaf0699 : LeafStatement moments EX EY hull0 hull1 ⟨(23/64),(47/128)⟩ ⟨(23/64),(3/8)⟩ := by
  exact corner_leaf arc0217 arc0218 arc0217_checked arc0218_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0699
theorem leaf0700 : LeafStatement moments EX EY hull0 hull1 ⟨(47/128),(3/8)⟩ ⟨(11/32),(23/64)⟩ := by
  exact moment_leaf arc0219 arc0214 arc0219_checked arc0214_checked .re (by decide +kernel)
#print axioms leaf0700
theorem leaf0701 : LeafStatement moments EX EY hull0 hull1 ⟨(23/64),(47/128)⟩ ⟨(11/32),(23/64)⟩ := by
  exact moment_leaf arc0217 arc0214 arc0217_checked arc0214_checked .re (by decide +kernel)
#print axioms leaf0701
theorem leaf0702 : LeafStatement moments EX EY hull0 hull1 ⟨(11/32),(23/64)⟩ ⟨(23/64),(3/8)⟩ := by
  exact corner_leaf arc0214 arc0218 arc0214_checked arc0218_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0702
theorem leaf0703 : LeafStatement moments EX EY hull0 hull1 ⟨(45/128),(23/64)⟩ ⟨(11/32),(23/64)⟩ := by
  exact corner_leaf arc0216 arc0214 arc0216_checked arc0214_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0703
theorem leaf0704 : LeafStatement moments EX EY hull0 hull1 ⟨(11/32),(45/128)⟩ ⟨(11/32),(23/64)⟩ := by
  exact corner_leaf arc0213 arc0214 arc0213_checked arc0214_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0704
theorem leaf0705 : LeafStatement moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(21/64),(11/32)⟩ := by
  exact moment_leaf arc0218 arc0185 arc0218_checked arc0185_checked .re (by decide +kernel)
#print axioms leaf0705
theorem leaf0706 : LeafStatement moments EX EY hull0 hull1 ⟨(23/64),(3/8)⟩ ⟨(5/16),(21/64)⟩ := by
  exact moment_leaf arc0218 arc0148 arc0218_checked arc0148_checked .re (by decide +kernel)
#print axioms leaf0706
theorem leaf0707 : LeafStatement moments EX EY hull0 hull1 ⟨(45/128),(23/64)⟩ ⟨(21/64),(11/32)⟩ := by
  exact corner_leaf arc0216 arc0185 arc0216_checked arc0185_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0707
theorem leaf0708 : LeafStatement moments EX EY hull0 hull1 ⟨(11/32),(45/128)⟩ ⟨(21/64),(11/32)⟩ := by
  exact corner_leaf arc0213 arc0185 arc0213_checked arc0185_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0708
theorem leaf0709 : LeafStatement moments EX EY hull0 hull1 ⟨(45/128),(23/64)⟩ ⟨(5/16),(21/64)⟩ := by
  exact moment_leaf arc0216 arc0148 arc0216_checked arc0148_checked .re (by decide +kernel)
#print axioms leaf0709
theorem leaf0710 : LeafStatement moments EX EY hull0 hull1 ⟨(11/32),(45/128)⟩ ⟨(5/16),(21/64)⟩ := by
  exact corner_leaf arc0213 arc0148 arc0213_checked arc0148_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0710
theorem leaf0711 : LeafStatement moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(23/64),(3/8)⟩ := by
  exact corner_leaf arc0185 arc0218 arc0185_checked arc0218_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0711
theorem leaf0712 : LeafStatement moments EX EY hull0 hull1 ⟨(21/64),(11/32)⟩ ⟨(11/32),(23/64)⟩ := by
  exact corner_leaf arc0185 arc0214 arc0185_checked arc0214_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0712
theorem leaf0713 : LeafStatement moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(23/64),(3/8)⟩ := by
  exact corner_leaf arc0148 arc0218 arc0148_checked arc0218_checked 1 2 (by decide) (by decide +kernel)
#print axioms leaf0713
theorem leaf0714 : LeafStatement moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(11/32),(23/64)⟩ := by
  exact corner_leaf arc0148 arc0214 arc0148_checked arc0214_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0714
theorem leaf0715 : LeafStatement moments EX EY hull0 hull1 ⟨(43/128),(11/32)⟩ ⟨(21/64),(11/32)⟩ := by
  exact corner_leaf arc0210 arc0185 arc0210_checked arc0185_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0715
theorem leaf0716 : LeafStatement moments EX EY hull0 hull1 ⟨(21/64),(43/128)⟩ ⟨(21/64),(11/32)⟩ := by
  exact corner_leaf arc0184 arc0185 arc0184_checked arc0185_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0716
theorem leaf0717 : LeafStatement moments EX EY hull0 hull1 ⟨(43/128),(11/32)⟩ ⟨(5/16),(21/64)⟩ := by
  exact corner_leaf arc0210 arc0148 arc0210_checked arc0148_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0717
theorem leaf0718 : LeafStatement moments EX EY hull0 hull1 ⟨(21/64),(43/128)⟩ ⟨(5/16),(21/64)⟩ := by
  exact corner_leaf arc0184 arc0148 arc0184_checked arc0148_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0718
theorem leaf0719 : LeafStatement moments EX EY hull0 hull1 ⟨(5/16),(21/64)⟩ ⟨(21/64),(11/32)⟩ := by
  exact corner_leaf arc0148 arc0185 arc0148_checked arc0185_checked 0 1 (by decide) (by decide +kernel)
#print axioms leaf0719
end Root0Angular20261003
