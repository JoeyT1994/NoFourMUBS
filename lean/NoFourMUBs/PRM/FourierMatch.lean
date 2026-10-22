import NoFourMUBs.PRM.Converse
import NoFourMUBs.Identity.Fast
import NoFourMUBs.Step2.FourierFamily

/-!
# PR-M, Theorem A §5.4: every corner of the Fourier family is matched (not used by `Final`)

Return G (`proof/coverage/returns/G_prm/PRM.md` §5.3–5.4).  The core matrix

  `K(x, y) = [[F, F], [F D, −F D]]`,  `F = (ω^{ij})`, `D = diag(1, x, y)`,

with `x, y` unit (`fourierCore`, equal to `Step2.fourierFamily`; families (5.5)/(5.6) of PRM.md, which
the forced Fourier matrices at a character gauge are, `FourierBlock.v_form_*`, `w_form_*`) is matched
at every positional corner (`fourierCore_matched`), hence so is every member of `Step2.InFourierFamily`
(`allCornersMatched_of_inFourierFamily`), and Theorem A in its original form follows: a strict
nonmatched corner forces Tao (`nonmatched_tao`).  `Final` does not use this module (its Fourier classes
are covered by connectedness, `Step2.fourierClasses_subset`); `FourierVanishing` does.

## Proof

1. *Reduction to 20 × 20 corners* (`allCornersMatched_of_tri`).  The right block of `H.submatrix σ τ` is
   the restriction of `H` to the rows `σ (inl ·)` and the columns `τ (inr ·)`, the lower block to the
   complementary rows and columns.  Side signatures are invariant under row and column permutations
   (`sideSignature_submatrix`), so only the two 3-subsets matter: listed as the sorted triples `tri k`,
   `k : Fin 20`, whose complements are `tri (19 - k)` (all checked by `decide`).
2. *The 400 Laurent identities* (`okQ`).  Each corner identity `sig B = conj (sig C)` is a Laurent
   identity in `x, y` over `ℤ[ω]` (`conj x = x⁻¹`, `conj ω = ω²`).  It is built with the project's
   verified identity checker (`NoFourMUBs.Identity`: `Frac` over the factor table `x, y`, `QF` with the
   relation `ω² = −ω − 1`) and decided by the kernel (`Circ.validR`).  The identities for `k ≥ 10`
   are the conjugates of those for `19 − k`, so 200 are checked.
3. `AllCornersMatched` is invariant under equivalence and under transposition.
-/

open Matrix Hadamard6 ComplexConjugate NoFourMUBs.Kronecker

namespace NoFourMUBs.PRM

/-! ### `AllCornersMatched` under transposition -/

theorem allCornersMatched_transpose {H : Mat6} (h : AllCornersMatched H) : AllCornersMatched Hᵀ := by
  intro σ τ
  have e1 : Step2.rightBlock (Hᵀ.submatrix σ τ) = (Step2.lowerBlock (H.submatrix τ σ))ᵀ := rfl
  have e2 : Step2.lowerBlock (Hᵀ.submatrix σ τ) = (Step2.rightBlock (H.submatrix τ σ))ᵀ := rfl
  rw [e1, e2, Step2.sideSignature_transpose, Step2.sideSignature_transpose, h τ σ, Complex.conj_conj]

/-! ### Reduction to sorted triples -/

-- `e6`, the sorted triples `tri`, `p3`, `cover` and `triBlock` are in `PRM.Defs`.

/-- Disjoint sorted triples are complementary. -/
theorem tri_compl : ∀ k k' : Fin 20, (∀ i j : Fin 3, tri k i ≠ tri k' j) → k' = 19 - k := by
  decide

theorem compl_compl : ∀ k : Fin 20, 19 - (19 - k) = k := by decide

