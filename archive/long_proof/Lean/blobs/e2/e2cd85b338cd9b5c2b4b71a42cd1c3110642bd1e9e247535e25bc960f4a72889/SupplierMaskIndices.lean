import SupplierPhaseIndices
import SupplierCellGeometry
import EndpointMaximum

/-! The same 32 bitmasks choose the continuous cell endpoints and the literal
supplier endpoint indices. The phase endpoint box is exactly midpoint plus
or minus pi/n in every coordinate. -/
set_option autoImplicit false
noncomputable section
open Seed0024ClusterTubeCover20261007

namespace Seed0024ClusterTube20261007

def supplierEndpointIndex (s : Cell) (m : Mask) (i : Fin 5) : ℕ :=
  if maskBits m i then supplierUpperIndex s i else supplierLowerIndex s i

theorem supplierEndpointIndex_native (s : Cell) (m : Mask) (i : Fin 5) :
    supplierEndpointIndex s m i=
      (s.index i+(if maskBits m i then 1 else 0))*supplierStep s := by
  cases hb : maskBits m i <;>
    simp only [supplierEndpointIndex,supplierUpperIndex,supplierLowerIndex,
      hb,Bool.false_eq_true,if_false,if_true,Nat.add_zero]

theorem supplierEndpointIndex_le (s : Cell) (hs : Valid s) (m : Mask) (i : Fin 5) :
    supplierEndpointIndex s m i≤supplierPeriod := by
  cases hb : maskBits m i
  · simpa only [supplierEndpointIndex,hb,Bool.false_eq_true,if_false] using
      (supplier_lower_index_lt s hs i).le
  · simpa only [supplierEndpointIndex,hb,if_true] using supplier_upper_index_le s hs i

theorem fourierTarget_lower_endpoint (s : Cell) (k : Fin 6) (i : Fin 5) :
    fourierTarget (cellMidpoint s) k i-Real.pi/(denominator s:ℝ)=
      fourierTarget (cellLower s) k i := by
  unfold fourierTarget
  rw [←cellMidpoint_minus_radius s i]
  ring

theorem fourierTarget_upper_endpoint (s : Cell) (k : Fin 6) (i : Fin 5) :
    fourierTarget (cellMidpoint s) k i+Real.pi/(denominator s:ℝ)=
      fourierTarget (cellUpper s) k i := by
  unfold fourierTarget
  rw [←cellMidpoint_plus_radius s i]
  ring

theorem fourierTarget_mask_endpoints (s : Cell) (k : Fin 6) (m : Mask) :
    fourierTarget (endpoint (cellLower s) (cellUpper s) m) k=
      endpoint
        (fun i => fourierTarget (cellMidpoint s) k i-Real.pi/(denominator s:ℝ))
        (fun i => fourierTarget (cellMidpoint s) k i+Real.pi/(denominator s:ℝ)) m := by
  funext i
  cases hb : maskBits m i
  · simp only [fourierTarget,endpoint,hb,Bool.false_eq_true,if_false]
    exact (fourierTarget_lower_endpoint s k i).symm
  · simp only [fourierTarget,endpoint,hb,if_true]
    exact (fourierTarget_upper_endpoint s k i).symm

theorem supplier_mask_fourier_target (s : Cell) (hs : s.level≤7)
    (k : Fin 6) (m : Mask) (i : Fin 5) :
    circlePoint (2*Real.pi*(supplierShiftedIndex (supplierEndpointIndex s m i) k i:ℝ)/218880)=
      circlePoint (fourierTarget (endpoint (cellLower s) (cellUpper s) m) k i) := by
  cases hb : maskBits m i
  · simp only [supplierEndpointIndex,fourierTarget,endpoint,hb,Bool.false_eq_true,if_false]
    exact supplier_lower_fourier_target s hs k i
  · simp only [supplierEndpointIndex,fourierTarget,endpoint,hb,if_true]
    exact supplier_upper_fourier_target s hs k i

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.supplierEndpointIndex_native
#print axioms Seed0024ClusterTube20261007.supplierEndpointIndex_le
#print axioms Seed0024ClusterTube20261007.fourierTarget_lower_endpoint
#print axioms Seed0024ClusterTube20261007.fourierTarget_upper_endpoint
#print axioms Seed0024ClusterTube20261007.fourierTarget_mask_endpoints
#print axioms Seed0024ClusterTube20261007.supplier_mask_fourier_target
