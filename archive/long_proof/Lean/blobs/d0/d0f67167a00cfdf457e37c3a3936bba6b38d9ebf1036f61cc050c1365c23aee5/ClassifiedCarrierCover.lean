import Hadamard6.PaperTheorem
import NumericalBridge

/-! The actual current public endpoint is used here, after rebuilding its
unchanged pinned dependency closure. The finite dyadic carrier cells are
executable outer cells, but the retained B,C labels below remain arbitrary
physical candidates. No root catalogue or efficient four-seed atlas is claimed. -/
namespace ClassificationCover
open Hadamard6
open Mub6.Numerical

theorem retained_completion_isDephased {p : CornerData} {B C : Mat3}
    (h : Retained p.matrix B C) : IsDephased (completion p.matrix B C) := by
  constructor
  · intro j
    cases j with
    | inl j => exact cornerData_firstRow p j
    | inr j => exact h.2.1.1.2.1 j
  · intro i
    cases i with
    | inl i => exact cornerData_firstColumn p i
    | inr i => exact h.2.2.1.1.2.1 i

/-- The physical numerical convention and the current retained public atlas
are equivalent. The theorem has no external classification hypotheses. -/
theorem numerical_classification_exact (H : Mub6.BasisMatrix) :
    PhaseHadamard H ↔ InFiniteCornerAtlas (toPublic H) := by
  rw [physical_conventions_equivalent, paper_total_output_corollary]

theorem retained_completion_numerical_isPhysical {p : CornerData} {B C : Mat3}
    (h : Retained p.matrix B C) :
    PhaseHadamard (toNumerical (completion p.matrix B C)) :=
  numerical_of_public (retained_completion_isHadamard h)

/-- Completeness keeps all ordered retained horizontal and vertical candidates;
it imposes no product-regular shortcut, root separation, or terminal-family
restriction. A computable global root isolator is a separate missing component. -/
theorem every_physical_carrier_has_retained_covered_representative
    (depth : ℕ) {H : Mub6.BasisMatrix} (hH : PhaseHadamard H) :
    ∃ (p : CornerData) (B C : Mat3) (cell : Cell depth),
      Retained p.matrix B C ∧ Equivalent (toPublic H) (completion p.matrix B C) ∧
      PhaseHadamard (toNumerical (completion p.matrix B C)) ∧
      IsDephased (completion p.matrix B C) ∧
      CellContains depth cell (completion p.matrix B C) := by
  rcases (numerical_classification_exact H).1 hH with ⟨p, B, C, hret, heq⟩
  have hp := retained_completion_isHadamard hret
  rcases entrywiseUnit_in_finite_cover depth hp.1 with ⟨cell, hc⟩
  exact ⟨p, B, C, cell, hret, heq, numerical_of_public hp,
    retained_completion_isDephased hret, hc⟩

#print axioms retained_completion_isDephased
#print axioms numerical_classification_exact
#print axioms retained_completion_numerical_isPhysical
#print axioms every_physical_carrier_has_retained_covered_representative
end ClassificationCover