theorem disjoint_of_perm (σ : Equiv.Perm I6) {k k' : Fin 20} {m m' : Fin 6}
    (hk : ∀ i, e6 (σ (Sum.inl i)) = tri k (p3 m i)) (hk' : ∀ i, e6 (σ (Sum.inr i)) = tri k' (p3 m' i)) :
    ∀ i j : Fin 3, tri k i ≠ tri k' j := by
  intro i j hij
  have h1 := hk ((p3 m).symm i)
  have h2 := hk' ((p3 m').symm j)
  rw [Equiv.apply_symm_apply] at h1 h2
  rw [← h1, ← h2] at hij
  exact Sum.inl_ne_inr (σ.injective (e6.injective hij))

/-- **Reduction.** If every pair of sorted triples gives a matched corner, then every corner is matched. -/
theorem allCornersMatched_of_tri {H : Mat6}
    (h : ∀ k l : Fin 20, Step2.sideSignature (triBlock H k l) =
      conj (Step2.sideSignature (triBlock H (19 - k) (19 - l)))) :
    AllCornersMatched H := by
  intro σ τ
  have inj : ∀ (π : Equiv.Perm I6) (g : Fin 3 → I6), Function.Injective g →
      Function.Injective fun i => e6 (π (g i)) :=
    fun π g hg => e6.injective.comp (π.injective.comp hg)
  obtain ⟨k, m, hk⟩ := cover _ (inj σ _ Sum.inl_injective)
  obtain ⟨k', m', hk'⟩ := cover _ (inj σ _ Sum.inr_injective)
  obtain ⟨l, n, hl⟩ := cover _ (inj τ _ Sum.inr_injective)
  obtain ⟨l', n', hl'⟩ := cover _ (inj τ _ Sum.inl_injective)
  have ek := tri_compl k k' (disjoint_of_perm σ hk hk')
  have el : l' = 19 - l := by
    refine tri_compl l l' fun i j hij => ?_
    have h1 := hl ((p3 n).symm i)
    have h2 := hl' ((p3 n').symm j)
    rw [Equiv.apply_symm_apply] at h1 h2
    rw [← h1, ← h2] at hij
    exact Sum.inr_ne_inl (τ.injective (e6.injective hij))
  subst ek el
  have hR : Step2.rightBlock (H.submatrix σ τ) = (triBlock H k l).submatrix (p3 m) (p3 n) := by
    ext i j
    simp only [Step2.rightBlock, triBlock, Matrix.submatrix_apply, Matrix.of_apply]
    rw [← hk i, ← hl j, Equiv.symm_apply_apply, Equiv.symm_apply_apply]
  have hL : Step2.lowerBlock (H.submatrix σ τ) =
      (triBlock H (19 - k) (19 - l)).submatrix (p3 m') (p3 n') := by
    ext i j
    simp only [Step2.lowerBlock, triBlock, Matrix.submatrix_apply, Matrix.of_apply]
    rw [← hk' i, ← hl' j, Equiv.symm_apply_apply, Equiv.symm_apply_apply]
  rw [hR, hL, Step2.sideSignature_submatrix, Step2.sideSignature_submatrix]
  exact h k l

/-! ### The core matrix `[[F, F], [F D, −F D]]` -/

/-- The gauge `(1, x, y)`, indexed modulo three. -/
def wpar (x y : ℂ) (j : ℕ) : ℂ :=
  match j % 3 with
  | 0 => 1
  | 1 => x
  | _ => y

/-- Entries of the core matrix in `Fin 6` indexing. -/
def coreF (ω x y : ℂ) (u v : Fin 6) : ℂ :=
  let a := ω ^ ((u.val % 3) * (v.val % 3))
  let b := if 3 ≤ u.val then a * wpar x y v.val else a
  if 3 ≤ u.val ∧ 3 ≤ v.val then -b else b

/-- The core matrix `K(x, y) = [[F, F], [F D, −F D]]`, `D = diag(1, x, y)`. -/
def fourierCore (ω x y : ℂ) : Mat6 := Matrix.of fun a b => coreF ω x y (e6 a) (e6 b)

