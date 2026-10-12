import NoFourMUBs.Reuse.Archive.SideIntrinsicActualNorms
import NoFourMUBs.Reuse.Archive.SideIntrinsicActualChi

/-! Intrinsic sheet parameter and all strict guards, directly on a unit side. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

def intrinsicLambda0 (a : Rows ℂ) : ℂ :=
  -(rowU a * rowV a) * conj (rowDet a) / rowDet a
def intrinsicLambda1 (a : Rows ℂ) : ℂ := intrinsicLambda0 a / rowU a
def intrinsicLambda2 (a : Rows ℂ) : ℂ := intrinsicLambda0 a / rowV a
def intrinsicTheta (a : Rows ℂ) : ℂ := rowPerm a / intrinsicLambda0 a

theorem strict_intrinsic_det_guard (a : Rows ℂ) (ha : UnitRows a)
    (hR : 0 < gramInvariant (rowS a) (rowT a) (rowR a)) :
    rowDet a ≠ 0 ∧ 0 < gramG (rowS a) (rowT a) (rowR a) := by
  have hg := (strict_eta_pos_g_ne_zero hR).2
  have hd : rowDet a ≠ 0 := by
    intro hz
    apply hg
    rw [actual_gramG_norm_det a ha, hz]
    simp
  exact ⟨hd, by rw [actual_gramG_norm_det a ha]; exact Complex.normSq_pos.mpr hd⟩

#print axioms strict_intrinsic_det_guard

theorem intrinsic_lambdas_unit (a : Rows ℂ) (ha : UnitRows a) (hd : rowDet a ≠ 0) :
    Complex.normSq (intrinsicLambda0 a) = 1 ∧
    Complex.normSq (intrinsicLambda1 a) = 1 ∧
    Complex.normSq (intrinsicLambda2 a) = 1 := by
  obtain ⟨hu,hv,_,_⟩ := row_product_units a ha
  have hdN : Complex.normSq (rowDet a) ≠ 0 := ne_of_gt (Complex.normSq_pos.mpr hd)
  have h0 : Complex.normSq (intrinsicLambda0 a) = 1 := by
    simp [intrinsicLambda0, map_div₀, map_mul, hu, hv, hdN]
  refine ⟨h0,?_,?_⟩
  · simp [intrinsicLambda1, map_div₀, h0, hu]
  · simp [intrinsicLambda2, map_div₀, h0, hv]

#print axioms intrinsic_lambdas_unit

theorem intrinsicTheta_literal (a : Rows ℂ) (ha : UnitRows a) (hd : rowDet a ≠ 0) :
    intrinsicTheta a = -rowPerm a * rowDet a /
      (conj (rowDet a) * rowU a * rowV a) := by
  obtain ⟨_,_,hu,hv⟩ := row_product_units a ha
  have hdc := conj_ne_zero_of_ne_zero hd
  unfold intrinsicTheta intrinsicLambda0
  field_simp [hu,hv,hd,hdc]
  <;> ring

#print axioms intrinsicTheta_literal

theorem intrinsicTheta_moments (a : Rows ℂ) (ha : UnitRows a) (hd : rowDet a ≠ 0) :
    Complex.normSq (intrinsicTheta a) = gramEta (rowS a) (rowT a) (rowR a) ∧
    (gramG (rowS a) (rowT a) (rowR a) : ℂ) *
      (intrinsicTheta a + conj (intrinsicTheta a)) =
        (gramChi (rowS a) (rowT a) (rowR a) : ℂ) := by
  obtain ⟨hu1,hv1,hu,hv⟩ := row_product_units a ha
  have hdc := conj_ne_zero_of_ne_zero hd
  have hL := (intrinsic_lambdas_unit a ha hd).1
  have hprod : (gramG (rowS a) (rowT a) (rowR a) : ℂ) * intrinsicTheta a =
      -intrinsicTerm a := by
    rw [actual_gramG_norm_det a ha, ← Complex.mul_conj, intrinsicTheta_literal a ha hd]
    unfold intrinsicTerm
    field_simp [hu,hv,hd,hdc]
    <;> ring
  have hbar := congrArg (fun z : ℂ => conj z) hprod
  simp only [map_mul, map_neg, Complex.conj_ofReal] at hbar
  constructor
  · rw [actual_gramEta_norm_perm a ha]
    simp [intrinsicTheta, map_div₀, hL]
  · have hc := actual_chi_identity a ha
    linear_combination hprod + hbar - hc

#print axioms intrinsicTheta_moments
end
end StrictReconstruction20261007.SideIntrinsic
