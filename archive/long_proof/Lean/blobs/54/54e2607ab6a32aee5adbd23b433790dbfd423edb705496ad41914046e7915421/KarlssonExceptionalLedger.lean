import ExceptionalQuartetTerminals
import KarlssonLedgerEnclosures
set_option autoImplicit false

namespace Mub6.Classification.KarlssonLedger
open Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.ExceptionalTerminals
noncomputable section

theorem exceptional_public_excluded {H : Mat6}
    (hex : ExceptionalPhase (ClassificationCover.toNumerical H)) :
    ¬ OccursAsQuartetEdge (normalized H) := by
  simpa [normalized,Worker12.physicalNormalize,one_div] using exceptional_phase_exclusion hex

/-- An exact class-membership proof can terminate a job. Mere intersection
with an exceptional matrix supplies no such proof and deletes no box. -/
theorem exceptional_job_closes (j : Job)
    (hevery : ∀ x, (∀ i, Mem (j.bounds i) (x i)) → j.shape.guard x →
      ExceptionalPhase (ClassificationCover.toNumerical (j.shape.matrix x))) : ¬ Live j := by
  rintro ⟨x,hx,hg,hocc⟩
  exact exceptional_public_excluded (hevery x hx hg) hocc

#print axioms exceptional_public_excluded
#print axioms exceptional_job_closes
end
end Mub6.Classification.KarlssonLedger
