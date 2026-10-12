import NoFourMUBs.Step2.CriticalZero.P7UnitRows

/-! Necessary index adapters for the two row triples in the original p=7 proof.
Finite cases only place the distinguished unit-sum entry; the algebra is reused. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
open scoped BigOperators
namespace NoFourMUBs.Step2.Critical.P7

theorem positive_triples_common_one (x y : Fin 3 → ℂ)
    (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1)
    (hsx : ∑ j, x j = 1) (hsy : ∑ j, y j = 1)
    (hc : ∑ j, y j * star (x j) = 1 + 2 * Complex.I) :
    ∃ j, x j = 1 ∧ y j = 1 := by
  obtain ⟨i, hi⟩ := unit_triple_contains_sum x 1 hx (by norm_num) hsx
  obtain ⟨j, hj⟩ := unit_triple_contains_sum y 1 hy (by norm_num) hsy
  rw [Fin.sum_univ_three] at hsx hsy hc
  fin_cases i <;> fin_cases j
  · change x 0 = 1 at hi
    change y 0 = 1 at hj
    exact ⟨0, hi, hj⟩
  · change x 0 = 1 at hi
    change y 1 = 1 at hj
    have hxk : x 2 = -x 1 := by linear_combination hsx - hi
    have hyk : y 2 = -y 0 := by linear_combination hsy - hj
    have hcross : y 0 + star (x 1) + y 0 * star (x 1) =
        1 + 2 * Complex.I := by
      simp only [hi, hj, hxk, hyk, star_one, star_neg, one_mul, mul_one, neg_mul_neg, neg_mul, mul_neg] at hc
      linear_combination hc
    rcases positive_crossed_alignment (x 1) (y 0) (hx 1) (hy 0) hcross with h | h
    · exact ⟨1, h, hj⟩
    · exact ⟨0, hi, h⟩
  · change x 0 = 1 at hi
    change y 2 = 1 at hj
    have hxk : x 1 = -x 2 := by linear_combination hsx - hi
    have hyk : y 1 = -y 0 := by linear_combination hsy - hj
    have hcross : y 0 + star (x 2) + y 0 * star (x 2) =
        1 + 2 * Complex.I := by
      simp only [hi, hj, hxk, hyk, star_one, star_neg, one_mul, mul_one, neg_mul_neg, neg_mul, mul_neg] at hc
      linear_combination hc
    rcases positive_crossed_alignment (x 2) (y 0) (hx 2) (hy 0) hcross with h | h
    · exact ⟨2, h, hj⟩
    · exact ⟨0, hi, h⟩
  · change x 1 = 1 at hi
    change y 0 = 1 at hj
    have hxk : x 2 = -x 0 := by linear_combination hsx - hi
    have hyk : y 2 = -y 1 := by linear_combination hsy - hj
    have hcross : y 1 + star (x 0) + y 1 * star (x 0) =
        1 + 2 * Complex.I := by
      simp only [hi, hj, hxk, hyk, star_one, star_neg, one_mul, mul_one, neg_mul_neg, neg_mul, mul_neg] at hc
      linear_combination hc
    rcases positive_crossed_alignment (x 0) (y 1) (hx 0) (hy 1) hcross with h | h
    · exact ⟨0, h, hj⟩
    · exact ⟨1, hi, h⟩
  · change x 1 = 1 at hi
    change y 1 = 1 at hj
    exact ⟨1, hi, hj⟩
  · change x 1 = 1 at hi
    change y 2 = 1 at hj
    have hxk : x 0 = -x 2 := by linear_combination hsx - hi
    have hyk : y 0 = -y 1 := by linear_combination hsy - hj
    have hcross : y 1 + star (x 2) + y 1 * star (x 2) =
        1 + 2 * Complex.I := by
      simp only [hi, hj, hxk, hyk, star_one, star_neg, one_mul, mul_one, neg_mul_neg, neg_mul, mul_neg] at hc
      linear_combination hc
    rcases positive_crossed_alignment (x 2) (y 1) (hx 2) (hy 1) hcross with h | h
    · exact ⟨2, h, hj⟩
    · exact ⟨1, hi, h⟩
  · change x 2 = 1 at hi
    change y 0 = 1 at hj
    have hxk : x 1 = -x 0 := by linear_combination hsx - hi
    have hyk : y 1 = -y 2 := by linear_combination hsy - hj
    have hcross : y 2 + star (x 0) + y 2 * star (x 0) =
        1 + 2 * Complex.I := by
      simp only [hi, hj, hxk, hyk, star_one, star_neg, one_mul, mul_one, neg_mul_neg, neg_mul, mul_neg] at hc
      linear_combination hc
    rcases positive_crossed_alignment (x 0) (y 2) (hx 0) (hy 2) hcross with h | h
    · exact ⟨0, h, hj⟩
    · exact ⟨2, hi, h⟩
  · change x 2 = 1 at hi
    change y 1 = 1 at hj
    have hxk : x 0 = -x 1 := by linear_combination hsx - hi
    have hyk : y 0 = -y 2 := by linear_combination hsy - hj
    have hcross : y 2 + star (x 1) + y 2 * star (x 1) =
        1 + 2 * Complex.I := by
      simp only [hi, hj, hxk, hyk, star_one, star_neg, one_mul, mul_one, neg_mul_neg, neg_mul, mul_neg] at hc
      linear_combination hc
    rcases positive_crossed_alignment (x 1) (y 2) (hx 1) (hy 2) hcross with h | h
    · exact ⟨1, h, hj⟩
    · exact ⟨2, hi, h⟩
  · change x 2 = 1 at hi
    change y 2 = 1 at hj
    exact ⟨2, hi, hj⟩

