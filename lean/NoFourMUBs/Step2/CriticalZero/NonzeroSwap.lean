import NoFourMUBs.Step2.CriticalZero.NonzeroMomentInvolution

/-! Reuse the original quadratic algebra under interchange of the two moduli. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
namespace NoFourMUBs.Step2.Critical.NonzeroClearing
open CriticalMomentQuad20261003 CriticalNonzeroQuad20261003
open CriticalNonzeroLight20261003 CriticalZeroLight20261003
variable {F : Type*} [Field F] [CharZero F]

def swapRootHom (X Y k : F) (hX : X ≠ 0) (hY : Y ≠ 0) :
    QuadraticAlgebra F (R2 Y X k) (R1 X k) →ₐ[F]
      QuadraticAlgebra F (R2 X Y k) (R1 Y k) :=
  QuadraticAlgebra.lift (R := F) (a := R2 Y X k) (b := R1 X k)
    (A := QuadraticAlgebra F (R2 X Y k) (R1 Y k))
    ⟨⟨0,Y/X⟩, by
    apply QuadraticAlgebra.ext
    all_goals
      simp only [QuadraticAlgebra.re_mul, QuadraticAlgebra.im_mul,
        QuadraticAlgebra.re_add, QuadraticAlgebra.im_add,
        QuadraticAlgebra.re_smul, QuadraticAlgebra.im_smul,
        QuadraticAlgebra.re_one, QuadraticAlgebra.im_one,
        smul_eq_mul, mul_zero, zero_mul, add_zero, zero_add, mul_one]
      dsimp only [R2,R1]
      field_simp [hX,hY]
      <;> ring⟩

theorem swapRootHom_apply (X Y k : F) (hX : X ≠ 0) (hY : Y ≠ 0)
    (u : QuadraticAlgebra F (R2 Y X k) (R1 X k)) :
    swapRootHom X Y k hX hY u = ⟨u.re,(Y/X)*u.im⟩ := by
  apply QuadraticAlgebra.ext
  all_goals simp [swapRootHom, QuadraticAlgebra.lift, Algebra.smul_def, mul_comm]

theorem side_swap (X Y k sign : F) (hX : X ≠ 0) (hY : Y ≠ 0) :
    let D := quadSide X Y k sign
    let E := quadSide Y X k sign
    let φ := swapRootHom X Y k hX hY
    φ (toQuadratic E.T) = star (toQuadratic D.S) ∧
    φ (toQuadratic E.Q) = star (toQuadratic D.r) ∧
    φ (toQuadratic E.VP) = star (toQuadratic D.UP) ∧
    φ (toQuadratic E.V) = star (toQuadratic D.U) ∧
    φ (toQuadratic E.w) = star (toQuadratic D.W) ∧
    φ (toQuadratic E.t) = star (toQuadratic D.s) ∧
    φ (toQuadratic E.r) = star (toQuadratic D.Q) ∧
    φ (toQuadratic E.vp) = star (toQuadratic D.up) := by
  have hz : p k-Y-X = p k-X-Y := by ring
  dsimp only
  refine ⟨?_,?_,?_,?_,?_,?_,?_,?_⟩
  all_goals rw [swapRootHom_apply]
  all_goals apply QuadraticAlgebra.ext
  all_goals
    simp only [quadSide, quadReconstructionData, toQuadratic_add,
      toQuadratic_sub, toQuadratic_mul, toQuadratic_pow, toQuadratic_nat,
      toQuadratic_scalar, toQuadratic_root, toQuadratic_divScalar, pow_two,
      QuadraticAlgebra.re_add, QuadraticAlgebra.im_add,
      QuadraticAlgebra.re_sub, QuadraticAlgebra.im_sub,
      QuadraticAlgebra.re_mul, QuadraticAlgebra.im_mul,
      QuadraticAlgebra.re_star, QuadraticAlgebra.im_star,
      QuadraticAlgebra.algebraMap_re, QuadraticAlgebra.algebraMap_im,
      QuadraticAlgebra.omega_re, QuadraticAlgebra.omega_im,
      mul_zero, zero_mul, add_zero, zero_add, sub_zero, neg_zero,
      one_mul, mul_one, neg_mul, mul_neg, neg_neg, hz]
  all_goals
    try dsimp only [R2,R1]
    generalize (pole k sign (p k-X-Y))⁻¹ = d0
    generalize (pole k sign Y)⁻¹ = d1
    generalize (pole k sign X)⁻¹ = d2
    field_simp [hX,hY]
    <;> ring

#print axioms swapRootHom_apply
#print axioms side_swap
end NoFourMUBs.Step2.Critical.NonzeroClearing
