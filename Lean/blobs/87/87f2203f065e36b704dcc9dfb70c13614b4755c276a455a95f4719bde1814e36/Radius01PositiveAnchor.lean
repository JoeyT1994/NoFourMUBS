import Radius01PhysicalBridge

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.ChartRadius0120261006
open scoped ComplexConjugate BigOperators Matrix
open NativeSigned20261006 ChartExtension20261006
noncomputable section

/-- Three unit vectors in the closed left half-plane cannot sum to norm less
than one. This lemma handles the case with two nonnegative imaginary parts. -/
theorem left_halfplane_small_sum_impossible (a b c : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1) (hc : Complex.normSq c=1)
    (hra : a.re ≤ 0) (hrb : b.re ≤ 0) (hrc : c.re ≤ 0)
    (hia : 0 ≤ a.im) (hib : 0 ≤ b.im) (hs : ‖a+b+c‖ < 1) : False := by
  have hsq : Complex.normSq (a+b+c) < 1 := by
    rw [Complex.normSq_eq_norm_sq]
    nlinarith [norm_nonneg (a+b+c)]
  simp only [Complex.normSq_apply,Complex.add_re,Complex.add_im] at ha hb hc hsq
  have hreal : -(a.re+b.re+c.re) < 1 := by
    nlinarith [sq_nonneg (a.im+b.im+c.im)]
  have hqa : 1 ≤ -a.re+a.im := by
    nlinarith [mul_nonneg (neg_nonneg.mpr hra) hia]
  have hqb : 1 ≤ -b.re+b.im := by
    nlinarith [mul_nonneg (neg_nonneg.mpr hrb) hib]
  have hab : 1 < a.im+b.im := by linarith
  have hci : -1 ≤ c.im := by nlinarith [sq_nonneg c.re]
  have hai : a.im ≤ 1 := by nlinarith [sq_nonneg a.re]
  have hbi : b.im ≤ 1 := by nlinarith [sq_nonneg b.re]
  have hbase : 1 ≤ (a.re+b.re)^2+(a.im+b.im-1)^2 := by
    nlinarith [mul_nonneg_of_nonpos_of_nonpos hra hrb,
      mul_nonneg (sub_nonneg.mpr hai) (sub_nonneg.mpr hbi)]
  have hrealSq : (a.re+b.re)^2 ≤ (a.re+b.re+c.re)^2 := by
    nlinarith [mul_nonneg_of_nonpos_of_nonpos (show a.re+b.re ≤ 0 by linarith) hrc,
      sq_nonneg c.re]
  have himagSq : (a.im+b.im-1)^2 ≤ (a.im+b.im+c.im)^2 := by
    nlinarith
  nlinarith

theorem left_halfplane_small_sum_impossible_nonpos (a b c : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1) (hc : Complex.normSq c=1)
    (hra : a.re ≤ 0) (hrb : b.re ≤ 0) (hrc : c.re ≤ 0)
    (hia : a.im ≤ 0) (hib : b.im ≤ 0) (hs : ‖a+b+c‖ < 1) : False := by
  apply left_halfplane_small_sum_impossible (conj a) (conj b) (conj c)
  · simpa using ha
  · simpa using hb
  · simpa using hc
  · simpa using hra
  · simpa using hrb
  · simpa using hrc
  · simpa using hia
  · simpa using hib
  · simpa only [← map_add,Complex.norm_conj] using hs

