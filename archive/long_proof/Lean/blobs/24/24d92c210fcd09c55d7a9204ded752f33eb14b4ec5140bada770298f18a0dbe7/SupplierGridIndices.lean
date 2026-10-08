import EqualAngleCells
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

/-! Exact supplier grid arithmetic at all eight permitted levels. These
identities bind continuous cell midpoints/endpoints to integer grid indices;
they do not certify any rounded trigonometric table entry. -/
set_option autoImplicit false
noncomputable section
open Seed0024ClusterTubeCover20261007

namespace Seed0024ClusterTube20261007

def supplierPeriod : ℕ := 218880
def supplierStep (s : Cell) : ℕ := supplierPeriod/denominator s
def supplierHalfStep (s : Cell) : ℕ := supplierPeriod/(2*denominator s)

theorem supplier_level_divisibility : ∀ l : Fin 8,
    (19*2^l.val)*(218880/(19*2^l.val))=218880 ∧
    (2*(19*2^l.val))*(218880/(2*(19*2^l.val)))=218880 ∧
    218880/(19*2^l.val)=2*(218880/(2*(19*2^l.val))) := by decide

theorem supplier_cell_divisibility (s : Cell) (hs : s.level≤7) :
    denominator s*supplierStep s=supplierPeriod ∧
    (2*denominator s)*supplierHalfStep s=supplierPeriod ∧
    supplierStep s=2*supplierHalfStep s := by
  exact supplier_level_divisibility ⟨s.level,by omega⟩

theorem supplierStep_cast (s : Cell) (hs : s.level≤7) :
    (supplierStep s:ℝ)=218880/(denominator s:ℝ) := by
  have hn : (denominator s:ℝ)≠0 := by
    exact_mod_cast Nat.ne_of_gt (denominator_pos s)
  apply (eq_div_iff hn).2
  have h : (denominator s:ℝ)*(supplierStep s:ℝ)=218880 := by
    exact_mod_cast (supplier_cell_divisibility s hs).1
  nlinarith

theorem supplierHalfStep_cast (s : Cell) (hs : s.level≤7) :
    (supplierHalfStep s:ℝ)=218880/(2*(denominator s:ℝ)) := by
  have hn : (2:ℝ)*(denominator s:ℝ)≠0 := by
    have h : (0:ℝ)<denominator s := by exact_mod_cast denominator_pos s
    positivity
  apply (eq_div_iff hn).2
  have h : (2*(denominator s:ℝ))*(supplierHalfStep s:ℝ)=218880 := by
    exact_mod_cast (supplier_cell_divisibility s hs).2.1
  nlinarith

def cellMidpoint (s : Cell) : Turns :=
  fun i => ((2*s.index i+1:ℕ):ℝ)/(2*(denominator s:ℝ))
def cellLower (s : Cell) : Turns :=
  fun i => (s.index i:ℝ)/(denominator s:ℝ)
def cellUpper (s : Cell) : Turns :=
  fun i => ((s.index i+1:ℕ):ℝ)/(denominator s:ℝ)

def supplierMidpointIndex (s : Cell) (i : Fin 5) : ℕ :=
  (2*s.index i+1)*supplierHalfStep s
def supplierLowerIndex (s : Cell) (i : Fin 5) : ℕ :=
  s.index i*supplierStep s
def supplierUpperIndex (s : Cell) (i : Fin 5) : ℕ :=
  (s.index i+1)*supplierStep s

theorem supplier_midpoint_angle (s : Cell) (hs : s.level≤7) (i : Fin 5) :
    2*Real.pi*(supplierMidpointIndex s i:ℝ)/218880=
      2*Real.pi*cellMidpoint s i := by
  simp only [supplierMidpointIndex,Nat.cast_mul,supplierHalfStep_cast s hs,cellMidpoint]
  ring

