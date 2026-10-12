import NoFourMUBs.Reuse.Archive.ZeroClassification
import Hadamard6.TaoAtlas
import NoFourMUBs.Step2.CriticalZero.SingularModel
import NoFourMUBs.Reuse.Archive.InjectedRouting

/-! The existing singular-minor classification can be sharpened: its Tao
alternative is incompatible with the separately proved H2 submatrix.
This is routing into a continuous Fourier family, not exact F6 and not a
quartet exclusion.  Both primitive cubic phases and both orientations remain.
-/
set_option autoImplicit false
namespace CriticalFourierRouting20261003
open Worker12
noncomputable section

theorem equivalent_split {H K : OAI.MUB6.CMatrix}
    (h : OAI.MUB6.Equivalent H K) :
    Hadamard6.Equivalent (splitMatrix H) (splitMatrix K) := by
  apply NoFourMUBs.Step2.FourierBridge.equivalent_fromOAI
  simpa only [NoFourMUBs.Step2.FourierBridge.toOAI_fromOAI] using h

theorem hasTwoByTwo_split {H : OAI.MUB6.CMatrix}
    (h : Worker12.HasHadamardTwoByTwo H) :
    Hadamard6.HasHadamardTwoByTwo (splitMatrix H) := by
  rcases h with ⟨rows, cols, h⟩
  refine ⟨rows.trans splitIndex.symm.toEmbedding,
    cols.trans splitIndex.symm.toEmbedding, ?_⟩
  simpa [splitMatrix, NoFourMUBs.Step2.FourierBridge.fromOAI,
    Matrix.submatrix, splitIndex] using h

theorem split_taoPhase (ω : ℂ) :
    splitMatrix (taoPhase ω) = Hadamard6.taoMatrix ω :=
  NoFourMUBs.Step2.FourierBridge.fromOAI_toOAI (Hadamard6.taoMatrix ω)

theorem tao_equivalent_no_hadamard2 {H : OAI.MUB6.CMatrix} {ω : ℂ}
    (hω : PrimitiveCubicPhase ω)
    (heq : OAI.MUB6.Equivalent H (taoPhase ω)) :
    ¬ Worker12.HasHadamardTwoByTwo H := by
  intro htwo
  have h := Hadamard6.equivalent_hasHadamardTwoByTwo_iff
    (equivalent_split heq)
  have ht := h.mp (hasTwoByTwo_split htwo)
  rw [split_taoPhase] at ht
  exact Hadamard6.taoMatrix_not_hasHadamardTwoByTwo hω ht

/-- No normalized first row/column, determinant guard, maximum, or all-critical
premise is required. The selected row and column maps are injective. -/
theorem singular_selectedMinor_fourier {H : OAI.MUB6.CMatrix}
    (hH : OAI.MUB6.IsHadamard H) (rows cols : Fin 3 ↪ Fin 6)
    (hdet : (selectedMinor H rows cols).det = 0) : FourierOrTranspose H := by
  rcases singular_selectedMinor_classified hH rows cols hdet with hf | ht
  · exact hf
  · rcases ht with ⟨ω, hω, heq⟩
    exact False.elim (tao_equivalent_no_hadamard2 hω heq
      (singular_selectedMinor_hasHadamardTwoByTwo hH rows cols hdet))

/-- Literal column-Gram convention used by the numerical campaign. -/
theorem phaseHadamard_singular_minor_fourier {H : OAI.MUB6.CMatrix}
    (hH : OAI.MUB6.IsHadamard H) (rows cols : Fin 3 ↪ Fin 6)
    (hdet : (H.submatrix rows cols).det = 0) : FourierOrTranspose H :=
  singular_selectedMinor_fourier hH rows cols hdet

end
end CriticalFourierRouting20261003

#print axioms CriticalFourierRouting20261003.equivalent_split
#print axioms CriticalFourierRouting20261003.hasTwoByTwo_split
#print axioms CriticalFourierRouting20261003.split_taoPhase
#print axioms CriticalFourierRouting20261003.tao_equivalent_no_hadamard2
#print axioms CriticalFourierRouting20261003.singular_selectedMinor_fourier
#print axioms CriticalFourierRouting20261003.phaseHadamard_singular_minor_fourier
