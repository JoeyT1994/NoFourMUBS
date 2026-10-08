import CriticalRationalSideGauge
import CriticalRationalSidePhysical

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNewtonGauge20261003
open CriticalNewton20261003 CriticalPhysical20261003
noncomputable section

/-- The guarded actual reconstruction commutes with every nonzero complex row
gauge. Only the original phase block is required to have unit entries. -/
theorem actual_gauged_rationalSide (x y : Fin 3 → ℂ)
    (hx : ∀ j,Complex.normSq (x j)=1) (hy : ∀ j,Complex.normSq (y j)=1)
    (hD : FourierPhysicalSide.determinant (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)≠0)
    (z : ℝ) (hz : blockSheet x y=(z : ℂ))
    (hL : ∀ i,FourierPhysicalSide.sideDenominator (x 0) (x 1) (x 2)
      (y 0) (y 1) (y 2) i≠0)
    (a b : ℂ) (ha : a≠0) (hb : b≠0) :
    let D := dataOf x y
    let G := scaleData a b D
    G = rationalSide G.s G.S G.t G.T G.r G.Q (z : ℂ)
      (FourierGramNumerators.g D.s D.t D.r : ℂ) := by
  have he := congrArg (scaleData a b) (actual_rationalSide x y hx hy hD z hz hL)
  exact he.trans (scaleData_rationalSide a b _ _ _ _ _ _ _ _ ha hb)

theorem actual_reciprocal_rationalSide (x y : Fin 3 → ℂ)
    (hx : ∀ j,Complex.normSq (x j)=1) (hy : ∀ j,Complex.normSq (y j)=1)
    (hD : FourierPhysicalSide.determinant (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)≠0)
    (z : ℝ) (hz : blockSheet x y=(z : ℂ))
    (hL : ∀ i,FourierPhysicalSide.sideDenominator (x 0) (x 1) (x 2)
      (y 0) (y 1) (y 2) i≠0)
    (hs : (dataOf x y).s≠0) (ht : (dataOf x y).t≠0) :
    let D := dataOf x y
    let G := scaleData D.s⁻¹ D.t⁻¹ D
    G = rationalSide G.s G.S G.t G.T G.r G.Q (z : ℂ)
      (FourierGramNumerators.g D.s D.t D.r : ℂ) :=
  actual_gauged_rationalSide x y hx hy hD z hz hL _ _ (inv_ne_zero hs) (inv_ne_zero ht)

/-- Literal physical scalar chart, with X,Y,J defined from the original
correlations and no selection of a root of the reciprocal quadratic. -/
theorem actual_scalar_rationalSide (x y : Fin 3 → ℂ)
    (hx : ∀ j,Complex.normSq (x j)=1) (hy : ∀ j,Complex.normSq (y j)=1)
    (hD : FourierPhysicalSide.determinant (x 0) (x 1) (x 2) (y 0) (y 1) (y 2)≠0)
    (z : ℝ) (hz : blockSheet x y=(z : ℂ))
    (hL : ∀ i,FourierPhysicalSide.sideDenominator (x 0) (x 1) (x 2)
      (y 0) (y 1) (y 2) i≠0)
    (hs : (dataOf x y).s≠0) (ht : (dataOf x y).t≠0) :
    let D := dataOf x y
    let G := scaleData D.s⁻¹ D.t⁻¹ D
    let X := Complex.normSq D.s
    let Y := Complex.normSq D.t
    let J := momentJ D.s D.t D.r
    G = rationalSide 1 (X : ℂ) 1 (Y : ℂ) G.r
      (((J : ℂ)-(Y : ℂ)*G.r)/(X : ℂ)) (z : ℂ)
      (FourierGramNumerators.g D.s D.t D.r : ℂ) := by
  rcases phase_reciprocal_scalar_inputs x y hx hy hs ht with
    ⟨_,_,hs1,hS,ht1,hT,_,hQ,_⟩
  have he := actual_reciprocal_rationalSide x y hx hy hD z hz hL hs ht
  dsimp only at he ⊢
  rw [hs1,hS,ht1,hT,hQ] at he
  exact he

end
#print axioms actual_gauged_rationalSide
#print axioms actual_reciprocal_rationalSide
#print axioms actual_scalar_rationalSide
end CriticalNewtonGauge20261003
