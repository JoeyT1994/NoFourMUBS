import KarlssonConditionedManifest0Bits24
import KarlssonLedgerExampleCertificates
import KarlssonFourierImport
import KarlssonLiftedControl6
import KarlssonLiftedControl8
import KarlssonLiftedControl10
set_option autoImplicit false

namespace IndependentProofScopeProbe
open Complex Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Numerical.GraphKernel Mub6.Classification.KarlssonLedger
open Mub6.Classification.KarlssonCover Mub6.Classification.KarlssonLifted
noncomputable section

-- These bare assignments expose any extra theorem arguments in the actual objects.
example : ∀ {H : BasisMatrix}, OccursAsQuartetEdge H →
    HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H)) →
    ∃ j ∈ roots, Live j := @roots_cover

example : ∀ {H : BasisMatrix}, OccursAsQuartetEdge H →
    HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H)) →
    ∃ K : Mat6, OccursAsQuartetEdge (normalized K) ∧
      ∃ E ∈ KarlssonLedgerExampleEnclosures.carriers,
        CarrierBox E (ClassificationCover.toNumerical K) :=
  @KarlssonLedgerExampleEnclosures.physical_cover

example : ∀ (forest : ForestOn roots), forest.frontier = [] →
    ∀ {H : BasisMatrix}, OccursAsQuartetEdge H →
    HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H)) →
    False := @serialized_forest_closure

example : ∀ {n : ℕ} {j : Job} {E : CarrierRegion}, Encloses j E →
    (cert : LocalCertificate n) → checkLocal E cert = true →
    StandardFirstRow E → ¬ Live j := @checked_leaf_closes

example : ∀ {n : ℕ} {E : CarrierRegion}, (cert : LocalCertificate n) →
    checkLocal E cert = true → StandardFirstRow E → CarrierExcluded E :=
  @local_certificate_excludes

example : ∀ (label : ReducedLabel) (x : Fin 3 → ℝ),
    IsHadamard (reducedMatrix label x) →
    ∃ y : Fin 4 → ℝ, (∀ i, -1 ≤ y i ∧ y i ≤ 1) ∧
      Equivalent (reducedMatrix label x) (liftedMatrix label.2 (x 0) (x 1) y) :=
  @reduced_lift_exists

example : ∀ b : Bool, UniformContinuousOn (compactLiteral b) compactDomain :=
  @uniformContinuousOn_compactLiteral

example : Worker12.FourierQuartetExclusion → ∀ (label : SeamLabel) (x : Fin 2 → ℝ),
    ¬ OccursAsQuartetEdge (normalized (seamMatrix label x)) :=
  @Mub6.Classification.KarlssonFourierImport.all_sixteen_seams_excluded

example : ∀ w p q : ℂ,
    monomialEdge Mub6.Classification.KarlssonFourierImport.undoInterleave
      Mub6.Classification.KarlssonFourierImport.undoInterleave (fun _ => 1) (fun _ => 1)
      (normalized (affineFourierMatrix w p q)) =
    transposeEdge (Worker12.physicalNormalize (Worker12.fourierPhase w p q)) :=
  @Mub6.Classification.KarlssonFourierImport.source_binding

example : IsHadamard DegenerateControl.H := @DegenerateControl.physical
example : CarrierBox KarlssonLedgerCellff856ed4f3b750c1.carrier
    (ClassificationCover.toNumerical DegenerateControl.H) :=
  @KarlssonLiftedControl6.actual_matrix_enclosed
example : CarrierBox KarlssonLedgerCell29adf8ec04475234.carrier
    (ClassificationCover.toNumerical DegenerateControl.H) :=
  @KarlssonLiftedControl8.actual_matrix_enclosed
example : CarrierBox KarlssonLedgerCell05f4b9f94297527a.carrier
    (ClassificationCover.toNumerical DegenerateControl.H) :=
  @KarlssonLiftedControl10.actual_matrix_enclosed

example : roots.length = 26 := @root_count
example : KarlssonLedgerExample.ledger.frontier.length = 28 :=
  @KarlssonLedgerExample.pending_count

-- Independently derive that the advertised example cannot satisfy the stop condition.
theorem example_frontier_nonempty : KarlssonLedgerExample.ledger.frontier ≠ [] := by
  intro h
  have hc := KarlssonLedgerExample.pending_count
  rw [h] at hc
  contradiction

#print axioms roots_cover
#print axioms serialized_forest_closure
#print axioms reduced_lift_exists
#print axioms physical_lifted_cover
#print axioms raw_lift_covers
#print axioms checked_leaf_closes
#print axioms local_certificate_excludes
#print axioms KarlssonConditionedManifest0Bits24.physical_cover
#print axioms KarlssonLedgerExampleEnclosures.physical_cover
#print axioms KarlssonLedgerExampleCertificates.accept_certificate
#print axioms uniformContinuousOn_compactLiteral
#print axioms Mub6.Classification.KarlssonFourierImport.source_binding
#print axioms Mub6.Classification.KarlssonFourierImport.all_sixteen_seams_excluded
#print axioms DegenerateControl.physical
#print axioms DegenerateControl.both_mobius_degenerate
#print axioms KarlssonLiftedControl6.actual_matrix_enclosed
#print axioms KarlssonLiftedControl8.actual_matrix_enclosed
#print axioms KarlssonLiftedControl10.actual_matrix_enclosed
#print axioms example_frontier_nonempty
end
end IndependentProofScopeProbe