theorem supplier_lower_angle (s : Cell) (hs : s.level≤7) (i : Fin 5) :
    2*Real.pi*(supplierLowerIndex s i:ℝ)/218880=
      2*Real.pi*cellLower s i := by
  simp only [supplierLowerIndex,Nat.cast_mul,supplierStep_cast s hs,cellLower]
  ring

theorem supplier_upper_angle (s : Cell) (hs : s.level≤7) (i : Fin 5) :
    2*Real.pi*(supplierUpperIndex s i:ℝ)/218880=
      2*Real.pi*cellUpper s i := by
  simp only [supplierUpperIndex,Nat.cast_mul,supplierStep_cast s hs,cellUpper]
  ring

theorem supplier_midpoint_index_lt (s : Cell) (hs : Valid s) (i : Fin 5) :
    supplierMidpointIndex s i<supplierPeriod := by
  have h := (supplier_cell_divisibility s hs.1).2.1
  have hp : 0<supplierHalfStep s := by
    by_contra hn
    have hz : supplierHalfStep s=0 := by omega
    rw [hz,mul_zero] at h
    norm_num [supplierPeriod] at h
  have hi : 2*s.index i+1<2*denominator s := by have := hs.2 i; omega
  calc
    supplierMidpointIndex s i < (2*denominator s)*supplierHalfStep s :=
      Nat.mul_lt_mul_of_pos_right hi hp
    _ = supplierPeriod := h

theorem supplier_lower_index_lt (s : Cell) (hs : Valid s) (i : Fin 5) :
    supplierLowerIndex s i<supplierPeriod := by
  have h := (supplier_cell_divisibility s hs.1).1
  have hp : 0<supplierStep s := by
    by_contra hn
    have hz : supplierStep s=0 := by omega
    rw [hz,mul_zero] at h
    norm_num [supplierPeriod] at h
  calc
    supplierLowerIndex s i < denominator s*supplierStep s :=
      Nat.mul_lt_mul_of_pos_right (hs.2 i) hp
    _ = supplierPeriod := h

theorem supplier_upper_index_le (s : Cell) (hs : Valid s) (i : Fin 5) :
    supplierUpperIndex s i≤supplierPeriod := by
  have hi : s.index i+1≤denominator s := by have := hs.2 i; omega
  calc
    supplierUpperIndex s i ≤ denominator s*supplierStep s := Nat.mul_le_mul_right _ hi
    _ = supplierPeriod := (supplier_cell_divisibility s hs.1).1

theorem supplier_endpoint_midpoint_indices (s : Cell) (hs : s.level≤7) (i : Fin 5) :
    supplierMidpointIndex s i=supplierLowerIndex s i+supplierHalfStep s ∧
    supplierUpperIndex s i=supplierMidpointIndex s i+supplierHalfStep s := by
  have h := (supplier_cell_divisibility s hs).2.2
  simp only [supplierMidpointIndex,supplierLowerIndex,supplierUpperIndex,h]
  constructor <;> ring

theorem supplier_fourier_step : supplierPeriod/6=36480 := by decide

end Seed0024ClusterTube20261007

#print axioms Seed0024ClusterTube20261007.supplier_level_divisibility
#print axioms Seed0024ClusterTube20261007.supplier_cell_divisibility
#print axioms Seed0024ClusterTube20261007.supplierStep_cast
#print axioms Seed0024ClusterTube20261007.supplierHalfStep_cast
#print axioms Seed0024ClusterTube20261007.supplier_midpoint_angle
#print axioms Seed0024ClusterTube20261007.supplier_lower_angle
#print axioms Seed0024ClusterTube20261007.supplier_upper_angle
#print axioms Seed0024ClusterTube20261007.supplier_midpoint_index_lt
#print axioms Seed0024ClusterTube20261007.supplier_lower_index_lt
#print axioms Seed0024ClusterTube20261007.supplier_upper_index_le
#print axioms Seed0024ClusterTube20261007.supplier_endpoint_midpoint_indices
#print axioms Seed0024ClusterTube20261007.supplier_fourier_step
