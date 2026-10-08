import FourierPhaseTargets
import SupplierGridIndices

/-! Literal phase indices, with integer shifts reduced modulo the supplier
period. Reduction is justified by full-turn periodicity. All statements
refer to exact circle points, not rounded table values. -/
set_option autoImplicit false
noncomputable section
open Seed0024ClusterTubeCover20261007

namespace Seed0024ClusterTube20261007

theorem circlePoint_add_int_two_pi (x : ℝ) (n : ℤ) :
    circlePoint (x+(n:ℝ)*(2*Real.pi))=circlePoint x := by
  apply Complex.ext <;> simp [circlePoint]

def normalizedSupplierIndex (n : ℤ) : ℕ := (n%218880).toNat

theorem normalizedSupplierIndex_cast (n : ℤ) :
    (normalizedSupplierIndex n:ℤ)=n%218880 :=
  Int.toNat_of_nonneg (Int.emod_nonneg n (by decide : (218880:ℤ)≠0))

theorem normalizedSupplierIndex_lt (n : ℤ) : normalizedSupplierIndex n<218880 := by
  have hv := normalizedSupplierIndex_cast n
  have hh := Int.emod_lt_of_pos n (by decide : (0:ℤ)<218880)
  omega

theorem normalizedSupplierIndex_circle (n : ℤ) :
    circlePoint (2*Real.pi*(normalizedSupplierIndex n:ℝ)/218880)=
      circlePoint (2*Real.pi*(n:ℝ)/218880) := by
  have hval : (normalizedSupplierIndex n:ℝ)=((n%218880:ℤ):ℝ) := by
    exact_mod_cast normalizedSupplierIndex_cast n
  have hdecomp : ((n%218880:ℤ):ℝ)+218880*((n/218880:ℤ):ℝ)=(n:ℝ) := by
    have hz : n%218880+218880*(n/218880)=n := by omega
    exact_mod_cast hz
  have he : 2*Real.pi*(n:ℝ)/218880=
      2*Real.pi*((n%218880:ℤ):ℝ)/218880+
        ((n/218880:ℤ):ℝ)*(2*Real.pi) := by
    rw [←hdecomp]
    ring
  rw [hval,he,circlePoint_add_int_two_pi]

def supplierShiftedIndex (index : ℕ) (k : Fin 6) (i : Fin 5) : ℕ :=
  normalizedSupplierIndex ((index:ℤ)-((i.succ.val*k.val:ℕ):ℤ)*36480)

theorem supplierShiftedIndex_lt (index : ℕ) (k : Fin 6) (i : Fin 5) :
    supplierShiftedIndex index k i<218880 := normalizedSupplierIndex_lt _

theorem supplier_shifted_circle (index : ℕ) (k : Fin 6) (i : Fin 5) :
    circlePoint (2*Real.pi*(supplierShiftedIndex index k i:ℝ)/218880)=
      circlePoint (2*Real.pi*(index:ℝ)/218880-
        ((i.succ.val*k.val:ℕ):ℝ)*Real.pi/3) := by
  rw [supplierShiftedIndex,normalizedSupplierIndex_circle]
  congr 1
  simp only [Int.cast_sub,Int.cast_mul,Int.cast_natCast,Int.cast_ofNat]
  ring

theorem supplier_midpoint_fourier_target (s : Cell) (hs : s.level≤7)
    (k : Fin 6) (i : Fin 5) :
    circlePoint (2*Real.pi*(supplierShiftedIndex (supplierMidpointIndex s i) k i:ℝ)/218880)=
      circlePoint (fourierTarget (cellMidpoint s) k i) := by
  rw [supplier_shifted_circle,supplier_midpoint_angle s hs]
  rfl

theorem supplier_lower_fourier_target (s : Cell) (hs : s.level≤7)
    (k : Fin 6) (i : Fin 5) :
    circlePoint (2*Real.pi*(supplierShiftedIndex (supplierLowerIndex s i) k i:ℝ)/218880)=
      circlePoint (fourierTarget (cellLower s) k i) := by
  rw [supplier_shifted_circle,supplier_lower_angle s hs]
  rfl

theorem supplier_upper_fourier_target (s : Cell) (hs : s.level≤7)
    (k : Fin 6) (i : Fin 5) :
    circlePoint (2*Real.pi*(supplierShiftedIndex (supplierUpperIndex s i) k i:ℝ)/218880)=
      circlePoint (fourierTarget (cellUpper s) k i) := by
  rw [supplier_shifted_circle,supplier_upper_angle s hs]
  rfl

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.circlePoint_add_int_two_pi
#print axioms Seed0024ClusterTube20261007.normalizedSupplierIndex_cast
#print axioms Seed0024ClusterTube20261007.normalizedSupplierIndex_lt
#print axioms Seed0024ClusterTube20261007.normalizedSupplierIndex_circle
#print axioms Seed0024ClusterTube20261007.supplierShiftedIndex_lt
#print axioms Seed0024ClusterTube20261007.supplier_shifted_circle
#print axioms Seed0024ClusterTube20261007.supplier_midpoint_fourier_target
#print axioms Seed0024ClusterTube20261007.supplier_lower_fourier_target
#print axioms Seed0024ClusterTube20261007.supplier_upper_fourier_target