theorem negative_triples_fixed_pair (x y : Fin 3 → ℂ)
    (hx : ∀ j, Complex.normSq (x j) = 1)
    (hy : ∀ j, Complex.normSq (y j) = 1)
    (hsx : ∑ j, x j = -1) (hsy : ∑ j, y j = -1)
    (hc : ∑ j, y j * star (x j) = -1 - 2 * Complex.I) :
    ∃ i k, i ≠ k ∧ x i = -1 ∧ y i = Complex.I ∧
      x k = Complex.I ∧ y k = -Complex.I := by
  obtain ⟨i, hi⟩ := unit_triple_contains_sum x (-1) hx (by norm_num) hsx
  obtain ⟨j, hj⟩ := unit_triple_contains_sum y (-1) hy (by norm_num) hsy
  rw [Fin.sum_univ_three] at hsx hsy hc
  fin_cases i <;> fin_cases j
  · change x 0 = -1 at hi
    change y 0 = -1 at hj
    have hxk : x 2 = -x 1 := by linear_combination hsx - hi
    have hyk : y 2 = -y 1 := by linear_combination hsy - hj
    have hsame : 1 + 2 * y 1 * star (x 1) = -1 - 2 * Complex.I := by
      simp only [hi, hj, hxk, hyk, star_one, star_neg, one_mul, mul_one, neg_mul_neg, neg_mul, mul_neg] at hc
      linear_combination hc
    exact (negative_aligned_impossible (x 1) (y 1) (hx 1) (hy 1) hsame).elim
  · change x 0 = -1 at hi
    change y 1 = -1 at hj
    have hxk : x 2 = -x 1 := by linear_combination hsx - hi
    have hyk : y 2 = -y 0 := by linear_combination hsy - hj
    have hcross : -y 0 - star (x 1) + y 0 * star (x 1) =
        -1 - 2 * Complex.I := by
      simp only [hi, hj, hxk, hyk, star_one, star_neg, one_mul, mul_one, neg_mul_neg, neg_mul, mul_neg] at hc
      linear_combination hc
    obtain ⟨hu, hv⟩ := negative_crossed_alignment (x 1) (y 0) (hx 1) (hy 0) hcross
    exact ⟨0, 2, by decide, hi, hv, by simpa [hu] using hxk, by simpa [hv] using hyk⟩
  · change x 0 = -1 at hi
    change y 2 = -1 at hj
    have hxk : x 1 = -x 2 := by linear_combination hsx - hi
    have hyk : y 1 = -y 0 := by linear_combination hsy - hj
    have hcross : -y 0 - star (x 2) + y 0 * star (x 2) =
        -1 - 2 * Complex.I := by
      simp only [hi, hj, hxk, hyk, star_one, star_neg, one_mul, mul_one, neg_mul_neg, neg_mul, mul_neg] at hc
      linear_combination hc
    obtain ⟨hu, hv⟩ := negative_crossed_alignment (x 2) (y 0) (hx 2) (hy 0) hcross
    exact ⟨0, 1, by decide, hi, hv, by simpa [hu] using hxk, by simpa [hv] using hyk⟩
  · change x 1 = -1 at hi
    change y 0 = -1 at hj
    have hxk : x 2 = -x 0 := by linear_combination hsx - hi
    have hyk : y 2 = -y 1 := by linear_combination hsy - hj
    have hcross : -y 1 - star (x 0) + y 1 * star (x 0) =
        -1 - 2 * Complex.I := by
      simp only [hi, hj, hxk, hyk, star_one, star_neg, one_mul, mul_one, neg_mul_neg, neg_mul, mul_neg] at hc
      linear_combination hc
    obtain ⟨hu, hv⟩ := negative_crossed_alignment (x 0) (y 1) (hx 0) (hy 1) hcross
    exact ⟨1, 2, by decide, hi, hv, by simpa [hu] using hxk, by simpa [hv] using hyk⟩
  · change x 1 = -1 at hi
    change y 1 = -1 at hj
    have hxk : x 2 = -x 0 := by linear_combination hsx - hi
    have hyk : y 2 = -y 0 := by linear_combination hsy - hj
    have hsame : 1 + 2 * y 0 * star (x 0) = -1 - 2 * Complex.I := by
      simp only [hi, hj, hxk, hyk, star_one, star_neg, one_mul, mul_one, neg_mul_neg, neg_mul, mul_neg] at hc
      linear_combination hc
    exact (negative_aligned_impossible (x 0) (y 0) (hx 0) (hy 0) hsame).elim
  · change x 1 = -1 at hi
    change y 2 = -1 at hj
    have hxk : x 0 = -x 2 := by linear_combination hsx - hi
    have hyk : y 0 = -y 1 := by linear_combination hsy - hj
    have hcross : -y 1 - star (x 2) + y 1 * star (x 2) =
        -1 - 2 * Complex.I := by
      simp only [hi, hj, hxk, hyk, star_one, star_neg, one_mul, mul_one, neg_mul_neg, neg_mul, mul_neg] at hc
      linear_combination hc
    obtain ⟨hu, hv⟩ := negative_crossed_alignment (x 2) (y 1) (hx 2) (hy 1) hcross
    exact ⟨1, 0, by decide, hi, hv, by simpa [hu] using hxk, by simpa [hv] using hyk⟩
  · change x 2 = -1 at hi
    change y 0 = -1 at hj
    have hxk : x 1 = -x 0 := by linear_combination hsx - hi
    have hyk : y 1 = -y 2 := by linear_combination hsy - hj
    have hcross : -y 2 - star (x 0) + y 2 * star (x 0) =
        -1 - 2 * Complex.I := by
      simp only [hi, hj, hxk, hyk, star_one, star_neg, one_mul, mul_one, neg_mul_neg, neg_mul, mul_neg] at hc
      linear_combination hc
    obtain ⟨hu, hv⟩ := negative_crossed_alignment (x 0) (y 2) (hx 0) (hy 2) hcross
    exact ⟨2, 1, by decide, hi, hv, by simpa [hu] using hxk, by simpa [hv] using hyk⟩
  · change x 2 = -1 at hi
    change y 1 = -1 at hj
    have hxk : x 0 = -x 1 := by linear_combination hsx - hi
    have hyk : y 0 = -y 2 := by linear_combination hsy - hj
    have hcross : -y 2 - star (x 1) + y 2 * star (x 1) =
        -1 - 2 * Complex.I := by
      simp only [hi, hj, hxk, hyk, star_one, star_neg, one_mul, mul_one, neg_mul_neg, neg_mul, mul_neg] at hc
      linear_combination hc
    obtain ⟨hu, hv⟩ := negative_crossed_alignment (x 1) (y 2) (hx 1) (hy 2) hcross
    exact ⟨2, 0, by decide, hi, hv, by simpa [hu] using hxk, by simpa [hv] using hyk⟩
  · change x 2 = -1 at hi
    change y 2 = -1 at hj
    have hxk : x 1 = -x 0 := by linear_combination hsx - hi
    have hyk : y 1 = -y 0 := by linear_combination hsy - hj
    have hsame : 1 + 2 * y 0 * star (x 0) = -1 - 2 * Complex.I := by
      simp only [hi, hj, hxk, hyk, star_one, star_neg, one_mul, mul_one, neg_mul_neg, neg_mul, mul_neg] at hc
      linear_combination hc
    exact (negative_aligned_impossible (x 0) (y 0) (hx 0) (hy 0) hsame).elim

end NoFourMUBs.Step2.Critical.P7
