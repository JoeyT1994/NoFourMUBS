import NoFourMUBs.Step2.CriticalZero.NonzeroMomentInvolution
import NoFourMUBs.Reuse.Archive.CriticalNonzeroCoefficientProgram

/-! Conjugation of the original 66-term program and elimination of its root coefficient. -/
set_option autoImplicit false
set_option maxRecDepth 8000
set_option maxHeartbeats 5000000
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroMoments20261003 CriticalNonzeroNumerator20261003
open CriticalNonzeroLight20261003 CriticalQuadProgram20261003
variable {F : Type*} [Field F] [CharZero F] {A B : F}

theorem pairedCoefficient_as_quadMoment (m : MomentTag) (X Y k : ℂ) :
    pairedCoefficient m X Y k =
      quadMoment m (quadSide X Y k 1) + quadMoment m (quadSide X Y k (-1)) := by
  cases m <;> simp only [pairedCoefficient, quadMoment,
    pairedQuad_m1_m1, pairedQuad_m1_m2, pairedQuad_m1_p2, pairedQuad_m1_p3, pairedQuad_m2_m1, pairedQuad_m2_m2, pairedQuad_m2_p0, pairedQuad_m2_p1, pairedQuad_m2_p2, pairedQuad_m2_p3, pairedQuad_m2_p4, pairedQuad_m3_p0, pairedQuad_m3_p1, pairedQuad_m3_p2, pairedQuad_m3_p3, pairedQuad_m4_p2, pairedQuad_p0_m2, pairedQuad_p0_m3, pairedQuad_p0_p2, pairedQuad_p0_p3, pairedQuad_p1_m2, pairedQuad_p1_m3, pairedQuad_p1_p1, pairedQuad_p1_p2, pairedQuad_p2_m1, pairedQuad_p2_m2, pairedQuad_p2_m3, pairedQuad_p2_m4, pairedQuad_p2_p0, pairedQuad_p2_p1, pairedQuad_p2_p2, pairedQuad_p3_m1, pairedQuad_p3_m2, pairedQuad_p3_m3, pairedQuad_p3_p0, pairedQuad_p4_m2]

theorem pairedCoefficient_conjugate (X Y k : ℂ) (hX : X ≠ 0) (hY : Y ≠ 0)
    (m : MomentTag) :
    star (toQuadratic (pairedCoefficient m X Y k)) =
      algebraMap ℂ _ (X^(-(degrees m).1) * Y^(-(degrees m).2)) *
        toQuadratic (pairedCoefficient (opposite m) X Y k) := by
  have side (sign : ℂ) := by
    obtain ⟨hS,hT,hQ,hU,hV,hW,hPI,hUP,hVP⟩ :=
      side_conjugates X Y k sign hX hY
    exact moment_conjugates X Y hX hY (quadSide X Y k sign)
      hS hT hQ hU hV hW hPI hUP hVP m
  simpa only [pairedCoefficient_as_quadMoment, toQuadratic_add, star_add, mul_add]
    using congrArg₂ (· + ·) (side 1) (side (-1))

/-- Conjugation permutes the unchanged 66 terms; all row weights cancel. -/
theorem program66_conjugate (X Y : F) (hX : X ≠ 0) (hY : Y ≠ 0)
    (v : MomentTag → Quad A B)
    (hv : ∀ m, star (toQuadratic (v m)) =
      algebraMap F _ (X^(-(degrees m).1) * Y^(-(degrees m).2)) *
        toQuadratic (v (opposite m))) :
    star (toQuadratic (coefficients v program66)) =
      toQuadratic (coefficients v program66) := by
  simp only [program66, coefficients, toQuadratic_add, toQuadratic_mul,
    toQuadratic_scalar, star_add, star_mul, star_algebraMap_fixed, hv,
    opposite, degrees]
  apply QuadraticAlgebra.ext
  all_goals
    norm_num only [zpow_neg, zpow_ofNat, zpow_zero, neg_zero, neg_neg,
      QuadraticAlgebra.re_mul, QuadraticAlgebra.im_mul,
      QuadraticAlgebra.re_add, QuadraticAlgebra.im_add,
      QuadraticAlgebra.algebraMap_re, QuadraticAlgebra.algebraMap_im,
      mul_zero, zero_mul, add_zero, zero_add, sub_zero]
    field_simp [hX, hY]
    <;> ring

/-- The root coefficient vanishes even when a reconstruction denominator is zero.
This concerns total field expressions; physical reconstruction still needs its nonpole guards. -/
theorem sumCoefficients_b_zero (X Y k : ℂ) (hX : X ≠ 0) (hY : Y ≠ 0) :
    (sumCoefficients X Y k).b = 0 := by
  have h := program66_conjugate X Y hX hY (fun m => pairedCoefficient m X Y k)
    (pairedCoefficient_conjugate X Y k hX hY)
  have hi : -(sumCoefficients X Y k).b = (sumCoefficients X Y k).b :=
    congrArg QuadraticAlgebra.im h
  exact CharZero.neg_eq_self_iff.mp hi

end NoFourMUBs.Step2.Critical.NonzeroClearing
