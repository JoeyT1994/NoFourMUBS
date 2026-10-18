import NoFourMUBs.PRM.CoverageStripBlock
import NoFourMUBs.PRM.CoverageStripMomentData
import NoFourMUBs.Identity.Fast

/-!
# The whole-strip square sum as a moment polynomial (`CRITICAL_STRIP_CLASSIFICATION.md` §1)

For the top three rows of a Hadamard matrix, dephased by row `0` (`xs u = H₁ᵤ H̄₀ᵤ`, `ys u = H₂ᵤ H̄₀ᵤ`),
with the whole-strip moments `M(i, j) = Σ_u xsᵤ^i ysᵤ^j` (`momentOf`):

  `S = Σ_corners 4 (Im Ψ)² = momentPoly M`  (`stripSq_eq_momentPoly`),

the 66-monomial polynomial of the paper (`critical_moment_core.squared_corner_moment_coefficients`,
regenerated and cross-checked by `lean/generators/strip/moments.py`).

* `cornerSq_expand`: the corner square `−(T − T̄)²` of a unit side `(1; x; y)` is the 817-term Laurent
  polynomial `gTerms`; after clearing `(x₀x₁x₂y₀y₁y₂)⁴` this is a polynomial identity in six variables,
  checked by the kernel (`expansion_valid`, `Circ.validR`).
* `ordered_sum`: the sum over the twenty corners is `1/6` of the sum over ordered column triples (the
  corner square is symmetric and vanishes on repeated columns).
* summing each Laurent term over ordered triples gives a product of three moments (`sum_terms`); the
  orthogonality moments `M(±1, 0)`, `M(0, ±1)`, `M(1, −1)`, `M(−1, 1)` vanish and `M(0, 0) = 6`, which
  leaves `momentPoly` (`terms_eq_momentPoly`, by `ring`).
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripMoments

open NoFourMUBs.Kronecker Side

/-! ### The corner square -/

/-- `−(T − T̄)²` for the signature `T` of the side `(1; x; y)`. -/
def cornerSq (x y : Fin 3 → ℂ) : ℂ := -(TS x y - conj (TS x y)) ^ 2

theorem cornerSq_eq_im (x y : Fin 3 → ℂ) : cornerSq x y = ((4 * (TS x y).im ^ 2 : ℝ) : ℂ) := by
  rw [cornerSq, Complex.sub_conj]; push_cast
  linear_combination (-4 * ((TS x y).im : ℂ) ^ 2) * Complex.I_sq

/-- The value of a Laurent term at the columns `(x₀, y₀), (x₁, y₁), (x₂, y₂)`. -/
def termVal (x y : Fin 3 → ℂ) (t : LT) : ℂ :=
  t.c * (x 0 ^ t.i0 * y 0 ^ t.j0) * (x 1 ^ t.i1 * y 1 ^ t.j1) * (x 2 ^ t.i2 * y 2 ^ t.j2)

/-! ### The kernel-checked expansion -/

abbrev V6 := Circ 6

def vx (i : Fin 3) : V6 := Circ.var ⟨i.val, by omega⟩
def vy (i : Fin 3) : V6 := Circ.var ⟨i.val + 3, by omega⟩

def cPi : V6 := vx 0 * vy 1 + vx 0 * vy 2 + vx 1 * vy 0 + vx 1 * vy 2 + vx 2 * vy 0 + vx 2 * vy 1
def cH : V6 := vx 1 * vy 2 - vx 2 * vy 1 - vx 0 * vy 2 + vx 2 * vy 0 + vx 0 * vy 1 - vx 1 * vy 0
def cUV : V6 := vx 0 * vx 1 * vx 2 * (vy 0 * vy 1 * vy 2)
def xo0 : V6 := vx 1 * vx 2
def xo1 : V6 := vx 0 * vx 2
def xo2 : V6 := vx 0 * vx 1
def yo0 : V6 := vy 1 * vy 2
def yo1 : V6 := vy 0 * vy 2
def yo2 : V6 := vy 0 * vy 1
/-- `uv · π(1/x, 1/y)`. -/
def cPit : V6 := xo0 * yo1 + xo0 * yo2 + xo1 * yo0 + xo1 * yo2 + xo2 * yo0 + xo2 * yo1
/-- `uv · h(1/x, 1/y)`. -/
def cHt : V6 := xo1 * yo2 - xo2 * yo1 - xo0 * yo2 + xo2 * yo0 + xo0 * yo1 - xo1 * yo0
/-- `(uv)⁴ · (−(T − T̄)²) = −(π̃ h̃² − π h² uv)²`. -/
def cLhs : V6 := -(cPit * cHt ^ 2 - cPi * cH ^ 2 * cUV) ^ 2

