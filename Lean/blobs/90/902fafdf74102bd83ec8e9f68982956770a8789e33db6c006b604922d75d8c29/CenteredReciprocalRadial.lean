import Mathlib.Algebra.Ring.GeomSum
import Mathlib.Algebra.Order.Field.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-! Exact centered reciprocal tail. The retained sum is finite in the single
normalized perturbation x. Composition with a nonlinear spatial polynomial
still requires a separate total-degree truncation and product-tail theorem. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006.RadialReciprocal20261008
open scoped BigOperators
noncomputable section

/-- Powers zero through m of the same normalized perturbation. -/
def geometricPartial (m : ℕ) (x : ℝ) : ℝ :=
  ∑ k ∈ Finset.range (m+1), (-x)^k

/-- The center is exactly f(0), shared by every point and retained term. -/
def centeredRatio {E : Type*} [Zero E] (f : E → ℝ) (ξ : E) : ℝ :=
  f ξ / f 0 - 1

def centeredReciprocalApprox {E : Type*} [Zero E]
    (m : ℕ) (f : E → ℝ) (ξ : E) : ℝ :=
  (f 0)⁻¹ * geometricPartial m (centeredRatio f ξ)

theorem geometricPartial_succ (m : ℕ) (x : ℝ) :
    geometricPartial (m+1) x = geometricPartial m x + (-x)^(m+1) := by
  exact Finset.sum_range_succ _ (m+1)

theorem geometricPartial_at_zero (m : ℕ) : geometricPartial m 0 = 1 := by
  induction m with
  | zero => simp [geometricPartial]
  | succ m ih => rw [geometricPartial_succ, ih]; simp

theorem centeredRatio_at_zero {E : Type*} [Zero E]
    (f : E → ℝ) (hc : f 0 ≠ 0) : centeredRatio f 0 = 0 := by
  simp [centeredRatio, hc]

theorem centeredRatio_reconstruct {E : Type*} [Zero E]
    (f : E → ℝ) (ξ : E) (hc : f 0 ≠ 0) :
    f 0 * (1 + centeredRatio f ξ) = f ξ := by
  unfold centeredRatio
  field_simp [hc]
  <;> ring

theorem centeredReciprocalApprox_at_zero {E : Type*} [Zero E]
    (m : ℕ) (f : E → ℝ) (hc : f 0 ≠ 0) :
    centeredReciprocalApprox m f 0 = (f 0)⁻¹ := by
  simp [centeredReciprocalApprox, centeredRatio_at_zero f hc,
    geometricPartial_at_zero]

/-- Exact finite identity, before any estimate or radial substitution. -/
theorem geometricPartial_mul (m : ℕ) (x : ℝ) :
    geometricPartial m x * (1+x) = 1-(-x)^(m+1) := by
  simpa [geometricPartial] using geom_sum_mul_neg (-x) (m+1)

theorem reciprocal_remainder_identity (m : ℕ) {x : ℝ} (hx : 1+x ≠ 0) :
    (1+x)⁻¹ - geometricPartial m x = (-x)^(m+1)/(1+x) := by
  calc
    _ = (1-geometricPartial m x*(1+x))/(1+x) := by
      field_simp [hx]
      <;> ring
    _ = _ := by rw [geometricPartial_mul]; ring

