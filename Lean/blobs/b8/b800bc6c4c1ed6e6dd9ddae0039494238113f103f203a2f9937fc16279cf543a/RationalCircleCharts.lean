import FormalCore
import Mathlib.Tactic.FieldSimp

/-! Two closed rational semicircle charts and their complete five-coordinate
raw-ray product. This module proves chart coverage, not an interval arc checker. -/
namespace Mub6.Numerical.CircleCharts
open Mub6
noncomputable section

def circlePoint (t : ℝ) : ℂ :=
  ⟨(1 - t ^ 2) / (1 + t ^ 2), 2 * t / (1 + t ^ 2)⟩

def signValue (negative : Bool) : ℝ := if negative then -1 else 1

def signedCircle (negative : Bool) (t : ℝ) : ℂ :=
  (signValue negative : ℂ) * circlePoint t

theorem denominator_at_least_one (t : ℝ) : 1 ≤ 1 + t ^ 2 := by
  nlinarith [sq_nonneg t]

theorem denominator_pos (t : ℝ) : 0 < 1 + t ^ 2 := by
  linarith [denominator_at_least_one t]

theorem circlePoint_normSq (t : ℝ) : Complex.normSq (circlePoint t) = 1 := by
  have hd : 1 + t ^ 2 ≠ 0 := ne_of_gt (denominator_pos t)
  change ((1 - t ^ 2) / (1 + t ^ 2)) * ((1 - t ^ 2) / (1 + t ^ 2)) +
    (2 * t / (1 + t ^ 2)) * (2 * t / (1 + t ^ 2)) = 1
  field_simp
  <;> ring

theorem circlePoint_quotient (t : ℝ) :
    circlePoint t = (((1 - t ^ 2 : ℝ) : ℂ) + 2 * Complex.I * (t : ℂ)) /
      ((1 + t ^ 2 : ℝ) : ℂ) := by
  rw [Complex.div_ofReal]
  apply Complex.ext <;> simp [circlePoint]
  all_goals ring

theorem signedCircle_normSq (negative : Bool) (t : ℝ) :
    Complex.normSq (signedCircle negative t) = 1 := by
  rw [signedCircle, Complex.normSq_mul, circlePoint_normSq]
  cases negative <;> norm_num [signValue]

theorem right_semicircle_parameter {z : ℂ} (hz : Complex.normSq z = 1)
    (hr : 0 ≤ z.re) :
    ∃ t : ℝ, -1 ≤ t ∧ t ≤ 1 ∧ z = circlePoint t := by
  have hxy : z.re * z.re + z.im * z.im = 1 := by
    simpa only [Complex.normSq_apply] using hz
  have hy : -1 ≤ z.im ∧ z.im ≤ 1 := by
    constructor <;> nlinarith [sq_nonneg z.re]
  have hd : 0 < 1 + z.re := by linarith
  let t : ℝ := z.im / (1 + z.re)
  have hlo : -1 ≤ t := by
    dsimp [t]
    apply (le_div_iff₀ hd).2
    linarith [hy.1]
  have hhi : t ≤ 1 := by
    dsimp [t]
    apply (div_le_iff₀ hd).2
    linarith [hy.2]
  refine ⟨t, hlo, hhi, ?_⟩
  have hden : 1 + z.re ≠ 0 := ne_of_gt hd
  have htden : 1 + t ^ 2 ≠ 0 := ne_of_gt (denominator_pos t)
  have hsq : (1 + z.re) ^ 2 + z.im ^ 2 = 2 * (1 + z.re) := by nlinarith [hxy]
  apply Complex.ext
  · change z.re = (1 - t ^ 2) / (1 + t ^ 2)
    apply (eq_div_iff htden).2
    dsimp [t]
    field_simp
    nlinarith [hxy, mul_nonneg (sq_nonneg z.re) hr]
  · change z.im = 2 * t / (1 + t ^ 2)
    apply (eq_div_iff htden).2
    dsimp [t]
    field_simp
    rw [hsq]
    ring

/-- The sign charts overlap at the two points with zero real part. Choosing
the nonnegative half first includes both endpoints without a deleted pole. -/
theorem unit_circle_complete {z : ℂ} (hz : Complex.normSq z = 1) :
    ∃ negative : Bool, ∃ t : ℝ,
      -1 ≤ t ∧ t ≤ 1 ∧ z = signedCircle negative t := by
  by_cases hr : 0 ≤ z.re
  · rcases right_semicircle_parameter hz hr with ⟨t, hlo, hhi, he⟩
    exact ⟨false, t, hlo, hhi, by simpa [signedCircle, signValue] using he⟩
  · have hn : Complex.normSq (-z) = 1 := by simpa using hz
    have hnr : 0 ≤ (-z).re := by simp only [Complex.neg_re]; linarith
    rcases right_semicircle_parameter hn hnr with ⟨t, hlo, hhi, he⟩
    refine ⟨true, t, hlo, hhi, ?_⟩
    have he' := congrArg Neg.neg he
    simpa [signedCircle, signValue] using he'

theorem unit_circle_real_sign {z : ℂ} (hz : Complex.normSq z = 1) :
    ∃ s t : ℝ, (s = 1 ∨ s = -1) ∧ -1 ≤ t ∧ t ≤ 1 ∧
      z = (s : ℂ) *
        ((((1 - t ^ 2 : ℝ) : ℂ) + 2 * Complex.I * (t : ℂ)) /
          ((1 + t ^ 2 : ℝ) : ℂ)) := by
  rcases unit_circle_complete hz with ⟨b, t, hlo, hhi, he⟩
  refine ⟨signValue b, t, ?_, hlo, hhi, ?_⟩
  · cases b <;> simp [signValue]
  · rw [he, signedCircle, circlePoint_quotient]

abbrev SignChart := Fin 5 → Bool
abbrev Parameters := Fin 5 → ℝ

def chartRay (signs : SignChart) (t : Parameters) : Vector :=
  Fin.cases 1 (fun j => signedCircle (signs j) (t j))

theorem sign_chart_count : Fintype.card SignChart = 32 := by decide

theorem chartRay_isRawUnitRay (signs : SignChart) (t : Parameters) :
    IsRawUnitRay (chartRay signs t) := by
  constructor
  · rfl
  · intro j
    refine Fin.cases ?_ (fun k => ?_) j
    · norm_num [chartRay]
    · exact signedCircle_normSq (signs k) (t k)

theorem raw_ray_complete {z : Vector} (hz : IsRawUnitRay z) :
    ∃ signs : SignChart, ∃ t : Parameters,
      (∀ j, -1 ≤ t j ∧ t j ≤ 1) ∧ z = chartRay signs t := by
  classical
  have hc (j : Fin 5) := unit_circle_complete (hz.2 j.succ)
  choose signs t hlo hhi he using hc
  refine ⟨signs, t, fun j => ⟨hlo j, hhi j⟩, ?_⟩
  funext j
  refine Fin.cases ?_ (fun k => ?_) j
  · exact hz.1
  · exact he k

#print axioms denominator_at_least_one
#print axioms circlePoint_normSq
#print axioms circlePoint_quotient
#print axioms right_semicircle_parameter
#print axioms unit_circle_complete
#print axioms unit_circle_real_sign
#print axioms sign_chart_count
#print axioms chartRay_isRawUnitRay
#print axioms raw_ray_complete
end Mub6.Numerical.CircleCharts
