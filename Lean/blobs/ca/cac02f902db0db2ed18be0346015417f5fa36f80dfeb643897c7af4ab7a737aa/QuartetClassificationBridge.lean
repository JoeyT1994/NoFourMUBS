import ReuseBoundaryTransport
import ClassifiedCarrierCover

/-! The physical quartet bridge reuses the source-hashed B02 monomial and
normalization proofs. No published nonextension proposition is imported. -/
namespace ClassificationCover
open Hadamard6
open Mub6
open Mub6.Numerical

theorem public_of_boundary_phase {H : BasisMatrix} (hH : IsPhaseHadamard6 H) :
    IsHadamard (toPublic H) := by
  refine ⟨fun i j => hH.1 (indexEquiv i) (indexEquiv j), ?_⟩
  have hr : Matrix.of H * (Matrix.of H).conjTranspose =
      (6 : ℂ) • (1 : Matrix (Fin 6) (Fin 6) ℂ) := hH.2
  change (Matrix.of H).submatrix indexEquiv indexEquiv *
    ((Matrix.of H).submatrix indexEquiv indexEquiv).conjTranspose = _
  rw [Matrix.conjTranspose_submatrix, Matrix.submatrix_mul_equiv, hr]
  change (6 : ℂ) • ((1 : Matrix (Fin 6) (Fin 6) ℂ).submatrix indexEquiv indexEquiv) = _
  rw [Matrix.submatrix_one_equiv]

/-- The classification relation gives an actual physical row/column monomial
witness under the verified change of indices. -/
theorem public_equivalent_is_physical_monomial {H K : Mat6} (h : Equivalent H K) :
    MonomialEquivalent (toNumerical H) (toNumerical K) := by
  rcases h with ⟨p, q, r, c, hr, hc, he⟩
  refine ⟨indexEquiv.symm.trans (p.trans indexEquiv),
    indexEquiv.symm.trans (q.trans indexEquiv),
    (fun i => r (indexEquiv.symm i)), (fun j => c (indexEquiv.symm j)),
    (fun i => hr (indexEquiv.symm i)), (fun j => hc (indexEquiv.symm j)), ?_⟩
  funext i j
  change K (indexEquiv.symm i) (indexEquiv.symm j) = _
  rw [he]
  simp [monomialEdge, toNumerical, Matrix.submatrix, Equiv.trans_apply]

theorem every_quartet_edge_has_retained_covered_representative
    (depth : ℕ) {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B)
    (a b : Fin 4) (hab : a ≠ b) :
    ∃ (p : CornerData) (X Y : Mat3) (cell : Cell depth),
      Retained p.matrix X Y ∧
      Equivalent (toPublic (phaseScale (Real.sqrt 6) (overlap (B a) (B b))))
        (completion p.matrix X Y) ∧
      PhaseHadamard (toNumerical (completion p.matrix X Y)) ∧
      IsDephased (completion p.matrix X Y) ∧
      CellContains depth cell (completion p.matrix X Y) := by
  have hp := public_of_boundary_phase (actual_edge_sqrt_six_phaseHadamard hB a b hab)
  have hn := (physical_conventions_equivalent _).2 hp
  exact every_physical_carrier_has_retained_covered_representative depth hn

#print axioms public_of_boundary_phase
#print axioms public_equivalent_is_physical_monomial
#print axioms every_quartet_edge_has_retained_covered_representative
end ClassificationCover
