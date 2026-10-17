import NoFourMUBs.PRM.CoverageStripMoments
import NoFourMUBs.PRM.CoverageSignedData

/-!
# Two signed corner sums as moment polynomials (return K, `REPORT.md` §2)

For a corner `C` of the top strip let `D_C = T̄ − T`, `T` its side signature (`= −Ψ(E_C)` for unit
entries, so `D_C = Ψ − Ψ̄` of the return).  On an all-critical strip every `D_C` vanishes.  With the
whole-strip moments `M(i, j) = Σ_u xᵤ^i yᵤ^j` (`momentOf`) and `a = M(1,1)`, `b = M(2,−1)`,
`c = M(−1,2)`, `ā = M(−1,−1)`, `b̄ = M(−2,1)`, `c̄ = M(1,−2)`:

* (3) `Σ_C D_C = ā b c − a b̄ c̄` (`signedPoly`);
* (4) `Σ_C (Σ_{j ∈ C} x_j y_j) D_C = 6bc + ā c M(3,0) + ā b M(0,3) − b̄ c̄ M(2,2) − a(b b̄ + c c̄)`
  (`weightedPoly`).

`signed_zero` gives both moment polynomials `= 0` on a strip of a Hadamard matrix all of whose top
corners are critical.

* `cornerD_expand`: `D` of a unit side `(1; x; y)` is the 48-term Laurent polynomial `dTerms`; after
  clearing `(x₀x₁x₂y₀y₁y₂)²` this is a polynomial identity in six variables, checked by the kernel
  (`dExpansion_valid`).
* the weight `x_a y_a + x_b y_b + x_c y_c` shifts one exponent pair of each term by `(1, 1)`
  (`termVal_weight`); summing over ordered triples gives products of three moments (`sum_term`);
  the orthogonality moments vanish and `M(0, 0) = 6` (`dTerms_eq`, `dTerms_weight_eq`, by `ring`).
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripMoments

open NoFourMUBs.Kronecker Side

/-- The signed corner value `D = T̄ − T` of the side `(1; x; y)`. -/
def cornerD (x y : Fin 3 → ℂ) : ℂ := conj (TS x y) - TS x y

theorem cornerD_eq_zero {x y : Fin 3 → ℂ} (h : (TS x y).im = 0) : cornerD x y = 0 := by
  apply Complex.ext <;> simp [cornerD, h]

/-- **(3)**, the signed sum: `ā b c − a b̄ c̄`. -/
def signedPoly (M : ℤ × ℤ → ℂ) : ℂ :=
  M (-1, -1) * M (2, -1) * M (-1, 2) - M (1, 1) * M (-2, 1) * M (1, -2)

/-- **(4)**, the `xy`-weighted signed sum. -/
def weightedPoly (M : ℤ × ℤ → ℂ) : ℂ :=
  6 * M (2, -1) * M (-1, 2) + M (-1, -1) * M (-1, 2) * M (3, 0) + M (-1, -1) * M (2, -1) * M (0, 3) -
    M (-2, 1) * M (1, -2) * M (2, 2) - M (1, 1) * (M (2, -1) * M (-2, 1) + M (-1, 2) * M (1, -2))

/-! ### The kernel-checked expansion -/

/-- `(uv)² · (T̄ − T) = π h² uv − π̃ h̃²`. -/
def cDL : V6 := cPi * cH ^ 2 * cUV - cPit * cHt ^ 2

def termCircD (t : LT) : V6 :=
  Circ.const t.c * (vx 0 ^ (t.i0 + 2).toNat * vy 0 ^ (t.j0 + 2).toNat) *
    (vx 1 ^ (t.i1 + 2).toNat * vy 1 ^ (t.j1 + 2).toNat) *
    (vx 2 ^ (t.i2 + 2).toNat * vy 2 ^ (t.j2 + 2).toNat)

def cDR : V6 := dTerms.foldr (fun t acc => termCircD t + acc) 0

set_option maxRecDepth 100000 in
/-- **The signed corner expansion**, checked by the kernel. -/
theorem dExpansion_valid : (cDL - cDR).validR 3 = true := by decide +kernel