/-- A strict positive-real anchor exists for every unit triple with sum norm
below one. No proximity to a particular rotated Fourier triple is assumed. -/
theorem unit_triple_small_sum_positive_real (a b c : ℂ)
    (ha : Complex.normSq a=1) (hb : Complex.normSq b=1) (hc : Complex.normSq c=1)
    (hs : ‖a+b+c‖ < 1) : 0 < a.re ∨ 0 < b.re ∨ 0 < c.re := by
  by_contra hn
  push_neg at hn
  obtain ⟨hra,hrb,hrc⟩ := hn
  have hs' (x y z : ℂ) (he : x+y+z=a+b+c) : ‖x+y+z‖ < 1 := by rwa [he]
  by_cases hia : 0 ≤ a.im
  · by_cases hib : 0 ≤ b.im
    · exact left_halfplane_small_sum_impossible a b c ha hb hc hra hrb hrc hia hib hs
    · by_cases hic : 0 ≤ c.im
      · exact left_halfplane_small_sum_impossible a c b ha hc hb hra hrc hrb hia hic
          (hs' _ _ _ (by ring))
      · exact left_halfplane_small_sum_impossible_nonpos b c a hb hc ha hrb hrc hra
          (le_of_lt (lt_of_not_ge hib)) (le_of_lt (lt_of_not_ge hic)) (hs' _ _ _ (by ring))
  · by_cases hib : 0 ≤ b.im
    · by_cases hic : 0 ≤ c.im
      · exact left_halfplane_small_sum_impossible b c a hb hc ha hrb hrc hra hib hic
          (hs' _ _ _ (by ring))
      · exact left_halfplane_small_sum_impossible_nonpos a c b ha hc hb hra hrc hrb
          (le_of_lt (lt_of_not_ge hia)) (le_of_lt (lt_of_not_ge hic)) (hs' _ _ _ (by ring))
    · exact left_halfplane_small_sum_impossible_nonpos a b c ha hb hc hra hrb hrc
        (le_of_lt (lt_of_not_ge hia)) (le_of_lt (lt_of_not_ge hib)) hs

/-- The literal side-row sum imposed by physical orthogonality. -/
theorem physical_side_row_sum {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (i : Fin 3) (hi : i ≠ 0) :
    blockB H i 0+blockB H i 1+blockB H i 2=sideSum (blockE H) i := by
  have hiz : upperIndex i ≠ 0 := by
    intro h
    apply hi
    apply Fin.ext
    exact congrArg (fun k : Fin 6 => k.val) h
  have hfull : (∑ k : Fin 6, H (upperIndex i) k)=0 := by
    simpa only [hd.1,map_one,mul_one,if_neg hiz] using hH.2 (upperIndex i) 0
  rw [sum_six_split] at hfull
  change (∑ k : Fin 3, blockE H i k)+(∑ k : Fin 3, blockB H i k)=0 at hfull
  unfold sideSum
  simpa [Fin.sum_univ_succ,add_assoc] using eq_neg_of_add_eq_zero_right hfull

/-- The anchor restriction has a physical witness for every nontrivial side
row in the entire radius-.1 domain, independent of the 8r Fourier estimate. -/
theorem physical_side_positive_anchor01 {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (b : Bool) (r : ℝ) (hball : InPuncturedSeedBall H b r)
    (hr : r ≤ radiusEnvelope01) (i : Fin 3) (hi : i ≠ 0) :
    ∃ j : Fin 3, 0 < (blockB H i j).re := by
  have hs : ‖blockB H i 0+blockB H i 1+blockB H i 2‖ < 1 := by
    rw [physical_side_row_sum hH hd i hi]
    have hb := (seedBall_side_sum_bounds hd b r hball).1 i hi
    dsimp [radiusEnvelope01] at hr
    linarith
  rcases unit_triple_small_sum_positive_real (blockB H i 0) (blockB H i 1) (blockB H i 2)
    (hH.1 _ _) (hH.1 _ _) (hH.1 _ _) hs with h | h | h
  · exact ⟨0,h⟩
  · exact ⟨1,h⟩
  · exact ⟨2,h⟩

end
end Centiradian20261006.ChartRadius0120261006

#print axioms Centiradian20261006.ChartRadius0120261006.left_halfplane_small_sum_impossible
#print axioms Centiradian20261006.ChartRadius0120261006.left_halfplane_small_sum_impossible_nonpos
#print axioms Centiradian20261006.ChartRadius0120261006.unit_triple_small_sum_positive_real
#print axioms Centiradian20261006.ChartRadius0120261006.physical_side_row_sum
#print axioms Centiradian20261006.ChartRadius0120261006.physical_side_positive_anchor01
