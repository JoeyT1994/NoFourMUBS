import NoFourMUBs.Step2.CriticalZero.NonzeroSwap
import Mathlib.Tactic.LinearCombination

/-! The second large moment is a parameter swap of the first one. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroLight20261003 CriticalZeroLight20261003
open CriticalNonzeroMoments20261003
variable {F : Type*} [Field F] [CharZero F]

theorem swap_newton_p2_m4 (X Y k sign : F) (hX : X ≠ 0) (hY : Y ≠ 0) :
    swapRootHom X Y k hX hY
      (toQuadratic (quadNewton_p2_m4 (quadSide Y X k sign))) =
      star (toQuadratic (quadNewton_m4_p2 (quadSide X Y k sign))) := by
  obtain ⟨hT,hQ,hVP,hV,hw,ht,hr,hvp⟩ := side_swap X Y k sign hX hY
  have hs : toQuadratic (2 : Quad (R2 Y X k) (R1 X k)) =
      (2 : QuadraticAlgebra F (R2 Y X k) (R1 X k)) := rfl
  have hd : toQuadratic (2 : Quad (R2 X Y k) (R1 Y k)) =
      (2 : QuadraticAlgebra F (R2 X Y k) (R1 Y k)) := rfl
  simp only [quadNewton_p2_m4, quadNewton_m4_p2, toQuadratic_sub,
    toQuadratic_mul, toQuadratic_pow, hs, hd, map_sub, map_mul, map_pow,
    map_ofNat, hT,hQ,hVP,hV,hw,ht,hr,hvp,
    star_sub,star_mul,star_pow,star_ofNat]
  ring

theorem paired_p2_m4_swap (X Y k : F) (hX : X ≠ 0) (hY : Y ≠ 0) :
    swapRootHom X Y k hX hY (toQuadratic (pairedQuad_p2_m4 Y X k)) =
      algebraMap F _ (X^4/Y^2) * toQuadratic (pairedQuad_p4_m2 X Y k) := by
  have side (sign : F) :
      swapRootHom X Y k hX hY
        (toQuadratic (quadNewton_p2_m4 (quadSide Y X k sign))) =
      algebraMap F _ (X^4/Y^2) *
        toQuadratic (quadNewton_p4_m2 (quadSide X Y k sign)) := by
    rw [swap_newton_p2_m4 X Y k sign hX hY]
    obtain ⟨hS,hT,hQ,hU,hV,hW,hPI,hUP,hVP⟩ := side_conjugates X Y k sign hX hY
    have hc := moment_conjugates X Y hX hY (quadSide X Y k sign)
      hS hT hQ hU hV hW hPI hUP hVP .m4_p2
    simpa only [quadMoment,opposite,degrees,neg_neg,zpow_neg,zpow_ofNat,
      div_eq_mul_inv] using hc
  simpa only [pairedQuad_p2_m4, pairedQuad_p4_m2, toQuadratic_add,
    map_add, mul_add] using congrArg₂ (· + ·) (side 1) (side (-1))

theorem paired_p4_m2_coefficients_from_swap (X Y k : F)
    (hX : X ≠ 0) (hY : Y ≠ 0) :
    (pairedQuad_p4_m2 X Y k).a = (Y^2/X^4)*(pairedQuad_p2_m4 Y X k).a ∧
    (pairedQuad_p4_m2 X Y k).b = (Y^3/X^5)*(pairedQuad_p2_m4 Y X k).b := by
  have hs := paired_p2_m4_swap X Y k hX hY
  rw [swapRootHom_apply] at hs
  have ha := congrArg QuadraticAlgebra.re hs
  have hb := congrArg QuadraticAlgebra.im hs
  simp only [QuadraticAlgebra.re_mul, QuadraticAlgebra.im_mul,
    QuadraticAlgebra.algebraMap_re, QuadraticAlgebra.algebraMap_im,
    toQuadratic_re, toQuadratic_im, mul_zero,zero_mul,add_zero,zero_add] at ha hb
  have cancelA (a b : F) (he : a = (X^4/Y^2)*b) : b = (Y^2/X^4)*a := by
    field_simp [hX,hY] at he ⊢
    linear_combination -he
  have cancelB (a b : F) (he : (Y/X)*a = (X^4/Y^2)*b) : b = (Y^3/X^5)*a := by
    field_simp [hX,hY] at he ⊢
    linear_combination -he
  exact ⟨cancelA _ _ ha, cancelB _ _ hb⟩

#print axioms swap_newton_p2_m4
#print axioms paired_p2_m4_swap
#print axioms paired_p4_m2_coefficients_from_swap
end NoFourMUBs.Step2.Critical.NonzeroClearing
