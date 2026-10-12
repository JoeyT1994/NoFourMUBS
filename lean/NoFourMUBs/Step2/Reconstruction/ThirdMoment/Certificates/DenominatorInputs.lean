import NoFourMUBs.Step2.Reconstruction.ThirdMoment.Certificates.Products.Product000
import NoFourMUBs.Step2.Reconstruction.BaseCoefficients.Bindings
import NoFourMUBs.Step2.Frames
import NoFourMUBs.Step2.ActualCorners
import Mathlib.Tactic.FieldSimp

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

noncomputable section
namespace NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
open CriticalZeroSplitReduction20261003

/-- The first saved divisor is the already checked input divisor, inverted. -/
theorem P003_eq_inverse_inputDen (a b c d : ℂ)
    (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0) (hd : d ≠ 0) :
    polynomialValue a b c d P003 =
      4*a^6*b^5*c^6*d^6*BaseCoefficients.inputDen a⁻¹ b⁻¹ c⁻¹ d⁻¹ := by
  simp only [polynomialValue,P003,P003A01,P003A02,P003A03,P003A04,P003A05,P003A06,
    sliceValue,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,
    IntegerReflector.evalII,IntegerReflector.evalI,Coefficients.eval,
    List.map_cons,List.map_nil,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,
    Int.cast_one,zero_add,add_zero,mul_zero,mul_one]
  unfold BaseCoefficients.inputDen
  field_simp [ha,hb,hc,hd]
  <;> ring

/-- The second saved divisor reuses the first at the transposed seed. -/
theorem P004_eq_bc_mul_P003_swap (a b c d : ℂ) :
    polynomialValue a b c d P004 = b*c*polynomialValue a c b d P003 := by
  simp only [polynomialValue,P003,P004,
    P003A01,P003A02,P003A03,P003A04,P003A05,P003A06,
    P004A01,P004A02,P004A03,P004A04,P004A05,P004A06,
    sliceValue,CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,
    IntegerReflector.evalII,IntegerReflector.evalI,Coefficients.eval,
    List.map_cons,List.map_nil,Int.cast_neg,Int.cast_ofNat,Int.cast_zero,
    Int.cast_one,zero_add,add_zero,mul_zero,mul_one]
  ring

theorem P003_strict_ne_zero (p : StrictSeed) :
    polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P003 ≠ 0 := by
  let q : StrictSeed := ⟨inverseSeed p.1,
    by rw [(inverseSeed_invariants p.1).1]; exact p.2⟩
  have hi : BaseCoefficients.inputDen (p.1 0 : ℂ)⁻¹ (p.1 1 : ℂ)⁻¹
      (p.1 2 : ℂ)⁻¹ (p.1 3 : ℂ)⁻¹ ≠ 0 := by
    simpa only [q,inverseSeed,Circle.coe_inv] using BaseCoefficients.inputDen_strict q
  rw [P003_eq_inverse_inputDen _ _ _ _ (Circle.coe_ne_zero _) (Circle.coe_ne_zero _)
    (Circle.coe_ne_zero _) (Circle.coe_ne_zero _)]
  exact mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero (mul_ne_zero
    (by norm_num : (4 : ℂ) ≠ 0) (pow_ne_zero 6 (Circle.coe_ne_zero (p.1 0))))
    (pow_ne_zero 5 (Circle.coe_ne_zero (p.1 1))))
    (pow_ne_zero 6 (Circle.coe_ne_zero (p.1 2))))
    (pow_ne_zero 6 (Circle.coe_ne_zero (p.1 3)))) hi

theorem P004_strict_ne_zero (p : StrictSeed) :
    polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P004 ≠ 0 := by
  let q : StrictSeed := ⟨transposedSeed p.1,
    by rw [(transposedSeed_invariants p.1).1]; exact p.2⟩
  have hq := P003_strict_ne_zero q
  change polynomialValue (p.1 0 : ℂ) (p.1 2) (p.1 1) (p.1 3) P003 ≠ 0 at hq
  rw [P004_eq_bc_mul_P003_swap]
  exact mul_ne_zero (mul_ne_zero (Circle.coe_ne_zero (p.1 1))
    (Circle.coe_ne_zero (p.1 2))) hq

/-- The supplied W11 linear common denominator has no strict-domain zeros. -/
theorem P000_strict_ne_zero (p : StrictSeed) :
    polynomialValue (p.1 0 : ℂ) (p.1 1) (p.1 2) (p.1 3) P000 ≠ 0 := by
  rw [← Product000_value]
  exact mul_ne_zero (P003_strict_ne_zero p) (P004_strict_ne_zero p)

end NoFourMUBs.Step2.Reconstruction.ThirdMoment.CertificateData