def termCirc (t : LT) : V6 :=
  Circ.const t.c * (vx 0 ^ (t.i0 + 4).toNat * vy 0 ^ (t.j0 + 4).toNat) *
    (vx 1 ^ (t.i1 + 4).toNat * vy 1 ^ (t.j1 + 4).toNat) *
    (vx 2 ^ (t.i2 + 4).toNat * vy 2 ^ (t.j2 + 4).toNat)

def cRhs : V6 := gTerms.foldr (fun t acc => termCirc t + acc) 0

set_option maxRecDepth 100000 in
/-- **The corner-square expansion**, checked by the kernel. -/
theorem expansion_valid : (cLhs - cRhs).validR 3 = true := by decide +kernel

/-- All exponents of `gTerms` are `≥ −4`. -/
def LT.ok (t : LT) : Bool :=
  decide (-4 ≤ t.i0) && decide (-4 ≤ t.j0) && decide (-4 ≤ t.i1) && decide (-4 ≤ t.j1) &&
    decide (-4 ≤ t.i2) && decide (-4 ≤ t.j2)

theorem gTerms_ok : gTerms.all LT.ok = true := by decide +kernel

/-! ### Evaluation -/

def ρ6 (x y : Fin 3 → ℂ) : Fin 6 → ℂ := fun k =>
  if h : k.val < 3 then x ⟨k.val, h⟩ else y ⟨k.val - 3, by omega⟩

@[simp] theorem eval_vx (x y : Fin 3 → ℂ) (i : Fin 3) : (vx i).eval (ρ6 x y) = x i := by
  simp [vx, ρ6]

@[simp] theorem eval_vy (x y : Fin 3 → ℂ) (i : Fin 3) : (vy i).eval (ρ6 x y) = y i := by
  simp [vy, ρ6]

theorem pow_shift {a : ℂ} (ha : a ≠ 0) {i : ℤ} (hi : -4 ≤ i) : a ^ (i + 4).toNat = a ^ i * a ^ 4 := by
  rw [← zpow_natCast, Int.toNat_of_nonneg (by omega), zpow_add₀ ha]; norm_cast

theorem termCirc_eval {x y : Fin 3 → ℂ} (hx : ∀ j, x j ≠ 0) (hy : ∀ j, y j ≠ 0) {t : LT}
    (ht : t.ok = true) :
    (termCirc t).eval (ρ6 x y) = termVal x y t * (uS x * uS y) ^ 4 := by
  simp only [LT.ok, Bool.and_eq_true, decide_eq_true_eq] at ht
  obtain ⟨⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩, h6⟩ := ht
  simp only [termCirc, Circ.eval_mul', Circ.eval_pow', Circ.eval_const, eval_vx, eval_vy, termVal, uS]
  rw [pow_shift (hx 0) h1, pow_shift (hy 0) h2, pow_shift (hx 1) h3, pow_shift (hy 1) h4,
    pow_shift (hx 2) h5, pow_shift (hy 2) h6]
  ring

