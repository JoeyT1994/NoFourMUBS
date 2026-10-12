import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.DenominatorInputs
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.MonomialTransport0

set_option autoImplicit false
set_option maxHeartbeats 1000000
open scoped ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData

/-- Keep the original side factors instead of re-expanding the saved divisor. -/
theorem P003_side_factor (p : Seed) :
    polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P003 =
      (p 0 : ℂ)^2 * (p 1) * (p 2)^3 * (p 3)^3 *
        (StrictReconstruction20261007.sideP0 (seedS p) (seedT p) (seedRho p) *
          conj (StrictReconstruction20261007.sideP1 (seedS p) (seedT p) (seedRho p))) := by
  have hs : seedS (inverseSeed p) = conj (seedS p) := by
    simp [seedS,inverseSeed,Complex.star_def,phase_conj]
  have ht : seedT (inverseSeed p) = conj (seedT p) := by
    simp [seedT,inverseSeed,Complex.star_def,phase_conj]
  have hr : seedRho (inverseSeed p) = conj (seedRho p) := by
    simp [seedRho,inverseSeed,Complex.star_def,phase_conj]
  have h := BaseCoefficients.cachedC6_seed (inverseSeed p)
  rw [hs,ht,hr] at h
  have hc : BaseCoefficients.cachedC6 (p 0 : ℂ)⁻¹ (p 1 : ℂ)⁻¹
      (p 2 : ℂ)⁻¹ (p 3 : ℂ)⁻¹ =
        StrictReconstruction20261007.sideP0 (seedS p) (seedT p) (seedRho p) *
          conj (StrictReconstruction20261007.sideP1 (seedS p) (seedT p) (seedRho p)) := by
    simpa [StrictReconstruction20261007.sideP0,StrictReconstruction20261007.sideP1,
      inverseSeed,Complex.star_def,map_ofNat] using h
  rw [P003_eq_inverse_inputDen _ _ _ _ (Circle.coe_ne_zero _) (Circle.coe_ne_zero _)
    (Circle.coe_ne_zero _) (Circle.coe_ne_zero _),← hc]
  unfold BaseCoefficients.cachedC6 BaseCoefficients.phaseMonomial
  field_simp [Circle.coe_ne_zero (p 0),Circle.coe_ne_zero (p 1),
    Circle.coe_ne_zero (p 2),Circle.coe_ne_zero (p 3)]
  <;> ring

theorem P015_side_factor (p : Seed) :
    polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P015 =
      (p 0 : ℂ) * (p 1) * (p 2)^3 * (p 3)^3 *
        (StrictReconstruction20261007.sideP0 (seedS p) (seedT p) (seedRho p) *
          conj (StrictReconstruction20261007.sideP1 (seedS p) (seedT p) (seedRho p))) := by
  apply mul_left_cancel₀ (Circle.coe_ne_zero (p 0))
  rw [← P003_eq_a_mul_P015,P003_side_factor]
  ring

end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
