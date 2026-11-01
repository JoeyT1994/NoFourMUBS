import NoFourMUBs.Step2.SideAlg

/-!
# Matched uniqueness (L2), part 2: two sides with the same data differ by a column permutation

**Theorem (`side_unique`).** Two normalised phase sides with the same Gram data `(s, t, r)` and the same
signature `T`, `Im T ≠ 0`, differ by a permutation of their columns.

This is the uniqueness half of `MinimalReconstruction/Proofs/SIDE_FIBER.md` (at most one column-permutation
orbit on each root).

Proof (a shorter route than the Fourier reconstruction of `STEP2_BLUEPRINT.md` Lemma 7.3):
* `side_determined` gives `u' = u`, `v' = v`, `π' = π`;
* `e₁ = s`, `e₂ = u s̄`, `e₃ = u` fix the multiset of the `xⱼ` (`exists_perm_of_esymm`);
* after aligning the `x`'s, the defects `dⱼ = y'ⱼ − yⱼ` satisfy `Σ d = Σ x d = Σ x̄ d = 0` (from `t`, `π`, `r`),
  so `(xⱼ − xₖ)(xⱼ − xₗ) dⱼ = 0` (Vandermonde); an `x`-value of multiplicity one has `dⱼ = 0`, and a repeated
  value allows the swap (`pairing`).
-/

open ComplexConjugate

noncomputable section

namespace NoFourMUBs.Side

def e2S (x : Fin 3 → ℂ) : ℂ := x 0 * x 1 + x 0 * x 2 + x 1 * x 2

lemma sS_sum (x : Fin 3 → ℂ) : sS x = ∑ j, x j := by simp [sS, Fin.sum_univ_three]
lemma uS_prod (x : Fin 3 → ℂ) : uS x = ∏ j, x j := by simp [uS, Fin.prod_univ_three]
lemma e2S_sum (x : Fin 3 → ℂ) : e2S x = ((∑ j, x j) ^ 2 - ∑ j, x j ^ 2) / 2 := by
  simp [e2S, Fin.sum_univ_three]; ring

lemma sS_perm (x : Fin 3 → ℂ) (σ : Equiv.Perm (Fin 3)) : sS (x ∘ σ) = sS x := by
  rw [sS_sum, sS_sum]; exact Equiv.sum_comp σ x
lemma uS_perm (x : Fin 3 → ℂ) (σ : Equiv.Perm (Fin 3)) : uS (x ∘ σ) = uS x := by
  rw [uS_prod, uS_prod]; exact Equiv.prod_comp σ x
lemma e2S_perm (x : Fin 3 → ℂ) (σ : Equiv.Perm (Fin 3)) : e2S (x ∘ σ) = e2S x := by
  rw [e2S_sum, e2S_sum]
  congr 2
  · exact congrArg (· ^ 2) (Equiv.sum_comp σ x)
  · exact Equiv.sum_comp σ (fun j => x j ^ 2)

lemma e2S_unit {x : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1) : e2S x = uS x * conj (sS x) := by
  have cx : ∀ j, conj (x j) = (x j)⁻¹ := fun j => conj_eq_inv (hx j)
  have h0 := ne_zero_of_normSq (hx 0); have h1 := ne_zero_of_normSq (hx 1)
  have h2 := ne_zero_of_normSq (hx 2)
  simp only [e2S, uS, sS, map_add, cx]; field_simp; ring

/-! ### Vieta -/

lemma two_root' {a b c y1 y2 y3 : ℂ} (h : y1 = a) (hs : a + b + c = y1 + y2 + y3)
    (hp : a * b * c = y1 * y2 * y3) (ha : a ≠ 0) : y2 = b ∨ y2 = c := by
  subst h
  have hs' : y2 + y3 = b + c := by linear_combination -hs
  have hp' : y2 * y3 = b * c := mul_left_cancel₀ ha (by linear_combination -hp)
  have : (y2 - b) * (y2 - c) = 0 := by linear_combination y2 * hs' - hp'
  rcases mul_eq_zero.mp this with h | h
  · left; linear_combination h
  · right; linear_combination h

lemma exists_perm_of_esymm {a b : Fin 3 → ℂ} (h1 : sS b = sS a) (h2 : e2S b = e2S a) (h3 : uS b = uS a)
    (hne : uS a ≠ 0) : ∃ σ : Equiv.Perm (Fin 3), ∀ j, b j = a (σ j) := by
  simp only [sS, e2S, uS] at h1 h2 h3 hne
  have n0 : a 0 ≠ 0 := fun h => hne (by rw [h]; ring)
  have n1 : a 1 ≠ 0 := fun h => hne (by rw [h]; ring)
  have n2 : a 2 ≠ 0 := fun h => hne (by rw [h]; ring)
  have hb2 : b 2 = a 0 + a 1 + a 2 - b 0 - b 1 := by linear_combination h1
  have hr : (b 0 - a 0) * (b 0 - a 1) * (b 0 - a 2) = 0 := by
    linear_combination (b 0) ^ 2 * h1 - b 0 * h2 + h3
  have fin : ∀ (σ : Equiv.Perm (Fin 3)), b 0 = a (σ 0) → b 1 = a (σ 1) →
      a 0 + a 1 + a 2 = a (σ 0) + a (σ 1) + a (σ 2) → ∃ σ : Equiv.Perm (Fin 3), ∀ j, b j = a (σ j) := by
    intro σ e0 e1 hsum
    refine ⟨σ, fun j => ?_⟩
    fin_cases j
    · exact e0
    · exact e1
    · show b 2 = a (σ 2); rw [hb2, e0, e1]; linear_combination hsum
  rcases mul_eq_zero.mp hr with hr | hr
  · rcases mul_eq_zero.mp hr with hr | hr
    · have e : b 0 = a 0 := by linear_combination hr
      rcases two_root' (a := a 0) (b := a 1) (c := a 2) (y2 := b 1) (y3 := b 2) e
        (by linear_combination -h1) (by linear_combination -h3) n0 with h | h
      · exact fin (Equiv.refl _) e h (by simp)
      · exact fin (Equiv.swap 1 2) (by simpa [Equiv.swap_apply_def] using e) (by simpa [Equiv.swap_apply_def] using h)
          (by simp [Equiv.swap_apply_def]; ring)
    · have e : b 0 = a 1 := by linear_combination hr
      rcases two_root' (a := a 1) (b := a 0) (c := a 2) (y2 := b 1) (y3 := b 2) e
        (by linear_combination -h1) (by linear_combination -h3) n1 with h | h
      · exact fin (Equiv.swap 0 1) (by simpa [Equiv.swap_apply_def] using e) (by simpa [Equiv.swap_apply_def] using h) (by simp [Equiv.swap_apply_def]; ring)
      · exact fin (Equiv.swap 0 1 * Equiv.swap 1 2) (by simpa [Equiv.swap_apply_def] using e)
          (by simpa [Equiv.swap_apply_def] using h) (by simp [Equiv.swap_apply_def]; ring)
  · have e : b 0 = a 2 := by linear_combination hr
    rcases two_root' (a := a 2) (b := a 0) (c := a 1) (y2 := b 1) (y3 := b 2) e
      (by linear_combination -h1) (by linear_combination -h3) n2 with h | h
    · exact fin (Equiv.swap 1 2 * Equiv.swap 0 1) (by simpa [Equiv.swap_apply_def] using e)
        (by simpa [Equiv.swap_apply_def] using h) (by simp [Equiv.swap_apply_def]; ring)
    · exact fin (Equiv.swap 0 2) (by simpa [Equiv.swap_apply_def] using e) (by simpa [Equiv.swap_apply_def] using h)
        (by simp [Equiv.swap_apply_def]; ring)

/-! ### Pairing -/

lemma two_swap {p q a b : ℂ} (hs : p + q = a + b) (hp : p * q = a * b) :
    (p = a ∧ q = b) ∨ (p = b ∧ q = a) := by
  have : (p - a) * (p - b) = 0 := by linear_combination p * hs - hp
  rcases mul_eq_zero.mp this with h | h
  · left; exact ⟨by linear_combination h, by linear_combination hs - h⟩
  · right; exact ⟨by linear_combination h, by linear_combination hs - h⟩

lemma pairing {x y w : Fin 3 → ℂ} (hx : ∀ j, x j * conj (x j) = 1) (hy : ∀ j, y j ≠ 0)
    (hs : sS w = sS y) (hu : uS w = uS y) (he : e2S w = e2S y)
    (h1 : x 0 * w 0 + x 1 * w 1 + x 2 * w 2 = x 0 * y 0 + x 1 * y 1 + x 2 * y 2)
    (h2 : conj (x 0) * w 0 + conj (x 1) * w 1 + conj (x 2) * w 2 =
      conj (x 0) * y 0 + conj (x 1) * y 1 + conj (x 2) * y 2) :
    ∃ κ : Equiv.Perm (Fin 3), ∀ j, x (κ j) = x j ∧ y (κ j) = w j := by
  simp only [sS, uS] at hs hu
  have E0 : (w 0 - y 0) + (w 1 - y 1) + (w 2 - y 2) = 0 := by linear_combination hs
  have E1 : x 0 * (w 0 - y 0) + x 1 * (w 1 - y 1) + x 2 * (w 2 - y 2) = 0 := by linear_combination h1
  have E2 : x 1 * x 2 * (w 0 - y 0) + x 0 * x 2 * (w 1 - y 1) + x 0 * x 1 * (w 2 - y 2) = 0 := by
    linear_combination (x 0 * x 1 * x 2) * h2 - (x 1 * x 2 * (w 0 - y 0)) * hx 0 -
      (x 0 * x 2 * (w 1 - y 1)) * hx 1 - (x 0 * x 1 * (w 2 - y 2)) * hx 2
  have V0 : (x 0 - x 1) * (x 0 - x 2) * (w 0 - y 0) = 0 := by
    linear_combination x 0 * E1 - x 0 * (x 1 + x 2) * E0 + E2
  have V1 : (x 1 - x 0) * (x 1 - x 2) * (w 1 - y 1) = 0 := by
    linear_combination x 1 * E1 - x 1 * (x 0 + x 2) * E0 + E2
  have V2 : (x 2 - x 0) * (x 2 - x 1) * (w 2 - y 2) = 0 := by
    linear_combination x 2 * E1 - x 2 * (x 0 + x 1) * E0 + E2
  have sub0 : ∀ {a b : ℂ}, a - b ≠ 0 ↔ a ≠ b := fun {a b} => sub_ne_zero
  have kill : ∀ {p q d : ℂ}, p ≠ 0 → q ≠ 0 → p * q * d = 0 → d = 0 := fun hp hq h =>
    (mul_eq_zero.mp h).resolve_left (mul_ne_zero hp hq)
  have idκ : (∀ j, w j = y j) → ∃ κ : Equiv.Perm (Fin 3), ∀ j, x (κ j) = x j ∧ y (κ j) = w j :=
    fun h => ⟨Equiv.refl _, fun j => ⟨rfl, (h j).symm⟩⟩
  by_cases a01 : x 0 = x 1 <;> by_cases a02 : x 0 = x 2
  · -- all equal
    obtain ⟨σ, hσ⟩ := exists_perm_of_esymm (a := y) (b := w) (by simp only [sS]; exact hs) he
      (by simp only [uS]; exact hu) (by simp only [uS]; exact mul_ne_zero (mul_ne_zero (hy 0) (hy 1)) (hy 2))
    have hc : ∀ k, x k = x 0 := by intro k; fin_cases k; exacts [rfl, a01.symm, a02.symm]
    exact ⟨σ, fun j => ⟨by rw [hc, hc j], (hσ j).symm⟩⟩
  · -- x 0 = x 1 ≠ x 2
    have d2 : w 2 - y 2 = 0 := kill (sub0.mpr (Ne.symm a02)) (sub0.mpr (by rw [← a01]; exact Ne.symm a02)) V2
    have hw2 : w 2 = y 2 := by linear_combination d2
    rcases two_swap (p := w 0) (q := w 1) (a := y 0) (b := y 1) (by linear_combination hs - d2)
      (mul_right_cancel₀ (hy 2) (by linear_combination hu - w 0 * w 1 * d2)) with ⟨e0, e1⟩ | ⟨e0, e1⟩
    · exact idκ (fun j => by fin_cases j <;> simp [e0, e1, hw2])
    · refine ⟨Equiv.swap 0 1, fun j => ?_⟩
      fin_cases j <;> simp [Equiv.swap_apply_def, a01, e0, e1, hw2]
  · by_cases a12 : x 1 = x 2
    · exact absurd (a02.trans a12.symm) a01
    · -- x 0 = x 2 ≠ x 1
      have d1 : w 1 - y 1 = 0 :=
        kill (sub0.mpr (fun h => a01 h.symm)) (sub0.mpr (fun h => a12 h)) V1
      have hw1 : w 1 = y 1 := by linear_combination d1
      rcases two_swap (p := w 0) (q := w 2) (a := y 0) (b := y 2) (by linear_combination hs - d1)
        (mul_right_cancel₀ (hy 1) (by linear_combination hu - w 0 * w 2 * d1)) with ⟨e0, e2⟩ | ⟨e0, e2⟩
      · exact idκ (fun j => by fin_cases j <;> simp [e0, e2, hw1])
      · refine ⟨Equiv.swap 0 2, fun j => ?_⟩
        fin_cases j <;> simp [Equiv.swap_apply_def, a02, e0, e2, hw1]
  · by_cases a12 : x 1 = x 2
    · -- x 1 = x 2 ≠ x 0
      have d0 : w 0 - y 0 = 0 := kill (sub0.mpr a01) (sub0.mpr a02) V0
      have hw0 : w 0 = y 0 := by linear_combination d0
      rcases two_swap (p := w 1) (q := w 2) (a := y 1) (b := y 2) (by linear_combination hs - d0)
        (mul_left_cancel₀ (hy 0) (by linear_combination hu - w 1 * w 2 * d0)) with ⟨e1, e2⟩ | ⟨e1, e2⟩
      · exact idκ (fun j => by fin_cases j <;> simp [e1, e2, hw0])
      · refine ⟨Equiv.swap 1 2, fun j => ?_⟩
        fin_cases j <;> simp [Equiv.swap_apply_def, a12, e1, e2, hw0]
    · -- all distinct
      have d0 := kill (sub0.mpr a01) (sub0.mpr a02) V0
      have d1 := kill (sub0.mpr (fun h => a01 h.symm)) (sub0.mpr a12) V1
      have d2 := kill (sub0.mpr (fun h => a02 h.symm)) (sub0.mpr (fun h => a12 h.symm)) V2
      refine idκ (fun j => ?_)
      fin_cases j
      · show w 0 = y 0; linear_combination d0
      · show w 1 = y 1; linear_combination d1
      · show w 2 = y 2; linear_combination d2

/-! ### Side uniqueness -/

lemma piS_eq (x y : Fin 3 → ℂ) : piS x y = sS x * sS y - ∑ j, x j * y j := by
  simp only [piS, sS, Fin.sum_univ_three]; ring

lemma rS_sum (x y : Fin 3 → ℂ) : rS x y = ∑ j, conj (x j) * y j := by
  simp only [rS, Fin.sum_univ_three]; ring

lemma unit_mul_conj {z : ℂ} (h : Complex.normSq z = 1) : z * conj z = 1 := by
  rw [Complex.mul_conj, h, Complex.ofReal_one]

lemma normSq_uS {x : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1) : Complex.normSq (uS x) = 1 := by
  simp [uS, hx]

lemma sum_perm_symm {x' y' : Fin 3 → ℂ} (f : ℂ → ℂ → ℂ) (σ : Equiv.Perm (Fin 3)) :
    ∑ j, f (x' (σ.symm j)) (y' (σ.symm j)) = ∑ k, f (x' k) (y' k) :=
  Equiv.sum_comp σ.symm (fun k => f (x' k) (y' k))

/-- **Side uniqueness.** Two normalised phase sides with the same Gram data and the same signature `T`,
`Im T ≠ 0`, differ by a permutation of their columns. -/
theorem side_unique {x y x' y' : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1) (hx' : ∀ j, Complex.normSq (x' j) = 1)
    (hy' : ∀ j, Complex.normSq (y' j) = 1)
    (hs : sS x' = sS x) (ht : sS y' = sS y) (hr : rS x' y' = rS x y) (hT : TS x' y' = TS x y)
    (hIm : (TS x y).im ≠ 0) :
    ∃ σ : Equiv.Perm (Fin 3), ∀ j, x' j = x (σ j) ∧ y' j = y (σ j) := by
  obtain ⟨I0, I1, I2, G⟩ := side_identities hx hy
  obtain ⟨I0', I1', I2', G'⟩ := side_identities hx' hy'
  rw [hs, ht, hr] at I0' I1' I2' G'
  have hh : hS x y ≠ 0 := by
    intro h0; apply hIm; simp [TS, h0]
  have hh' : hS x' y' ≠ 0 := by
    intro h0; apply hIm; rw [← hT]; simp [TS, h0]
  have hg : Complex.normSq (hS x' y') = Complex.normSq (hS x y) := by exact_mod_cast G'.trans G.symm
  obtain ⟨hu, hv, hπ⟩ := side_determined (unit_mul_conj (normSq_uS hx)) (unit_mul_conj (normSq_uS hy))
    (unit_mul_conj (normSq_uS hx')) (unit_mul_conj (normSq_uS hy')) hh hh' hg I0 I1 I2 I0' I1' I2' hT hIm
  obtain ⟨σ, hσ⟩ := exists_perm_of_esymm hs (by rw [e2S_unit hx', e2S_unit hx, hs, hu]) hu
    (ne_zero_of_normSq (normSq_uS hx))
  set w : Fin 3 → ℂ := y' ∘ σ.symm with hw
  have hxw : ∀ j, x' (σ.symm j) = x j := fun j => by rw [hσ, Equiv.apply_symm_apply]
  have hw_s : sS w = sS y := by rw [hw, sS_perm, ht]
  have hw_u : uS w = uS y := by rw [hw, uS_perm, hv]
  have hw_e : e2S w = e2S y := by rw [hw, e2S_perm, e2S_unit hy', e2S_unit hy, ht, hv]
  have s1 : ∑ j, x j * w j = ∑ j, x j * y j := by
    have e : ∑ j, x j * w j = ∑ k, x' k * y' k := by
      rw [← sum_perm_symm (x' := x') (y' := y') (fun a b => a * b) σ]
      exact Finset.sum_congr rfl fun j _ => by rw [hxw]; rfl
    have := piS_eq x' y'; rw [hπ, piS_eq, hs, ht] at this
    rw [e]; linear_combination this
  have s2 : ∑ j, conj (x j) * w j = ∑ j, conj (x j) * y j := by
    have e : ∑ j, conj (x j) * w j = ∑ k, conj (x' k) * y' k := by
      rw [← sum_perm_symm (x' := x') (y' := y') (fun a b => conj a * b) σ]
      exact Finset.sum_congr rfl fun j _ => by rw [hxw]; rfl
    rw [e, ← rS_sum, ← rS_sum, hr]
  simp only [Fin.sum_univ_three] at s1 s2
  obtain ⟨κ, hκ⟩ := pairing (fun j => unit_mul_conj (hx j)) (fun j => ne_zero_of_normSq (hy j))
    hw_s hw_u hw_e s1 s2
  refine ⟨σ.trans κ, fun j => ⟨?_, ?_⟩⟩
  · rw [Equiv.trans_apply, (hκ (σ j)).1, hσ]
  · rw [Equiv.trans_apply, (hκ (σ j)).2, hw, Function.comp_apply, Equiv.symm_apply_apply]

end NoFourMUBs.Side
