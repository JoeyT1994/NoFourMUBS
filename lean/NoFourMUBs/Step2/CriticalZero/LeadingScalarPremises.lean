import NoFourMUBs.Reuse.Archive.CriticalPhysicalGauge

/-! The leading block is the first of the already checked twenty strip corners. -/

noncomputable section
namespace CriticalPhysical20261003
open NoFourMUBs.Step2.Critical CriticalStripMoments20261003

theorem stripCorner_zero (H : OAI.MUB6.CMatrix) :
    stripCorner H 0 = stripLeftBlock H := by
  ext i j
  fin_cases j <;> rfl

theorem allCritical_scalar_premises {H : OAI.MUB6.CMatrix}
    (hH : AllCriticalCarrier H) :
    let E := stripLeftBlock H
    0 ≤ sideP E ∧ sideP E + |sideJ E| ≤ 9 ∧
    CriticalScalarReduction20261003.R (sideP E) (sideJ E) (sideW E) = 0 ∧
    CriticalScalarReduction20261003.R (sideP E) (-sideJ E) (sideW E) = 0 := by
  simpa only [stripCorner_zero] using allCritical_strip_scalar_premises hH 0

#print axioms stripCorner_zero
#print axioms allCritical_scalar_premises
end CriticalPhysical20261003
