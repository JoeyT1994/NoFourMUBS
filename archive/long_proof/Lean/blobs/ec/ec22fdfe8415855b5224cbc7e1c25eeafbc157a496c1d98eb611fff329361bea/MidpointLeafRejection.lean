import IntegerPhaseArithmetic
import SupplierTargetFloor
import SupplierLeafEntries
import SupplierCellGeometry
import PhaseCellRejection

/-! The literal midpoint branch of the supplier scalar rejection test, using
exact integer sums, Nat.sqrt and signed ceiling division. Table soundness is
explicit; no concrete table or leaf is asserted to pass. -/
set_option autoImplicit false
open scoped BigOperators
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007
namespace Seed0024ClusterTube20261007

def leafMidpointNorm (table : SupplierTable) (s : Cell) (k : Fin 6) : ℤ :=
  integerPairNormFloor (integerFiveSum 67108864 (leafMidpointEntry table s k))

def leafTolerance : ℤ := integerCeilDiv 67108864 5

def leafMidpointError (s : Cell) : ℤ :=
  integerCeilDiv (710*67108864*(5*(supplierHalfStep s : ℤ))) (113*218880)

def midpointRejectCheck (table : SupplierTable) (s : Cell) (k : Fin 6) : Bool :=
  decide (leafMidpointError s+leafTolerance+10 <
    |leafMidpointNorm table s k-164382474|)

theorem leaf_midpoint_floor_error (table : SupplierTable) (s : Cell) (k : Fin 6) :
    |(leafMidpointNorm table s k : ℝ)-
      ‖(67108864 : ℂ)+∑ i,integerPairComplex (leafMidpointEntry table s k i)‖|<1 := by
  simpa only [leafMidpointNorm,Int.cast_ofNat] using
    integerFiveSum_floor_error 67108864 (leafMidpointEntry table s k)

theorem leaf_target_error : |(164382474 : ℝ)-67108864*Real.sqrt 6|<1 := by
  rw [abs_sub_comm,abs_of_nonneg supplier_target_real_error.1]
  exact supplier_target_real_error.2

theorem leaf_tolerance_bound :
    (67108864 : ℝ)*((1 : ℝ)/5) ≤ (leafTolerance : ℝ) := by
  have h := (integerCeilDiv_real_bounds 67108864 5 (by norm_num) (by norm_num)).1
  calc
    _ = (67108864 : ℝ)/5 := by ring
    _ ≤ _ := by simpa only [leafTolerance,Int.cast_ofNat] using h

theorem leaf_midpoint_error_bound (s : Cell) (hs : s.level≤7) :
    (67108864 : ℝ)*(∑ _i : Fin 5,Real.pi/(denominator s : ℝ)) ≤
      (leafMidpointError s : ℝ) := by
  have hceil := (integerCeilDiv_real_bounds
    (710*67108864*(5*(supplierHalfStep s : ℤ))) (113*218880)
    (by positivity) (by norm_num)).1
  have hraw : (710 : ℝ)*67108864*(5*(supplierHalfStep s : ℝ))/(113*218880) ≤
      (leafMidpointError s : ℝ) := by
    simpa only [leafMidpointError,Int.cast_mul,Int.cast_natCast,Int.cast_ofNat] using hceil
  have hn : (0 : ℝ)<denominator s := by exact_mod_cast denominator_pos s
  have hp : Real.pi/(denominator s : ℝ) ≤ ((355 : ℝ)/113)/(denominator s : ℝ) :=
    div_le_div_of_nonneg_right pi_lt_355_div_113.le hn.le
  simp only [Finset.sum_const,Finset.card_univ,Fintype.card_fin,nsmul_eq_mul]
  calc
    _ ≤ (67108864 : ℝ)*(5*(((355 : ℝ)/113)/(denominator s : ℝ))) :=
      mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left hp (by norm_num)) (by norm_num)
    _ = (710 : ℝ)*67108864*(5*(supplierHalfStep s : ℝ))/(113*218880) := by
      rw [supplierHalfStep_cast s hs]
      ring
    _ ≤ _ := hraw

theorem midpointRejectCheck_sound (table : SupplierTable)
    (hTable : SupplierIntegerTableSound table) (s : Cell) (hs : s.level≤7)
    (k : Fin 6) (theta : Turns) (htheta : MemCell s theta)
    (hcheck : midpointRejectCheck table s k=true) :
    ¬ |‖phaseSum (fourierTarget theta k)‖-Real.sqrt 6|≤(1 : ℝ)/5 := by
  have hreject : leafMidpointError s+leafTolerance+10 <
      |leafMidpointNorm table s k-164382474| := of_decide_eq_true hcheck
  have hrejectR : (leafMidpointError s : ℝ)+(leafTolerance : ℝ)+10 <
      |(leafMidpointNorm table s k : ℝ)-164382474| := by exact_mod_cast hreject
  exact phase_midpoint_rejection (fourierTarget theta k)
    (fourierTarget (cellMidpoint s) k) (fun _ => Real.pi/(denominator s : ℝ))
    (fun i => integerPairComplex (leafMidpointEntry table s k i))
    67108864 (leafMidpointNorm table s k : ℝ) 164382474 (Real.sqrt 6) (1/5)
    (leafTolerance : ℝ) (leafMidpointError s : ℝ) (by norm_num)
    (memCell_fourier_midpoint_error s theta htheta k)
    (fun i => (leaf_midpoint_entry_errors table hTable s hs k i).1)
    (fun i => (leaf_midpoint_entry_errors table hTable s hs k i).2)
    (leaf_midpoint_floor_error table s k) leaf_target_error leaf_tolerance_bound
    (leaf_midpoint_error_bound s hs) hrejectR

#print axioms leaf_midpoint_floor_error
#print axioms leaf_target_error
#print axioms leaf_tolerance_bound
#print axioms leaf_midpoint_error_bound
#print axioms midpointRejectCheck_sound
end Seed0024ClusterTube20261007