/-- All exponents of `dTerms` are `≥ −2`. -/
def LT.ok2 (t : LT) : Bool :=
  decide (-2 ≤ t.i0) && decide (-2 ≤ t.j0) && decide (-2 ≤ t.i1) && decide (-2 ≤ t.j1) &&
    decide (-2 ≤ t.i2) && decide (-2 ≤ t.j2)

theorem dTerms_ok : dTerms.all LT.ok2 = true := by decide +kernel

theorem pow_shift2 {a : ℂ} (ha : a ≠ 0) {i : ℤ} (hi : -2 ≤ i) : a ^ (i + 2).toNat = a ^ i * a ^ 2 := by
  rw [← zpow_natCast, Int.toNat_of_nonneg (by omega), zpow_add₀ ha]; norm_cast

theorem termCircD_eval {x y : Fin 3 → ℂ} (hx : ∀ j, x j ≠ 0) (hy : ∀ j, y j ≠ 0) {t : LT}
    (ht : t.ok2 = true) :
    (termCircD t).eval (ρ6 x y) = termVal x y t * (uS x * uS y) ^ 2 := by
  simp only [LT.ok2, Bool.and_eq_true, decide_eq_true_eq] at ht
  obtain ⟨⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩, h6⟩ := ht
  simp only [termCircD, Circ.eval_mul', Circ.eval_pow', Circ.eval_const, eval_vx, eval_vy, termVal, uS]
  rw [pow_shift2 (hx 0) h1, pow_shift2 (hy 0) h2, pow_shift2 (hx 1) h3, pow_shift2 (hy 1) h4,
    pow_shift2 (hx 2) h5, pow_shift2 (hy 2) h6]
  ring

