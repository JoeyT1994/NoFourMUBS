import SupplierPhaseIndices
import SupplierMaskIndices
import EqualAngleTable

/-! Bind the checked table consumer's actual angle definition to the same
continuous-cell Fourier targets. EntryApprox remains an explicit table
correctness premise; no concrete table is admitted by this module. -/
set_option autoImplicit false
noncomputable section
open Seed0024ClusterTubeCover20261007 Seed0024ClusterTubeTable20261007

namespace Seed0024ClusterTube20261007

theorem supplier_midpoint_gridAngle (s : Cell) (hs : s.level≤7)
    (k : Fin 6) (i : Fin 5) :
    circlePoint (gridAngle 218880 (supplierShiftedIndex (supplierMidpointIndex s i) k i))=
      circlePoint (fourierTarget (cellMidpoint s) k i) := by
  rw [gridAngle_eq]
  exact supplier_midpoint_fourier_target s hs k i

theorem supplier_lower_gridAngle (s : Cell) (hs : s.level≤7)
    (k : Fin 6) (i : Fin 5) :
    circlePoint (gridAngle 218880 (supplierShiftedIndex (supplierLowerIndex s i) k i))=
      circlePoint (fourierTarget (cellLower s) k i) := by
  rw [gridAngle_eq]
  exact supplier_lower_fourier_target s hs k i

theorem supplier_upper_gridAngle (s : Cell) (hs : s.level≤7)
    (k : Fin 6) (i : Fin 5) :
    circlePoint (gridAngle 218880 (supplierShiftedIndex (supplierUpperIndex s i) k i))=
      circlePoint (fourierTarget (cellUpper s) k i) := by
  rw [gridAngle_eq]
  exact supplier_upper_fourier_target s hs k i

theorem supplier_mask_gridAngle (s : Cell) (hs : s.level≤7)
    (k : Fin 6) (m : Mask) (i : Fin 5) :
    circlePoint (gridAngle 218880
      (supplierShiftedIndex (supplierEndpointIndex s m i) k i))=
      circlePoint (endpoint
        (fun j => fourierTarget (cellMidpoint s) k j-Real.pi/(denominator s:ℝ))
        (fun j => fourierTarget (cellMidpoint s) k j+Real.pi/(denominator s:ℝ)) m i) := by
  have h := supplier_mask_fourier_target s hs k m i
  rw [fourierTarget_mask_endpoints] at h
  simpa only [gridAngle_eq,Nat.cast_ofNat] using h

theorem entryApprox_at_equal_circle (L Q index : ℕ) (re im : ℤ) (t : ℝ)
    (hpoint : circlePoint (gridAngle L index)=circlePoint t)
    (hentry : EntryApprox L Q index re im) :
    |(re:ℝ)-(Q:ℝ)*Real.cos t|<1 ∧ |(im:ℝ)-(Q:ℝ)*Real.sin t|<1 := by
  have hr := congrArg Complex.re hpoint
  have hi := congrArg Complex.im hpoint
  simp only [circlePoint] at hr hi
  simpa only [EntryApprox,hr,hi] using hentry

theorem entryApprox_complex_error (L Q index : ℕ) (re im : ℤ) (t : ℝ)
    (hpoint : circlePoint (gridAngle L index)=circlePoint t)
    (hentry : EntryApprox L Q index re im) :
    |((⟨(re:ℝ),(im:ℝ)⟩:ℂ)-(Q:ℂ)*circlePoint t).re|<1 ∧
      |((⟨(re:ℝ),(im:ℝ)⟩:ℂ)-(Q:ℂ)*circlePoint t).im|<1 := by
  simpa [circlePoint] using entryApprox_at_equal_circle L Q index re im t hpoint hentry

theorem supplier_denominator_ge_19 (s : Cell) : 19≤denominator s := by
  have hp : 0<2^s.level := by positivity
  have hp' : 1≤2^s.level := by omega
  unfold denominator
  nlinarith

theorem supplier_phase_radius_sum_le_one (s : Cell) :
    (∑ _i : Fin 5,Real.pi/(denominator s:ℝ))≤1 := by
  have hn : (0:ℝ)<denominator s := by exact_mod_cast denominator_pos s
  have h19 : (19:ℝ)≤denominator s := by exact_mod_cast supplier_denominator_ge_19 s
  have hpi := pi_lt_355_div_113
  simp only [Finset.sum_const,Finset.card_univ,Fintype.card_fin,nsmul_eq_mul]
  calc
    5*(Real.pi/(denominator s:ℝ))=(5*Real.pi)/(denominator s:ℝ) := by ring
    _ ≤ 1 := (div_le_one hn).2 (by linarith)

theorem supplier_scalar_chord_radius (s : Cell) (hs : s.level≤7)
    (Q rad : ℝ) (hQ : 0<Q)
    (hrad : 710*Q*(supplierHalfStep s:ℝ)/(113*218880)≤rad) :
    Real.pi/(denominator s:ℝ)≤rad/Q := by
  have hn : (0:ℝ)<denominator s := by exact_mod_cast denominator_pos s
  have hp : Real.pi/(denominator s:ℝ)≤((355:ℝ)/113)/(denominator s:ℝ) :=
    div_le_div_of_nonneg_right pi_lt_355_div_113.le hn.le
  apply (le_div_iff₀ hQ).2
  calc
    (Real.pi/(denominator s:ℝ))*Q ≤ (((355:ℝ)/113)/(denominator s:ℝ))*Q :=
      mul_le_mul_of_nonneg_right hp hQ.le
    _ = 710*Q*(supplierHalfStep s:ℝ)/(113*218880) := by
      rw [supplierHalfStep_cast s hs]
      ring
    _ ≤ rad := hrad

theorem supplier_cell_native_chord (s : Cell) (hs : s.level≤7)
    (theta : Turns) (ht : MemCell s theta) (Q rad : ℝ) (hQ : 0<Q)
    (hrad : 710*Q*(supplierHalfStep s:ℝ)/(113*218880)≤rad) (i : Fin 6) :
    ‖turnRay (cellMidpoint s) i-turnRay theta i‖≤rad/Q :=
  le_trans (memCell_turnRay_chord s theta ht i)
    (supplier_scalar_chord_radius s hs Q rad hQ hrad)

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.supplier_midpoint_gridAngle
#print axioms Seed0024ClusterTube20261007.supplier_lower_gridAngle
#print axioms Seed0024ClusterTube20261007.supplier_upper_gridAngle
#print axioms Seed0024ClusterTube20261007.supplier_mask_gridAngle
#print axioms Seed0024ClusterTube20261007.entryApprox_at_equal_circle
#print axioms Seed0024ClusterTube20261007.entryApprox_complex_error
#print axioms Seed0024ClusterTube20261007.supplier_denominator_ge_19
#print axioms Seed0024ClusterTube20261007.supplier_phase_radius_sum_le_one
#print axioms Seed0024ClusterTube20261007.supplier_scalar_chord_radius
#print axioms Seed0024ClusterTube20261007.supplier_cell_native_chord
