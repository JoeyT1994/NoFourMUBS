import NoFourMUBs.PRM.SideRoot
import NoFourMUBs.Step2.SidePerm

/-!
# Sides on different strict roots share no column (`PRM.md` Corollary 3.2)

**Theorem (`no_shared_column`).** Let `(x, y)` and `(x', y')` be two normalised phase sides with the same
Gram data `(s, t, r)`, on the two different roots: `T' = T̄`, `Im T ≠ 0`.  Then no column of one equals a
column of the other.

The paper proof removes the common column and invokes the two-column alternative (Lemma 3.1) together with
the finiteness of strict side fibres (§2).  Here the infinite branch of Lemma 3.1 is closed more directly:
on it the signature itself is real.

* **Reduction.** Simultaneous column transpositions preserve `s, t, r` and `T` (`TS_swap0`, `rS_perm`), so
  the shared column may be taken to be column `0` of both sides.
* **Two-column alternative.** The remaining columns satisfy `x'₁ + x'₂ = x₁ + x₂`, the same for `y`, and
  `y'₁ x̄'₁ + y'₂ x̄'₂ = y₁ x̄₁ + y₂ x̄₂`.  For unit numbers with nonzero sum the product is
  `(x₁ + x₂)/(x̄₁ + x̄₂)`, so either the unordered pair is fixed or `x₂ = −x₁`, `x'₂ = −x'₁` (`unit_pair`).
  In each of the nine resulting cases the correlation either forces `(x', y')` to be `(x, y)` or its
  `1 ↔ 2` column swap, whence `T' = T` (`TS_swap12`), or the side `(x, y)` is one of the degenerate shapes
  `x₂ = −x₁, y₂ = ±y₁` or `x₂ = x₁, y₂ = −y₁`.
* **Degenerate shapes have real signature** (`im_TS_A`, `im_TS_B`, `im_TS_C`).  For example, if `x₂ = −x₁`
  and `y₂ = y₁` then `T = 8 (y₁ − y₀)² ȳ₀ ȳ₁ = 8 (w + w̄ − 2)` with `w = y₁ ȳ₀`.  (These are exactly the
  one-parameter families of Lemma 3.1; they cannot carry a strict side.)
* **Conclusion.** `T' = T` together with `T' = T̄` gives `Im T = 0`; a degenerate shape gives `Im T = 0`
  directly.  Either contradicts `Im T ≠ 0`.

The argument uses neither `side_unique` nor `TS_root`: the whole content is the two-column alternative.
-/

open ComplexConjugate

noncomputable section

namespace NoFourMUBs.Side

/-! ### Invariance under simultaneous column transpositions -/

lemma rS_perm (x y : Fin 3 → ℂ) (σ : Equiv.Perm (Fin 3)) : rS (x ∘ σ) (y ∘ σ) = rS x y := by
  rw [rS_sum, rS_sum]; exact Equiv.sum_comp σ (fun j => conj (x j) * y j)

lemma TS_swap0 (x y : Fin 3 → ℂ) (a : Fin 3) :
    TS (x ∘ Equiv.swap 0 a) (y ∘ Equiv.swap 0 a) = TS x y := by
  fin_cases a
  · simp
  · simp only [TS, piS, hS, uS, Function.comp_apply]
    simp [Equiv.swap_apply_def]
    ring
  · simp only [TS, piS, hS, uS, Function.comp_apply]
    simp [Equiv.swap_apply_def]
    ring

