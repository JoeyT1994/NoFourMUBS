import CriticalCorrelationRechart

set_option autoImplicit false
namespace CriticalGeometricStrip20261003
open Mub6 Mub6.Numerical Mub6.Classification
open CompactCover GoodMinor FourierSeedBinding FourPhase FourPhaseWorker CanonicalCorners
open GlobalCornerDomain CriticalPhysical20261003 CriticalCorrelationChart20261003
noncomputable section

def Allocated (E : CompactCover.Mat3) (z : ℝ) : Prop :=
    (Complex.normSq (sideS E)=z+3 ∧ Complex.normSq (sideT E)=z+3 ∧
      Complex.normSq (sideR E)=(1-z)*(z+3)) ∨
    (Complex.normSq (sideS E)=z+3 ∧ Complex.normSq (sideT E)=(1-z)*(z+3) ∧
      Complex.normSq (sideR E)=z+3) ∨
    (Complex.normSq (sideS E)=(1-z)*(z+3) ∧ Complex.normSq (sideT E)=z+3 ∧
      Complex.normSq (sideR E)=z+3)

/-- The three checked row operations place the repeated root in the first two
correlations. No ordering, distinctness or nonzero correlation is assumed. -/
theorem allCritical_allocated_chart {H : CompactCover.Mat6} (hH : AllCritical H)
    (c : Fin 3 → Fin 6) (z : ℝ) (hj : sideJ (H.submatrix front c)=0)
    (ha : Allocated (H.submatrix front c) z) :
    ∃ p : Perm,
      (p=Equiv.refl _ ∨ p=Equiv.swap 0 1 ∨ p=Equiv.swap 0 2) ∧
      let K := candidate H p (Equiv.refl _)
      AllCritical K ∧ MonomialEquivalent H K ∧
      Complex.normSq (sideS (K.submatrix front c))=z+3 ∧
      Complex.normSq (sideT (K.submatrix front c))=z+3 ∧
      Complex.normSq (sideR (K.submatrix front c))=(1-z)*(z+3) ∧
      sideJ (K.submatrix front c)=0 := by
  rcases ha with ⟨hs,ht,hr⟩ | ⟨hs,ht,hr⟩ | ⟨hs,ht,hr⟩
  · have he : candidate H (Equiv.refl _) (Equiv.refl _)=H :=
      normalized_fixed hH.1.2.1 hH.1.2.2
    refine ⟨Equiv.refl _,Or.inl rfl,allCritical_candidate hH _ _,
      candidate_monomial_equivalent hH.1.1 _ _,?_,?_,?_,?_⟩
    · simpa only [he] using hs
    · simpa only [he] using ht
    · simpa only [he] using hr
    · simpa only [he] using hj
  · obtain ⟨hcs,hct,hcr⟩ := swap01_correlations hH.1 c
    refine ⟨Equiv.swap 0 1,Or.inr (Or.inl rfl),allCritical_candidate hH _ _,
      candidate_monomial_equivalent hH.1.1 _ _,?_,?_,?_,?_⟩
    · rw [hcs]; simpa only [Complex.star_def,Complex.normSq_conj] using hs
    · rw [hct]; exact hr
    · rw [hcr]; exact ht
    · exact (swap01_invariants hH.1 c).2.1.trans hj
  · obtain ⟨hcs,hct,hcr⟩ := swap02_correlations hH.1 c
    refine ⟨Equiv.swap 0 2,Or.inr (Or.inr rfl),allCritical_candidate hH _ _,
      candidate_monomial_equivalent hH.1.1 _ _,?_,?_,?_,?_⟩
    · rw [hcs]; simpa only [Complex.star_def,Complex.normSq_conj] using hr
    · rw [hct]; simpa only [Complex.star_def,Complex.normSq_conj] using ht
    · rw [hcr]; simpa only [Complex.star_def,Complex.normSq_conj] using hs
    · exact (swap02_invariants hH.1 c).2.1.trans hj

/-- Every original column belongs to the chosen triple or its literal
complement, including all twenty choices and every finite boundary. -/
theorem triples_complement_cover : ∀ (c : Fin 20) (j : Fin 6),
    (∃ i : Fin 3,CriticalRowSum20261003.triples c i=j) ∨
    (∃ i : Fin 3,CriticalRowSum20261003.triples (Fin.rev c) i=j) := by
  decide +kernel

end
#check allCritical_allocated_chart
#check triples_complement_cover
end CriticalGeometricStrip20261003
