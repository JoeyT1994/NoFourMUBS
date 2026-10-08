import IntegerPhaseDifference
import MidpointLeafRejection

/-! Exact all-32-endpoint scalar rejection, with the supplier's small-box
guard retained. The Boolean covers every mask, and the same midpoint table
sum is subtracted in every endpoint difference. -/
set_option autoImplicit false
open scoped BigOperators
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007
namespace Seed0024ClusterTube20261007

def leafEndpointNorm (table : SupplierTable) (s : Cell) (k : Fin 6) (m : Mask) : ℤ :=
  integerPairNormFloor (integerPairSub
    (integerFiveSum 67108864 (leafEndpointEntry table s k m))
    (integerFiveSum 67108864 (leafMidpointEntry table s k)))

def endpointRejectCheck (table : SupplierTable) (s : Cell) (k : Fin 6) : Bool :=
  decide (710*(5*(supplierHalfStep s : ℤ))<113*218880) &&
    decide (∀m : Mask,leafEndpointNorm table s k m+leafTolerance+26 <
      |leafMidpointNorm table s k-164382474|)

def scalarRejectCheck (table : SupplierTable) (s : Cell) (k : Fin 6) : Bool :=
  midpointRejectCheck table s k || endpointRejectCheck table s k

theorem leaf_endpoint_floor_error (table : SupplierTable) (s : Cell)
    (k : Fin 6) (m : Mask) :
    |(leafEndpointNorm table s k m : ℝ)-
      ‖((67108864 : ℂ)+∑ i,integerPairComplex (leafEndpointEntry table s k m i))-
        ((67108864 : ℂ)+∑ i,integerPairComplex (leafMidpointEntry table s k i))‖|<1 := by
  simpa only [leafEndpointNorm,integerFiveSum_complex,Int.cast_ofNat] using
    integerPairSub_floor_error
      (integerFiveSum 67108864 (leafEndpointEntry table s k m))
      (integerFiveSum 67108864 (leafMidpointEntry table s k))

theorem endpointRejectCheck_sound (table : SupplierTable)
    (hTable : SupplierIntegerTableSound table) (s : Cell) (hs : s.level≤7)
    (k : Fin 6) (theta : Turns) (htheta : MemCell s theta)
    (hcheck : endpointRejectCheck table s k=true) :
    ¬ |‖phaseSum (fourierTarget theta k)‖-Real.sqrt 6|≤(1 : ℝ)/5 := by
  have hreject : ∀m : Mask,leafEndpointNorm table s k m+leafTolerance+26 <
      |leafMidpointNorm table s k-164382474| :=
    of_decide_eq_true (Bool.and_eq_true.mp hcheck).2
  have hrejectR (m : Mask) : (leafEndpointNorm table s k m : ℝ)+(leafTolerance : ℝ)+26 <
      |(leafMidpointNorm table s k : ℝ)-164382474| := by exact_mod_cast hreject m
  exact phase_all_endpoints_rejection (fourierTarget theta k)
    (fourierTarget (cellMidpoint s) k) (fun _ => Real.pi/(denominator s : ℝ))
    (fun i => integerPairComplex (leafMidpointEntry table s k i))
    (fun m i => integerPairComplex (leafEndpointEntry table s k m i))
    (fun m => (leafEndpointNorm table s k m : ℝ))
    67108864 (leafMidpointNorm table s k : ℝ) 164382474 (Real.sqrt 6) (1/5)
    (leafTolerance : ℝ) (by norm_num)
    (memCell_fourier_midpoint_error s theta htheta k)
    (supplier_phase_radius_sum_le_one s)
    (fun i => (leaf_midpoint_entry_errors table hTable s hs k i).1)
    (fun i => (leaf_midpoint_entry_errors table hTable s hs k i).2)
    (fun m i => (leaf_endpoint_entry_errors table hTable s hs k m i).1)
    (fun m i => (leaf_endpoint_entry_errors table hTable s hs k m i).2)
    (leaf_midpoint_floor_error table s k) (leaf_endpoint_floor_error table s k)
    leaf_target_error leaf_tolerance_bound hrejectR

theorem scalarRejectCheck_sound (table : SupplierTable)
    (hTable : SupplierIntegerTableSound table) (s : Cell) (hs : s.level≤7)
    (k : Fin 6) (theta : Turns) (htheta : MemCell s theta)
    (hcheck : scalarRejectCheck table s k=true) :
    ¬ |‖phaseSum (fourierTarget theta k)‖-Real.sqrt 6|≤(1 : ℝ)/5 := by
  rcases Bool.or_eq_true.mp hcheck with hmid|hend
  · exact midpointRejectCheck_sound table hTable s hs k theta htheta hmid
  · exact endpointRejectCheck_sound table hTable s hs k theta htheta hend

#print axioms leaf_endpoint_floor_error
#print axioms endpointRejectCheck_sound
#print axioms scalarRejectCheck_sound
end Seed0024ClusterTube20261007
