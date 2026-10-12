import NoFourMUBs.Step2.CriticalZero.NonzeroProgramInvolution

/-! Read the two coefficients of the already checked quadratic involution. -/
set_option autoImplicit false
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroMoments20261003

theorem pairedCoefficient_opposite_coefficients (X Y k : ℂ)
    (hX : X ≠ 0) (hY : Y ≠ 0) (m : MomentTag) :
    let u := pairedCoefficient m X Y k
    let w := X^(degrees m).1 * Y^(degrees m).2
    pairedCoefficient (opposite m) X Y k =
      ⟨w*(u.a + R1 Y k*u.b), -(w*u.b)⟩ := by
  let w := X^(degrees m).1 * Y^(degrees m).2
  have hw : w * (X^(-(degrees m).1)*Y^(-(degrees m).2)) = 1 := by
    dsimp only [w]
    simp only [zpow_neg]
    field_simp [zpow_ne_zero _ hX, zpow_ne_zero _ hY]
  have hc := congrArg
    (fun q : QuadraticAlgebra ℂ (R2 X Y k) (R1 Y k) => algebraMap ℂ _ w*q)
    (pairedCoefficient_conjugate X Y k hX hY m)
  rw [← mul_assoc, ← map_mul, hw, map_one, one_mul] at hc
  have ha := congrArg QuadraticAlgebra.re hc.symm
  have hb := congrArg QuadraticAlgebra.im hc.symm
  simp only [QuadraticAlgebra.re_mul, QuadraticAlgebra.im_mul,
    QuadraticAlgebra.algebraMap_re, QuadraticAlgebra.algebraMap_im,
    QuadraticAlgebra.re_star, QuadraticAlgebra.im_star, toQuadratic_re, toQuadratic_im,
    mul_zero, zero_mul, add_zero, zero_add, mul_neg, neg_zero] at ha hb
  exact congrArg₂ (fun a b => (⟨a,b⟩ : Quad (R2 X Y k) (R1 Y k))) ha hb

#print axioms pairedCoefficient_opposite_coefficients
end NoFourMUBs.Step2.Critical.NonzeroClearing
