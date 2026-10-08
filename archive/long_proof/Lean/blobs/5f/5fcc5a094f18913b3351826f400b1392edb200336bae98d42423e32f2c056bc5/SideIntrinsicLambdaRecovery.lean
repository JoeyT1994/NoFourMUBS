import SideIntrinsicTheta
import SideIntrinsicActualLambda

/-! The intrinsic lambdas of every strict phase side equal the three literal
recipe values on its chosen sheet. All polynomial premises are discharged. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

theorem intrinsicTheta_lambda (a : Rows ℂ) (ha : UnitRows a) (hd : rowDet a ≠ 0) :
    intrinsicTheta a * intrinsicLambda0 a = rowPerm a ∧
    conj (intrinsicTheta a) = intrinsicLambda0 a * conj (rowPerm a) := by
  have hN := (intrinsic_lambdas_unit a ha hd).1
  have hL : intrinsicLambda0 a ≠ 0 := by
    apply Complex.normSq_pos.mp; rw [hN]; norm_num
  have htheta : intrinsicTheta a * intrinsicLambda0 a = rowPerm a := by
    unfold intrinsicTheta
    field_simp [hL]
  have hbar := congrArg (fun z : ℂ => conj z) htheta
  simp only [map_mul] at hbar
  have hunit : intrinsicLambda0 a * conj (intrinsicLambda0 a) = 1 := by
    rw [Complex.mul_conj,hN]; rfl
  refine ⟨htheta, ?_⟩
  calc
    _ = conj (intrinsicTheta a) * (intrinsicLambda0 a * conj (intrinsicLambda0 a)) := by
      rw [hunit,mul_one]
    _ = intrinsicLambda0 a * (conj (intrinsicTheta a) * conj (intrinsicLambda0 a)) := by ring
    _ = _ := by rw [hbar]

#print axioms intrinsicTheta_lambda

theorem intrinsic_lambda_P_bindings (a : Rows ℂ) (ha : UnitRows a) (hd : rowDet a ≠ 0) :
    intrinsicLambda0 a * conj (sideP0 (rowS a) (rowT a) (rowR a)) =
      (gramG (rowS a) (rowT a) (rowR a) : ℂ) +
      ((9 - Complex.normSq (rowR a) : ℝ) : ℂ) * conj (intrinsicTheta a) ∧
    intrinsicLambda1 a * conj (sideP1 (rowS a) (rowT a) (rowR a)) =
      (gramG (rowS a) (rowT a) (rowR a) : ℂ) +
      ((9 - Complex.normSq (rowT a) : ℝ) : ℂ) * conj (intrinsicTheta a) ∧
    intrinsicLambda2 a * conj (sideP2 (rowS a) (rowT a) (rowR a)) =
      (gramG (rowS a) (rowT a) (rowR a) : ℂ) +
      ((9 - Complex.normSq (rowS a) : ℝ) : ℂ) * conj (intrinsicTheta a) := by
  obtain ⟨_,_,hu,hv⟩ := row_product_units a ha
  have huv := mul_ne_zero hu hv
  have htheta := (intrinsicTheta_lambda a ha hd).2
  have hprod : intrinsicLambda0 a * rowDet a^2 =
      -(rowU a * rowV a) * (gramG (rowS a) (rowT a) (rowR a) : ℂ) := by
    rw [actual_gramG_norm_det a ha, ← Complex.mul_conj]
    unfold intrinsicLambda0
    field_simp [hd]
    <;> ring
  have h1rel : rowU a * intrinsicLambda1 a = intrinsicLambda0 a := by
    unfold intrinsicLambda1
    field_simp [hu]
  have h2rel : rowV a * intrinsicLambda2 a = intrinsicLambda0 a := by
    unfold intrinsicLambda2
    field_simp [hv]
  obtain ⟨h0,h1,h2⟩ := actual_intrinsic_lambda_identities a ha
  rw [htheta]
  refine ⟨?_,?_,?_⟩ <;> apply mul_left_cancel₀ huv
  · linear_combination intrinsicLambda0 a * h0 - hprod
  · linear_combination intrinsicLambda0 a * h1 - hprod +
      rowV a * conj (sideP1 (rowS a) (rowT a) (rowR a)) * h1rel
  · linear_combination intrinsicLambda0 a * h2 - hprod +
      rowU a * conj (sideP2 (rowS a) (rowT a) (rowR a)) * h2rel

#print axioms intrinsic_lambda_P_bindings

theorem intrinsic_lambdas_eq_prescribed (a : Rows ℂ) (ha : UnitRows a)
    (hR : 0 < gramInvariant (rowS a) (rowT a) (rowR a)) (epsilon : ℝ)
    (hz : sideZ (rowS a) (rowT a) (rowR a) epsilon = intrinsicTheta a) :
    intrinsicLambda0 a = prescribedLambda0 (rowS a) (rowT a) (rowR a) epsilon ∧
    intrinsicLambda1 a = prescribedLambda1 (rowS a) (rowT a) (rowR a) epsilon ∧
    intrinsicLambda2 a = prescribedLambda2 (rowS a) (rowT a) (rowR a) epsilon := by
  have hd := (strict_intrinsic_det_guard a ha hR).1
  obtain ⟨h0,h1,h2⟩ := intrinsic_lambda_P_bindings a ha hd
  obtain ⟨hP0,hP1,hP2⟩ := strict_sideP_nonzero hR
  obtain ⟨e0,e1,e2⟩ := prescribedLambdas_eq_sideLambdas hR epsilon
  rw [e0,e1,e2]
  simp only [sideLambda0,sideLambda1,sideLambda2,sideLambda,hz]
  exact ⟨(eq_div_iff (conj_ne_zero_of_ne_zero hP0)).2 h0,
    (eq_div_iff (conj_ne_zero_of_ne_zero hP1)).2 h1,
    (eq_div_iff (conj_ne_zero_of_ne_zero hP2)).2 h2⟩

#print axioms intrinsic_lambdas_eq_prescribed
end
end StrictReconstruction20261007.SideIntrinsic
