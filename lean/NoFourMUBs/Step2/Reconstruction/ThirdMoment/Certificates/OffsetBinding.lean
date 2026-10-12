import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P065
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Polynomials.P066
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.SeedResiduals
import NoFourMUBs.Step1.Lift
import Mathlib.Tactic.FieldSimp

set_option autoImplicit false
set_option maxHeartbeats 1000000
open Matrix Hadamard6
open scoped ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

theorem P065_value {R : Type*} [CommRing R] (a b c d : R) :
    polynomialValue a b c d P065 = -((a*c+a+c)*(a*b+a+b)) := by
  simp only [polynomialValue,P065,P065A00,P065A01,P065A02,sliceValue,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,
    IntegerReflector.evalII,IntegerReflector.evalI,Coefficients.eval,
    List.map_cons,List.map_nil,Int.cast_neg,Int.cast_one,Int.cast_ofNat,
    zero_add,add_zero,mul_zero,mul_one]
  ring

theorem P066_value {R : Type*} [CommRing R] (a b c d : R) :
    polynomialValue a b c d P066 = a^2*b*c := by
  simp only [polynomialValue,P066,P066A02,sliceValue,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,
    IntegerReflector.evalII,IntegerReflector.evalI,Coefficients.eval,
    List.map_cons,List.map_nil,Int.cast_one,zero_add,add_zero,mul_zero,mul_one]
  ring

theorem seedWeightedOffset_formula (p : Seed) :
    seedWeightedOffset p =
      (1+conj (p 0 : ℂ)+conj (p 2 : ℂ))*(1+conj (p 0 : ℂ)+conj (p 1 : ℂ)) := by
  simp [seedWeightedOffset,seedCorner,corner,sixI3,Matrix.mul_apply,
    Matrix.conjTranspose_apply,Matrix.vecMul,dotProduct,Fin.sum_univ_three]
  <;> ring

theorem P066_seed_ne_zero (p : Seed) :
    polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P066 ≠ 0 := by
  rw [P066_value]
  exact mul_ne_zero (mul_ne_zero (pow_ne_zero 2 (Circle.coe_ne_zero (p 0)))
    (Circle.coe_ne_zero (p 1))) (Circle.coe_ne_zero (p 2))

/-- The supplied numerator and denominator are the literal last W11 term.
This uses only unit phases; no strict or generic parameter assumption. -/
theorem savedOffset_value (p : Seed) :
    -seedWeightedOffset p =
      polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P065 /
      polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P066 := by
  rw [seedWeightedOffset_formula,P065_value,P066_value]
  simp only [NoFourMUBs.Step1Geo.conj_circle]
  field_simp [Circle.coe_ne_zero (p 0),Circle.coe_ne_zero (p 1),Circle.coe_ne_zero (p 2)]
  <;> ring

end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
