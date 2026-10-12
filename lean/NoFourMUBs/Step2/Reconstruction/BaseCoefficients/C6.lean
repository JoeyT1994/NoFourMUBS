import NoFourMUBs.Step2.Reconstruction.BaseCoefficients.Data
import Mathlib.Tactic.FieldSimp
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.BaseCoefficients
open StrictReconstruction20261007
theorem clearedC6 (a b c d : ℂ)
    (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0) (hd : d ≠ 0) :
    let q := normData a b c d
    4*inputDen a b c d = phaseMonomial a b c d * q.a.p0bar*q.a.p1 := by
  dsimp only [normData,PreRhoNorm.gramData,PreRhoAlignment.gramData,
    inputDen,phaseMonomial]
  field_simp [ha,hb,hc,hd]
  <;> ring

end NoFourMUBs.Step2.Reconstruction.BaseCoefficients