/-- Columns `1, 2` exchanged, column `0` fixed: the signature is unchanged. -/
lemma TS_swap12 {x y x' y' : Fin 3 → ℂ} (a0 : x' 0 = x 0) (a1 : x' 1 = x 2) (a2 : x' 2 = x 1)
    (b0 : y' 0 = y 0) (b1 : y' 1 = y 2) (b2 : y' 2 = y 1) : TS x' y' = TS x y := by
  simp only [TS, piS, hS, uS, map_mul, a0, a1, a2, b0, b1, b2]; ring

lemma TS_same {x y x' y' : Fin 3 → ℂ} (a0 : x' 0 = x 0) (a1 : x' 1 = x 1) (a2 : x' 2 = x 2)
    (b0 : y' 0 = y 0) (b1 : y' 1 = y 1) (b2 : y' 2 = y 2) : TS x' y' = TS x y := by
  simp only [TS, piS, hS, uS, a0, a1, a2, b0, b1, b2]

/-! ### Two unit numbers with a given sum -/

lemma unit_pair_prod {p q : ℂ} (hp : Complex.normSq p = 1) (hq : Complex.normSq q = 1) :
    p * q * conj (p + q) = p + q := by
  have np := ne_zero_of_normSq hp; have nq := ne_zero_of_normSq hq
  rw [map_add, conj_eq_inv hp, conj_eq_inv hq]; field_simp; ring

/-- Two pairs of unit numbers with the same sum: the same unordered pair, or both sums vanish. -/
lemma unit_pair {p q p' q' : ℂ} (hp : Complex.normSq p = 1) (hq : Complex.normSq q = 1)
    (hp' : Complex.normSq p' = 1) (hq' : Complex.normSq q' = 1) (hs : p' + q' = p + q) :
    (p' = p ∧ q' = q) ∨ (p' = q ∧ q' = p) ∨ (q = -p ∧ q' = -p') := by
  by_cases h : p + q = 0
  · exact Or.inr (Or.inr ⟨by linear_combination h, by linear_combination hs + h⟩)
  · have e := unit_pair_prod hp hq
    have e' := unit_pair_prod hp' hq'
    rw [hs] at e'
    have hc : conj (p + q) ≠ 0 := (map_ne_zero _).2 h
    have hprod : p' * q' = p * q := mul_right_cancel₀ hc (e'.trans e.symm)
    rcases two_swap hs hprod with h1 | h1
    · exact Or.inl h1
    · exact Or.inr (Or.inl h1)

/-! ### The degenerate shapes have real signature -/

lemma im_TS_A {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) (ex : x 2 = -x 1) (ey : y 2 = y 1) : (TS x y).im = 0 := by
  rw [← Complex.conj_eq_iff_im]
  have h0 := ne_zero_of_normSq (hx 0); have h1 := ne_zero_of_normSq (hx 1)
  have k0 := ne_zero_of_normSq (hy 0); have k1 := ne_zero_of_normSq (hy 1)
  simp only [TS, piS, hS, uS, ex, ey, map_neg, map_mul, map_add, map_sub, map_pow, map_inv₀, inv_inv,
    conj_eq_inv (hx 0), conj_eq_inv (hx 1), conj_eq_inv (hy 0), conj_eq_inv (hy 1)]
  field_simp
  ring

lemma im_TS_B {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) (ex : x 2 = x 1) (ey : y 2 = -y 1) : (TS x y).im = 0 := by
  rw [← Complex.conj_eq_iff_im]
  have h0 := ne_zero_of_normSq (hx 0); have h1 := ne_zero_of_normSq (hx 1)
  have k0 := ne_zero_of_normSq (hy 0); have k1 := ne_zero_of_normSq (hy 1)
  simp only [TS, piS, hS, uS, ex, ey, map_neg, map_mul, map_add, map_sub, map_pow, map_inv₀, inv_inv,
    conj_eq_inv (hx 0), conj_eq_inv (hx 1), conj_eq_inv (hy 0), conj_eq_inv (hy 1)]
  field_simp
  ring

lemma im_TS_C {x y : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) (ex : x 2 = -x 1) (ey : y 2 = -y 1) : (TS x y).im = 0 := by
  rw [← Complex.conj_eq_iff_im]
  have h0 := ne_zero_of_normSq (hx 0); have h1 := ne_zero_of_normSq (hx 1)
  have k0 := ne_zero_of_normSq (hy 0); have k1 := ne_zero_of_normSq (hy 1)
  simp only [TS, piS, hS, uS, ex, ey, map_neg, map_mul, map_add, map_sub, map_pow, map_inv₀, inv_inv,
    conj_eq_inv (hx 0), conj_eq_inv (hx 1), conj_eq_inv (hy 0), conj_eq_inv (hy 1)]
  field_simp
  ring

/-! ### The two-column alternative with the shared column in position `0` -/

lemma conj_cancel {a b c : ℂ} (h : a * (conj b - conj c) = 0) (ha : a ≠ 0) : b = c := by
  have e : conj b = conj c := by linear_combination (mul_eq_zero.1 h).resolve_left ha
  simpa using congrArg conj e

lemma conj_sub_ne {b c : ℂ} (h : b ≠ c) : conj b - conj c ≠ 0 :=
  sub_ne_zero.2 fun e => h (by simpa using congrArg conj e)

/-- **Lemma 3.1, Lean form.** Two unit sides with the same Gram data and the same column `0` either have the
same signature, or the first has a real signature. -/
theorem shared0 {x y x' y' : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) (hx' : ∀ j, Complex.normSq (x' j) = 1)
    (hy' : ∀ j, Complex.normSq (y' j) = 1) (a0 : x' 0 = x 0) (b0 : y' 0 = y 0)
    (hs : sS x' = sS x) (ht : sS y' = sS y) (hr : rS x' y' = rS x y) :
    TS x' y' = TS x y ∨ (TS x y).im = 0 := by
  simp only [sS, rS] at hs ht hr
  simp only [a0, b0] at hs ht hr
  have S : x' 1 + x' 2 = x 1 + x 2 := by linear_combination hs
  have T : y' 1 + y' 2 = y 1 + y 2 := by linear_combination ht
  have R : y' 1 * conj (x' 1) + y' 2 * conj (x' 2) = y 1 * conj (x 1) + y 2 * conj (x 2) := by
    linear_combination hr
  have same : x' 1 = x 1 → x' 2 = x 2 → y' 1 = y 1 → y' 2 = y 2 → TS x' y' = TS x y ∨ (TS x y).im = 0 :=
    fun a1 a2 b1 b2 => Or.inl (TS_same a0 a1 a2 b0 b1 b2)
  have swap : x' 1 = x 2 → x' 2 = x 1 → y' 1 = y 2 → y' 2 = y 1 → TS x' y' = TS x y ∨ (TS x y).im = 0 :=
    fun a1 a2 b1 b2 => Or.inl (TS_swap12 a0 a1 a2 b0 b1 b2)
  rcases unit_pair (hx 1) (hx 2) (hx' 1) (hx' 2) S with ⟨a1, a2⟩ | ⟨a1, a2⟩ | ⟨a1, a2⟩ <;>
  rcases unit_pair (hy 1) (hy 2) (hy' 1) (hy' 2) T with ⟨b1, b2⟩ | ⟨b1, b2⟩ | ⟨b1, b2⟩ <;>
  rw [a1, a2, b1, b2] at R <;> try simp only [map_neg] at R
  · exact same a1 a2 b1 b2
  · -- `x` kept, `y` swapped: `(y₁ − y₂)(x̄₁ − x̄₂) = 0`
    by_cases e : y 1 = y 2
    · exact same a1 a2 (b1.trans e.symm) (b2.trans e)
    · have := conj_cancel (a := y 1 - y 2) (b := x 1) (c := x 2) (by linear_combination -R)
        (sub_ne_zero.2 e)
      exact swap (a1.trans this) (a2.trans this.symm) b1 b2
  · -- `x` kept, `y` degenerate
    by_cases e : x 1 = x 2
    · exact Or.inr (im_TS_B hx hy e.symm b1)
    · have h := (mul_eq_zero.1 (show (y' 1 - y 1) * (conj (x 1) - conj (x 2)) = 0 by
        linear_combination R)).resolve_right (conj_sub_ne e)
      have h1 : y' 1 = y 1 := by linear_combination h
      exact same a1 a2 h1 (by rw [b2, h1, b1])
  · -- `x` swapped, `y` kept
    by_cases e : y 1 = y 2
    · exact swap a1 a2 (b1.trans e) (b2.trans e.symm)
    · have := conj_cancel (a := y 1 - y 2) (b := x 2) (c := x 1) (by linear_combination R)
        (sub_ne_zero.2 e)
      exact same (a1.trans this) (a2.trans this.symm) b1 b2
  · exact swap a1 a2 b1 b2
  · -- `x` swapped, `y` degenerate
    by_cases e : x 1 = x 2
    · exact Or.inr (im_TS_B hx hy e.symm b1)
    · have h := (mul_eq_zero.1 (show (y' 1 + y 1) * (conj (x 1) - conj (x 2)) = 0 by
        linear_combination -R)).resolve_right (conj_sub_ne e)
      have h1 : y' 1 = y 2 := by rw [b1]; linear_combination h
      exact swap a1 a2 h1 (by rw [b2, h1, b1]; ring)
  · -- `x` degenerate, `y` kept
    by_cases e : y 1 = y 2
    · exact Or.inr (im_TS_A hx hy a1 e.symm)
    · have := conj_cancel (a := y 1 - y 2) (b := x' 1) (c := x 1) (by linear_combination R)
        (sub_ne_zero.2 e)
      exact same this (by rw [a2, this, a1]) b1 b2
  · -- `x` degenerate, `y` swapped
    by_cases e : y 1 = y 2
    · exact Or.inr (im_TS_A hx hy a1 e.symm)
    · have := conj_cancel (a := y 1 - y 2) (b := x' 1) (c := x 2)
        (by rw [a1, map_neg]; linear_combination -R) (sub_ne_zero.2 e)
      exact swap this (by rw [a2, this, a1]; ring) b1 b2
  · exact Or.inr (im_TS_C hx hy a1 b1)

/-! ### Corollary 3.2 -/

/-- **Sides on different strict roots share no column** (`PRM.md` Corollary 3.2).  Two unit sides with the
same Gram data whose signatures are the two conjugate nonreal roots have no common column. -/
theorem no_shared_column {x y x' y' : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) (hx' : ∀ j, Complex.normSq (x' j) = 1)
    (hy' : ∀ j, Complex.normSq (y' j) = 1)
    (hs : sS x' = sS x) (ht : sS y' = sS y) (hr : rS x' y' = rS x y)
    (hT : TS x' y' = conj (TS x y)) (hIm : (TS x y).im ≠ 0) (a b : Fin 3) :
    ¬ (x' b = x a ∧ y' b = y a) := by
  rintro ⟨ex, ey⟩
  -- move the shared column to position `0` in both sides
  set σ := Equiv.swap (0 : Fin 3) a
  set τ := Equiv.swap (0 : Fin 3) b
  have key := shared0 (x := x ∘ σ) (y := y ∘ σ) (x' := x' ∘ τ) (y' := y' ∘ τ)
    (fun j => hx _) (fun j => hy _) (fun j => hx' _) (fun j => hy' _)
    (by simpa [σ, τ] using ex) (by simpa [σ, τ] using ey)
    (by rw [sS_perm, sS_perm, hs]) (by rw [sS_perm, sS_perm, ht]) (by rw [rS_perm, rS_perm, hr])
  rw [TS_swap0, TS_swap0, hT] at key
  rcases key with h | h
  · exact hIm (Complex.conj_eq_iff_im.1 h)
  · exact hIm h

end NoFourMUBs.Side
