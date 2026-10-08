import CriticalStripSquareSum
import CriticalWholeMoments
import CriticalLaurentCorner

set_option autoImplicit false
set_option maxRecDepth 12000
set_option maxHeartbeats 1500000
namespace CriticalStripMoments20261003
open Mub6 Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase GlobalCornerDomain
open CriticalPhysical20261003 CriticalLaurent20261003
open scoped BigOperators
noncomputable section

/-- Repeated-column terms vanish by the actual determinant, while distinct
terms use the all-corner physical radicand. This covers all 216 ordered triples. -/
theorem allCritical_ordered_invariant_zero {H : CompactCover.Mat6}
    (hH : AllCritical H) (c : Fin 3 → Fin 6) :
    signedInvariant (H.submatrix front c)=0 := by
  by_cases hc : Function.Injective c
  · have hr := allCritical_selected_R_zero hH c hc
    have hb := invariant_square_scalar (H.submatrix front c)
      (fun i j => hH.1.1.1 (front i) (c j))
      (fun j => hH.1.2.1 (c j))
    have hz : (signedInvariant (H.submatrix front c)).im^2=0 := by
      rw [← negative_square_re,hb,hr]
    apply Complex.ext
    · exact signedInvariant_re _
    · nlinarith [sq_nonneg (signedInvariant (H.submatrix front c)).im]
  · have he : ∃ i j, c i=c j ∧ i≠j := by
      simpa only [Function.Injective,not_forall,not_imp] using hc
    obtain ⟨i,j,hij,hne⟩ := he
    have hd : (H.submatrix front c).det=0 :=
      Matrix.det_zero_of_column_eq hne (fun k => by simp [Matrix.submatrix,hij])
    simp [signedInvariant,phaseInvariant,hd]

def orderedCorner (H : CompactCover.Mat6) (t : Triple) : CompactCover.Mat3 :=
  H.submatrix front ![t.1,t.2.1,t.2.2]

theorem normalized_cornerPolynomial {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) (t : Triple) :
    cornerPolynomial (columns (H 1) (H 2) t)=signedInvariant (orderedCorner H t) := by
  have hu : ∀ j, Complex.normSq (columns (H 1) (H 2) t j)=1 := by
    intro j
    fin_cases j <;> simp [columns,hH.1.1]
  have h0 : ∀ j, orderedCorner H t 0 j=1 := by
    intro j
    simp [orderedCorner,front,hH.2.1]
  rw [cornerPolynomial_unit _ hu,normalized_invariant _ h0]
  simp [phaseLaurentValue,signedExpression,phaseExpression,
    FourierPhysicalSide.permanent,columns,orderedCorner,front]

theorem allCritical_cornerPolynomial_zero {H : CompactCover.Mat6}
    (hH : AllCritical H) (t : Triple) : cornerPolynomial (columns (H 1) (H 2) t)=0 := by
  rw [normalized_cornerPolynomial hH.1]
  exact allCritical_ordered_invariant_zero hH _

/-- Checked whole-strip moment equation on actual physical rows. This is the
unsimplified 48 by 48 coefficient expansion; the separate 66-term cancellation
and subsequent scalar rational substitution are not premises or conclusions. -/
theorem allCritical_moment_quadratic_zero {H : CompactCover.Mat6} (hH : AllCritical H) :
    (-(∑ rs : Fin 48 × Fin 48,
      (((cornerTerms rs.1).1*(cornerTerms rs.2).1 : ℤ) : ℂ) *
        momentProduct (H 1) (H 2) ((cornerTerms rs.1).2+(cornerTerms rs.2).2)))/6=0 := by
  have hx (j : Fin 6) : H 1 j≠0 := Hadamard6.ne_zero_of_normSq_eq_one (hH.1.1.1 1 j)
  have hy (j : Fin 6) : H 2 j≠0 := Hadamard6.ne_zero_of_normSq_eq_one (hH.1.1.1 2 j)
  have h := ordered_square_moment_expansion cornerTerms (H 1) (H 2) hx hy
  change (-(∑ t : Triple, (cornerPolynomial (columns (H 1) (H 2) t))^2))/6 = _ at h
  simpa only [allCritical_cornerPolynomial_zero hH,zero_pow (by decide : (2 : ℕ)≠0),
    Finset.sum_const_zero,neg_zero,zero_div] using h.symm

end
#print axioms allCritical_ordered_invariant_zero
#print axioms normalized_cornerPolynomial
#print axioms allCritical_cornerPolynomial_zero
#print axioms allCritical_moment_quadratic_zero
end CriticalStripMoments20261003