theorem cRhs_eval {x y : Fin 3 → ℂ} (hx : ∀ j, x j ≠ 0) (hy : ∀ j, y j ≠ 0) :
    cRhs.eval (ρ6 x y) = (gTerms.map (termVal x y)).sum * (uS x * uS y) ^ 4 := by
  have key : ∀ L : List LT, L.all LT.ok = true →
      (L.foldr (fun t acc => termCirc t + acc) 0).eval (ρ6 x y) =
        (L.map (termVal x y)).sum * (uS x * uS y) ^ 4 := by
    intro L hL
    induction L with
    | nil => simp
    | cons t L ih =>
      simp only [List.all_cons, Bool.and_eq_true] at hL
      simp only [List.foldr_cons, Circ.eval_add', List.map_cons, List.sum_cons]
      rw [termCirc_eval hx hy hL.1, ih hL.2]; ring
  exact key gTerms gTerms_ok

theorem cLhs_eval {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) :
    cLhs.eval (ρ6 x y) = cornerSq x y * (uS x * uS y) ^ 4 := by
  have cx : ∀ j, conj (x j) = (x j)⁻¹ := fun j => conj_eq_inv (hx j)
  have cy : ∀ j, conj (y j) = (y j)⁻¹ := fun j => conj_eq_inv (hy j)
  have n0 := ne_zero_of_normSq (hx 0); have n1 := ne_zero_of_normSq (hx 1)
  have n2 := ne_zero_of_normSq (hx 2); have m0 := ne_zero_of_normSq (hy 0)
  have m1 := ne_zero_of_normSq (hy 1); have m2 := ne_zero_of_normSq (hy 2)
  simp only [cLhs, cPit, cHt, cPi, cH, cUV, xo0, xo1, xo2, yo0, yo1, yo2, Circ.eval_neg',
    Circ.eval_sub', Circ.eval_add', Circ.eval_mul', Circ.eval_pow', eval_vx, eval_vy]
  simp only [cornerSq, TS, piS, hS, uS, map_neg, map_mul, map_pow, map_add, map_sub, cx, cy,
    map_inv₀, inv_inv]
  field_simp
  ring

/-- **The corner square as a Laurent polynomial.** -/
theorem cornerSq_expand {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) :
    cornerSq x y = (gTerms.map (termVal x y)).sum := by
  have e := Circ.eval_eq_zero_of_validR expansion_valid (ρ6 x y)
  rw [Circ.eval_sub', cLhs_eval hx hy,
    cRhs_eval (fun j => ne_zero_of_normSq (hx j)) (fun j => ne_zero_of_normSq (hy j))] at e
  have hne : (uS x * uS y) ^ 4 ≠ 0 := by
    simp only [uS]
    have n0 := ne_zero_of_normSq (hx 0); have n1 := ne_zero_of_normSq (hx 1)
    have n2 := ne_zero_of_normSq (hx 2); have m0 := ne_zero_of_normSq (hy 0)
    have m1 := ne_zero_of_normSq (hy 1); have m2 := ne_zero_of_normSq (hy 2)
    positivity
  exact mul_right_cancel₀ hne (sub_eq_zero.1 e)

/-! ### Summing over ordered triples -/

/-- The whole-strip moments. -/
def momentOf (xs ys : Fin 6 → ℂ) (p : ℤ × ℤ) : ℂ := ∑ a, xs a ^ p.1 * ys a ^ p.2

theorem triple_prod (f g h : Fin 6 → ℂ) :
    (∑ a, f a) * (∑ b, g b) * (∑ c, h c) = ∑ a, ∑ b, ∑ c, f a * g b * h c := by
  rw [Finset.sum_mul_sum, Finset.sum_mul]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [Finset.sum_mul]
  refine Finset.sum_congr rfl fun b _ => ?_
  rw [Finset.mul_sum]

theorem sum_term (xs ys : Fin 6 → ℂ) (t : LT) :
    ∑ a, ∑ b, ∑ c, termVal ![xs a, xs b, xs c] ![ys a, ys b, ys c] t =
      t.c * momentOf xs ys (t.i0, t.j0) * momentOf xs ys (t.i1, t.j1) * momentOf xs ys (t.i2, t.j2) := by
  rw [mul_assoc, mul_assoc, ← mul_assoc (momentOf xs ys (t.i0, t.j0)), momentOf, momentOf, momentOf,
    triple_prod, Finset.mul_sum]
  refine Finset.sum_congr rfl fun a _ => ?_
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun b _ => ?_
  rw [Finset.mul_sum]
  refine Finset.sum_congr rfl fun c _ => ?_
  simp only [termVal, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
    Matrix.head_cons, Matrix.tail_cons]
  ring

theorem sum_terms (xs ys : Fin 6 → ℂ) (L : List LT) :
    ∑ a, ∑ b, ∑ c, (L.map (termVal ![xs a, xs b, xs c] ![ys a, ys b, ys c])).sum =
      (L.map fun t => t.c * momentOf xs ys (t.i0, t.j0) * momentOf xs ys (t.i1, t.j1) *
        momentOf xs ys (t.i2, t.j2)).sum := by
  induction L with
  | nil => simp
  | cons t L ih =>
    simp only [List.map_cons, List.sum_cons, Finset.sum_add_distrib, ih, sum_term]

set_option maxRecDepth 200000 in
/-- **Regrouping into the 66 moment monomials.** -/
theorem terms_eq_momentPoly (M : ℤ × ℤ → ℂ) (h10 : M (1, 0) = 0) (h01 : M (0, 1) = 0)
    (hm10 : M (-1, 0) = 0) (h0m1 : M (0, -1) = 0) (h1m1 : M (1, -1) = 0) (hm11 : M (-1, 1) = 0)
    (h00 : M (0, 0) = 6) :
    (gTerms.map fun t => t.c * M (t.i0, t.j0) * M (t.i1, t.j1) * M (t.i2, t.j2)).sum =
      6 * momentPoly M := by
  rw [gTerms]
  simp only [List.map_cons, List.map_nil, List.sum_cons, List.sum_nil]
  simp only [h10, h01, hm10, h0m1, h1m1, hm11, h00, momentPoly]
  ring

/-! ### The strip -/

/-- Dephased rows of the top strip: `xs u = H₁ᵤ H̄₀ᵤ`, `ys u = H₂ᵤ H̄₀ᵤ` (columns in `Fin 6` order). -/
def xsH (H : Mat6) (u : Fin 6) : ℂ := H (Sum.inl 1) (e6.symm u) * conj (H (Sum.inl 0) (e6.symm u))
def ysH (H : Mat6) (u : Fin 6) : ℂ := H (Sum.inl 2) (e6.symm u) * conj (H (Sum.inl 0) (e6.symm u))

theorem TS_swap01 (a b c d e f : ℂ) : TS ![b, a, c] ![e, d, f] = TS ![a, b, c] ![d, e, f] := by
  simp only [TS, piS, hS, uS, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
    Matrix.head_cons, Matrix.tail_cons]
  ring

theorem TS_swap12 (a b c d e f : ℂ) : TS ![a, c, b] ![d, f, e] = TS ![a, b, c] ![d, e, f] := by
  simp only [TS, piS, hS, uS, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
    Matrix.head_cons, Matrix.tail_cons]
  ring

theorem TS_rep01 (a c d f : ℂ) : TS ![a, a, c] ![d, d, f] = 0 := by
  simp only [TS, piS, hS, uS, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
    Matrix.head_cons, Matrix.tail_cons]
  ring

theorem TS_rep12 (a b d e : ℂ) : TS ![a, b, b] ![d, e, e] = 0 := by
  simp only [TS, piS, hS, uS, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two,
    Matrix.head_cons, Matrix.tail_cons]
  ring

theorem sum_tri (g : Fin 6 → Fin 6 → Fin 6 → ℂ) :
    ∑ l : Fin 20, g (tri l 0) (tri l 1) (tri l 2) =
      g 0 1 2 + g 0 1 3 + g 0 1 4 + g 0 1 5 + g 0 2 3 + g 0 2 4 + g 0 2 5 + g 0 3 4 + g 0 3 5 +
        g 0 4 5 + g 1 2 3 + g 1 2 4 + g 1 2 5 + g 1 3 4 + g 1 3 5 + g 1 4 5 + g 2 3 4 + g 2 3 5 +
        g 2 4 5 + g 3 4 5 := by
  simp only [Fin.sum_univ_succ, Fin.sum_univ_zero]
  simp [tri]
  ring

section Strip

variable {H : Mat6} (hH : Hadamard6.IsHadamard H)
include hH

theorem sig_triBlock (l : Fin 20) :
    Step2.sideSignature (triBlock H 0 l) =
      TS ![xsH H (tri l 0), xsH H (tri l 1), xsH H (tri l 2)]
        ![ysH H (tri l 0), ysH H (tri l 1), ysH H (tri l 2)] := by
  have hB := triBlock_unit hH 0 l
  rw [← dephase_sig hB, Step2.sig_rows _ (dephase_row0 hB)]
  congr 1 <;> funext i <;> fin_cases i <;> simp [dephase, triBlock, xsH, ysH, tri0_row]

theorem xsH_unit (u : Fin 6) : Complex.normSq (xsH H u) = 1 := by
  rw [xsH, Complex.normSq_mul, Complex.normSq_conj, hH.1, hH.1, mul_one]

theorem ysH_unit (u : Fin 6) : Complex.normSq (ysH H u) = 1 := by
  rw [ysH, Complex.normSq_mul, Complex.normSq_conj, hH.1, hH.1, mul_one]

omit hH in
theorem sum_e6 (g : I6 → ℂ) : ∑ u : Fin 6, g (e6.symm u) = ∑ j : I6, g j := Equiv.sum_comp e6.symm g

/-- **The whole-strip square sum is the 66-monomial moment polynomial.** -/
theorem stripSq_eq_momentPoly :
    (stripSq H : ℂ) = momentPoly (momentOf (xsH H) (ysH H)) := by
  set xs := xsH H
  set ys := ysH H
  have hx : ∀ u, Complex.normSq (xs u) = 1 := xsH_unit hH
  have hy : ∀ u, Complex.normSq (ys u) = 1 := ysH_unit hH
  have cx : ∀ u, (xs u)⁻¹ = conj (xs u) := fun u => (conj_eq_inv (hx u)).symm
  have cy : ∀ u, (ys u)⁻¹ = conj (ys u) := fun u => (conj_eq_inv (hy u)).symm
  set f : Fin 6 → Fin 6 → Fin 6 → ℂ := fun a b c => cornerSq ![xs a, xs b, xs c] ![ys a, ys b, ys c]
    with hf
  -- the twenty corners
  have h1 : (stripSq H : ℂ) = ∑ l : Fin 20, f (tri l 0) (tri l 1) (tri l 2) := by
    simp only [stripSq, Complex.ofReal_sum, hf]
    refine Finset.sum_congr rfl fun l _ => ?_
    rw [cornerSq_eq_im, sig_triBlock hH]
  -- ordered triples
  have h2 : ∑ a, ∑ b, ∑ c, f a b c = 6 * ∑ l : Fin 20, f (tri l 0) (tri l 1) (tri l 2) := by
    rw [sum_tri f]
    refine ordered_sum f (fun a b c => ?_) (fun a b c => ?_) (fun a c => ?_) (fun a b => ?_)
    · simp only [hf, cornerSq, TS_swap01]
    · simp only [hf, cornerSq, TS_swap12]
    · simp only [hf, cornerSq, TS_rep01, map_zero, sub_zero]; ring
    · simp only [hf, cornerSq, TS_rep12, map_zero, sub_zero]; ring
  -- Laurent expansion and moments
  have h3 : ∑ a, ∑ b, ∑ c, f a b c = 6 * momentPoly (momentOf xs ys) := by
    have e : ∀ a b c, f a b c = (gTerms.map (termVal ![xs a, xs b, xs c] ![ys a, ys b, ys c])).sum := by
      intro a b c
      refine cornerSq_expand (fun j => ?_) (fun j => ?_) <;> fin_cases j <;> simp [hx, hy]
    simp only [e]
    rw [sum_terms]
    have horth : ∀ a b : Fin 3, a ≠ b →
        ∑ u : Fin 6, H (Sum.inl a) (e6.symm u) * conj (H (Sum.inl b) (e6.symm u)) = 0 := by
      intro a b hab
      rw [sum_e6 (fun j => H (Sum.inl a) j * conj (H (Sum.inl b) j))]
      exact row_orth hH (fun h => hab (Sum.inl_injective h))
    have u0 : ∀ u, H (Sum.inl 0) (e6.symm u) * conj (H (Sum.inl 0) (e6.symm u)) = 1 := by
      intro u; rw [Complex.mul_conj, hH.1]; simp
    have s10 : ∑ u, xs u = 0 := horth 1 0 (by decide)
    have s01 : ∑ u, ys u = 0 := horth 2 0 (by decide)
    have m10 : momentOf xs ys (1, 0) = 0 := by
      simp only [momentOf, zpow_one, zpow_zero, mul_one]; exact s10
    have m01 : momentOf xs ys (0, 1) = 0 := by
      simp only [momentOf, zpow_one, zpow_zero, one_mul]; exact s01
    have mm10 : momentOf xs ys (-1, 0) = 0 := by
      simp only [momentOf, _root_.zpow_neg_one, zpow_zero, mul_one, cx]
      rw [← map_sum, s10, map_zero]
    have m0m1 : momentOf xs ys (0, -1) = 0 := by
      simp only [momentOf, _root_.zpow_neg_one, zpow_zero, one_mul, cy]
      rw [← map_sum, s01, map_zero]
    have mm11 : momentOf xs ys (-1, 1) = 0 := by
      simp only [momentOf, _root_.zpow_neg_one, zpow_one, cx]
      have : ∀ u, conj (xs u) * ys u =
          H (Sum.inl 2) (e6.symm u) * conj (H (Sum.inl 1) (e6.symm u)) := by
        intro u
        simp only [xs, ys, xsH, ysH, map_mul, Complex.conj_conj]
        linear_combination (H (Sum.inl 2) (e6.symm u) * conj (H (Sum.inl 1) (e6.symm u))) * u0 u
      simp only [this]; exact horth 2 1 (by decide)
    have m1m1 : momentOf xs ys (1, -1) = 0 := by
      have e2 : momentOf xs ys (1, -1) = conj (momentOf xs ys (-1, 1)) := by
        simp only [momentOf, _root_.zpow_neg_one, zpow_one, map_sum, map_mul, cx, cy, Complex.conj_conj]
      rw [e2, mm11, map_zero]
    have m00 : momentOf xs ys (0, 0) = 6 := by simp [momentOf]
    exact terms_eq_momentPoly _ m10 m01 mm10 m0m1 m1m1 mm11 m00
  have h6 : (6 : ℂ) ≠ 0 := by norm_num
  apply mul_left_cancel₀ h6
  rw [← h3, h2, h1]

end Strip

end NoFourMUBs.PRM.Coverage.StripMoments
