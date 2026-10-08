import KarlssonAdaptiveLedger
import KarlssonConditionedCompiler
set_option autoImplicit false

namespace Mub6.Classification.KarlssonLedger
open Complex Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.KarlssonCover Mub6.Classification.KarlssonCompiler
open Mub6.Classification.KarlssonLifted Mub6.Classification.KarlssonConditioning
noncomputable section
set_option maxHeartbeats 2000000

def normalized (H : Mat6) : BasisMatrix :=
  phaseScale (Real.sqrt 6)⁻¹ (ClassificationCover.toNumerical H)

theorem phase_roundtrip (H : Mat6) :
    ClassificationCover.toPublic (phaseScale (Real.sqrt 6) (normalized H))=H := by
  have hs : (Real.sqrt 6 : ℂ)≠0 := by exact_mod_cast (show Real.sqrt 6≠0 by positivity)
  have he : phaseScale (Real.sqrt 6) (normalized H)=ClassificationCover.toNumerical H := by
    funext i j
    simp [normalized,phaseScale,Complex.ofReal_inv,←mul_assoc,hs]
  rw [he,ClassificationCover.roundtrip_public]

theorem normalized_occurs_hadamard {H : Mat6} (h : OccursAsQuartetEdge (normalized H)) :
    IsHadamard H := by
  have hp : IsHadamard (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) (normalized H))) := by
    rcases h with ⟨B,hB,a,b,hab,he⟩
    rw [←he]
    exact ClassificationCover.public_of_boundary_phase (actual_edge_sqrt_six_phaseHadamard hB a b hab)
  simpa [phase_roundtrip] using hp

theorem normalized_equivalent_occurs {H K : Mat6}
    (h : OccursAsQuartetEdge (normalized H)) (he : Equivalent H K) :
    OccursAsQuartetEdge (normalized K) := by
  exact ClassificationCover.normalized_public_representative_occurs h (by rwa [phase_roundtrip])

/-- Explicit contract expected from numerical workers. A certificate must
exclude every physical phase matrix in this exact carrier and gauge. -/
def CarrierExcluded (E : CarrierRegion) : Prop :=
  ∀ H : Mat6, IsHadamard H → CarrierBox E (ClassificationCover.toNumerical H) →
    ¬ OccursAsQuartetEdge (normalized H)

def rawJob (c : RawInput) : Job := ⟨.raw c.label,c.parameters⟩
def seamJob (c : SeamInput) : Job := ⟨.seam c.label,c.parameters⟩
def liftedJob (c : LiftedInput) : Job :=
  ⟨.lifted c.negative,![c.core 0,c.core 1,c.phases 0,c.phases 1,c.phases 2,c.phases 3]⟩

theorem raw_certificate_closes (c : RawInput) (hr : sqrt3Valid c.sqrt3)
    (hE : CarrierExcluded (conditionedOutput c)) : ¬ Live (rawJob c) := by
  rintro ⟨x,hx,hg,hocc⟩
  have hH := normalized_occurs_hadamard hocc
  obtain ⟨K,he,hbox⟩ := conditioned_compiler_sound c hr hx hg.1 hg.2.1 hg.2.2 hH
  exact hE K ((equivalent_isHadamard_iff he).mp hH) hbox (normalized_equivalent_occurs hocc he)

theorem seam_certificate_closes (c : SeamInput) (hr : sqrt3Valid c.sqrt3)
    (hE : CarrierExcluded c.output) : ¬ Live (seamJob c) := by
  rintro ⟨x,hx,_,hocc⟩
  have hH := normalized_occurs_hadamard hocc
  exact hE _ hH (seam_compiler_sound c hr hx hH) hocc

theorem lifted_certificate_closes (c : LiftedInput) (hr : sqrt3Valid c.sqrt3)
    (hE : CarrierExcluded c.output) : ¬ Live (liftedJob c) := by
  rintro ⟨x,hx,hg,hocc⟩
  have hH := normalized_occurs_hadamard hocc
  have hp : ∀ i : Fin 4, Mem (c.phases i) (![x 2,x 3,x 4,x 5] i) := by
    intro i
    fin_cases i
    · exact hx 2
    · exact hx 3
    · exact hx 4
    · exact hx 5
  exact hE _ hH (lifted_compiler_sound c hr (hx 0) (hx 1) hp hg.1 hg.2 hH) hocc

/-- The fallback keeps the two core boxes and all four complete phase ranges.
Switching to it is coverage preserving; it asserts no local exclusion. -/
def rawLift (c : RawInput) : LiftedInput :=
  ⟨c.label.2,![c.parameters 0,c.parameters 1],fun _ => ⟨-1,1⟩,c.sqrt3⟩

theorem raw_lift_covers (c : RawInput) : Live (rawJob c) → Live (liftedJob (rawLift c)) := by
  rintro ⟨x,hx,hg,hocc⟩
  obtain ⟨y,hy,he⟩ := reduced_lift_exists c.label x (normalized_occurs_hadamard hocc)
  refine ⟨![x 0,x 1,y 0,y 1,y 2,y 3],?_,⟨hg.1,hg.2.1⟩,?_⟩
  · intro i
    fin_cases i
    · exact hx 0
    · exact hx 1
    · exact hy 0
    · exact hy 1
    · exact hy 2
    · exact hy 3
  · convert normalized_equivalent_occurs hocc he using 1
    congr 4
    funext i
    fin_cases i <;> rfl

#print axioms phase_roundtrip
#print axioms normalized_occurs_hadamard
#print axioms normalized_equivalent_occurs
#print axioms raw_certificate_closes
#print axioms seam_certificate_closes
#print axioms lifted_certificate_closes
#print axioms raw_lift_covers
end
end Mub6.Classification.KarlssonLedger

