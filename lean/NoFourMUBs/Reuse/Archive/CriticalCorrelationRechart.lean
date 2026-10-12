import NoFourMUBs.Reuse.Archive.CriticalCorrelationCore
import NoFourMUBs.Step2.CriticalZero.RechartModel

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalCorrelationChart20261003
open Matrix NoFourMUBs.Step2.Critical CriticalPhysical20261003
noncomputable section

/-- Literal oriented correlations for the swap 0,1, at any three columns. -/
theorem swap01_correlations {H : OAI.MUB6.CMatrix} (hH : NormalizedCarrier H)
    (c : Fin 3 → Fin 6) :
    let K := candidate H (Equiv.swap 0 1) (Equiv.refl _)
    sideS (K.submatrix front c)=star (sideS (H.submatrix front c)) ∧
    sideT (K.submatrix front c)=sideR (H.submatrix front c) ∧
    sideR (K.submatrix front c)=sideT (H.submatrix front c) := by
  let K := candidate H (Equiv.swap 0 1) (Equiv.refl _)
  have h1 (j : Fin 6) : K 1 j=star (H 1 j) := by
    rw [show K 1 j=H ((Equiv.swap 0 1) 1) j*star (H ((Equiv.swap 0 1) 0) j)
      from row_candidate_entry hH _ _ _]
    simp [hH.2.1]
  have h2 (j : Fin 6) : K 2 j=H 2 j*star (H 1 j) := by
    rw [show K 2 j=H ((Equiv.swap 0 1) 2) j*star (H ((Equiv.swap 0 1) 0) j)
      from row_candidate_entry hH _ _ _]
    simp [Equiv.swap_apply_def]
  have hr (j : Fin 6) : K 2 j*star (K 1 j)=H 2 j := by
    rw [h1,h2,star_star]
    calc
      _ = H 2 j*(H 1 j*star (H 1 j)) := by ring
      _ = _ := by simp only [Complex.star_def, NoFourMUBs.Side.unit_mul_conj (hH.1.1 1 j),mul_one]
  change sideS (K.submatrix front c)=_ ∧ sideT (K.submatrix front c)=_ ∧
    sideR (K.submatrix front c)=_
  refine ⟨?_,?_,?_⟩
  · change K 1 (c 0)+K 1 (c 1)+K 1 (c 2)=star (H 1 (c 0)+H 1 (c 1)+H 1 (c 2))
    simp only [h1,star_add]
  · change K 2 (c 0)+K 2 (c 1)+K 2 (c 2)=_
    simp only [h2]
    rfl
  · change K 2 (c 0)*star (K 1 (c 0))+K 2 (c 1)*star (K 1 (c 1))+
      K 2 (c 2)*star (K 1 (c 2))=_
    simp only [hr]
    rfl

/-- Literal oriented correlations for the swap 0,2. -/
theorem swap02_correlations {H : OAI.MUB6.CMatrix} (hH : NormalizedCarrier H)
    (c : Fin 3 → Fin 6) :
    let K := candidate H (Equiv.swap 0 2) (Equiv.refl _)
    sideS (K.submatrix front c)=star (sideR (H.submatrix front c)) ∧
    sideT (K.submatrix front c)=star (sideT (H.submatrix front c)) ∧
    sideR (K.submatrix front c)=star (sideS (H.submatrix front c)) := by
  let K := candidate H (Equiv.swap 0 2) (Equiv.refl _)
  have h1 (j : Fin 6) : K 1 j=H 1 j*star (H 2 j) := by
    rw [show K 1 j=H ((Equiv.swap 0 2) 1) j*star (H ((Equiv.swap 0 2) 0) j)
      from row_candidate_entry hH _ _ _]
    simp [Equiv.swap_apply_def]
  have h2 (j : Fin 6) : K 2 j=star (H 2 j) := by
    rw [show K 2 j=H ((Equiv.swap 0 2) 2) j*star (H ((Equiv.swap 0 2) 0) j)
      from row_candidate_entry hH _ _ _]
    simp [hH.2.1]
  have hr (j : Fin 6) : K 2 j*star (K 1 j)=star (H 1 j) := by
    rw [h1,h2,star_mul,star_star]
    calc
      _ = star (H 1 j)*(H 2 j*star (H 2 j)) := by ring
      _ = _ := by simp only [Complex.star_def, NoFourMUBs.Side.unit_mul_conj (hH.1.1 2 j),mul_one]
  change sideS (K.submatrix front c)=_ ∧ sideT (K.submatrix front c)=_ ∧
    sideR (K.submatrix front c)=_
  refine ⟨?_,?_,?_⟩
  · change K 1 (c 0)+K 1 (c 1)+K 1 (c 2)=
      star (H 2 (c 0)*star (H 1 (c 0))+H 2 (c 1)*star (H 1 (c 1))+
        H 2 (c 2)*star (H 1 (c 2)))
    simp only [h1,star_add,star_mul,star_star]
  · change K 2 (c 0)+K 2 (c 1)+K 2 (c 2)=star (H 2 (c 0)+H 2 (c 1)+H 2 (c 2))
    simp only [h2,star_add]
  · change K 2 (c 0)*star (K 1 (c 0))+K 2 (c 1)*star (K 1 (c 1))+
      K 2 (c 2)*star (K 1 (c 2))=star (H 1 (c 0)+H 1 (c 1)+H 1 (c 2))
    simp only [hr,star_add]

