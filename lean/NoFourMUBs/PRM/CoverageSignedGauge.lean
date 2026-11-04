import NoFourMUBs.PRM.CoverageSignedMoments
import NoFourMUBs.PRM.CoverageStripIdHalf
import NoFourMUBs.PRM.CoverageStripLambda
import NoFourMUBs.PRM.CoverageStripIdFormal
import NoFourMUBs.PRM.CoverageStripScalar

/-!
# The weighted signed sum in the row gauge `s = t = 1`, over `QF` (return K, `REPORT.md` §5)

* `weightedPoly_scale`: `weightedPoly` has weight `(1, 1)`: scaling `M(i, j)` by `aⁱ bʲ` multiplies it
  by `ab`.
* `halves_scaled_w`: on the two halves of a strip (formal `λ`-data `lamData`, all six `L ≠ 0`), the
  weighted sum is `s t` times its value in the formal gauge `s = t = 1, s̄ = X, t̄ = Y`, `r ↦ r s/t`,
  `r̄ ↦ r̄ t/s` (`CoverageStripIdFormal`'s row scaling).
* `weightedPolyQ`, `val_weightedPolyQ`: the same polynomial over `QF C`.
* `gauge_check`: a kernel test `qvalidR (weightedPolyQ (M_A + M_B) − V) = true` on `halfQ` circuits
  gives the value of the gauged weighted sum at any good evaluation point.
-/

open ComplexConjugate

set_option linter.unusedSimpArgs false

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId

open NoFourMUBs.Kronecker StripMoments Side

/-- Pointwise agreement on the nine moments gives the same `weightedPoly`. -/
theorem weightedPoly_congr {M M' : ℤ × ℤ → ℂ} (h : ∀ p ∈ usedMoments, M p = M' p) :
    weightedPoly M = weightedPoly M' := by
  simp only [weightedPoly]
  rw [h (2, -1) (by decide), h (-1, 2) (by decide), h (-1, -1) (by decide), h (3, 0) (by decide),
    h (0, 3) (by decide), h (-2, 1) (by decide), h (1, -2) (by decide), h (2, 2) (by decide),
    h (1, 1) (by decide)]

/-- **`weightedPoly` has weight `(1, 1)`.** -/
theorem weightedPoly_scale (M : ℤ × ℤ → ℂ) {a b : ℂ} (ha : a ≠ 0) (hb : b ≠ 0) :
    weightedPoly (fun p => a ^ p.1 * b ^ p.2 * M p) = a * b * weightedPoly M := by
  simp only [weightedPoly, zpow_neg, zpow_ofNat, zpow_one, zpow_zero, one_mul, mul_one, Int.reduceNeg]
  field_simp

/-- **The weighted sum of the two halves in the gauge `s = t = 1`.** -/
theorem halves_scaled_w (s t r : ℂ) (zA gA zB gB : ℝ) (hs : s ≠ 0) (ht : t ≠ 0)
    (hA : ∀ j, lamL s t r zA gA j ≠ 0) (hB : ∀ j, lamL (-s) (-t) (-r) zB gB j ≠ 0) :
    weightedPoly (fun p => (lamData s t r zA gA).mom p + (lamData (-s) (-t) (-r) zB gB).mom p) =
      s * t * weightedPoly (fun p =>
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
  have key := weightedPoly_scale
    (fun p => (lamData s t r zA gA).mom p + (lamData (-s) (-t) (-r) zB gB).mom p) ha hb
  have e : weightedPoly (fun p => s⁻¹ ^ p.1 * t⁻¹ ^ p.2 *
      ((lamData s t r zA gA).mom p + (lamData (-s) (-t) (-r) zB gB).mom p)) =
      weightedPoly (fun p =>
        (fData 1 (Complex.normSq s) 1 (Complex.normSq t) (r * s / t) (conj r * t / s) (Complex.normSq s)
          (Complex.normSq t) (Complex.normSq r) (lamL s t r zA gA 0) (lamL s t r zA gA 1)
          (lamL s t r zA gA 2) zA).mom p +
        (fData (-1) (-Complex.normSq s) (-1) (-Complex.normSq t) (-(r * s / t)) (-(conj r * t / s))
          (Complex.normSq s) (Complex.normSq t) (Complex.normSq r) (lamL (-s) (-t) (-r) zB gB 0)
          (lamL (-s) (-t) (-r) zB gB 1) (lamL (-s) (-t) (-r) zB gB 2) zB).mom p) := by
    apply weightedPoly_congr
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
  rw [← e, key]
  field_simp


/-! ### Complex forms of the half data -/

/-- `g_σ = 3q + σJ = (12h + 8σk)/h²`. -/
def gC (σ : ℝ) (k : ℂ) : ℂ := (12 * (1 + k ^ 2) + 8 * σ * k) / (1 + k ^ 2) ^ 2
/-- `z_σ = −2(1 + σk)/h`. -/
def zC (σ : ℝ) (k : ℂ) : ℂ := -2 * (1 + σ * k) / (1 + k ^ 2)

theorem gS_cast (σ k : ℝ) : ((Quartic.gS σ k : ℝ) : ℂ) = gC σ k := by
  have hh : (1 + (k : ℂ) ^ 2) ≠ 0 := by exact_mod_cast (hk_pos k).ne'
  simp only [Quartic.gS, Quartic.qk, Quartic.Jk, Quartic.hk, gC]; push_cast; field_simp; ring

theorem zS_cast (σ k : ℝ) : ((Quartic.zS σ k : ℝ) : ℂ) = zC σ k := by
  simp only [Quartic.zS, Quartic.hk, zC]; push_cast; ring

theorem lamL_cast (s t r : ℂ) (z g : ℝ) (j : Fin 3) : ((lamL s t r z g j : ℝ) : ℂ) =
    (g : ℂ) + (9 - ![(Complex.normSq r : ℂ), (Complex.normSq t : ℂ), (Complex.normSq s : ℂ)] j) * z := by
  fin_cases j <;> simp [lamL]

/-! ### Over `QF` -/

variable {n m : ℕ} {C : Ctx n m}

/-- `weightedPoly` over `QF C`. -/
def weightedPolyQ (M : ℤ × ℤ → QF C) : QF C :=
  6 * M (2, -1) * M (-1, 2) + M (-1, -1) * M (-1, 2) * M (3, 0) + M (-1, -1) * M (2, -1) * M (0, 3) -
    M (-2, 1) * M (1, -2) * M (2, 2) - M (1, 1) * (M (2, -1) * M (-2, 1) + M (-1, 2) * M (1, -2))

variable {ρ : Fin n → ℂ} {ζ : ℂ}

theorem val_weightedPolyQ (h : QF.Good C ρ ζ) (M : ℤ × ℤ → QF C) :
    (weightedPolyQ M).val ρ ζ = weightedPoly (fun p => (M p).val ρ ζ) := by
  simp only [weightedPolyQ, QF.val_add h, QF.val_sub h, QF.val_mul h, QF.val_ofNat']
  simp only [weightedPoly]

/-- The two gauged halves as `halfQ` circuits: `r`-slot `qr`, `r̄`-slot `qR`, moduli `qX, qY, qZ`,
invariants `qzA, qzB`, inverse denominators `iA, iB`. -/
def gaugeSum (qX qY qZ qr qR qzA qzB : QF C) (iA iB : Fin 3 → QF C) (p : ℤ × ℤ) : QF C :=
  (halfQ 1 qX 1 qY qr qR qX qY qZ (iA 0) (iA 1) (iA 2) qzA).mom p +
    (halfQ (-1) (-qX) (-1) (-qY) (-qr) (-qR) qX qY qZ (iB 0) (iB 1) (iB 2) qzB).mom p

/-- **The kernel test gives the gauged weighted sum.** -/
theorem gauge_check (good : QF.Good C ρ ζ) {qX qY qZ qr qR qzA qzB V : QF C} {iA iB : Fin 3 → QF C}
    {ns : ℕ} {X Y Z r R zA zB : ℂ} {LA LB : Fin 3 → ℂ}
    (vX : qX.val ρ ζ = X) (vY : qY.val ρ ζ = Y) (vZ : qZ.val ρ ζ = Z) (vr : qr.val ρ ζ = r)
    (vR : qR.val ρ ζ = R) (vzA : qzA.val ρ ζ = zA) (vzB : qzB.val ρ ζ = zB)
    (viA : ∀ j, (iA j).val ρ ζ = (LA j)⁻¹) (viB : ∀ j, (iB j).val ρ ζ = (LB j)⁻¹)
    (hv : qvalidR (weightedPolyQ (gaugeSum qX qY qZ qr qR qzA qzB iA iB) - V) ns = true) :
    weightedPoly (fun p => (fData 1 X 1 Y r R X Y Z (LA 0) (LA 1) (LA 2) zA).mom p +
      (fData (-1) (-X) (-1) (-Y) (-r) (-R) X Y Z (LB 0) (LB 1) (LB 2) zB).mom p) = V.val ρ ζ := by
  have e := QF.eq_of_validR good hv
  rw [val_weightedPolyQ good] at e
  rw [← e]
  apply weightedPoly_congr
  intro p hp
  have v1 : (1 : QF C).val ρ ζ = 1 := QF.val_one'
  have hA : (halfQ 1 qX 1 qY qr qR qX qY qZ (iA 0) (iA 1) (iA 2) qzA).val ρ ζ =
      fData 1 X 1 Y r R X Y Z (LA 0) (LA 1) (LA 2) zA := by
    rw [halfQ_val good _ _ _ _ _ _ _ _ _ _ _ _ _ (viA 0) (viA 1) (viA 2), v1, vX, vY, vZ, vr, vR, vzA]
  have hB : (halfQ (-1) (-qX) (-1) (-qY) (-qr) (-qR) qX qY qZ (iB 0) (iB 1) (iB 2) qzB).val ρ ζ =
      fData (-1) (-X) (-1) (-Y) (-r) (-R) X Y Z (LB 0) (LB 1) (LB 2) zB := by
    rw [halfQ_val good _ _ _ _ _ _ _ _ _ _ _ _ _ (viB 0) (viB 1) (viB 2)]
    simp only [QF.val_neg]
    rw [v1, vX, vY, vZ, vr, vR, vzB]
  simp only [gaugeSum]
  rw [QF.val_add good, HalfQ.val_mom good _ hp, HalfQ.val_mom good _ hp, hA, hB]

end NoFourMUBs.PRM.Coverage.StripId