/-- The core matrix is the Fourier family `Step2.fourierFamily`. -/
theorem fourierCore_eq_family (ω x y : ℂ) : fourierCore ω x y = Step2.fourierFamily ω x y := by
  ext a b
  rcases a with i | i <;> rcases b with j | j <;> fin_cases i <;> fin_cases j <;>
    simp [fourierCore, coreF, e6, wpar, Step2.fourierFamily]


/-! ### The corner identities as circuits

Variables `x, y` (`var 0`, `var 1`), the factor table `x, y` (so `x⁻¹, y⁻¹` are available) and the
element `z = ω` with `z² = −z − 1`. -/

noncomputable section

open Circ

/-- The context: denominators `x, y`; relation `z² = −z − 1`. -/
def CF : Ctx 2 2 := ⟨![var 0, var 1], (const (-1), fun _ => 0), (const (-1), fun _ => 0)⟩

abbrev Q := QF CF

/-- `ω ^ e` as `x₀ + x₁ ω`. -/
def zp (e : ℕ) : Q :=
  match e % 3 with
  | 0 => 1
  | 1 => QF.z
  | _ => ⟨-1, -1⟩

/-- The gauge `(1, x, y)` and its conjugate `(1, x⁻¹, y⁻¹)`, indexed modulo three. -/
def wv (j : ℕ) : Frac CF :=
  match j % 3 with
  | 0 => 1
  | 1 => Frac.ofCirc (var 0)
  | _ => Frac.ofCirc (var 1)

def wvc (j : ℕ) : Frac CF :=
  match j % 3 with
  | 0 => 1
  | 1 => Frac.inv CF 0
  | _ => Frac.inv CF 1

def scaleQ (f : Frac CF) (a : Q) : Q := ⟨a.x0 * f, a.x1 * f⟩

/-- The entry `coreF u v`, and its conjugate. -/
def ent (u v : Fin 6) : Q :=
  let a := zp ((u.val % 3) * (v.val % 3))
  let b := if 3 ≤ u.val then scaleQ (wv v.val) a else a
  if 3 ≤ u.val ∧ 3 ≤ v.val then -b else b

def entc (u v : Fin 6) : Q :=
  let a := zp (2 * ((u.val % 3) * (v.val % 3)))
  let b := if 3 ≤ u.val then scaleQ (wvc v.val) a else a
  if 3 ≤ u.val ∧ 3 ≤ v.val then -b else b

def perm3Q (B : Fin 3 → Fin 3 → Q) : Q :=
  B 0 0 * B 1 1 * B 2 2 + B 0 0 * B 1 2 * B 2 1 + B 0 1 * B 1 0 * B 2 2 + B 0 1 * B 1 2 * B 2 0 +
    B 0 2 * B 1 0 * B 2 1 + B 0 2 * B 1 1 * B 2 0

def det3Q (B : Fin 3 → Fin 3 → Q) : Q :=
  B 0 0 * B 1 1 * B 2 2 - B 0 0 * B 1 2 * B 2 1 - B 0 1 * B 1 0 * B 2 2 + B 0 1 * B 1 2 * B 2 0 +
    B 0 2 * B 1 0 * B 2 1 - B 0 2 * B 1 1 * B 2 0

def prod9Q (B : Fin 3 → Fin 3 → Q) : Q :=
  (B 0 0 * B 0 1 * B 0 2) * (B 1 0 * B 1 1 * B 1 2) * (B 2 0 * B 2 1 * B 2 2)

/-- The signature `−perm B · (det B)² · ∏ B̄`, given the entries `B` and their conjugates `Bc`. -/
def sigQ (B Bc : Fin 3 → Fin 3 → Q) : Q := -(perm3Q B) * (det3Q B * det3Q B) * prod9Q Bc

/-- `sig B − conj (sig C)` for the corner `(tri k, tri l)` of the core matrix. -/
def diffQ (k l : Fin 20) : Q :=
  sigQ (fun i j => ent (tri k i) (tri l j)) (fun i j => entc (tri k i) (tri l j)) -
    sigQ (fun i j => entc (tri (19 - k) i) (tri (19 - l) j))
      (fun i j => ent (tri (19 - k) i) (tri (19 - l) j))

