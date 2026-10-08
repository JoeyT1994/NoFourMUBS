import KarlssonClosureEndpointTypes
import KarlssonCanonicalRootQueue
import KarlssonExceptionalPhysicalConsumer
set_option autoImplicit false

namespace Mub6.Classification.KarlssonIntegrationFinalAudit
open Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonLedger Mub6.Classification.KarlssonCover
open Mub6.Classification.KarlssonSeamSymmetry
noncomputable section

example : ∀ label : SeamLabel, ∀ bounds : Fin 2 → Interval,
    Live ⟨.seam label,bounds⟩ → Live ⟨.seam canonicalLabel,bounds⟩ :=
  @seam_job_canonical_covers

example : ∀ {H : BasisMatrix}, OccursAsQuartetEdge H →
    HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H)) →
    ∃ j ∈ KarlssonCanonicalRootQueue.representatives, Live j :=
  @KarlssonCanonicalRootQueue.physical_job_cover

example : ∀ {H : BasisMatrix}, OccursAsQuartetEdge H →
    HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H)) →
    ∃ K : Mat6, OccursAsQuartetEdge (normalized K) ∧
      ∃ E ∈ KarlssonCanonicalRootQueue.carriers, CarrierBox E (ClassificationCover.toNumerical K) :=
  @KarlssonCanonicalRootQueue.physical_cover

#print axioms Mub6.ExceptionalTerminals.hTimes_quartet_exclusion
#print axioms Mub6.ExceptionalTerminals.tao_quartet_exclusion
#print axioms seam_job_canonical_covers
#print axioms KarlssonCanonicalRootQueue.physical_job_cover
#print axioms KarlssonCanonicalRootQueue.physical_cover
#print axioms KarlssonCanonicalRootQueue.closure_from_representatives
#print axioms KarlssonCanonicalRootQueue.closure_from_carriers
#print axioms exceptional_job_closes_on_hadamards
#print axioms exceptional_enclosure_closes
end
end Mub6.Classification.KarlssonIntegrationFinalAudit
