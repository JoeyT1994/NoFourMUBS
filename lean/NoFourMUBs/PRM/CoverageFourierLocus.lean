import NoFourMUBs.PRM.CoverageCorners
import NoFourMUBs.PRM.FourierMatch

/-!
# The Fourier critical locus (`FOURIER_CRITICAL_LOCUS.md`, input I7 of `PRM.md` §1)

Let `K(x, y) = fourierCore ω x y = [[F, F], [F D, −F D]]`, `D = diag(1, x, y)`, `x, y` unit (this is
`N(z, w)` of `FOURIER_CRITICAL_LOCUS.md`).  **If `K(x, y)` is all-critical, it is equivalent to `F6`**
(`fourierCore_criticalLocus`); the same holds for its transpose (`fourierCore_transpose_criticalLocus`).

## Proof

1. *Four corner identities* (kernel-checked with the circuits of `FourierMatch`).  At the corners with
   rows `tri 1` and columns `tri 0, tri 3, tri 5, tri 9`,
   `Ψ − conj Ψ = ±3 (x ∓ y²)(x² ∓ y)(x y ∓ 1) / (x² y²)` (`Ψ` the side signature), with the four sign
   patterns `(−,−,−), (−,+,+), (+,−,+), (+,+,−)`.
2. *Algebra.*  If all four products vanish then `x = ε t²`, `y = δ t` with `ε, δ = ±1` and `t³ = 1`
   (`locus_points`): twelve points.  (The paper's form: `sin X = sin Y = sin T = 0`.)
3. *Equivalences.*  `K(x ω, y ω²)` is `K(x, y)` with its bottom rows cyclically shifted
   (`shift_eq`); so `K(ε t², δ t) ≃ K(ε, δ)`.  `K(ε, δ)` is `K(1, 1)` with columns `inl i, inr i`
   swapped where the sign is `−1`, and `K(1, 1)` is equivalent to `F6` (`Step2.family11_equiv_F6`).
   All witnesses are permutations with trivial phases (found by search, checked entrywise here).

Not used by `Final` (whose Fourier classes are covered by connectedness, `Step2.fourierClasses_subset`);
`FourierVanishing` uses it for the `F6` form of strict-corner coverage, `strictCorner_of_not_F6`.
-/

open Matrix Hadamard6 ComplexConjugate NoFourMUBs.Kronecker

noncomputable section

namespace NoFourMUBs.PRM.Coverage

open Circ

/-! ### Four corner identities -/

/-- `3 e (x − a y²)(x² − b y)(x y − c) / (x² y²)` as a fraction over the factor table `x, y`. -/
def locusTgt (a b c e : ℤ) : Frac CF :=
  ⟨const (3 * e) * (var 0 - const a * var 1 ^ 2) * (var 0 ^ 2 - const b * var 1) *
    (var 0 * var 1 - const c), ![2, 2]⟩

/-- `Ψ − conj Ψ − target` at the corner `(tri k, tri l)` of the core matrix. -/
def imQ (k l : Fin 20) (t : Frac CF) : Q :=
  sigQ (fun i j => ent (tri k i) (tri l j)) (fun i j => entc (tri k i) (tri l j)) -
    sigQ (fun i j => entc (tri k i) (tri l j)) (fun i j => ent (tri k i) (tri l j)) - QF.ofFrac t

/-- The kernel test that `imQ k l t` vanishes identically. -/
def okI (k l : Fin 20) (t : Frac CF) : Bool :=
  (imQ k l t).x0.num.validR 0 && (imQ k l t).x1.num.validR 0

set_option maxRecDepth 100000 in
theorem okI_0 : okI 1 0 (locusTgt 1 1 1 (-1)) = true := by decide +kernel
set_option maxRecDepth 100000 in
theorem okI_3 : okI 1 3 (locusTgt 1 (-1) (-1) 1) = true := by decide +kernel
set_option maxRecDepth 100000 in
theorem okI_5 : okI 1 5 (locusTgt (-1) 1 (-1) (-1)) = true := by decide +kernel
set_option maxRecDepth 100000 in
theorem okI_9 : okI 1 9 (locusTgt (-1) (-1) 1 1) = true := by decide +kernel

variable {ω x y : ℂ}

theorem locusTgt_val (a b c e : ℤ) :
    (locusTgt a b c e).val (ρ x y) =
      3 * e * (x - a * y ^ 2) * (x ^ 2 - b * y) * (x * y - c) / (x ^ 2 * y ^ 2) := by
  simp [locusTgt, Frac.val, Frac.dval, CF, ρ, Fin.prod_univ_two]

/-- Semantics of a checked corner identity. -/
theorem core_sig_sub_conj (hω : IsPrimitiveCubicPhase ω) (hx : Complex.normSq x = 1)
    (hy : Complex.normSq y = 1) {k l : Fin 20} {t : Frac CF} (h : okI k l t = true) :
    Step2.sideSignature (triBlock (fourierCore ω x y) k l) -
      conj (Step2.sideSignature (triBlock (fourierCore ω x y) k l)) = t.val (ρ x y) := by
  have hx0 : x ≠ 0 := fun h => by simp [h] at hx
  have hy0 : y ≠ 0 := fun h => by simp [h] at hy
  have hg := good hω.2 hx0 hy0
  have h0 : (imQ k l t).val (ρ x y) ω = 0 := by
    simp only [okI, Bool.and_eq_true] at h
    rw [QF.val, Frac.val_eq_zero_of_validR h.1, Frac.val_eq_zero_of_validR h.2]; ring
  rw [imQ, QF.val_sub hg, QF.val_sub hg, sigQ_val hg, sigQ_val hg, QF.val_ofFrac] at h0
  simp only [ent_val hω.2, entc_val hω hx hy] at h0
  rw [conj_sig_eq_sigE, sig_eq_sigE]
  simp only [triBlock, fourierCore, Matrix.of_apply, Equiv.apply_symm_apply]
  linear_combination h0

/-- At an all-critical core matrix each checked product vanishes. -/
theorem core_product_eq_zero (hω : IsPrimitiveCubicPhase ω) (hx : Complex.normSq x = 1)
    (hy : Complex.normSq y = 1) (hc : AllCritical (fourierCore ω x y)) {l : Fin 20} {a b c e : ℤ}
    (he : e ≠ 0) (h : okI 1 l (locusTgt a b c e) = true) :
    (x - a * y ^ 2) * (x ^ 2 - b * y) * (x * y - c) = 0 := by
  have hx0 : x ≠ 0 := fun h => by simp [h] at hx
  have hy0 : y ≠ 0 := fun h => by simp [h] at hy
  have h1 := core_sig_sub_conj hω hx hy h
  rw [Complex.sub_conj, hc.triBlock_im 1 l, locusTgt_val] at h1
  simp only [mul_zero, Complex.ofReal_zero, zero_mul] at h1
  have he' : (3 * e : ℂ) ≠ 0 := by exact_mod_cast mul_ne_zero (by norm_num) he
  have hd : (x ^ 2 * y ^ 2 : ℂ) ≠ 0 := by positivity
  rcases div_eq_zero_iff.1 h1.symm with h2 | h2
  · have : (3 * e : ℂ) * ((x - a * y ^ 2) * (x ^ 2 - b * y) * (x * y - c)) = 0 := by
      linear_combination h2
    exact (mul_eq_zero.1 this).resolve_left he'
  · exact absurd h2 hd

/-! ### The twelve points -/

theorem locus_points {x y : ℂ} (hy : y ≠ 0)
    (h1 : (x - y ^ 2) * (x ^ 2 - y) * (x * y - 1) = 0)
    (h2 : (x - y ^ 2) * (x ^ 2 + y) * (x * y + 1) = 0)
    (h3 : (x + y ^ 2) * (x ^ 2 - y) * (x * y + 1) = 0)
    (h4 : (x + y ^ 2) * (x ^ 2 + y) * (x * y - 1) = 0) :
    ∃ ε δ : ℂ, (ε = 1 ∨ ε = -1) ∧ (δ = 1 ∨ δ = -1) ∧ x = ε * (δ * y) ^ 2 ∧ (δ * y) ^ 3 = 1 := by
  have hy2 : y ^ 2 ≠ 0 := pow_ne_zero 2 hy
  have two : (2 : ℂ) ≠ 0 := two_ne_zero
  -- `y = ± y⁴` gives `y³ = ± 1`
  have cube : ∀ s : ℂ, y = s * y ^ 4 → s * y ^ 3 = 1 := fun s h => by
    have : y * (s * y ^ 3 - 1) = 0 := by linear_combination -h
    exact sub_eq_zero.1 ((mul_eq_zero.1 this).resolve_left hy)
  rcases mul_eq_zero.1 h1 with h1 | h1
  · rcases mul_eq_zero.1 h1 with ha | hb
    · -- `x = y²`
      have ha : x = y ^ 2 := sub_eq_zero.1 ha
      have ha' : x + y ^ 2 ≠ 0 := by rw [ha]; intro h; exact hy2 (by linear_combination h / 2)
      have h3' := (mul_eq_zero.1 h3).imp_left fun h => (mul_eq_zero.1 h).resolve_left ha'
      have h4' := (mul_eq_zero.1 h4).imp_left fun h => (mul_eq_zero.1 h).resolve_left ha'
      rcases h3' with hb | hc
      · have hb : x ^ 2 = y := sub_eq_zero.1 hb
        refine ⟨1, 1, Or.inl rfl, Or.inl rfl, by rw [ha]; ring, ?_⟩
        have := cube 1 (by linear_combination -hb + (x + y ^ 2) * ha)
        linear_combination this
      · have hc : x * y = -1 := by linear_combination hc
        have hb : x ^ 2 = -y := by
          rcases h4' with h | h
          · linear_combination h
          · exfalso; exact two (by linear_combination hc - h)
        refine ⟨1, -1, Or.inl rfl, Or.inr rfl, by rw [ha]; ring, ?_⟩
        have := cube (-1) (by linear_combination hb - (x + y ^ 2) * ha)
        linear_combination this
    · -- `x² = y`, `x ≠ y²` would force contradictions below; split on `x = ± y²`
      have hb : x ^ 2 = y := sub_eq_zero.1 hb
      have hb' : x ^ 2 + y ≠ 0 := by rw [hb]; intro h; exact hy (by linear_combination h / 2)
      have h2' := (mul_eq_zero.1 h2).imp_left fun h => (mul_eq_zero.1 h).resolve_right hb'
      have h4' := (mul_eq_zero.1 h4).imp_left fun h => (mul_eq_zero.1 h).resolve_right hb'
      rcases h4' with ha | hc
      · have ha : x = -y ^ 2 := by linear_combination ha
        have hc : x * y = -1 := by
          rcases h2' with h | h
          · exfalso; exact hy2 (by linear_combination (h - ha) / (-2))
          · linear_combination h
        refine ⟨-1, 1, Or.inr rfl, Or.inl rfl, by rw [ha]; ring, ?_⟩
        have := cube 1 (by linear_combination -hb + (x - y ^ 2) * ha)
        linear_combination this
      · have hc : x * y = 1 := by linear_combination hc
        rcases h2' with ha | hc'
        · have ha : x = y ^ 2 := sub_eq_zero.1 ha
          refine ⟨1, 1, Or.inl rfl, Or.inl rfl, by rw [ha]; ring, ?_⟩
          have := cube 1 (by linear_combination -hb + (x + y ^ 2) * ha)
          linear_combination this
        · exfalso; exact two (by linear_combination hc' - hc)
  · -- `x y = 1`
    have hc : x * y = 1 := by linear_combination h1
    have hc' : x * y + 1 ≠ 0 := by rw [hc]; norm_num
    have h2' : (x - y ^ 2) * (x ^ 2 + y) = 0 := (mul_eq_zero.1 h2).resolve_right hc'
    have h3' : (x + y ^ 2) * (x ^ 2 - y) = 0 := (mul_eq_zero.1 h3).resolve_right hc'
    rcases mul_eq_zero.1 h2' with ha | hb
    · have ha : x = y ^ 2 := sub_eq_zero.1 ha
      have ha' : x + y ^ 2 ≠ 0 := by rw [ha]; intro h; exact hy2 (by linear_combination h / 2)
      have hb : x ^ 2 = y := sub_eq_zero.1 ((mul_eq_zero.1 h3').resolve_left ha')
      refine ⟨1, 1, Or.inl rfl, Or.inl rfl, by rw [ha]; ring, ?_⟩
      have := cube 1 (by linear_combination -hb + (x + y ^ 2) * ha)
      linear_combination this
    · have hb : x ^ 2 = -y := by linear_combination hb
      have hb' : x ^ 2 - y ≠ 0 := by rw [hb]; intro h; exact hy (by linear_combination h / (-2))
      have ha : x = -y ^ 2 := by linear_combination (mul_eq_zero.1 h3').resolve_right hb'
      refine ⟨-1, -1, Or.inr rfl, Or.inr rfl, by rw [ha]; ring, ?_⟩
      have := cube (-1) (by linear_combination hb - (x - y ^ 2) * ha)
      linear_combination this

/-! ### Equivalences -/

theorem cube_one (hω : ω ^ 2 + ω + 1 = 0) : ω ^ 3 = 1 := by linear_combination (ω - 1) * hω

theorem eq_of_cube_eq_one (hω : ω ^ 2 + ω + 1 = 0) {t : ℂ} (ht : t ^ 3 = 1) :
    t = 1 ∨ t = ω ∨ t = ω ^ 2 := by
  have h3 := cube_one hω
  have : (t - 1) * (t - ω) * (t - ω ^ 2) = 0 := by
    linear_combination ht - t ^ 2 * hω + t * ω * hω - h3
  rcases mul_eq_zero.1 this with h | h
  · rcases mul_eq_zero.1 h with h | h
    · exact Or.inl (sub_eq_zero.1 h)
    · exact Or.inr (Or.inl (sub_eq_zero.1 h))
  · exact Or.inr (Or.inr (sub_eq_zero.1 h))

theorem equivalent_of_eq_submatrix {H K : Mat6} {σ τ : Equiv.Perm I6} (h : K = H.submatrix σ τ) :
    Equivalent H K := by
  rw [h]; exact equivalent_reindexMatrix σ τ H

set_option linter.unusedSimpArgs false in
set_option linter.unusedTactic false in
set_option linter.unreachableTactic false in
/-- `K(x ω, y ω²)` is `K(x, y)` with the bottom rows shifted cyclically. -/
theorem shift_eq (hω : ω ^ 2 + ω + 1 = 0) (x y : ℂ) :
    fourierCore ω (x * ω) (y * ω ^ 2) = (fourierCore ω x y).submatrix (shiftR 1) (Equiv.refl _) := by
  have h3 := cube_one hω
  have h4 : ω ^ 4 = ω := by rw [pow_succ, h3, one_mul]
  have h5 : ω ^ 5 = ω ^ 2 := by rw [show 5 = 3 + 2 by rfl, pow_add, h3, one_mul]
  have h6 : ω ^ 6 = 1 := by rw [show 6 = 3 * 2 by rfl, pow_mul, h3, one_pow]
  ext a b
  rcases a with i | i <;> rcases b with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [fourierCore, coreF, e6, wpar, shiftR] <;> ring_nf <;> simp only [h3, h4, h5, h6] <;>
    ring_nf

/-- `K(ε t², δ t) ≃ K(ε, δ)` for a cube root of unity `t`. -/
theorem core_equiv_signs (hω : ω ^ 2 + ω + 1 = 0) (ε δ : ℂ) {t : ℂ} (ht : t ^ 3 = 1) :
    Equivalent (fourierCore ω ε δ) (fourierCore ω (ε * t ^ 2) (δ * t)) := by
  have h3 := cube_one hω
  have step : ∀ a b : ℂ, Equivalent (fourierCore ω a b) (fourierCore ω (a * ω) (b * ω ^ 2)) :=
    fun a b => equivalent_of_eq_submatrix (shift_eq hω a b)
  rcases eq_of_cube_eq_one hω ht with h | h | h <;> rw [h]
  · simpa using equivalent_refl (fourierCore ω ε δ)
  · rw [show ε * ω ^ 2 = ε * ω * ω by ring,
      show δ * ω = δ * ω ^ 2 * ω ^ 2 by linear_combination (-δ * ω) * h3]
    exact equivalent_trans (step ε δ) (step _ _)
  · rw [show ε * (ω ^ 2) ^ 2 = ε * ω by linear_combination ε * ω * h3]
    exact step ε δ

/-- The column swaps `inl 2 ↔ inr 2` and `inl 1 ↔ inr 1`, as tables on `Fin 6`. -/
def qY : Fin 6 → Fin 6 := ![0, 1, 5, 3, 4, 2]
def qX : Fin 6 → Fin 6 := ![0, 4, 2, 3, 1, 5]
theorem qY_bijective : Function.Bijective qY := by decide
theorem qX_bijective : Function.Bijective qX := by decide

set_option linter.unusedSimpArgs false in
set_option linter.unusedTactic false in
set_option linter.unreachableTactic false in
theorem swapY_eq (ε : ℂ) :
    fourierCore ω ε 1 = (fourierCore ω ε (-1)).submatrix (Equiv.refl _) (tabPerm qY qY_bijective) := by
  ext a b
  rcases a with i | i <;> rcases b with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [fourierCore, coreF, e6, wpar, tabPerm_apply, qY]

set_option linter.unusedSimpArgs false in
set_option linter.unusedTactic false in
set_option linter.unreachableTactic false in
theorem swapX_eq (δ : ℂ) :
    fourierCore ω 1 δ = (fourierCore ω (-1) δ).submatrix (Equiv.refl _) (tabPerm qX qX_bijective) := by
  ext a b
  rcases a with i | i <;> rcases b with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [fourierCore, coreF, e6, wpar, tabPerm_apply, qX]

/-- `K(ε, δ) ≃ K(1, 1)` for signs `ε, δ`. -/
theorem core_sign_equiv (ε δ : ℂ) (hε : ε = 1 ∨ ε = -1) (hδ : δ = 1 ∨ δ = -1) :
    Equivalent (fourierCore ω ε δ) (fourierCore ω 1 1) := by
  rcases hε with rfl | rfl <;> rcases hδ with rfl | rfl
  · exact equivalent_refl _
  · exact equivalent_of_eq_submatrix (swapY_eq 1)
  · exact equivalent_of_eq_submatrix (swapX_eq 1)
  · exact equivalent_trans (equivalent_of_eq_submatrix (swapX_eq (-1)))
      (equivalent_of_eq_submatrix (swapY_eq 1))

/-- `K(1, 1)` is equivalent to `F6`. -/
theorem core11_equiv_F6 (hω : IsPrimitiveCubicPhase ω) :
    Equivalent (fourierCore ω 1 1) Step2.fourierHadamard.1 := by
  rw [fourierCore_eq_family]; exact Step2.family11_equiv_F6 hω

/-! ### The critical locus -/

/-- **Fourier critical locus.**  An all-critical member of the Fourier family is equivalent to `F6`. -/
theorem fourierCore_criticalLocus (hω : IsPrimitiveCubicPhase ω) (hx : Complex.normSq x = 1)
    (hy : Complex.normSq y = 1) (hc : AllCritical (fourierCore ω x y)) :
    Equivalent (fourierCore ω x y) Step2.fourierHadamard.1 := by
  have hx0 : x ≠ 0 := fun h => by simp [h] at hx
  have hy0 : y ≠ 0 := fun h => by simp [h] at hy
  have p0 := core_product_eq_zero hω hx hy hc (by norm_num) okI_0
  have p3 := core_product_eq_zero hω hx hy hc (by norm_num) okI_3
  have p5 := core_product_eq_zero hω hx hy hc (by norm_num) okI_5
  have p9 := core_product_eq_zero hω hx hy hc (by norm_num) okI_9
  push_cast at p0 p3 p5 p9
  obtain ⟨ε, δ, hε, hδ, hxe, ht⟩ := locus_points (x := x) hy0 (by linear_combination p0)
    (by linear_combination p3) (by linear_combination p5) (by linear_combination p9)
  have hδ2 : δ * δ = 1 := by rcases hδ with rfl | rfl <;> norm_num
  have hye : y = δ * (δ * y) := by linear_combination -y * hδ2
  have e1 : fourierCore ω x y = fourierCore ω (ε * (δ * y) ^ 2) (δ * (δ * y)) := by rw [← hye, hxe]
  rw [e1]
  exact equivalent_trans (equivalent_symm (core_equiv_signs hω.2 ε δ ht))
    (equivalent_trans (core_sign_equiv ε δ hε hδ) (core11_equiv_F6 hω))

/-- **Fourier critical locus, transposed family.** -/
theorem fourierCore_transpose_criticalLocus (hω : IsPrimitiveCubicPhase ω)
    (hx : Complex.normSq x = 1) (hy : Complex.normSq y = 1)
    (hc : AllCritical (fourierCore ω x y)ᵀ) :
    Equivalent (fourierCore ω x y)ᵀ Step2.fourierHadamard.1 := by
  have h := fourierCore_criticalLocus hω hx hy (allCritical_transpose_iff.1 hc)
  have := equivalent_transpose h
  rwa [Step2.fourierHadamard_transpose] at this

/-- **Fourier critical locus, for the whole family up to equivalence.** -/
theorem equivalent_F6_of_fourierFamily {H : Mat6} (hF : Step2.InFourierFamily H) (hc : AllCritical H) :
    Equivalent H Step2.fourierHadamard.1 := by
  obtain ⟨ω, x, y, hω, hx, hy, hK | hK⟩ := hF
  · rw [← fourierCore_eq_family] at hK
    exact equivalent_trans hK (fourierCore_criticalLocus hω hx hy (allCritical_of_equivalent hK hc))
  · rw [← fourierCore_eq_family] at hK
    exact equivalent_trans hK
      (fourierCore_transpose_criticalLocus hω hx hy (allCritical_of_equivalent hK hc))

/-- **Strict-corner coverage in its `F6` form**: with the critical locus, every Hadamard matrix not
equivalent to `F6` has a strict corner. -/
theorem strictCorner_of_not_F6 (hcov : StrictCornerCoverage) {H : Mat6} (hH : Hadamard6.IsHadamard H)
    (hF : ¬ Equivalent H Step2.fourierHadamard.1) :
    ∃ σ τ : Equiv.Perm I6, (Step2.sideSignature (Step2.rightBlock (H.submatrix σ τ))).im ≠ 0 := by
  by_cases hfam : Step2.InFourierFamily H
  · by_contra hn
    exact hF (equivalent_F6_of_fourierFamily hfam (allCritical_of_not_strict hn))
  · exact hcov H hH hfam

end NoFourMUBs.PRM.Coverage