/-- Includes the product of the three original squared correlation moduli,
so any later product conclusion can be transported back to the same strip. -/
def SameInvariants (A B : Hadamard6.Mat3) : Prop :=
  sideP A=sideP B ∧ sideJ A=sideJ B ∧ sideW A=sideW B ∧
  Complex.normSq (sideS A)*Complex.normSq (sideT A)*Complex.normSq (sideR A)=
    Complex.normSq (sideS B)*Complex.normSq (sideT B)*Complex.normSq (sideR B)

theorem sameInvariants_refl (A : Hadamard6.Mat3) : SameInvariants A A :=
  ⟨rfl,rfl,rfl,rfl⟩

theorem swap01_invariants {H : OAI.MUB6.CMatrix} (hH : NormalizedCarrier H)
    (c : Fin 3 → Fin 6) :
    SameInvariants ((candidate H (Equiv.swap 0 1) (Equiv.refl _)).submatrix front c)
      (H.submatrix front c) := by
  obtain ⟨hs,ht,hr⟩ := swap01_correlations hH c
  unfold SameInvariants sideP sideJ sideW
  rw [hs,ht,hr]
  exact moments_swap01 _ _ _

theorem swap02_invariants {H : OAI.MUB6.CMatrix} (hH : NormalizedCarrier H)
    (c : Fin 3 → Fin 6) :
    SameInvariants ((candidate H (Equiv.swap 0 2) (Equiv.refl _)).submatrix front c)
      (H.submatrix front c) := by
  obtain ⟨hs,ht,hr⟩ := swap02_correlations hH c
  unfold SameInvariants sideP sideJ sideW
  rw [hs,ht,hr]
  exact moments_swap02 _ _ _

/-- All columns stay in place; the first three rows are only permuted and
renormalized. The full AllCriticalCarrier predicate and every strip corner survive. -/
theorem allCritical_nonzero_W_rechart {H : OAI.MUB6.CMatrix} (hH : AllCriticalCarrier H)
    (c : Fin 3 → Fin 6) (hw : sideW (H.submatrix front c)≠0) :
    ∃ p : Perm, (p=Equiv.refl _ ∨ p=Equiv.swap 0 1 ∨ p=Equiv.swap 0 2) ∧
      AllCriticalCarrier (candidate H p (Equiv.refl _)) ∧
      OAI.MUB6.Equivalent H (candidate H p (Equiv.refl _)) ∧
      (∀ d : Fin 3 → Fin 6, SameInvariants
        ((candidate H p (Equiv.refl _)).submatrix front d) (H.submatrix front d)) ∧
      sideS ((candidate H p (Equiv.refl _)).submatrix front c)≠0 ∧
      sideT ((candidate H p (Equiv.refl _)).submatrix front c)≠0 := by
  rcases nonzero_W_two_correlations _ _ _ hw with ⟨hs,ht⟩ | ⟨hs,hr⟩ | ⟨ht,hr⟩
  · have he : candidate H (Equiv.refl _) (Equiv.refl _)=H :=
      normalized_fixed hH.1.2.1 hH.1.2.2
    refine ⟨Equiv.refl _,Or.inl rfl,allCritical_candidate hH _ _,
      candidate_monomial_equivalent hH.1.1 _ _,?_,?_,?_⟩
    · intro d; rw [he]; exact sameInvariants_refl _
    · simpa only [he] using hs
    · simpa only [he] using ht
  · obtain ⟨hs',ht',_⟩ := swap01_correlations hH.1 c
    exact ⟨Equiv.swap 0 1,Or.inr (Or.inl rfl),allCritical_candidate hH _ _,
      candidate_monomial_equivalent hH.1.1 _ _,swap01_invariants hH.1,
      by rw [hs']; exact star_nonzero hs,by rw [ht']; exact hr⟩
  · obtain ⟨hs',ht',_⟩ := swap02_correlations hH.1 c
    exact ⟨Equiv.swap 0 2,Or.inr (Or.inr rfl),allCritical_candidate hH _ _,
      candidate_monomial_equivalent hH.1.1 _ _,swap02_invariants hH.1,
      by rw [hs']; exact star_nonzero hr,by rw [ht']; exact star_nonzero ht⟩

end
#print axioms swap01_correlations
#print axioms swap02_correlations
#print axioms sameInvariants_refl
#print axioms swap01_invariants
#print axioms swap02_invariants
#print axioms allCritical_nonzero_W_rechart
end CriticalCorrelationChart20261003
