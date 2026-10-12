import NoFourMUBs.Step2.SOS.CornerPairMoments
import NoFourMUBs.Step2.SOS.MomentRealAverage

/-! The square term in the selected target follows from the elementary
identity `re z * re w = (re (z*w) + re (z*conj w))/2`. -/

noncomputable section
open scoped BigOperators ComplexConjugate
open OAI.MUB6
namespace NoFourMUBs.Step2.SOS.CornerPairs

private theorem average_product_pairs {E : Type*} [Fintype E]
    (f : E × E → ℝ) :
    average (fun rs : E × E => average (fun cs : E × E =>
      f (rs.1, cs.1) * f (rs.2, cs.2))) = (average f) ^ 2 := by
  rw [← average_prod (fun s : (E × E) × (E × E) =>
    f (s.1.1, s.2.1) * f (s.1.2, s.2.2))]
  have he := average_equiv (Equiv.prodProdProdComm E E E E)
    (fun s : (E × E) × (E × E) => f s.1 * f s.2)
  change average (fun s : (E × E) × (E × E) =>
    f (s.1.1, s.2.1) * f (s.1.2, s.2.2)) = _ at he
  rw [he, average_prod]
  simp_rw [average_mul, mul_comm (f _) (average f)]
  rw [average_mul]
  ring

theorem squareMoment_expand {H : CMatrix} (hH : IsHadamard H)
    (A : Matrix (Fin 3) (Fin 3) ℤ) (hA : A.transpose = A) :
    (injectiveMoment H A) ^ 2 =
      (∑ p : Fin 34, ∑ q : Fin 34,
        weight p * weight q * (injectiveMoment H (overlapExponent A A p q) +
          injectiveMoment H (overlapExponent A (-A) p q))) / 2 := by
  let f (K : CMatrix) (s : (Fin 3 ↪ Coord) × (Fin 3 ↪ Coord)) : ℝ :=
    (exponentMonomial K A s.1 s.2).re
  have ht : average (f H.transpose) = average (f H) := by
    simp only [f, ← exponentMonomial_transpose, hA]
    exact average_equiv (Equiv.prodComm _ _) (f H)
  have hm : injectiveMoment H A = average (f H) :=
    injectiveMoment_of_symmetric H A hA
  have pointwise (rs cs : (Fin 3 ↪ Coord) × (Fin 3 ↪ Coord)) :
      (((exponentMonomial H A rs.1 cs.1 * exponentMonomial H A rs.2 cs.2).re +
         (exponentMonomial H.transpose A rs.1 cs.1 *
          exponentMonomial H.transpose A rs.2 cs.2).re) / 2 +
       ((exponentMonomial H A rs.1 cs.1 * exponentMonomial H (-A) rs.2 cs.2).re +
         (exponentMonomial H.transpose A rs.1 cs.1 *
          exponentMonomial H.transpose (-A) rs.2 cs.2).re) / 2) / 2 =
      (f H (rs.1, cs.1) * f H (rs.2, cs.2) +
       f H.transpose (rs.1, cs.1) * f H.transpose (rs.2, cs.2)) / 2 := by
    rw [exponentMonomial_neg H hH.1, exponentMonomial_neg H.transpose hH.transpose.1]
    simp only [f, Complex.mul_re, Complex.conj_re, Complex.conj_im]
    ring
  calc
    _ = ((average (f H)) ^ 2 + (average (f H.transpose)) ^ 2) / 2 := by
      rw [ht, hm]
      ring
    _ = average (fun rs : (Fin 3 ↪ Coord) × (Fin 3 ↪ Coord) =>
        average (fun cs : (Fin 3 ↪ Coord) × (Fin 3 ↪ Coord) =>
          (f H (rs.1, cs.1) * f H (rs.2, cs.2) +
           f H.transpose (rs.1, cs.1) * f H.transpose (rs.2, cs.2)) / 2)) := by
      simp only [div_eq_mul_inv, mul_comm _ (2 : ℝ)⁻¹, average_mul, average_add]
      rw [average_product_pairs, average_product_pairs]
    _ = _ := by
      have hplus := pairedMoment_expand hH A A
      have hminus := pairedMoment_expand hH A (-A)
      simp only [div_eq_mul_inv, mul_comm _ (2 : ℝ)⁻¹,
        average_mul, average_add] at hplus hminus
      simp_rw [← pointwise]
      simp only [div_eq_mul_inv, mul_comm _ (2 : ℝ)⁻¹, average_mul, average_add]
      rw [hplus, hminus]
      simp only [mul_add, Finset.sum_add_distrib]

end NoFourMUBs.Step2.SOS.CornerPairs
