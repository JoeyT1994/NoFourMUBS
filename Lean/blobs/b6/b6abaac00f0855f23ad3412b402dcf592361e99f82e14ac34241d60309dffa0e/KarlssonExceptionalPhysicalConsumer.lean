import KarlssonExceptionalLedger
import KarlssonCertificateReuse
set_option autoImplicit false

namespace Mub6.Classification.KarlssonLedger
open Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonCover Mub6.ExceptionalTerminals
noncomputable section

/-- On an outer chart, non-Hadamard parameter values need not belong to an
exceptional class. Only genuine Hadamard values require the exact binding. -/
theorem exceptional_job_closes_on_hadamards (j : Job)
    (hevery : ∀ x, Contains j x → j.shape.guard x →
      IsHadamard (j.shape.matrix x) →
      ExceptionalPhase (ClassificationCover.toNumerical (j.shape.matrix x))) :
    ¬ Live j := by
  rintro ⟨x,hx,hg,hocc⟩
  exact exceptional_public_excluded (hevery x hx hg (normalized_occurs_hadamard hocc)) hocc

/-- The exceptional classification is required only on the physical Hadamard
part of the carrier. This still requires the entire physical part, not one
exceptional point lying inside the box. -/
theorem exceptional_carrier_excluded {E : CarrierRegion}
    (hevery : ∀ H : Mat6, IsHadamard H →
      CarrierBox E (ClassificationCover.toNumerical H) →
      ExceptionalPhase (ClassificationCover.toNumerical H)) : CarrierExcluded E := by
  intro H hH hbox hocc
  exact exceptional_public_excluded (hevery H hH hbox) hocc

theorem exceptional_enclosure_closes {j : Job} {E : CarrierRegion}
    (hencl : Encloses j E)
    (hevery : ∀ H : Mat6, IsHadamard H →
      CarrierBox E (ClassificationCover.toNumerical H) →
      ExceptionalPhase (ClassificationCover.toNumerical H)) : ¬ Live j :=
  enclosure_certificate_closes hencl (exceptional_carrier_excluded hevery)

#print axioms exceptional_job_closes_on_hadamards
#print axioms exceptional_carrier_excluded
#print axioms exceptional_enclosure_closes
end
end Mub6.Classification.KarlssonLedger
