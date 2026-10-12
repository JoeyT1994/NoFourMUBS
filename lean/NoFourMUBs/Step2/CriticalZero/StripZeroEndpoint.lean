import NoFourMUBs.Step2.CriticalZero.ActualSingularFourier
import NoFourMUBs.Step2.CriticalZero.ColumnRechart
import NoFourMUBs.Reuse.Archive.CriticalPhysicalParams

/-! The existing leading-block zero-J proof applies to every strip corner
through the already checked column rechart. No polynomial data is regenerated. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace NoFourMUBs.Step2.Critical
open CriticalPhysical20261003 CriticalStripMoments20261003 CriticalRowSum20261003

theorem strip_regular_zero_standard {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (c : Fin 20) (z : ℝ)
    (hzlo : -3≤z) (hz0 : z≠0) (hz3 : z≠ -3) (hz2 : z≠ -2)
    (hp : sideP (stripCorner H c)=9-z^2)
    (hj : sideJ (stripCorner H c)=0)
    (hw : sideW (stripCorner H c)=z^2*(z+3)^2) :
    Hadamard6.Equivalent (FourierBridge.fromOAI H) fourierHadamard.1 := by
  obtain ⟨q,hq⟩ := Equiv.Perm.exists_extending_pair front (triples c)
    front_injective (strip_triples_injective c)
  have he : H.submatrix front (q ∘ front)=stripCorner H c := by
    ext i j
    change H (front i) (q (front j))=H (front i) (triples c j)
    rw [hq]
  have hi := column_candidate_invariants hH.1 q front
  rw [he] at hi
  have hf := allCritical_regular_zero_standard
    (allCritical_candidate hH (Equiv.refl _) q) z hzlo hz0 hz3 hz2
    (hi.1.trans hp) (hi.2.1.trans hj) (hi.2.2.1.trans hw)
  have hc : OAI.MUB6.Equivalent (FourierBridge.toOAI (FourierBridge.fromOAI H))
      (candidate H (Equiv.refl _) q) := by
    simpa only [FourierBridge.toOAI_fromOAI] using
      candidate_monomial_equivalent hH.1.1 (Equiv.refl _) q
  exact Hadamard6.equivalent_trans (FourierBridge.equivalent_fromOAI hc) hf

/-- Exhaustive zero-J outcome at every actual corner. Only the two values
used by the existing counting theorem remain outside the Fourier class. -/
theorem strip_zero_values_or_standard {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) (c : Fin 20)
    (hj : sideJ (stripCorner H c)=0) :
    sideP (stripCorner H c)=0 ∨ sideP (stripCorner H c)=5 ∨
      Hadamard6.Equivalent (FourierBridge.fromOAI H) fourierHadamard.1 := by
  obtain ⟨z,hzlo,_,hp,hw⟩ :=
    CriticalPhysicalParameters20261003.actual_zero_corner_parameter hH c hj
  by_cases hz0 : z=0
  · exact Or.inr (Or.inr (allCritical_p9_standard hH c (by simpa [hz0] using hp)))
  by_cases hz3 : z= -3
  · exact Or.inl (by norm_num [hz3] at hp ⊢; exact hp)
  by_cases hz2 : z= -2
  · exact Or.inr (Or.inl (by norm_num [hz2] at hp ⊢; exact hp))
  exact Or.inr (Or.inr
    (strip_regular_zero_standard hH c z hzlo hz0 hz3 hz2 hp hj hw))

end NoFourMUBs.Step2.Critical
