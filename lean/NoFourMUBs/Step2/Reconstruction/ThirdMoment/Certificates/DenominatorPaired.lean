import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.DenominatorSide
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.DenominatorGram
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product002
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.MonomialTransport2

set_option autoImplicit false
set_option maxHeartbeats 1000000

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData

/-- Reuse the two saved cofactor identities to retain the smaller side factors. -/
theorem P007_side_factors (p : Seed) :
    polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P007 =
      (p 0 : ℂ) * (p 2) * polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P015 *
        polynomialValue (transposedSeed p 0 : ℂ) (transposedSeed p 1)
          (transposedSeed p 2) (transposedSeed p 3) P003 := by
  have h4 : polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P004 =
      (p 1 : ℂ) * (p 2) * polynomialValue (transposedSeed p 0 : ℂ)
        (transposedSeed p 1) (transposedSeed p 2) (transposedSeed p 3) P003 := by
    change polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P004 =
      (p 1 : ℂ) * (p 2) * polynomialValue (p 0 : ℂ) (p 2) (p 1) (p 3) P003
    exact P004_eq_bc_mul_P003_swap _ _ _ _
  apply mul_right_cancel₀ (Circle.coe_ne_zero (p 1))
  calc
    _ = polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P000 := by
      simpa only [P008_value] using Product002_value (p 0 : ℂ) (p 1) (p 2) (p 3)
    _ = polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P003 *
        polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P004 :=
      (Product000_value _ _ _ _).symm
    _ = _ := by rw [P003_eq_a_mul_P015,h4]; ring

/-- The larger saved paired divisor adds exactly the existing Gram factor. -/
theorem P038_seed_factor (p : Seed) :
    polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P038 =
      -((p 0 : ℂ) * (p 1) * (p 2) * (p 3)) * (seedG p : ℂ) *
        polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P007 := by
  apply mul_left_cancel₀ (Circle.coe_ne_zero (p 1))
  calc
    _ = polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P031 :=
      (P031_eq_b_mul_P038 _ _ _ _).symm
    _ = polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P045 *
        polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P004 :=
      (Product021_value _ _ _ _).symm
    _ = -((p 0 : ℂ) * (p 1) * (p 2) * (p 3)) * (seedG p : ℂ) *
        (polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P003 *
          polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P004) := by
      rw [P045_seed_factor]; ring
    _ = -((p 0 : ℂ) * (p 1) * (p 2) * (p 3)) * (seedG p : ℂ) *
        polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P000 := by
      rw [Product000_value]
    _ = -((p 0 : ℂ) * (p 1) * (p 2) * (p 3)) * (seedG p : ℂ) *
        (polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P007 * (p 1)) := by
      rw [← Product002_value,P008_value]
    _ = _ := by ring

end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
