import KarlssonExceptionalLedger
import KarlssonConditionedManifest0Bits24
import KarlssonLedgerExampleCertificates
import KarlssonFourierImport
import KarlssonLiftedControl6
import KarlssonLiftedControl8
import KarlssonLiftedControl10
import ExceptionalControls
import KarlssonLedgerExampleReuseQueue
set_option autoImplicit false

namespace Mub6.Classification.KarlssonClosureAudit
open Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonLedger Mub6.Classification.KarlssonCover
noncomputable section

-- Bare @ assignments expose any accidentally retained theorem arguments.
example : ¬ OccursAsQuartetEdge (Worker12.physicalNormalize Worker12.hTimes) :=
  @Mub6.ExceptionalTerminals.hTimes_quartet_exclusion
example : Worker12.TaoQuartetExclusion := @Mub6.ExceptionalTerminals.tao_quartet_exclusion
example : IsHadamard Mub6.Classification.KarlssonLifted.DegenerateControl.H :=
  @Mub6.Classification.KarlssonLifted.DegenerateControl.physical
example : KarlssonLedgerExample.ledger.frontier.length=28 := @KarlssonLedgerExample.pending_count
example : ∀ {H : BasisMatrix}, OccursAsQuartetEdge H →
    HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H)) →
    ∃ K : Mat6, OccursAsQuartetEdge (normalized K) ∧
      ∃ E ∈ KarlssonLedgerExampleEnclosures.carriers, CarrierBox E (ClassificationCover.toNumerical K) :=
  @KarlssonLedgerExampleEnclosures.physical_cover

-- This explicitly remains conditional: it is not a new Fourier exclusion.
example : Worker12.FourierQuartetExclusion → ∀ label : SeamLabel, ∀ x : Fin 2 → ℝ,
    ¬ OccursAsQuartetEdge (normalized (seamMatrix label x)) :=
  @Mub6.Classification.KarlssonFourierImport.all_sixteen_seams_excluded

#print axioms Mub6.ExceptionalTerminals.hTimes_quartet_exclusion
#print axioms Mub6.ExceptionalTerminals.tao_quartet_exclusion
#print axioms Mub6.ExceptionalTerminals.actual_edge_not_exceptional
#print axioms Mub6.Classification.KarlssonLedger.exceptional_job_closes
#print axioms KarlssonConditionedManifest0Bits24.physical_cover
#print axioms KarlssonLedgerExampleEnclosures.physical_cover
#print axioms KarlssonLedgerExampleCertificates.accept_certificate
#print axioms Mub6.Classification.KarlssonLedger.serialized_forest_closure
#print axioms Mub6.Classification.KarlssonLifted.uniformContinuousOn_compactLiteral
#print axioms Mub6.Classification.KarlssonFourierImport.source_binding
#print axioms Mub6.Classification.KarlssonFourierImport.all_sixteen_seams_excluded
#print axioms KarlssonLiftedControl6.actual_matrix_enclosed
#print axioms KarlssonLiftedControl8.actual_matrix_enclosed
#print axioms KarlssonLiftedControl10.actual_matrix_enclosed
#print axioms Mub6.Classification.KarlssonLedger.checked_carrier_reuse
#print axioms KarlssonLedgerExampleReuseQueue.frontier_bound
#print axioms KarlssonLedgerExampleReuseQueue.physical_cover
#print axioms KarlssonLedgerExampleReuseQueue.accept_reused_certificate
end
end Mub6.Classification.KarlssonClosureAudit
