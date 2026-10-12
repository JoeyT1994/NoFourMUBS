import NoFourMUBs.Reuse.Archive.CriticalCorrelationRechart

set_option autoImplicit false
namespace CriticalGeometricStrip20261003
open Matrix NoFourMUBs.Step2.Critical
open CriticalPhysical20261003 CriticalCorrelationChart20261003
noncomputable section

def Allocated (E : Hadamard6.Mat3) (z : ℝ) : Prop :=
    (Complex.normSq (sideS E)=z+3 ∧ Complex.normSq (sideT E)=z+3 ∧
      Complex.normSq (sideR E)=(1-z)*(z+3)) ∨
    (Complex.normSq (sideS E)=z+3 ∧ Complex.normSq (sideT E)=(1-z)*(z+3) ∧
      Complex.normSq (sideR E)=z+3) ∨
    (Complex.normSq (sideS E)=(1-z)*(z+3) ∧ Complex.normSq (sideT E)=z+3 ∧
      Complex.normSq (sideR E)=z+3)

/-- The three checked row operations place the repeated root in the first two
correlations. No ordering, distinctness or nonzero correlation is assumed. -/
theorem allCritical_allocated_chart {H : OAI.MUB6.CMatrix} (hH : AllCriticalCarrier H)
    (c : Fin 3 → Fin 6) (z : ℝ) (hj : sideJ (H.submatrix front c)=0)
    (ha : Allocated (H.submatrix front c) z) :
    ∃ p : Perm,
      (p=Equiv.refl _ ∨ p=Equiv.swap 0 1 ∨ p=Equiv.swap 0 2) ∧
      let K := candidate H p (Equiv.refl _)
      AllCriticalCarrier K ∧ OAI.MUB6.Equivalent H K ∧
      Complex.normSq (sideS (K.submatrix front c))=z+3 ∧
      Complex.normSq (sideT (K.submatrix front c))=z+3 ∧
      Complex.normSq (sideR (K.submatrix front c))=(1-z)*(z+3) ∧
      sideJ (K.submatrix front c)=0 := by
  rcases ha with ⟨hs,ht,hr⟩ | ⟨hs,ht,hr⟩ | ⟨hs,ht,hr⟩
  · have he : candidate H (Equiv.refl _) (Equiv.refl _)=H :=
      normalized_fixed hH.1.2.1 hH.1.2.2
    exact ⟨Equiv.refl _,Or.inl rfl,allCritical_candidate hH _ _,
      candidate_monomial_equivalent hH.1.1 _ _,
      (congrArg (fun M : OAI.MUB6.CMatrix => Complex.normSq (sideS (M.submatrix front c))) he).trans hs,
      (congrArg (fun M : OAI.MUB6.CMatrix => Complex.normSq (sideT (M.submatrix front c))) he).trans ht,
      (congrArg (fun M : OAI.MUB6.CMatrix => Complex.normSq (sideR (M.submatrix front c))) he).trans hr,
      (congrArg (fun M : OAI.MUB6.CMatrix => sideJ (M.submatrix front c)) he).trans hj⟩
  · obtain ⟨hcs,hct,hcr⟩ := swap01_correlations hH.1 c
    exact ⟨Equiv.swap 0 1,Or.inr (Or.inl rfl),allCritical_candidate hH _ _,
      candidate_monomial_equivalent hH.1.1 _ _,
      (congrArg Complex.normSq hcs).trans ((Complex.normSq_conj _).trans hs),
      (congrArg Complex.normSq hct).trans hr,
      (congrArg Complex.normSq hcr).trans ht,
      (swap01_invariants hH.1 c).2.1.trans hj⟩
  · obtain ⟨hcs,hct,hcr⟩ := swap02_correlations hH.1 c
    exact ⟨Equiv.swap 0 2,Or.inr (Or.inr rfl),allCritical_candidate hH _ _,
      candidate_monomial_equivalent hH.1.1 _ _,
      (congrArg Complex.normSq hcs).trans ((Complex.normSq_conj _).trans hr),
      (congrArg Complex.normSq hct).trans ((Complex.normSq_conj _).trans ht),
      (congrArg Complex.normSq hcr).trans ((Complex.normSq_conj _).trans hs),
      (swap02_invariants hH.1 c).2.1.trans hj⟩


end
#print axioms allCritical_allocated_chart
end CriticalGeometricStrip20261003
