import NoFourMUBs.Step2.CriticalZero.EquicorrelationRowProducts
import NoFourMUBs.Reuse.Archive.FourierPhaseData
import NoFourMUBs.Reuse.Archive.CriticalZeroModuli

/-! Bind the existing second-moment identity to the repeated coordinate roots.
The existing real allocation theorem is reused on imaginary parts. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
open scoped BigOperators ComplexConjugate
namespace NoFourMUBs.Step2.Critical.Equicorrelation
open Hadamard6Extensions.FourierSide
open StrictReconstruction20261007.SideIntrinsic

theorem repeated_coordinate_roots (x : Fin 3 → ℂ) (a : ℂ)
    (hx : ∀ j, Complex.normSq (x j) = 1) (ha : Complex.normSq a = 1)
    (hs : ∑ j, x j = 2 + a) (hp : x 0 * x 1 * x 2 = a) :
    ∀ j, x j = 1 ∨ x j = a := by
  have hsecond := phase_second_moment hx
  have hsum : sum3 x = 2 + a := by simpa [sum3, Fin.sum_univ_three] using hs
  have hunit : a * star a = 1 := by
    simpa only [Complex.star_def, Complex.mul_conj, ha, Complex.ofReal_one]
  have hpair : second3 x = 2 * a + 1 := by
    rw [← hsecond, prod3, hp, hsum, star_add, star_ofNat]
    linear_combination hunit
  intro j
  have hfactor : (x j - 1) ^ 2 * (x j - a) = 0 := by
    rw [Fin.sum_univ_three] at hs
    dsimp only [second3] at hpair
    fin_cases j
    · change (x 0 - 1) ^ 2 * (x 0 - a) = 0
      linear_combination (x 0) ^ 2 * hs - (x 0) * hpair + hp
    · change (x 1 - 1) ^ 2 * (x 1 - a) = 0
      linear_combination (x 1) ^ 2 * hs - (x 1) * hpair + hp
    · change (x 2 - 1) ^ 2 * (x 2 - a) = 0
      linear_combination (x 2) ^ 2 * hs - (x 2) * hpair + hp
  rcases mul_eq_zero.mp hfactor with h | h
  · exact Or.inl (sub_eq_zero.mp (sq_eq_zero_iff.mp h))
  · exact Or.inr (sub_eq_zero.mp h)

theorem repeated_coordinate_position (x : Fin 3 → ℂ) (a : ℂ)
    (ha : a.im ≠ 0) (hs : ∑ j, x j = 2 + a)
    (hx : ∀ j, x j = 1 ∨ x j = a) :
    ∃ i, ∀ j, x j = if j = i then a else 1 := by
  have him (j : Fin 3) : (x j).im = 0 ∨ (x j).im = a.im := by
    rcases hx j with h | h
    · left; simp [h]
    · exact Or.inr (congrArg Complex.im h)
  have hsIm : (x 0).im + (x 1).im + (x 2).im = 2 * 0 + a.im := by
    simpa [Fin.sum_univ_three] using congrArg Complex.im hs
  have hone (j : Fin 3) (h : (x j).im = 0) : x j = 1 :=
    (hx j).resolve_right (fun he => ha (by simpa [he] using h))
  have hphase (j : Fin 3) (h : (x j).im = a.im) : x j = a :=
    (hx j).resolve_left (fun he => ha (by simpa [he] using h.symm))
  rcases CriticalScalarReduction20261003.repeated_modulus_assignment
    0 a.im (x 0).im (x 1).im (x 2).im (him 0) (him 1) (him 2) hsIm with
    ⟨h0, h1, h2⟩ | ⟨h0, h1, h2⟩ | ⟨h0, h1, h2⟩
  · refine ⟨2, ?_⟩
    intro j; fin_cases j <;> simp [hone 0 h0, hone 1 h1, hphase 2 h2]
  · refine ⟨1, ?_⟩
    intro j; fin_cases j <;> simp [hone 0 h0, hphase 1 h1, hone 2 h2]
  · refine ⟨0, ?_⟩
    intro j; fin_cases j <;> simp [hphase 0 h0, hone 1 h1, hone 2 h2]

/-- An actual unit block with the oriented Gram is a column permutation of
the original endpoint block, including its repeated coordinate roots. -/
theorem oriented_coordinate_allocation (x y : Fin 3 → ℂ)
    (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1)
    (hs : ∑ j, x j = 2 + alpha) (ht : ∑ j, y j = 2 + conj alpha)
    (hr : ∑ j, y j * star (x j) = 1 + 2 * conj alpha) :
    ∃ c : Fin 3 → Fin 3, Function.Injective c ∧
      x (c 0) = 1 ∧ y (c 0) = 1 ∧
      x (c 1) = 1 ∧ y (c 1) = conj alpha ∧
      x (c 2) = alpha ∧ y (c 2) = 1 := by
  let a : Rows ℂ := ⟨x 0, x 1, x 2, y 0, y 1, y 2⟩
  have ha : UnitRows a := ⟨hx 0, hx 1, hx 2, hy 0, hy 1, hy 2⟩
  obtain ⟨hpx, hpy⟩ := oriented_row_products a ha
    (by simpa [a, rowS, Fin.sum_univ_three] using hs)
    (by simpa [a, rowT, Fin.sum_univ_three] using ht)
    (by simpa [a, rowR, Fin.sum_univ_three, Complex.star_def] using hr)
  have hrootsx := repeated_coordinate_roots x alpha hx alpha_unit hs hpx
  have hrootsy := repeated_coordinate_roots y (conj alpha) hy
    (by simpa using alpha_unit) ht hpy
  obtain ⟨i, hi⟩ := repeated_coordinate_position x alpha
    (by norm_num [alpha]) hs hrootsx
  obtain ⟨j, hj⟩ := repeated_coordinate_position y (conj alpha)
    (by norm_num [alpha]) ht hrootsy
  have hij : i ≠ j := by
    intro he; subst j
    have hentry (l : Fin 3) : y l * star (x l) =
        1 + if l = i then (conj alpha) ^ 2 - 1 else 0 := by
      by_cases hl : l = i
      · simp only [hi, hj, if_pos hl, Complex.star_def]
        ring
      · simp [hi, hj, hl]
    have hsum : (∑ l, y l * star (x l)) = 2 + (conj alpha) ^ 2 := by
      simp_rw [hentry]
      rw [Finset.sum_add_distrib]
      norm_num <;> ring
    have hbad := hsum.symm.trans hr
    norm_num [alpha, Complex.ext_iff, Complex.mul_re, Complex.mul_im,
      pow_two, map_ofNat] at hbad
  have hk : ∃ k : Fin 3, k ≠ i ∧ k ≠ j := by
    fin_cases i <;> fin_cases j <;> first
      | exact False.elim (hij rfl)
      | exact ⟨0, by decide, by decide⟩
      | exact ⟨1, by decide, by decide⟩
      | exact ⟨2, by decide, by decide⟩
  obtain ⟨k, hki, hkj⟩ := hk
  let c : Fin 3 → Fin 3 := ![k, j, i]
  have hc : Function.Injective c := by
    intro u v he
    fin_cases u <;> fin_cases v <;> simp_all [c]
  refine ⟨c, hc, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;>
    simp [c, hi, hj, hki, hkj, hij, Ne.symm hij]

end NoFourMUBs.Step2.Critical.Equicorrelation
