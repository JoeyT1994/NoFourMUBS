import CriticalGenericNewtonGauge
import CriticalReconstructionData

set_option autoImplicit false
namespace CriticalNewtonGauge20261003
open Mub6 Mub6.Classification CompactCover GlobalCornerDomain
open CriticalNewton20261003 CriticalStripMoments20261003
noncomputable section

/-- The light algebra interface is literally the previously accepted physical
Newton polynomial, with identical coefficients and point order. -/
theorem pureNewtonPolynomial66_eq (L R : Data) :
    pureNewtonPolynomial66 L R=newtonPolynomial66 L R := rfl

def OppositeInputs (L R : Data) : Prop :=
  R.s= -L.s ∧ R.S= -L.S ∧ R.t= -L.t ∧ R.T= -L.T ∧ R.r= -L.r ∧ R.Q= -L.Q

theorem scaleData_oppositeInputs (a b : ℂ) (L R : Data) (h : OppositeInputs L R) :
    OppositeInputs (scaleData a b L) (scaleData a b R) := by
  rcases h with ⟨hs,hS,ht,hT,hr,hQ⟩
  simp [OppositeInputs,scaleData,hs,hS,ht,hT,hr,hQ]

theorem normalized_gauged_oppositeInputs {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) (a b : ℂ) :
    OppositeInputs (scaleData a b (stripLeftData H)) (scaleData a b (stripRightData H)) :=
  scaleData_oppositeInputs a b _ _ (normalized_opposite_data hH)

/-- The original physical matrix stays normalized. Only its two reciprocal-row
Newton data records are acted on by the same nonzero complex row gauge. -/
theorem allCritical_gauged_newtonPolynomial66_zero {H : CompactCover.Mat6}
    (hH : AllCritical H) (a b : ℂ) (ha : a≠0) (hb : b≠0) :
    newtonPolynomial66 (scaleData a b (stripLeftData H))
      (scaleData a b (stripRightData H))=0 := by
  have hx (j : Fin 6) : H 1 j≠0 := phase_nonzero (hH.1.1.1 1 j)
  have hy (j : Fin 6) : H 2 j≠0 := phase_nonzero (hH.1.1.1 2 j)
  change newtonPolynomial66 (scaleData a b (leftData (H 1) (H 2)))
    (scaleData a b (rightData (H 1) (H 2)))=0
  rw [generic_newtonPolynomial66_scale a b (H 1) (H 2) ha hb hx hy]
  exact allCritical_newtonPolynomial66_zero hH

theorem allCritical_reciprocal_newtonPolynomial66_zero {H : CompactCover.Mat6}
    (hH : AllCritical H) (hs : (stripLeftData H).s≠0) (ht : (stripLeftData H).t≠0) :
    newtonPolynomial66
      (scaleData (stripLeftData H).s⁻¹ (stripLeftData H).t⁻¹ (stripLeftData H))
      (scaleData (stripLeftData H).s⁻¹ (stripLeftData H).t⁻¹ (stripRightData H))=0 :=
  allCritical_gauged_newtonPolynomial66_zero hH _ _ (inv_ne_zero hs) (inv_ne_zero ht)

/-- The scaled capital sums are the original real squared correlation moduli;
this is not a conjugacy assertion for the scaled phase entries. -/
theorem normalized_reciprocal_inputs {H : CompactCover.Mat6}
    (hH : NormalizedCarrier H) (hs : (stripLeftData H).s≠0) (ht : (stripLeftData H).t≠0) :
    let D := stripLeftData H
    let G := scaleData D.s⁻¹ D.t⁻¹ D
    G.s=1 ∧ G.S=(Complex.normSq D.s : ℂ) ∧
    G.t=1 ∧ G.T=(Complex.normSq D.t : ℂ) ∧
    G.r=(D.s/D.t)*D.r ∧ G.Q=(D.t/D.s)*D.Q := by
  dsimp only
  have hc := phase_data_conjugates
    (x := stripLeftBlock H 1) (y := stripLeftBlock H 2)
    (fun j => hH.1.1 1 (GoodMinor.front j)) (fun j => hH.1.1 2 (GoodMinor.front j))
  have hS : (stripLeftData H).S=star (stripLeftData H).s := hc.1
  have hT : (stripLeftData H).T=star (stripLeftData H).t := hc.2.1
  rcases reciprocal_gauge_inputs (stripLeftData H) hs ht with ⟨hs1,hSc,ht1,hTc,hr,hQ⟩
  refine ⟨hs1,?_,ht1,?_,hr,hQ⟩
  · rw [hSc,hS]
    simp [Complex.normSq_eq_conj_mul_self,Complex.star_def,mul_comm]
  · rw [hTc,hT]
    simp [Complex.normSq_eq_conj_mul_self,Complex.star_def,mul_comm]

/-- Endpoint suitable for the lightweight scalar factorization interface. -/
theorem allCritical_reciprocal_pureNewton_zero {H : CompactCover.Mat6}
    (hH : AllCritical H) (hs : (stripLeftData H).s≠0) (ht : (stripLeftData H).t≠0) :
    pureNewtonPolynomial66
      (scaleData (stripLeftData H).s⁻¹ (stripLeftData H).t⁻¹ (stripLeftData H))
      (scaleData (stripLeftData H).s⁻¹ (stripLeftData H).t⁻¹ (stripRightData H))=0 := by
  rw [pureNewtonPolynomial66_eq]
  exact allCritical_reciprocal_newtonPolynomial66_zero hH hs ht

end
#print axioms pureNewtonPolynomial66_eq
#print axioms allCritical_reciprocal_pureNewton_zero
#print axioms scaleData_oppositeInputs
#print axioms normalized_gauged_oppositeInputs
#print axioms allCritical_gauged_newtonPolynomial66_zero
#print axioms allCritical_reciprocal_newtonPolynomial66_zero
#print axioms normalized_reciprocal_inputs
end CriticalNewtonGauge20261003
