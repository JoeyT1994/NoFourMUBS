import Worker12.ZeroClassification
import Hadamard6.TaoAtlas
import GoodMinorPhysical

/-! The existing singular-minor classification can be sharpened: its Tao
alternative is incompatible with the separately proved H2 submatrix.
This is routing into a continuous Fourier family, not exact F6 and not a
quartet exclusion.  Both primitive cubic phases and both orientations remain.
-/
set_option autoImplicit false
namespace CriticalFourierRouting20261003
open Mub6 Mub6.Numerical Worker12
noncomputable section

def FourierOrTranspose (H : Mub6.BasisMatrix) : Prop :=
  ∃ ω p q : ℂ, PrimitiveCubicPhase ω ∧
    Complex.normSq p = 1 ∧ Complex.normSq q = 1 ∧
    (Mub6.MonomialEquivalent H (fourierPhase ω p q) ∨
     Mub6.MonomialEquivalent H (Mub6.transposeEdge (fourierPhase ω p q)))

theorem phaseHadamard_boundary {H : Mub6.BasisMatrix}
    (hH : PhaseHadamard H) : Mub6.IsPhaseHadamard6 H :=
  ⟨hH.1, Mub6.Classification.GoodMinor.phaseHadamard_rowGram hH⟩

theorem equivalent_split {H K : Mub6.BasisMatrix}
    (h : Mub6.MonomialEquivalent H K) :
    Hadamard6.Equivalent (splitMatrix H) (splitMatrix K) := by
  rcases h with ⟨p, q, r, c, hr, hc, heq⟩
  refine ⟨(splitIndex.trans p).trans splitIndex.symm,
    (splitIndex.trans q).trans splitIndex.symm,
    (fun i => r (splitIndex i)), (fun j => c (splitIndex j)),
    (fun i => hr _), (fun j => hc _), ?_⟩
  intro i j
  simp [splitMatrix, Mub6.monomialEdge, heq]

theorem hasTwoByTwo_split {H : Mub6.BasisMatrix}
    (h : Worker12.HasHadamardTwoByTwo H) :
    Hadamard6.HasHadamardTwoByTwo (splitMatrix H) := by
  rcases h with ⟨rows, cols, h⟩
  refine ⟨rows.trans splitIndex.symm.toEmbedding,
    cols.trans splitIndex.symm.toEmbedding, ?_⟩
  simpa [splitMatrix, Matrix.submatrix_apply] using h

theorem split_taoPhase (ω : ℂ) :
    splitMatrix (taoPhase ω) = Hadamard6.taoMatrix ω := by
  ext i j
  simp [splitMatrix, taoPhase, unsplitMatrix, Hadamard6.taoMatrix]

theorem tao_equivalent_no_hadamard2 {H : Mub6.BasisMatrix} {ω : ℂ}
    (hω : PrimitiveCubicPhase ω)
    (heq : Mub6.MonomialEquivalent H (taoPhase ω)) :
    ¬ Worker12.HasHadamardTwoByTwo H := by
  intro htwo
  have h := Hadamard6.equivalent_hasHadamardTwoByTwo_iff
    (equivalent_split heq)
  have ht := h.mp (hasTwoByTwo_split htwo)
  rw [split_taoPhase] at ht
  exact Hadamard6.taoMatrix_not_hasHadamardTwoByTwo hω ht

/-- No normalized first row/column, determinant guard, maximum, or all-critical
premise is required. The selected row and column maps are injective. -/
theorem singular_selectedMinor_fourier {H : Mub6.BasisMatrix}
    (hH : Mub6.IsPhaseHadamard6 H) (rows cols : Fin 3 ↪ Fin 6)
    (hdet : (selectedMinor H rows cols).det = 0) : FourierOrTranspose H := by
  rcases singular_selectedMinor_classified hH rows cols hdet with hf | ht
  · exact hf
  · rcases ht with ⟨ω, hω, heq⟩
    exact False.elim (tao_equivalent_no_hadamard2 hω heq
      (singular_selectedMinor_hasHadamardTwoByTwo hH rows cols hdet))

/-- Literal column-Gram convention used by the numerical campaign. -/
theorem phaseHadamard_singular_minor_fourier {H : Mub6.BasisMatrix}
    (hH : PhaseHadamard H) (rows cols : Fin 3 ↪ Fin 6)
    (hdet : (H.submatrix rows cols).det = 0) : FourierOrTranspose H :=
  singular_selectedMinor_fourier (phaseHadamard_boundary hH) rows cols hdet

/-- The unscaled actual quartet overlap uses the same selected zero minor;
the target representative is explicitly multiplied by sqrt(6). -/
theorem actual_edge_zero_minor_fourier
    {B : Fin 4 → Mub6.BasisMatrix} (hB : Mub6.IsMUBQuartet B)
    (a b : Fin 4) (hab : a ≠ b) (rows cols : Fin 3 ↪ Fin 6)
    (hdet : (selectedMinor (Mub6.overlap (B a) (B b)) rows cols).det = 0) :
    FourierOrTranspose
      (Mub6.phaseScale (Real.sqrt 6) (Mub6.overlap (B a) (B b))) :=
  singular_selectedMinor_fourier
    (Mub6.actual_edge_sqrt_six_phaseHadamard hB a b hab) rows cols
    (selectedMinor_phaseScale_det_zero rows cols (Real.sqrt 6) hdet)

end
end CriticalFourierRouting20261003

#print axioms CriticalFourierRouting20261003.phaseHadamard_boundary
#print axioms CriticalFourierRouting20261003.equivalent_split
#print axioms CriticalFourierRouting20261003.hasTwoByTwo_split
#print axioms CriticalFourierRouting20261003.split_taoPhase
#print axioms CriticalFourierRouting20261003.tao_equivalent_no_hadamard2
#print axioms CriticalFourierRouting20261003.singular_selectedMinor_fourier
#print axioms CriticalFourierRouting20261003.phaseHadamard_singular_minor_fourier
#print axioms CriticalFourierRouting20261003.actual_edge_zero_minor_fourier