theorem cDR_eval {x y : Fin 3 → ℂ} (hx : ∀ j, x j ≠ 0) (hy : ∀ j, y j ≠ 0) :
    cDR.eval (ρ6 x y) = (dTerms.map (termVal x y)).sum * (uS x * uS y) ^ 2 := by
  have key : ∀ L : List LT, L.all LT.ok2 = true →
      (L.foldr (fun t acc => termCircD t + acc) 0).eval (ρ6 x y) =
        (L.map (termVal x y)).sum * (uS x * uS y) ^ 2 := by
    intro L hL
    induction L with
    | nil => simp
    | cons t L ih =>
      simp only [List.all_cons, Bool.and_eq_true] at hL
      simp only [List.foldr_cons, Circ.eval_add', List.map_cons, List.sum_cons]
      rw [termCircD_eval hx hy hL.1, ih hL.2]; ring
  exact key dTerms dTerms_ok

theorem cDL_eval {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) :
    cDL.eval (ρ6 x y) = cornerD x y * (uS x * uS y) ^ 2 := by
  have cx : ∀ j, conj (x j) = (x j)⁻¹ := fun j => conj_eq_inv (hx j)
  have cy : ∀ j, conj (y j) = (y j)⁻¹ := fun j => conj_eq_inv (hy j)
  have n0 := ne_zero_of_normSq (hx 0); have n1 := ne_zero_of_normSq (hx 1)
  have n2 := ne_zero_of_normSq (hx 2); have m0 := ne_zero_of_normSq (hy 0)
  have m1 := ne_zero_of_normSq (hy 1); have m2 := ne_zero_of_normSq (hy 2)
  simp only [cDL, cPit, cHt, cPi, cH, cUV, xo0, xo1, xo2, yo0, yo1, yo2, Circ.eval_sub', Circ.eval_add',
    Circ.eval_mul', Circ.eval_pow', eval_vx, eval_vy]
  simp only [cornerD, TS, piS, hS, uS, map_neg, map_mul, map_pow, map_add, map_sub, cx, cy,
    map_inv₀, inv_inv]
  field_simp
  ring

/-- **The signed corner value as a Laurent polynomial.** -/
theorem cornerD_expand {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) :
    cornerD x y = (dTerms.map (termVal x y)).sum := by
  have e := Circ.eval_eq_zero_of_validR dExpansion_valid (ρ6 x y)
  rw [Circ.eval_sub', cDL_eval hx hy,
    cDR_eval (fun j => ne_zero_of_normSq (hx j)) (fun j => ne_zero_of_normSq (hy j))] at e
  have hne : (uS x * uS y) ^ 2 ≠ 0 := by
    simp only [uS]
    have n0 := ne_zero_of_normSq (hx 0); have n1 := ne_zero_of_normSq (hx 1)
    have n2 := ne_zero_of_normSq (hx 2); have m0 := ne_zero_of_normSq (hy 0)
    have m1 := ne_zero_of_normSq (hy 1); have m2 := ne_zero_of_normSq (hy 2)
    positivity
  exact mul_right_cancel₀ hne (sub_eq_zero.1 e)

/-! ### The weight -/

/-- The term with the exponent pair of column `a`, `b` or `c` shifted by `(1, 1)`. -/
def LT.sh0 (t : LT) : LT := ⟨t.c, t.i0 + 1, t.j0 + 1, t.i1, t.j1, t.i2, t.j2⟩
def LT.sh1 (t : LT) : LT := ⟨t.c, t.i0, t.j0, t.i1 + 1, t.j1 + 1, t.i2, t.j2⟩
def LT.sh2 (t : LT) : LT := ⟨t.c, t.i0, t.j0, t.i1, t.j1, t.i2 + 1, t.j2 + 1⟩

theorem termVal_weight {x y : Fin 3 → ℂ} (hx : ∀ j, x j ≠ 0) (hy : ∀ j, y j ≠ 0) (t : LT) :
    (x 0 * y 0 + x 1 * y 1 + x 2 * y 2) * termVal x y t =
      termVal x y t.sh0 + termVal x y t.sh1 + termVal x y t.sh2 := by
  simp only [termVal, LT.sh0, LT.sh1, LT.sh2, zpow_add_one₀ (hx _), zpow_add_one₀ (hy _)]
  ring

/-- The moment product of a term. -/
def termMom (M : ℤ × ℤ → ℂ) (t : LT) : ℂ := t.c * M (t.i0, t.j0) * M (t.i1, t.j1) * M (t.i2, t.j2)

theorem sum_terms_weight (xs ys : Fin 6 → ℂ) (hx : ∀ a, xs a ≠ 0) (hy : ∀ a, ys a ≠ 0) (L : List LT) :
    ∑ a, ∑ b, ∑ c, (xs a * ys a + xs b * ys b + xs c * ys c) *
        (L.map (termVal ![xs a, xs b, xs c] ![ys a, ys b, ys c])).sum =
      (L.map fun t => termMom (momentOf xs ys) t.sh0 + termMom (momentOf xs ys) t.sh1 +
        termMom (momentOf xs ys) t.sh2).sum := by
  induction L with
  | nil => simp
  | cons t L ih =>
    simp only [List.map_cons, List.sum_cons, mul_add, Finset.sum_add_distrib, ih]
    congr 1
    have e : ∀ a b c, (xs a * ys a + xs b * ys b + xs c * ys c) *
        termVal ![xs a, xs b, xs c] ![ys a, ys b, ys c] t =
        termVal ![xs a, xs b, xs c] ![ys a, ys b, ys c] t.sh0 +
          termVal ![xs a, xs b, xs c] ![ys a, ys b, ys c] t.sh1 +
          termVal ![xs a, xs b, xs c] ![ys a, ys b, ys c] t.sh2 := by
      intro a b c
      have := termVal_weight (x := ![xs a, xs b, xs c]) (y := ![ys a, ys b, ys c])
        (fun j => by fin_cases j <;> simp [hx]) (fun j => by fin_cases j <;> simp [hy]) t
      simpa using this
    simp only [e, Finset.sum_add_distrib, sum_term, termMom]

set_option maxRecDepth 20000 in
/-- **Regrouping (3).** -/
theorem dTerms_eq (M : ℤ × ℤ → ℂ) (h10 : M (1, 0) = 0) (h01 : M (0, 1) = 0)
    (hm10 : M (-1, 0) = 0) (h0m1 : M (0, -1) = 0) (h1m1 : M (1, -1) = 0) (hm11 : M (-1, 1) = 0) :
    (dTerms.map (termMom M)).sum = 6 * signedPoly M := by
  rw [dTerms]
  simp only [List.map_cons, List.map_nil, List.sum_cons, List.sum_nil, termMom]
  simp only [h10, h01, hm10, h0m1, h1m1, hm11, signedPoly]
  ring

set_option maxRecDepth 20000 in
/-- **Regrouping (4).** -/
theorem dTerms_weight_eq (M : ℤ × ℤ → ℂ) (h10 : M (1, 0) = 0) (h01 : M (0, 1) = 0)
    (hm10 : M (-1, 0) = 0) (h0m1 : M (0, -1) = 0) (h1m1 : M (1, -1) = 0) (hm11 : M (-1, 1) = 0)
    (h00 : M (0, 0) = 6) :
    (dTerms.map fun t => termMom M t.sh0 + termMom M t.sh1 + termMom M t.sh2).sum =
      6 * weightedPoly M := by
  rw [dTerms]
  simp only [List.map_cons, List.map_nil, List.sum_cons, List.sum_nil, termMom, LT.sh0, LT.sh1, LT.sh2]
  norm_num only
  simp only [h10, h01, hm10, h0m1, h1m1, hm11, h00, weightedPoly]
  ring

/-! ### The strip -/

section Strip

variable {H : Mat6} (hH : Hadamard6.IsHadamard H)
include hH

/-- The orthogonality moments of the top strip. -/
theorem strip_orth :
    momentOf (xsH H) (ysH H) (1, 0) = 0 ∧ momentOf (xsH H) (ysH H) (0, 1) = 0 ∧
      momentOf (xsH H) (ysH H) (-1, 0) = 0 ∧ momentOf (xsH H) (ysH H) (0, -1) = 0 ∧
      momentOf (xsH H) (ysH H) (1, -1) = 0 ∧ momentOf (xsH H) (ysH H) (-1, 1) = 0 ∧
      momentOf (xsH H) (ysH H) (0, 0) = 6 := by
  set xs := xsH H
  set ys := ysH H
  have hx : ∀ u, Complex.normSq (xs u) = 1 := xsH_unit hH
  have hy : ∀ u, Complex.normSq (ys u) = 1 := ysH_unit hH
  have cx : ∀ u, (xs u)⁻¹ = conj (xs u) := fun u => (conj_eq_inv (hx u)).symm
  have cy : ∀ u, (ys u)⁻¹ = conj (ys u) := fun u => (conj_eq_inv (hy u)).symm
  have horth : ∀ a b : Fin 3, a ≠ b →
      ∑ u : Fin 6, H (Sum.inl a) (e6.symm u) * conj (H (Sum.inl b) (e6.symm u)) = 0 := by
    intro a b hab
    rw [sum_e6 (fun j => H (Sum.inl a) j * conj (H (Sum.inl b) j))]
    exact row_orth hH (fun h => hab (Sum.inl_injective h))
  have u0 : ∀ u, H (Sum.inl 0) (e6.symm u) * conj (H (Sum.inl 0) (e6.symm u)) = 1 := by
    intro u; rw [Complex.mul_conj, hH.1]; simp
  have s10 : ∑ u, xs u = 0 := horth 1 0 (by decide)
  have s01 : ∑ u, ys u = 0 := horth 2 0 (by decide)
  have mm11 : momentOf xs ys (-1, 1) = 0 := by
    simp only [momentOf, _root_.zpow_neg_one, zpow_one, cx]
    have : ∀ u, conj (xs u) * ys u =
        H (Sum.inl 2) (e6.symm u) * conj (H (Sum.inl 1) (e6.symm u)) := by
      intro u
      simp only [xs, ys, xsH, ysH, map_mul, Complex.conj_conj]
      linear_combination (H (Sum.inl 2) (e6.symm u) * conj (H (Sum.inl 1) (e6.symm u))) * u0 u
    simp only [this]; exact horth 2 1 (by decide)
  refine ⟨?_, ?_, ?_, ?_, ?_, mm11, by simp [momentOf]⟩
  · simp only [momentOf, zpow_one, zpow_zero, mul_one]; exact s10
  · simp only [momentOf, zpow_one, zpow_zero, one_mul]; exact s01
  · simp only [momentOf, _root_.zpow_neg_one, zpow_zero, mul_one, cx]
    rw [← map_sum, s10, map_zero]
  · simp only [momentOf, _root_.zpow_neg_one, zpow_zero, one_mul, cy]
    rw [← map_sum, s01, map_zero]
  · have e2 : momentOf xs ys (1, -1) = conj (momentOf xs ys (-1, 1)) := by
      simp only [momentOf, _root_.zpow_neg_one, zpow_one, map_sum, map_mul, cx, cy, Complex.conj_conj]
    rw [e2, mm11, map_zero]

/-- **(3) and (4) vanish** on a strip whose top corners are all critical. -/
theorem signed_zero (hcrit : ∀ l : Fin 20, (Step2.sideSignature (triBlock H 0 l)).im = 0) :
    signedPoly (momentOf (xsH H) (ysH H)) = 0 ∧ weightedPoly (momentOf (xsH H) (ysH H)) = 0 := by
  set xs := xsH H
  set ys := ysH H
  have hx : ∀ u, Complex.normSq (xs u) = 1 := xsH_unit hH
  have hy : ∀ u, Complex.normSq (ys u) = 1 := ysH_unit hH
  have nx : ∀ u, xs u ≠ 0 := fun u => ne_zero_of_normSq (hx u)
  have ny : ∀ u, ys u ≠ 0 := fun u => ne_zero_of_normSq (hy u)
  obtain ⟨m10, m01, mm10, m0m1, m1m1, mm11, m00⟩ := strip_orth hH
  set f : Fin 6 → Fin 6 → Fin 6 → ℂ := fun a b c => cornerD ![xs a, xs b, xs c] ![ys a, ys b, ys c]
    with hf
  set g : Fin 6 → Fin 6 → Fin 6 → ℂ := fun a b c =>
    (xs a * ys a + xs b * ys b + xs c * ys c) * f a b c with hg
  -- every corner is critical
  have hcorner : ∀ l : Fin 20, f (tri l 0) (tri l 1) (tri l 2) = 0 := by
    intro l; simp only [hf]; apply cornerD_eq_zero; rw [← sig_triBlock hH]; exact hcrit l
  have hf0 : ∑ a, ∑ b, ∑ c, f a b c = 0 := by
    have h := ordered_sum f (fun a b c => ?_) (fun a b c => ?_) (fun a c => ?_) (fun a b => ?_)
    · rw [h, ← sum_tri f]; simp [hcorner]
    · simp only [hf, cornerD, TS_swap01]
    · simp only [hf, cornerD, TS_swap12]
    · simp only [hf, cornerD, TS_rep01, map_zero, sub_zero]
    · simp only [hf, cornerD, TS_rep12, map_zero, sub_zero]
  have hg0 : ∑ a, ∑ b, ∑ c, g a b c = 0 := by
    have h := ordered_sum g (fun a b c => ?_) (fun a b c => ?_) (fun a c => ?_) (fun a b => ?_)
    · rw [h, ← sum_tri g]; simp [hg, hcorner]
    · simp only [hg, hf, cornerD, TS_swap01]; ring
    · simp only [hg, hf, cornerD, TS_swap12]; ring
    · simp only [hg, hf, cornerD, TS_rep01, map_zero, sub_zero, mul_zero]
    · simp only [hg, hf, cornerD, TS_rep12, map_zero, sub_zero, mul_zero]
  have e : ∀ a b c, f a b c = (dTerms.map (termVal ![xs a, xs b, xs c] ![ys a, ys b, ys c])).sum := by
    intro a b c
    refine cornerD_expand (fun j => ?_) (fun j => ?_) <;> fin_cases j <;> simp [hx, hy]
  have h6 : (6 : ℂ) ≠ 0 := by norm_num
  constructor
  · simp only [e] at hf0
    rw [sum_terms] at hf0
    have := dTerms_eq _ m10 m01 mm10 m0m1 m1m1 mm11
    rw [show (dTerms.map fun t => t.c * momentOf xs ys (t.i0, t.j0) * momentOf xs ys (t.i1, t.j1) *
      momentOf xs ys (t.i2, t.j2)) = dTerms.map (termMom (momentOf xs ys)) from rfl, this] at hf0
    exact (mul_eq_zero.1 hf0).resolve_left h6
  · simp only [hg, e] at hg0
    rw [sum_terms_weight xs ys nx ny] at hg0
    rw [dTerms_weight_eq _ m10 m01 mm10 m0m1 m1m1 mm11 m00] at hg0
    exact (mul_eq_zero.1 hg0).resolve_left h6

end Strip

end NoFourMUBs.PRM.Coverage.StripMoments
