import NoFourMUBs.Step2.CriticalZero.NonzeroQuadAlgebra
import NoFourMUBs.Reuse.Archive.CriticalNonzeroQuadSide

/-! Simplify the six original reconstruction arguments before taking products.
This retains the original constructor and all total-field pole expressions. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroLight20261003 CriticalZeroLight20261003
variable {F : Type*} [Field F] [CharZero F]

def compactSide (X Y k sign : F) : Data (Quad (R2 X Y k) (R1 Y k)) :=
  let Z := p k-X-Y
  let L0 := pole k sign Z
  let L1 := pole k sign Y
  let L2 := pole k sign X
  let l0 : Quad (R2 X Y k) (R1 Y k) := divScalar
    ⟨sign^3*J k/X+sign^2*(3-Z), sign^3*(1-Y/X)⟩ L0
  let l1 : Quad (R2 X Y k) (R1 Y k) := divScalar
    ⟨sign^3*X*(X-Z), sign^3*J k+sign^2*X*(3-Y)⟩ L1
  let l2 : Quad (R2 X Y k) (R1 Y k) := divScalar
    ⟨sign^3*(Y^2+(J k)^2/X-Y*Z)+sign^2*J k*Y*(3-X)/X,
      -(sign^3*J k*Y/X+sign^2*Y^2*(3-X)/X)⟩ L2
  let b0 : Quad (R2 X Y k) (R1 Y k) := divScalar
    ⟨sign^3*J k*X+sign^2*X*Y*(3-Z), sign^3*(Y^2-X*Y)⟩ L0
  let b1 : Quad (R2 X Y k) (R1 Y k) := divScalar
    ⟨sign^3*(Y+((J k)^2-X*Y*Z)/X^2)+sign^2*J k*(3-Y)/X,
      -(sign^3*J k*Y/X^2+sign^2*Y*(3-Y)/X)⟩ L1
  let b2 : Quad (R2 X Y k) (R1 Y k) := divScalar
    ⟨sign^3*X*(1-Z/Y), sign^3*J k/Y+sign^2*(3-X)⟩ L2
  quadReconstructionData (scalar sign) (scalar (sign*X))
    (scalar sign) (scalar (sign*Y)) (scalar sign*root)
    (scalar sign*divScalar (scalar (J k)-root*scalar Y) X)
    (scalar (sheet k sign)) l0 l1 l2 b0 b1 b2

theorem quadSide_eq_compactSide (X Y k sign : F) (hX : X ≠ 0) (hY : Y ≠ 0) :
    quadSide X Y k sign = compactSide X Y k sign := by
  have injective : Function.Injective
      (toQuadratic (F:=F) (A:=R2 X Y k) (B:=R1 Y k)) := by
    intro u v huv
    cases u
    cases v
    cases huv
    rfl
  unfold quadSide compactSide
  dsimp only
  congr 1
  all_goals
    apply injective
    simp only [toQuadratic_add, toQuadratic_sub, toQuadratic_mul, toQuadratic_pow,
      toQuadratic_scalar, toQuadratic_root, toQuadratic_divScalar, pow_two]
    dsimp only [toQuadratic]
    apply QuadraticAlgebra.ext
  all_goals
    simp only [QuadraticAlgebra.re_add, QuadraticAlgebra.im_add,
      QuadraticAlgebra.re_sub, QuadraticAlgebra.im_sub,
      QuadraticAlgebra.re_mul, QuadraticAlgebra.im_mul,
      QuadraticAlgebra.algebraMap_re, QuadraticAlgebra.algebraMap_im,
      QuadraticAlgebra.omega_re, QuadraticAlgebra.omega_im,
      mul_zero, zero_mul, add_zero, zero_add, sub_zero, neg_zero,
      one_mul, mul_one, neg_mul, mul_neg, neg_neg]
    try dsimp only [R2, R1]
    generalize (pole k sign (p k-X-Y))⁻¹ = d0
    generalize (pole k sign Y)⁻¹ = d1
    generalize (pole k sign X)⁻¹ = d2
    field_simp [hX,hY]
    <;> ring

#print axioms quadSide_eq_compactSide
end NoFourMUBs.Step2.Critical.NonzeroClearing
