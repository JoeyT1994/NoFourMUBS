import NoFourMUBs.Step2.Reconstruction.BaseCoefficients.Data
import Mathlib.Tactic.FieldSimp
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.BaseCoefficients
open StrictReconstruction20261007
theorem clearedV (a b c d : ℂ)
    (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0) (hd : d ≠ 0) :
    let q := normData a b c d
    4*vNum a b c d = phaseMonomial a b c d * q.p0*q.p1bar := by
  dsimp only [normData,PreRhoNorm.gramData,PreRhoAlignment.gramData,
    vNum,phaseMonomial]
  field_simp [ha,hb,hc,hd]
  <;> ring

end NoFourMUBs.Step2.Reconstruction.BaseCoefficients
