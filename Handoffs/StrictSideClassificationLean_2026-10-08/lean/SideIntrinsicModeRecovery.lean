import SideIntrinsicFourierMatrix
import SideIntrinsicLambdaRecovery
import SideMatrixMoments

/-! Bind every supplied Fourier moment to the literal reconstruction recipe.
No mode ordering or nonzero mode is assumed in these identities. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

theorem intrinsic_row_products (a : Rows ℂ) (ha : UnitRows a) (hd : rowDet a ≠ 0) :
    intrinsicLambda0 a * conj (intrinsicLambda1 a) = rowU a ∧
    intrinsicLambda0 a * conj (intrinsicLambda2 a) = rowV a := by
  obtain ⟨hu1,hv1,hu,hv⟩ := row_product_units a ha
  have hL := (intrinsic_lambdas_unit a ha hd).1
  have hLL : intrinsicLambda0 a * conj (intrinsicLambda0 a) = 1 := by
    rw [Complex.mul_conj,hL]; rfl
  have hU : rowU a * conj (rowU a) = 1 := by rw [Complex.mul_conj,hu1]; rfl
  have hV : rowV a * conj (rowV a) = 1 := by rw [Complex.mul_conj,hv1]; rfl
  constructor
  · calc
      _ = (intrinsicLambda0 a * conj (intrinsicLambda0 a)) / conj (rowU a) := by
        simp only [intrinsicLambda1,map_div₀]; ring
      _ = 1 / conj (rowU a) := by rw [hLL]
      _ = rowU a := (div_eq_iff (conj_ne_zero_of_ne_zero hu)).2 hU.symm
  · calc
      _ = (intrinsicLambda0 a * conj (intrinsicLambda0 a)) / conj (rowV a) := by
        simp only [intrinsicLambda2,map_div₀]; ring
      _ = 1 / conj (rowV a) := by rw [hLL]
      _ = rowV a := (div_eq_iff (conj_ne_zero_of_ne_zero hv)).2 hV.symm

#print axioms intrinsic_row_products

theorem prescribed_intrinsic_products (a : Rows ℂ) (ha : UnitRows a)
    (hR : 0 < gramInvariant (rowS a) (rowT a) (rowR a)) (epsilon : ℝ)
    (hz : sideZ (rowS a) (rowT a) (rowR a) epsilon = intrinsicTheta a) :
    prescribedU (rowS a) (rowT a) (rowR a) epsilon = rowU a ∧
    sideZ (rowS a) (rowT a) (rowR a) epsilon *
      prescribedLambda0 (rowS a) (rowT a) (rowR a) epsilon = rowPerm a := by
  obtain ⟨h0,h1,_⟩ := intrinsic_lambdas_eq_prescribed a ha hR epsilon hz
  have hd := (strict_intrinsic_det_guard a ha hR).1
  constructor
  · simp only [prescribedU,← h0,← h1]
    exact (intrinsic_row_products a ha hd).1
  · rw [hz,← h0]
    exact (intrinsicTheta_lambda a ha hd).1

#print axioms prescribed_intrinsic_products

theorem prescribed_intrinsic_delta_radicand (a : Rows ℂ) (ha : UnitRows a)
    (hR : 0 < gramInvariant (rowS a) (rowT a) (rowR a)) (epsilon : ℝ)
    (he : epsilon^2=1)
    (hz : sideZ (rowS a) (rowT a) (rowR a) epsilon = intrinsicTheta a) :
    prescribedDeltaRadicand (rowS a) (rowT a) (rowR a) epsilon = -rowDet a^2 / 27 := by
  have hd := (strict_intrinsic_det_guard a ha hR).1
  have hdc := conj_ne_zero_of_ne_zero hd
  obtain ⟨_,_,hu,hv⟩ := row_product_units a ha
  obtain ⟨h0,h1,h2⟩ := intrinsic_lambdas_eq_prescribed a ha hR epsilon hz
  obtain ⟨e0,e1,e2⟩ := prescribedLambdas_eq_sideLambdas hR epsilon
  have hL0 := h0.trans e0
  have hL1 := h1.trans e1
  have hL2 := h2.trans e2
  rw [prescribedDeltaRadicand_eq_sideDeltaRadicand hR he]
  simp only [sideDeltaRadicand,← hL0,← hL1,← hL2]
  rw [actual_gramG_norm_det a ha]
  simp only [Complex.ofReal_div,Complex.ofReal_ofNat,← Complex.mul_conj,
    intrinsicLambda1,intrinsicLambda2,intrinsicLambda0]
  field_simp [hu,hv,hd,hdc]
  <;> ring

