import CriticalNewtonCore

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalNewtonGauge20261003
open CriticalNewton20261003
noncomputable section

def scaleRow (a : ℂ) (x : Fin 3 → ℂ) : Fin 3 → ℂ := fun j => a*x j

/-- Weights of the reciprocal-row Newton data under arbitrary nonzero complex
row scaling. The capital fields are reciprocal data, not a new conjugacy claim. -/
def scaleData (a b : ℂ) (D : Data) : Data where
  s := a*D.s
  S := a⁻¹*D.S
  t := b*D.t
  T := b⁻¹*D.T
  r := (b/a)*D.r
  Q := (a/b)*D.Q
  u := a^3*D.u
  v := b^3*D.v
  w := (a^3/b^3)*D.w
  U := (a⁻¹)^3*D.U
  V := (b⁻¹)^3*D.V
  W := (b^3/a^3)*D.W
  pi := (a*b)*D.pi
  PI := (a⁻¹*b⁻¹)*D.PI
  up := (a^2/b)*D.up
  vp := (b^2/a)*D.vp
  UP := (b/a^2)*D.UP
  VP := (a/b^2)*D.VP

theorem scaleRow_nonzero (a : ℂ) (x : Fin 3 → ℂ)
    (ha : a≠0) (hx : ∀ j,x j≠0) : ∀ j,scaleRow a x j≠0 :=
  fun j => mul_ne_zero ha (hx j)

/-- Exact covariance of all eighteen fields on actual nonzero entries. -/
theorem dataOf_scaleRow (a b : ℂ) (x y : Fin 3 → ℂ)
    (ha : a≠0) (hb : b≠0) (hx : ∀ j,x j≠0) (hy : ∀ j,y j≠0) :
    dataOf (scaleRow a x) (scaleRow b y)=scaleData a b (dataOf x y) := by
  dsimp only [dataOf,scaleData]
  congr 1 <;>
    simp only [scaleRow,rowSum,rowProd,perm,invRow,ratio] <;>
    field_simp [ha,hb,hx 0,hx 1,hx 2,hy 0,hy 1,hy 2] <;> ring

theorem moment_scaleRow (a b : ℂ) (x y : Fin 3 → ℂ) (i j : ℤ) :
    moment (scaleRow a x) (scaleRow b y) i j =
      a^i*b^j*moment x y i j := by
  simp only [moment,scaleRow,mul_zpow]
  ring

/-- The six inputs of the external s=t=1 chart. Its two original nonzero
correlations are explicit hypotheses. No ordinary-conjugate interpretation
is imposed on the scaled capital fields. -/
theorem reciprocal_gauge_inputs (D : Data) (hs : D.s≠0) (ht : D.t≠0) :
    (scaleData D.s⁻¹ D.t⁻¹ D).s=1 ∧
    (scaleData D.s⁻¹ D.t⁻¹ D).S=D.s*D.S ∧
    (scaleData D.s⁻¹ D.t⁻¹ D).t=1 ∧
    (scaleData D.s⁻¹ D.t⁻¹ D).T=D.t*D.T ∧
    (scaleData D.s⁻¹ D.t⁻¹ D).r=(D.s/D.t)*D.r ∧
    (scaleData D.s⁻¹ D.t⁻¹ D).Q=(D.t/D.s)*D.Q := by
  simp [scaleData,hs,ht,div_eq_mul_inv,mul_comm,mul_left_comm,mul_assoc]

end
#print axioms scaleRow_nonzero
#print axioms dataOf_scaleRow
#print axioms moment_scaleRow
#print axioms reciprocal_gauge_inputs
end CriticalNewtonGauge20261003
