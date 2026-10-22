import NoFourMUBs.PRM.CoverageStripMoments
import NoFourMUBs.PRM.CoverageStripHalfDefs

/-!
# Half-strip moments by Newton's identities (`CRITICAL_STRIP_CLASSIFICATION.md` §1)

For three columns `(xₖ, yₖ)` with nonzero entries, the moments `Σₖ xₖ^i yₖ^j` used by `momentPoly` are
polynomials (`HalfData.mom`, the formulas of `critical_moment_core.newton_moments`) in the eighteen
quantities `s = Σx`, `S = Σ1/x`, `t`, `T`, `r = Σy/x`, `Q = Σx/y`, `u = Πx`, `v = Πy`, `w = u/v`,
`U = 1/u`, `V = 1/v`, `W = v/u`, `π = perm(1; x; y)`, `Π = perm(1; 1/x; 1/y)`, `uΠ`, `vΠ`, `π/u`,
`π/v` (`halfDataOf`; `HalfData`, `HalfData.mom` and `usedMoments` are in `CoverageStripHalfDefs`).
`newton` proves this for the 36 moments occurring in `momentPoly`.
-/

open ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripMoments

open Side

/-- The eighteen symbols of actual columns. -/
def halfDataOf (x y : Fin 3 → ℂ) : HalfData where
  s := sS x
  S := (x 0)⁻¹ + (x 1)⁻¹ + (x 2)⁻¹
  t := sS y
  T := (y 0)⁻¹ + (y 1)⁻¹ + (y 2)⁻¹
  r := y 0 / x 0 + y 1 / x 1 + y 2 / x 2
  Q := x 0 / y 0 + x 1 / y 1 + x 2 / y 2
  u := uS x
  v := uS y
  w := uS x / uS y
  U := (uS x)⁻¹
  V := (uS y)⁻¹
  W := uS y / uS x
  pi := piS x y
  PI := piS (fun k => (x k)⁻¹) (fun k => (y k)⁻¹)
  up := uS x * piS (fun k => (x k)⁻¹) (fun k => (y k)⁻¹)
  vp := uS y * piS (fun k => (x k)⁻¹) (fun k => (y k)⁻¹)
  UP := piS x y / uS x
  VP := piS x y / uS y

set_option maxHeartbeats 2000000 in
/-- **Newton's identities** for the 36 moments. -/
theorem newton {x y : Fin 3 → ℂ} (hx : ∀ k, x k ≠ 0) (hy : ∀ k, y k ≠ 0) {p : ℤ × ℤ}
    (hp : p ∈ usedMoments) : ∑ k, x k ^ p.1 * y k ^ p.2 = (halfDataOf x y).mom p := by
  have a0 := hx 0; have a1 := hx 1; have a2 := hx 2
  have b0 := hy 0; have b1 := hy 1; have b2 := hy 2
  simp only [usedMoments, List.mem_cons, List.mem_nil_iff, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl <;>
  · simp (config := { decide := true }) only [HalfData.mom, newtonHalf, halfDom, ite_true, ite_false,
      List.mem_cons, List.mem_nil_iff, or_false, neg_neg, Int.reduceNeg, if_true, if_false]
    simp only [halfDataOf, Fin.sum_univ_three, sS, uS, piS, zpow_neg, zpow_ofNat, zpow_one, zpow_zero,
      one_mul, mul_one]
    field_simp
    ring

end NoFourMUBs.PRM.Coverage.StripMoments