/-- The kernel test: both numerators of `diffQ k l` are the zero polynomial. -/
def okQ (k l : Fin 20) : Bool := (diffQ k l).x0.num.validR 0 && (diffQ k l).x1.num.validR 0

end

/-! ### The 200 kernel checks (rows `tri k`, `k < 10`; the rest are conjugates) -/

set_option maxRecDepth 100000 in
theorem ok_0 : ∀ l : Fin 20, okQ 0 l = true := by decide +kernel
set_option maxRecDepth 100000 in
theorem ok_1 : ∀ l : Fin 20, okQ 1 l = true := by decide +kernel
set_option maxRecDepth 100000 in
theorem ok_2 : ∀ l : Fin 20, okQ 2 l = true := by decide +kernel
set_option maxRecDepth 100000 in
theorem ok_3 : ∀ l : Fin 20, okQ 3 l = true := by decide +kernel
set_option maxRecDepth 100000 in
theorem ok_4 : ∀ l : Fin 20, okQ 4 l = true := by decide +kernel
set_option maxRecDepth 100000 in
theorem ok_5 : ∀ l : Fin 20, okQ 5 l = true := by decide +kernel
set_option maxRecDepth 100000 in
theorem ok_6 : ∀ l : Fin 20, okQ 6 l = true := by decide +kernel
set_option maxRecDepth 100000 in
theorem ok_7 : ∀ l : Fin 20, okQ 7 l = true := by decide +kernel
set_option maxRecDepth 100000 in
theorem ok_8 : ∀ l : Fin 20, okQ 8 l = true := by decide +kernel
set_option maxRecDepth 100000 in
theorem ok_9 : ∀ l : Fin 20, okQ 9 l = true := by decide +kernel

theorem ok_lt (k l : Fin 20) (hk : k.val < 10) : okQ k l = true := by
  obtain ⟨k, hk20⟩ := k
  simp only at hk
  interval_cases k
  exacts [ok_0 l, ok_1 l, ok_2 l, ok_3 l, ok_4 l, ok_5 l, ok_6 l, ok_7 l, ok_8 l, ok_9 l]

theorem compl_lt : ∀ k : Fin 20, ¬ k.val < 10 → (19 - k).val < 10 := by decide

/-! ### Semantics of the circuits -/

section Semantics

variable {ω x y : ℂ}

/-- The variables `x, y`. -/
def ρ (x y : ℂ) : Fin 2 → ℂ := ![x, y]

theorem good (hω : ω ^ 2 + ω + 1 = 0) (hx : x ≠ 0) (hy : y ≠ 0) : QF.Good CF (ρ x y) ω where
  ne k := by fin_cases k <;> simpa [CF, ρ]
  rel := by
    simp only [QF.relA, QF.relB, Frac.val, Frac.dval, CF, Circ.eval_const]
    simp
    linear_combination hω