/-- The strict alpha guard proves the denominator guard, including h=0. -/
theorem radial_denominator_guard {x α h : ℝ}
    (hα : 0 ≤ α) (hα' : α < 1) (hh : h ≤ 1) (hx : |x| ≤ α*h) :
    1-α ≤ 1+x ∧ 0 < 1+x := by
  have hmul : α*h ≤ α := by nlinarith
  have habs : |x| ≤ α := le_trans hx hmul
  have hlower : 1-α ≤ 1+x := by linarith [neg_le_abs x]
  exact ⟨hlower, lt_of_lt_of_le (sub_pos.mpr hα') hlower⟩

/-- The radial power is derived from |x|≤alpha*h, not supplied as a tail bound. -/
theorem reciprocal_radial_remainder (m : ℕ) {x α h : ℝ}
    (hα : 0 ≤ α) (hα' : α < 1) (hh : 0 ≤ h) (hh' : h ≤ 1)
    (hx : |x| ≤ α*h) :
    |(1+x)⁻¹-geometricPartial m x| ≤ α^(m+1)/(1-α)*h^(m+1) := by
  obtain ⟨hd, hp⟩ := radial_denominator_guard hα hα' hh' hx
  rw [reciprocal_remainder_identity m (ne_of_gt hp), abs_div, abs_pow,
    abs_neg, abs_of_pos hp]
  calc
    _ ≤ (α*h)^(m+1)/(1-α) :=
      div_le_div₀ (pow_nonneg (mul_nonneg hα hh) _)
        (pow_le_pow_left₀ (abs_nonneg x) hx _) (sub_pos.mpr hα') hd
    _ = _ := by rw [mul_pow]; ring

theorem scaled_reciprocal_radial_remainder (m : ℕ) {c x α h : ℝ}
    (hc : c ≠ 0) (hα : 0 ≤ α) (hα' : α < 1) (hh : 0 ≤ h) (hh' : h ≤ 1)
    (hx : |x| ≤ α*h) :
    |(c*(1+x))⁻¹-c⁻¹*geometricPartial m x| ≤
      (|c|⁻¹*α^(m+1)/(1-α))*h^(m+1) := by
  have hp := (radial_denominator_guard hα hα' hh' hx).2
  have hid : (c*(1+x))⁻¹-c⁻¹*geometricPartial m x =
      c⁻¹*((1+x)⁻¹-geometricPartial m x) := by
    field_simp [hc, ne_of_gt hp]
    <;> ring
  rw [hid, abs_mul, abs_inv]
  calc
    _ ≤ |c|⁻¹*(α^(m+1)/(1-α)*h^(m+1)) :=
      mul_le_mul_of_nonneg_left (reciprocal_radial_remainder m hα hα' hh hh' hx)
        (inv_nonneg.mpr (abs_nonneg c))
    _ = _ := by ring

/-- Pointwise semantic kernel for any domain with a fixed zero center. The
upstream enclosure obligation is the normalized deviation bound, not the
desired reciprocal remainder. Spatial truncation is not asserted here. -/
theorem centered_reciprocal_radial_remainder {E : Type*} [Zero E]
    (m : ℕ) (f : E → ℝ) (ξ : E) (hc : f 0 ≠ 0) {α h : ℝ}
    (hα : 0 ≤ α) (hα' : α < 1) (hh : 0 ≤ h) (hh' : h ≤ 1)
    (hx : |centeredRatio f ξ| ≤ α*h) :
    f ξ ≠ 0 ∧ |(f ξ)⁻¹-centeredReciprocalApprox m f ξ| ≤
      (|f 0|⁻¹*α^(m+1)/(1-α))*h^(m+1) := by
  have hid := centeredRatio_reconstruct f ξ hc
  have hn : f ξ ≠ 0 := by
    rw [← hid]
    exact mul_ne_zero hc
      (ne_of_gt (radial_denominator_guard hα hα' hh' hx).2)
  have hb := scaled_reciprocal_radial_remainder m hc hα hα' hh hh' hx
  rw [hid] at hb
  exact ⟨hn, hb⟩

end
end Centiradian20261006.RadialReciprocal20261008

#print axioms Centiradian20261006.RadialReciprocal20261008.geometricPartial_succ
#print axioms Centiradian20261006.RadialReciprocal20261008.geometricPartial_at_zero
#print axioms Centiradian20261006.RadialReciprocal20261008.centeredRatio_at_zero
#print axioms Centiradian20261006.RadialReciprocal20261008.centeredRatio_reconstruct
#print axioms Centiradian20261006.RadialReciprocal20261008.centeredReciprocalApprox_at_zero
#print axioms Centiradian20261006.RadialReciprocal20261008.geometricPartial_mul
#print axioms Centiradian20261006.RadialReciprocal20261008.reciprocal_remainder_identity
#print axioms Centiradian20261006.RadialReciprocal20261008.radial_denominator_guard
#print axioms Centiradian20261006.RadialReciprocal20261008.reciprocal_radial_remainder
#print axioms Centiradian20261006.RadialReciprocal20261008.scaled_reciprocal_radial_remainder
#print axioms Centiradian20261006.RadialReciprocal20261008.centered_reciprocal_radial_remainder