#print axioms prescribed_intrinsic_delta_radicand

theorem actual_mode_reconstruction_moments (a : Rows ℂ) (ha : UnitRows a)
    (hR : 0 < gramInvariant (rowS a) (rowT a) (rowR a)) (epsilon : ℝ)
    (hz : sideZ (rowS a) (rowT a) (rowR a) epsilon = intrinsicTheta a)
    (w : ℂ) (hwu : Complex.normSq w=1) (hw : w^2+w+1=0) :
    preRhoN (rowS a) = Complex.normSq (sideModeA a w) + Complex.normSq (sideModeB a w) ∧
    preRhoAlpha (rowS a) (rowT a) (rowR a) epsilon = sideModeA a w * sideModeB a w ∧
    prescribedGamma (rowS a) (rowT a) (rowR a) epsilon =
      sideModeA a w * sideModeD a w + sideModeB a w * sideModeC a w ∧
    reconstructionK (rowS a) (rowT a) (rowR a) =
      sideModeC a w * conj (sideModeA a w) + sideModeD a w * conj (sideModeB a w) ∧
    preRhoNumerator (rowS a) (rowT a) (rowR a) epsilon =
      ((Complex.normSq (sideModeA a w) - Complex.normSq (sideModeB a w) : ℝ) : ℂ) *
      sideModeDelta a w := by
  obtain ⟨hu,hperm⟩ := prescribed_intrinsic_products a ha hR epsilon hz
  have hN : preRhoN (rowS a) =
      Complex.normSq (sideModeA a w) + Complex.normSq (sideModeB a w) := by
    have h := (side_fourier_row_norms a ha w hwu hw).1
    unfold preRhoN
    linarith
  have halpha : preRhoAlpha (rowS a) (rowT a) (rowR a) epsilon =
      sideModeA a w * sideModeB a w := by
    change (rowS a/3)^2 - prescribedU (rowS a) (rowT a) (rowR a) epsilon * conj (rowS a/3) = _
    rw [hu]
    exact (actual_mode_alpha a ha w hw).symm
  have hgamma : prescribedGamma (rowS a) (rowT a) (rowR a) epsilon =
      sideModeA a w * sideModeD a w + sideModeB a w * sideModeC a w := by
    unfold prescribedGamma
    rw [hperm]
    exact (actual_mode_gamma a w hw).symm
  have hk : reconstructionK (rowS a) (rowT a) (rowR a) =
      sideModeC a w * conj (sideModeA a w) + sideModeD a w * conj (sideModeB a w) :=
    side_fourier_cross_moment a w hwu hw
  refine ⟨hN,halpha,hgamma,hk,?_⟩
  change (preRhoN (rowS a) : ℂ) * prescribedGamma (rowS a) (rowT a) (rowR a) epsilon -
      2 * preRhoAlpha (rowS a) (rowT a) (rowR a) epsilon * reconstructionK (rowS a) (rowT a) (rowR a) = _
  rw [hN,halpha,hgamma,hk]
  simp only [Complex.ofReal_add,Complex.ofReal_sub,← Complex.mul_conj,sideModeDelta]
  ring

#print axioms actual_mode_reconstruction_moments

theorem actual_mode_delta_is_prescribed_root (a : Rows ℂ) (ha : UnitRows a)
    (hR : 0 < gramInvariant (rowS a) (rowT a) (rowR a)) (epsilon : ℝ)
    (he : epsilon^2=1)
    (hz : sideZ (rowS a) (rowT a) (rowR a) epsilon = intrinsicTheta a)
    (w : ℂ) (hw : w^2+w+1=0) :
    sideModeDelta a w^2 = prescribedDeltaRadicand (rowS a) (rowT a) (rowR a) epsilon := by
  rw [prescribed_intrinsic_delta_radicand a ha hR epsilon he hz]
  have h := actual_mode_determinant a w hw
  field_simp
  linear_combination h

#print axioms actual_mode_delta_is_prescribed_root
end
end StrictReconstruction20261007.SideIntrinsic