theorem frac_one_val (ρ' : Fin 2 → ℂ) : (1 : Frac CF).val ρ' = 1 := by
  change (Frac.ofCirc (Circ.const ((1 : ℕ) : ℤ)) : Frac CF).val ρ' = 1
  rw [Frac.val_ofCirc]; simp

theorem qf_one_val (ρ' : Fin 2 → ℂ) (ζ : ℂ) : (1 : Q).val ρ' ζ = 1 := by
  change (QF.ofFrac (1 : Frac CF)).val ρ' ζ = 1
  rw [QF.val_ofFrac, frac_one_val]

theorem pow_mod3 (hω3 : ω ^ 3 = 1) (e : ℕ) : ω ^ e = ω ^ (e % 3) := by
  conv_lhs => rw [← Nat.div_add_mod e 3, pow_add, pow_mul, hω3, one_pow, one_mul]

theorem zp_val (hω : ω ^ 2 + ω + 1 = 0) (e : ℕ) : (zp e).val (ρ x y) ω = ω ^ e := by
  have hω3 : ω ^ 3 = 1 := by linear_combination (ω - 1) * hω
  rw [pow_mod3 hω3]
  obtain h | h | h : e % 3 = 0 ∨ e % 3 = 1 ∨ e % 3 = 2 := by omega
  · simp only [zp, h, qf_one_val, pow_zero]
  · simp only [zp, h, QF.val_z, pow_one]
  · simp only [zp, h, QF.val, Frac.val_neg, frac_one_val]
    linear_combination -hω

/-- The gauge `(1, x, y)`. -/
theorem wv_val (j : ℕ) : (wv j).val (ρ x y) = wpar x y j := by
  obtain h | h | h : j % 3 = 0 ∨ j % 3 = 1 ∨ j % 3 = 2 := by omega
  · simp only [wv, wpar, h, frac_one_val]
  · simp only [wv, wpar, h, Frac.val_ofCirc]; simp [ρ]
  · simp only [wv, wpar, h, Frac.val_ofCirc]; simp [ρ]

theorem wvc_val (j : ℕ) : (wvc j).val (ρ x y) = (wpar x y j)⁻¹ := by
  obtain h | h | h : j % 3 = 0 ∨ j % 3 = 1 ∨ j % 3 = 2 := by omega
  · simp only [wvc, wpar, h, frac_one_val, inv_one]
  · simp only [wvc, wpar, h, Frac.val_inv]; simp [CF, ρ]
  · simp only [wvc, wpar, h, Frac.val_inv]; simp [CF, ρ]

theorem scaleQ_val (f : Frac CF) (a : Q) :
    (scaleQ f a).val (ρ x y) ω = a.val (ρ x y) ω * f.val (ρ x y) := by
  simp only [scaleQ, QF.val, Frac.val_mul]; ring

theorem ent_val (hω : ω ^ 2 + ω + 1 = 0) (u v : Fin 6) :
    (ent u v).val (ρ x y) ω = coreF ω x y u v := by
  simp only [ent, coreF]
  split_ifs <;> simp only [QF.val_neg, scaleQ_val, zp_val hω, wv_val]

theorem star_eq_inv_of_normSq {z : ℂ} (hz : Complex.normSq z = 1) : star z = z⁻¹ := by
  refine eq_inv_of_mul_eq_one_left ?_
  rw [mul_comm, Complex.star_def, Complex.mul_conj, hz, Complex.ofReal_one]

theorem star_wpar (hx : Complex.normSq x = 1) (hy : Complex.normSq y = 1) (j : ℕ) :
    star (wpar x y j) = (wpar x y j)⁻¹ := by
  obtain h | h | h : j % 3 = 0 ∨ j % 3 = 1 ∨ j % 3 = 2 := by omega
  · simp [wpar, h]
  · simp only [wpar, h]; exact star_eq_inv_of_normSq hx
  · simp only [wpar, h]; exact star_eq_inv_of_normSq hy

theorem entc_val (hω : IsPrimitiveCubicPhase ω) (hx : Complex.normSq x = 1)
    (hy : Complex.normSq y = 1) (u v : Fin 6) :
    (entc u v).val (ρ x y) ω = star (coreF ω x y u v) := by
  have hω3 : ω ^ 3 = 1 := by linear_combination (ω - 1) * hω.2
  have hstar : star ω = ω ^ 2 := by
    rw [star_eq_inv_of_normSq hω.1]
    exact inv_eq_of_mul_eq_one_right (by rw [← pow_succ', hω3])
  have hpow : ∀ e : ℕ, star (ω ^ e) = ω ^ (2 * e) := fun e => by rw [star_pow, hstar, pow_mul]
  simp only [entc, coreF]
  split_ifs <;>
    simp only [QF.val_neg, scaleQ_val, zp_val hω.2, wvc_val, star_neg, star_mul', hpow,
      star_wpar hx hy]

/-- The signature as a polynomial in the entries and their conjugates. -/
def sigE (B Bc : Fin 3 → Fin 3 → ℂ) : ℂ :=
  -(B 0 0 * B 1 1 * B 2 2 + B 0 0 * B 1 2 * B 2 1 + B 0 1 * B 1 0 * B 2 2 + B 0 1 * B 1 2 * B 2 0 +
    B 0 2 * B 1 0 * B 2 1 + B 0 2 * B 1 1 * B 2 0) *
  ((B 0 0 * B 1 1 * B 2 2 - B 0 0 * B 1 2 * B 2 1 - B 0 1 * B 1 0 * B 2 2 + B 0 1 * B 1 2 * B 2 0 +
    B 0 2 * B 1 0 * B 2 1 - B 0 2 * B 1 1 * B 2 0) *
   (B 0 0 * B 1 1 * B 2 2 - B 0 0 * B 1 2 * B 2 1 - B 0 1 * B 1 0 * B 2 2 + B 0 1 * B 1 2 * B 2 0 +
    B 0 2 * B 1 0 * B 2 1 - B 0 2 * B 1 1 * B 2 0)) *
  ((Bc 0 0 * Bc 0 1 * Bc 0 2) * (Bc 1 0 * Bc 1 1 * Bc 1 2) * (Bc 2 0 * Bc 2 1 * Bc 2 2))

theorem sig_eq_sigE (B : Mat3) :
    Step2.sideSignature B = sigE (fun i j => B i j) (fun i j => star (B i j)) := by
  simp only [Step2.sideSignature, Step2.permanent3_expand, Matrix.det_fin_three, Fin.prod_univ_three,
    sigE]
  ring

theorem conj_sig_eq_sigE (B : Mat3) :
    conj (Step2.sideSignature B) = sigE (fun i j => star (B i j)) (fun i j => B i j) := by
  rw [sig_eq_sigE]
  simp only [sigE, map_neg, map_mul, map_add, map_sub, Complex.star_def, Complex.conj_conj]

theorem sigQ_val {ζ : ℂ} {ρ' : Fin 2 → ℂ} (h : QF.Good CF ρ' ζ) (B Bc : Fin 3 → Fin 3 → Q) :
    (sigQ B Bc).val ρ' ζ = sigE (fun i j => (B i j).val ρ' ζ) (fun i j => (Bc i j).val ρ' ζ) := by
  simp only [sigQ, perm3Q, det3Q, prod9Q, sigE, QF.val_mul h, QF.val_add h, QF.val_sub h, QF.val_neg]

theorem diffQ_val {ζ : ℂ} {ρ' : Fin 2 → ℂ} {k l : Fin 20} (h : okQ k l = true) :
    (diffQ k l).val ρ' ζ = 0 := by
  simp only [okQ, Bool.and_eq_true] at h
  rw [QF.val, Frac.val_eq_zero_of_validR h.1, Frac.val_eq_zero_of_validR h.2]; ring

/-- One checked corner of the core matrix. -/
theorem core_tri (hω : IsPrimitiveCubicPhase ω) (hx : Complex.normSq x = 1)
    (hy : Complex.normSq y = 1) {k l : Fin 20} (hkl : okQ k l = true) :
    Step2.sideSignature (triBlock (fourierCore ω x y) k l) =
      conj (Step2.sideSignature (triBlock (fourierCore ω x y) (19 - k) (19 - l))) := by
  have hx0 : x ≠ 0 := fun h => by simp [h] at hx
  have hy0 : y ≠ 0 := fun h => by simp [h] at hy
  have hg := good hω.2 hx0 hy0
  have h0 := diffQ_val (ζ := ω) (ρ' := ρ x y) hkl
  rw [diffQ, QF.val_sub hg, sigQ_val hg, sigQ_val hg, sub_eq_zero] at h0
  simp only [ent_val hω.2, entc_val hω hx hy] at h0
  rw [sig_eq_sigE, conj_sig_eq_sigE]
  simpa only [triBlock, fourierCore, Matrix.of_apply, Equiv.apply_symm_apply] using h0

end Semantics

/-- **Every corner of the core matrix is matched.** -/
theorem fourierCore_matched {ω x y : ℂ} (hω : IsPrimitiveCubicPhase ω) (hx : Complex.normSq x = 1)
    (hy : Complex.normSq y = 1) : AllCornersMatched (fourierCore ω x y) := by
  refine allCornersMatched_of_tri fun k l => ?_
  by_cases hk : k.val < 10
  · exact core_tri hω hx hy (ok_lt k l hk)
  · have h := core_tri hω hx hy (ok_lt (19 - k) (19 - l) (compl_lt k hk))
    rw [compl_compl, compl_compl] at h
    rw [h, Complex.conj_conj]


/-! ### Theorem A, §5.4: the Fourier family is matched at every corner -/

/-- Permutations and unit row/column phases preserve matching at every corner. -/
theorem allCornersMatched_of_equivalent {H K : Mat6} (hHK : Equivalent H K)
    (hH : AllCornersMatched H) : AllCornersMatched K := by
  obtain ⟨σ, τ, r, c, hr, hc, hK⟩ := hHK
  intro σ' τ'
  have hR : Step2.rightBlock (K.submatrix σ' τ') = Matrix.of fun i j =>
      r (σ' (.inl i)) * Step2.rightBlock (H.submatrix (σ'.trans σ) (τ'.trans τ)) i j *
        c (τ' (.inr j)) := by
    ext i j; simp [Step2.rightBlock, hK]
  have hL : Step2.lowerBlock (K.submatrix σ' τ') = Matrix.of fun i j =>
      r (σ' (.inr i)) * Step2.lowerBlock (H.submatrix (σ'.trans σ) (τ'.trans τ)) i j *
        c (τ' (.inl j)) := by
    ext i j; simp [Step2.lowerBlock, hK]
  rw [hR, hL, Step2.sideSignature_scale _ _ _ (fun i => mul_conj_of_normSq (hr _))
      (fun j => mul_conj_of_normSq (hc _)),
    Step2.sideSignature_scale _ _ _ (fun i => mul_conj_of_normSq (hr _))
      (fun j => mul_conj_of_normSq (hc _))]
  exact hH _ _

/-- **Every member of the Fourier family, and of its transpose, is matched at every corner.** -/
theorem allCornersMatched_of_inFourierFamily {H : Mat6} (h : Step2.InFourierFamily H) :
    AllCornersMatched H := by
  obtain ⟨ω, x, y, hω, hx, hy, hK | hK⟩ := h
  · have := fourierCore_matched hω hx hy
    rw [fourierCore_eq_family] at this
    exact allCornersMatched_of_equivalent (equivalent_symm hK) this
  · have := allCornersMatched_transpose (fourierCore_matched hω hx hy)
    rw [fourierCore_eq_family] at this
    exact allCornersMatched_of_equivalent (equivalent_symm hK) this

/-- **Theorem A** (return G).  A dephased Hadamard matrix whose leading corner is strict and whose two
sides are not matched is in Tao's orbit. -/
theorem nonmatched_tao (M : Mat6) (hM : Hadamard6.IsHadamard M) (hd : Step2.Dephased M)
    (hIm : (Step2.sideSignature (Step2.rightBlock M)).im ≠ 0)
    (hnm : Step2.sideSignature (Step2.lowerBlock M) ≠ conj (Step2.sideSignature (Step2.rightBlock M))) :
    IsTaoOrbit M := by
  refine (nonmatched_tao_or_fourier M hM hd hIm hnm).resolve_right fun hF => hnm ?_
  have := allCornersMatched_of_inFourierFamily hF 1 1
  simp only [Equiv.Perm.coe_one, Matrix.submatrix_id_id] at this
  rw [this, Complex.conj_conj]

end NoFourMUBs.PRM
