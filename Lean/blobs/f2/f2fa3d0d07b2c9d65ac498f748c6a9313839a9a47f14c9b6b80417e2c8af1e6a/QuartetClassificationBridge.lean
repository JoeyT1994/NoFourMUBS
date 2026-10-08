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

theorem phaseScale_inverse_cancel {s : ℝ} (hs : s ≠ 0) (H : BasisMatrix) :
    phaseScale s⁻¹ (phaseScale s H) = H := by
  have hsC : (s : ℂ) ≠ 0 := by exact_mod_cast hs
  funext i j
  simp only [phaseScale, Complex.ofReal_inv, ← mul_assoc, inv_mul_cancel₀ hsC, one_mul]

/-- Public row/column equivalence preserves occurrence of the normalized edge
in an actual quartet. Its other two bases are retained by the reused monomial
transport theorem. The positive square root scale is proved nonzero. -/
theorem normalized_public_representative_occurs {H : BasisMatrix} {K : Mat6}
    (hH : OccursAsQuartetEdge H)
    (heq : Equivalent (toPublic (phaseScale (Real.sqrt 6) H)) K) :
    OccursAsQuartetEdge (phaseScale (Real.sqrt 6)⁻¹ (toNumerical K)) := by
  have hmono := public_equivalent_is_physical_monomial heq
  rw [roundtrip_numerical] at hmono
  rcases hmono with ⟨p, q, r, c, hr, hc, he⟩
  rw [he, phaseScale_monomial, phaseScale_inverse_cancel (by positivity : Real.sqrt 6 ≠ 0)]
  exact occursAsQuartetEdge_monomial hH p q r c hr hc

/-- An actual quartet yields a retained representative in a finite outer cell
whose normalized matrix still extends the standard basis to a quartet. No
candidate is removed by a guard test or an asserted terminal exclusion. -/
theorem quartet_retained_standard_pair_in_finite_cover
    (depth : ℕ) {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B)
    (a b : Fin 4) (hab : a ≠ b) :
    ∃ (p : CornerData) (X Y : Mat3) (cell : Cell depth),
      Retained p.matrix X Y ∧
      IsDephased (completion p.matrix X Y) ∧
      CellContains depth cell (completion p.matrix X Y) ∧
      ExtendsStandardPair
        (phaseScale (Real.sqrt 6)⁻¹ (toNumerical (completion p.matrix X Y))) := by
  rcases every_quartet_edge_has_retained_covered_representative depth hB a b hab with
    ⟨p, X, Y, cell, hret, heq, _hphysical, hdephased, hcell⟩
  have hocc : OccursAsQuartetEdge (overlap (B a) (B b)) := ⟨B, hB, a, b, hab, rfl⟩
  exact ⟨p, X, Y, cell, hret, hdephased, hcell,
    (occursAsQuartetEdge_iff_extendsStandardPair _).1
      (normalized_public_representative_occurs hocc heq)⟩

#print axioms phaseScale_inverse_cancel
#print axioms normalized_public_representative_occurs
#print axioms quartet_retained_standard_pair_in_finite_cover
end ClassificationCover
