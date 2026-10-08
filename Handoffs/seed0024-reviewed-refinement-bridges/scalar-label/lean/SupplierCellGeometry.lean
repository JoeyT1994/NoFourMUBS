import FourierPhaseTargets
import SupplierGridIndices

/-! Closed supplier-cell membership gives the actual radian error from its
midpoint. Fourier shifts cancel exactly. This is continuous cell geometry,
not a sampled-point assumption. -/
set_option autoImplicit false
noncomputable section
open Seed0024ClusterTubeCover20261007

namespace Seed0024ClusterTube20261007

theorem cellMidpoint_minus_radius (s : Cell) (i : Fin 5) :
    cellMidpoint s i-1/(2*(denominator s:ℝ))=cellLower s i := by
  have hn : (denominator s:ℝ)≠0 := by
    exact_mod_cast Nat.ne_of_gt (denominator_pos s)
  simp only [cellMidpoint,cellLower,Nat.cast_add,Nat.cast_mul,Nat.cast_ofNat,Nat.cast_one]
  field_simp [hn]
  ring

theorem cellMidpoint_plus_radius (s : Cell) (i : Fin 5) :
    cellMidpoint s i+1/(2*(denominator s:ℝ))=cellUpper s i := by
  have hn : (denominator s:ℝ)≠0 := by
    exact_mod_cast Nat.ne_of_gt (denominator_pos s)
  simp only [cellMidpoint,cellUpper,Nat.cast_add,Nat.cast_mul,Nat.cast_ofNat,Nat.cast_one]
  field_simp [hn]
  ring

theorem memCell_midpoint_error (s : Cell) (theta : Turns) (ht : MemCell s theta)
    (i : Fin 5) : |theta i-cellMidpoint s i|≤1/(2*(denominator s:ℝ)) := by
  have h := (memCell_iff_interval s theta).1 ht i
  have hl : cellLower s i≤theta i := h.1
  have hu : theta i≤cellUpper s i := by
    simpa only [cellUpper,Nat.cast_add,Nat.cast_one] using h.2
  have hml := cellMidpoint_minus_radius s i
  have hmu := cellMidpoint_plus_radius s i
  apply abs_le.mpr
  constructor <;> linarith

theorem memCell_fourier_midpoint_error (s : Cell) (theta : Turns)
    (ht : MemCell s theta) (k : Fin 6) (i : Fin 5) :
    |fourierTarget theta k i-fourierTarget (cellMidpoint s) k i|≤
      Real.pi/(denominator s:ℝ) := by
  have he : fourierTarget theta k i-fourierTarget (cellMidpoint s) k i=
      (2*Real.pi)*(theta i-cellMidpoint s i) := by unfold fourierTarget; ring
  rw [he,abs_mul,abs_of_nonneg (show (0:ℝ)≤2*Real.pi by positivity)]
  have h := mul_le_mul_of_nonneg_left (memCell_midpoint_error s theta ht i)
    (show (0:ℝ)≤2*Real.pi by positivity)
  calc
    2*Real.pi*|theta i-cellMidpoint s i| ≤
        (2*Real.pi)*(1/(2*(denominator s:ℝ))) := h
    _ = Real.pi/(denominator s:ℝ) := by ring

theorem memCell_turnRay_chord (s : Cell) (theta : Turns) (ht : MemCell s theta)
    (i : Fin 6) :
    ‖turnRay (cellMidpoint s) i-turnRay theta i‖≤Real.pi/(denominator s:ℝ) := by
  refine Fin.cases ?_ ?_ i
  · simp only [turnRay_zero,sub_self,norm_zero]
    positivity
  · intro j
    rw [turnRay_succ,turnRay_succ]
    have h := memCell_fourier_midpoint_error s theta ht (0:Fin 6) j
    rw [fourierTarget_zero,fourierTarget_zero] at h
    calc
      _ ≤ |2*Real.pi*cellMidpoint s j-2*Real.pi*theta j| := circlePoint_norm_sub_le _ _
      _ = |2*Real.pi*theta j-2*Real.pi*cellMidpoint s j| := abs_sub_comm _ _
      _ ≤ _ := h

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.cellMidpoint_minus_radius
#print axioms Seed0024ClusterTube20261007.cellMidpoint_plus_radius
#print axioms Seed0024ClusterTube20261007.memCell_midpoint_error
#print axioms Seed0024ClusterTube20261007.memCell_fourier_midpoint_error
#print axioms Seed0024ClusterTube20261007.memCell_turnRay_chord
