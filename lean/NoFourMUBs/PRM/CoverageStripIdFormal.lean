import NoFourMUBs.PRM.CoverageStripReduce

/-!
# Critical strip identities (I4): the half moments as formal Laurent data, and row scaling

`fData s S t T r R X Y Z L₀ L₁ L₂ z` is `lamData` with the conjugates `S = s̄, T = t̄, R = r̄`, the moduli
`X, Y, Z` and the denominators `L_j` as independent complex numbers (`lamData_eq_fData`).

**Row scaling.**  Under `s ↦ a s, S ↦ S/a, t ↦ b t, T ↦ T/b, r ↦ (b/a) r, R ↦ (a/b) R` every moment
`M(i, j)` of `fData` is multiplied by `aⁱ bʲ` (`fData_mom_scale`), and `momentPoly` has weight zero
(`momentPoly_scale`).  With `a = 1/s, b = 1/t` this is the paper's device `s = t = 1, s̄ = X, t̄ = Y`.
-/

open ComplexConjugate

set_option linter.unusedSimpArgs false

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId

open StripMoments Side

/-- The formal half data. -/
def fData (s S t T r R X Y Z L0 L1 L2 z : ℂ) : HalfData :=
  let la := (r * s ^ 2 + R * t ^ 2 + (3 - Z) * s * t) / L0
  let lb := (t * S ^ 2 + r ^ 2 * T + (3 - Y) * r * S) / L1
  let lc := (s * T ^ 2 + R ^ 2 * S + (3 - X) * R * T) / L2
  let ba := (R * S ^ 2 + r * T ^ 2 + (3 - Z) * S * T) / L0
  let bb := (T * s ^ 2 + R ^ 2 * t + (3 - Y) * R * s) / L1
  let bc := (S * t ^ 2 + r ^ 2 * s + (3 - X) * r * t) / L2
  ⟨s, S, t, T, r, R, la * bb, la * bc, lc * bb, lb * ba, lc * ba, lb * bc, la * z, ba * z, bb * z,
    bc * z, lb * z, lc * z⟩

theorem lamData_eq_fData (s t r : ℂ) (z g : ℝ) :
    lamData s t r z g = fData s (conj s) t (conj t) r (conj r) (Complex.normSq s) (Complex.normSq t)
      (Complex.normSq r) (lamL s t r z g 0) (lamL s t r z g 1) (lamL s t r z g 2) z := by
  simp only [lamData, fData, P0, P1, P2, map_add, map_mul, map_pow, Complex.conj_conj,
    Complex.conj_ofReal]
  push_cast
  rfl

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

/-- The two halves of the strip, scaled to `s = t = 1`. -/
theorem halves_scaled (s t r : ℂ) (zA gA zB gB : ℝ) (hs : s ≠ 0) (ht : t ≠ 0)
    (hA : ∀ j, lamL s t r zA gA j ≠ 0) (hB : ∀ j, lamL (-s) (-t) (-r) zB gB j ≠ 0) :
    momentPoly (fun p => (lamData s t r zA gA).mom p + (lamData (-s) (-t) (-r) zB gB).mom p) =
      momentPoly (fun p =>
        (fData 1 (Complex.normSq s) 1 (Complex.normSq t) (r * s / t) (conj r * t / s) (Complex.normSq s)
          (Complex.normSq t) (Complex.normSq r) (lamL s t r zA gA 0) (lamL s t r zA gA 1)
          (lamL s t r zA gA 2) zA).mom p +
        (fData (-1) (-Complex.normSq s) (-1) (-Complex.normSq t) (-(r * s / t)) (-(conj r * t / s))
          (Complex.normSq s) (Complex.normSq t) (Complex.normSq r) (lamL (-s) (-t) (-r) zB gB 0)
          (lamL (-s) (-t) (-r) zB gB 1) (lamL (-s) (-t) (-r) zB gB 2) zB).mom p) := by
  have ha : s⁻¹ ≠ 0 := inv_ne_zero hs
  have hb : t⁻¹ ≠ 0 := inv_ne_zero ht
  have cA : ∀ j, ((lamL s t r zA gA j : ℝ) : ℂ) ≠ 0 := fun j => by exact_mod_cast hA j
  have cB : ∀ j, ((lamL (-s) (-t) (-r) zB gB j : ℝ) : ℂ) ≠ 0 := fun j => by exact_mod_cast hB j
  rw [← momentPoly_scale _ ha hb]
  apply momentPoly_congr
  intro p hp
  rw [lamData_eq_fData, lamData_eq_fData, mul_add,
    ← fData_mom_scale _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ha hb (cA 0) (cA 1) (cA 2) hp,
    ← fData_mom_scale _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ ha hb (cB 0) (cB 1) (cB 2) hp]
  have e1 : s⁻¹ * s = 1 := inv_mul_cancel₀ hs
  have e2 : t⁻¹ * t = 1 := inv_mul_cancel₀ ht
  have e3 : conj s / s⁻¹ = (Complex.normSq s : ℂ) := by rw [cast_normSq']; field_simp
  have e4 : conj t / t⁻¹ = (Complex.normSq t : ℂ) := by rw [cast_normSq']; field_simp
  have e5 : t⁻¹ / s⁻¹ * r = r * s / t := by field_simp
  have e6 : s⁻¹ / t⁻¹ * conj r = conj r * t / s := by field_simp
  have e7 : s⁻¹ * -s = -1 := by field_simp
  have e8 : t⁻¹ * -t = -1 := by field_simp
  have e9 : conj (-s) / s⁻¹ = -(Complex.normSq s : ℂ) := by rw [cast_normSq', map_neg]; field_simp
  have e10 : conj (-t) / t⁻¹ = -(Complex.normSq t : ℂ) := by rw [cast_normSq', map_neg]; field_simp
  have e11 : t⁻¹ / s⁻¹ * -r = -(r * s / t) := by field_simp
  have e12 : s⁻¹ / t⁻¹ * conj (-r) = -(conj r * t / s) := by rw [map_neg]; field_simp
  rw [e1, e2, e3, e4, e5, e6, e7, e8, e9, e10, e11, e12]
  simp only [Complex.normSq_neg]

end NoFourMUBs.PRM.Coverage.StripId
