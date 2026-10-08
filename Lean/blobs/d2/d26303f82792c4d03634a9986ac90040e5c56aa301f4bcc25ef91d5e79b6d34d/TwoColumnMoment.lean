import Mathlib.Data.Complex.Basic
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum

/- Exact necessary complex moment equation for two remaining unit columns.
This does not assert an interval rejection, a label cover or a physical exclusion. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace ShoulderTwoColumn20261008
open scoped ComplexConjugate
noncomputable section

theorem moment_defect_factorization (u₁ u₂ v₁ v₂ : ℂ) :
    let A := u₁+u₂
    let B := v₁+v₂
    let C := v₁*conj u₁+v₂*conj u₂
    A*C*conj B-(A*conj A+B*conj B+C*conj C-4) =
      (u₁*conj u₁-1)*(v₁*conj v₂-1)+
      (u₂*conj u₂-1)*(v₂*conj v₁-1)+
      (v₂*conj v₂-1)*(u₁*conj u₂-1)+
      (v₁*conj v₁-1)*(u₂*conj u₁-1) := by
  dsimp only
  simp only [map_add, map_mul, starRingEnd_self_apply]
  ring

theorem unit_two_column_moment (u₁ u₂ v₁ v₂ : ℂ)
    (hu₁ : Complex.normSq u₁=1) (hu₂ : Complex.normSq u₂=1)
    (hv₁ : Complex.normSq v₁=1) (hv₂ : Complex.normSq v₂=1) :
    (u₁+u₂)*(v₁*conj u₁+v₂*conj u₂)*conj (v₁+v₂) =
      ((Complex.normSq (u₁+u₂)+Complex.normSq (v₁+v₂)+
        Complex.normSq (v₁*conj u₁+v₂*conj u₂)-4 : ℝ) : ℂ) := by
  have h := moment_defect_factorization u₁ u₂ v₁ v₂
  dsimp only at h
  simp only [Complex.mul_conj, hu₁, hu₂, hv₁, hv₂,
    Complex.ofReal_one, sub_self, zero_mul, zero_add] at h
  have he := sub_eq_zero.mp h
  simpa using he

/-- Removing a distinguished side column leaves exactly this two-column
residual. No assumption that the distinguished column differs from the other
two, or that their phase labels differ, is made. -/
theorem side_column_residual_zero (x y u₁ u₂ v₁ v₂ : ℂ)
    (hu₁ : Complex.normSq u₁=1) (hu₂ : Complex.normSq u₂=1)
    (hv₁ : Complex.normSq v₁=1) (hv₂ : Complex.normSq v₂=1) :
    let s := x+u₁+u₂
    let t := y+v₁+v₂
    let r := y*conj x+v₁*conj u₁+v₂*conj u₂
    let A := s-x
    let B := t-y
    let C := r-y*conj x
    A*C*conj B-
      ((Complex.normSq A+Complex.normSq B+Complex.normSq C-4 : ℝ) : ℂ) = 0 := by
  dsimp only
  have hA : x+u₁+u₂-x=u₁+u₂ := by ring
  have hB : y+v₁+v₂-y=v₁+v₂ := by ring
  have hC : y*conj x+v₁*conj u₁+v₂*conj u₂-y*conj x =
      v₁*conj u₁+v₂*conj u₂ := by ring
  rw [hA, hB, hC, unit_two_column_moment u₁ u₂ v₁ v₂ hu₁ hu₂ hv₁ hv₂]
  exact sub_self _

end
#print axioms moment_defect_factorization
#print axioms unit_two_column_moment
#print axioms side_column_residual_zero
end ShoulderTwoColumn20261008
