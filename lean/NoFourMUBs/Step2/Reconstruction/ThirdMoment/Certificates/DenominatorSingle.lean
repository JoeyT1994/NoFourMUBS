import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.DenominatorSide
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product004
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product012

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1000000
open scoped ComplexConjugate

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- The small saved cofactor is the vertical side polynomial times a phase monomial. -/
theorem P012_side_factor (p : Seed) :
    polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P012 =
      -((p 0 : ℂ) * (p 1)^2 * (p 2) * (p 3)^2) *
        conj (StrictReconstruction20261007.sideP1 (seedS (transposedSeed p))
          (seedT (transposedSeed p)) (seedRho (transposedSeed p))) := by
  simp only [StrictReconstruction20261007.sideP1,StrictReconstruction20261007.sideP0,
    Complex.normSq_eq_conj_mul_self,seedS,seedT,seedRho,transposedSeed,
    Matrix.of_apply,Matrix.cons_val_zero',Matrix.cons_val_succ',
    Matrix.cons_val_zero,Matrix.cons_val_one,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.head_cons,Matrix.tail_cons,
    Complex.star_def,map_add,map_neg,map_sub,map_mul,map_pow,map_one,map_ofNat,
    map_inv₀,starRingEnd_self_apply,NoFourMUBs.Step1Geo.conj_circle,inv_inv]
  simp only [polynomialValue,P012,P012A01,P012A02,P012A03,
    sliceValue,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,
    IntegerReflector.evalII,IntegerReflector.evalI,Coefficients.eval,
    List.map_cons,List.map_nil,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,
    Int.cast_one,zero_add,add_zero,mul_zero,mul_one]
  field_simp [Circle.coe_ne_zero (p 0),Circle.coe_ne_zero (p 1),
    Circle.coe_ne_zero (p 2),Circle.coe_ne_zero (p 3)]
  <;> ring

theorem P028_side_factor (p : Seed) :
    polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P028 =
      -((p 0 : ℂ) * (p 1)^2 * (p 2) * (p 3)) *
        StrictReconstruction20261007.sideP0 (seedS (transposedSeed p))
          (seedT (transposedSeed p)) (seedRho (transposedSeed p)) := by
  simp only [StrictReconstruction20261007.sideP0,
    Complex.normSq_eq_conj_mul_self,seedS,seedT,seedRho,transposedSeed,
    Matrix.of_apply,Matrix.cons_val_zero',Matrix.cons_val_succ',
    Matrix.cons_val_zero,Matrix.cons_val_one,Matrix.cons_val_two,Matrix.cons_val_three,
    Matrix.head_cons,Matrix.tail_cons,
    Complex.star_def,map_add,map_neg,map_sub,map_mul,map_pow,map_one,map_ofNat,
    map_inv₀,starRingEnd_self_apply,NoFourMUBs.Step1Geo.conj_circle,inv_inv]
  simp only [polynomialValue,P028,P028A00,P028A01,P028A02,P028A03,
    sliceValue,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,
    IntegerReflector.evalII,IntegerReflector.evalI,Coefficients.eval,
    List.map_cons,List.map_nil,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,
    Int.cast_one,zero_add,add_zero,mul_zero,mul_one]
  field_simp [Circle.coe_ne_zero (p 0),Circle.coe_ne_zero (p 1),
    Circle.coe_ne_zero (p 2),Circle.coe_ne_zero (p 3)]
  <;> ring

/-- Reuse the checked cofactor product; no expansion of the large divisor. -/
theorem P011_side_factor (p : StrictSeed) :
    polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P011 =
      -((p.1 0 : ℂ) * (p.1 1)^2 * (p.1 2) * (p.1 3)) *
        polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P003 *
        StrictReconstruction20261007.sideP0 (seedS (transposedSeed p.1))
          (seedT (transposedSeed p.1)) (seedRho (transposedSeed p.1)) := by
  have hprod : polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P011 *
      polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P012 ≠ 0 := by
    rw [Product004_value]; exact P000_strict_ne_zero p
  have ht := P003_side_factor (transposedSeed p.1)
  change polynomialValue (p.1 0 : ℂ) (p.1 2) (p.1 1) (p.1 3) P003 =
    (p.1 0 : ℂ)^2 * (p.1 2) * (p.1 1)^3 * (p.1 3)^3 *
      (StrictReconstruction20261007.sideP0 (seedS (transposedSeed p.1))
        (seedT (transposedSeed p.1)) (seedRho (transposedSeed p.1)) *
       conj (StrictReconstruction20261007.sideP1 (seedS (transposedSeed p.1))
        (seedT (transposedSeed p.1)) (seedRho (transposedSeed p.1)))) at ht
  apply mul_right_cancel₀ (mul_ne_zero_iff.mp hprod).2
  calc
    _ = polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P000 :=
      Product004_value _ _ _ _
    _ = polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P003 *
        polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P004 :=
      (Product000_value _ _ _ _).symm
    _ = _ := by rw [P004_eq_bc_mul_P003_swap,ht,P012_side_factor]; ring

theorem P027_side_factor (p : StrictSeed) :
    polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P027 =
      -((p.1 0 : ℂ) * (p.1 1)^2 * (p.1 2) * (p.1 3)^2) *
        polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P003 *
        conj (StrictReconstruction20261007.sideP1 (seedS (transposedSeed p.1))
          (seedT (transposedSeed p.1)) (seedRho (transposedSeed p.1))) := by
  have hprod : polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P027 *
      polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P028 ≠ 0 := by
    rw [Product012_value]; exact P000_strict_ne_zero p
  have ht := P003_side_factor (transposedSeed p.1)
  change polynomialValue (p.1 0 : ℂ) (p.1 2) (p.1 1) (p.1 3) P003 =
    (p.1 0 : ℂ)^2 * (p.1 2) * (p.1 1)^3 * (p.1 3)^3 *
      (StrictReconstruction20261007.sideP0 (seedS (transposedSeed p.1))
        (seedT (transposedSeed p.1)) (seedRho (transposedSeed p.1)) *
       conj (StrictReconstruction20261007.sideP1 (seedS (transposedSeed p.1))
        (seedT (transposedSeed p.1)) (seedRho (transposedSeed p.1)))) at ht
  apply mul_right_cancel₀ (mul_ne_zero_iff.mp hprod).2
  calc
    _ = polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P000 :=
      Product012_value _ _ _ _
    _ = polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P003 *
        polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P004 :=
      (Product000_value _ _ _ _).symm
    _ = _ := by rw [P004_eq_bc_mul_P003_swap,ht,P028_side_factor]; ring

end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
