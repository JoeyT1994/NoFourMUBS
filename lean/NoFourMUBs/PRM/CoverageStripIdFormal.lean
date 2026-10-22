import NoFourMUBs.PRM.CoverageStripHalfDefs
import NoFourMUBs.PRM.CoverageStripMomentData

/-!
# Critical strip identities (I4): the half moments as formal Laurent data, and row scaling

`fData s S t T r R X Y Z L₀ L₁ L₂ z` (`CoverageStripHalfDefs`) is `lamData` with the conjugates
`S = s̄, T = t̄, R = r̄`, the moduli `X, Y, Z` and the denominators `L_j` as independent complex numbers
(`lamData_eq_fData`, in `CoverageStripLambda`).  This module only needs the definitions, so it builds
early, in parallel with the strip chain.

**Row scaling.**  Under `s ↦ a s, S ↦ S/a, t ↦ b t, T ↦ T/b, r ↦ (b/a) r, R ↦ (a/b) R` every moment
`M(i, j)` of `fData` is multiplied by `aⁱ bʲ` (`fData_mom_scale`), and `momentPoly` has weight zero
(`momentPoly_scale`).  With `a = 1/s, b = 1/t` this is the paper's device `s = t = 1, s̄ = X, t̄ = Y`
(`halves_scaled`, in `CoverageStripIdZero`; `halves_scaled_w` in `CoverageSignedGauge`).
-/

open ComplexConjugate

set_option linter.unusedSimpArgs false

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId

open StripMoments

set_option maxHeartbeats 4000000 in
/-- **Row scaling of the moments.** -/
theorem fData_mom_scale (s S t T r R X Y Z L0 L1 L2 z a b : ℂ) (ha : a ≠ 0) (hb : b ≠ 0)
    (h0 : L0 ≠ 0) (h1 : L1 ≠ 0) (h2 : L2 ≠ 0) {p : ℤ × ℤ} (hp : p ∈ usedMoments) :
    (fData (a * s) (S / a) (b * t) (T / b) (b / a * r) (a / b * R) X Y Z L0 L1 L2 z).mom p =
      a ^ p.1 * b ^ p.2 * (fData s S t T r R X Y Z L0 L1 L2 z).mom p := by
  simp only [usedMoments, List.mem_cons, List.mem_nil_iff, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl | rfl <;>
  · simp (config := { decide := true }) only [HalfData.mom, newtonHalf, ite_true, ite_false,
      List.mem_cons, List.mem_nil_iff, or_false, neg_neg, Int.reduceNeg, if_true, if_false]
    simp only [fData, zpow_neg, zpow_ofNat, zpow_one, zpow_zero, one_mul, mul_one]
    field_simp

set_option maxHeartbeats 1000000 in
/-- **`momentPoly` has weight zero.** -/
theorem momentPoly_scale (M : ℤ × ℤ → ℂ) {a b : ℂ} (ha : a ≠ 0) (hb : b ≠ 0) :
    momentPoly (fun p => a ^ p.1 * b ^ p.2 * M p) = momentPoly M := by
  simp only [momentPoly, zpow_neg, zpow_ofNat, zpow_one, zpow_zero, one_mul, mul_one, Int.reduceNeg]
  field_simp

end NoFourMUBs.PRM.Coverage.StripId
