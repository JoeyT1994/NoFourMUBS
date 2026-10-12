import NoFourMUBs.Step2.CriticalZero.EquicorrelationCubeSums

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
open scoped BigOperators
namespace NoFourMUBs.Step2.Critical.Equicorrelation

/-- The original equicorrelation endpoint, a = (-4+3i)/5. -/
def alpha : ℂ := ⟨-4 / 5, 3 / 5⟩

def target : ℂ := -2 - alpha

def Ordinary (x : ℂ) : Prop := x = 1 ∨ x = -1 ∨ x = alpha

def Coordinate (x : ℂ) : Prop := Ordinary x ∨ x ^ 3 = alpha

theorem ordinary_im_nonneg {x : ℂ} (hx : Ordinary x) : 0 ≤ x.im := by
  rcases hx with rfl | rfl | rfl <;> norm_num [alpha]

theorem no_ordinary_sum (x y z : ℂ)
    (hx : Ordinary x) (hy : Ordinary y) (hz : Ordinary z) :
    x + y + z ≠ target := by
  intro h
  have hi := congrArg Complex.im h
  norm_num [target, alpha] at hi
  linarith [ordinary_im_nonneg hx, ordinary_im_nonneg hy, ordinary_im_nonneg hz]

theorem no_one_cube_sum (x y z : ℂ)
    (hx : x ^ 3 = alpha) (hy : Ordinary y) (hz : Ordinary z) :
    x + y + z ≠ target := by
  intro h
  have he : x = target - y - z := by linear_combination h
  rw [he] at hx
  rcases hy with rfl | rfl | rfl <;> rcases hz with rfl | rfl | rfl
  all_goals norm_num [target, alpha, Complex.ext_iff, pow_succ,
    Complex.mul_re, Complex.mul_im] at hx

theorem no_two_cube_sum (x y z : ℂ) (hu : Complex.normSq x = 1)
    (hx : x ^ 3 = alpha) (hy : y ^ 3 = alpha) (hz : Ordinary z) :
    x + y + z ≠ target := by
  intro h
  have hn := two_cube_norms x y hu (hx.trans hy.symm)
  have he : x + y = target - z := by linear_combination h
  rw [he] at hn
  rcases hz with rfl | rfl | rfl
  all_goals norm_num [target, alpha, Complex.normSq_apply] at hn

theorem no_three_cube_sum (x y z : ℂ) (hu : Complex.normSq x = 1)
    (hx : x ^ 3 = alpha) (hy : y ^ 3 = alpha) (hz : z ^ 3 = alpha) :
    x + y + z ≠ target := by
  intro h
  have hn := three_cube_norms x y z hu (hx.trans hy.symm) (hx.trans hz.symm)
  rw [h] at hn
  norm_num [target, alpha, Complex.normSq_apply] at hn

/-- The finite coordinate set cannot have the complementary row sum.
No field extension, irreducibility, or valuation premise is used. -/
theorem coordinates_sum_ne (x y z : ℂ)
    (ux : Complex.normSq x = 1) (uy : Complex.normSq y = 1)
    (uz : Complex.normSq z = 1)
    (hx : Coordinate x) (hy : Coordinate y) (hz : Coordinate z) :
    x + y + z ≠ target := by
  intro h
  rcases hx with hx | hx <;> rcases hy with hy | hy <;> rcases hz with hz | hz
  · exact no_ordinary_sum x y z hx hy hz h
  · exact no_one_cube_sum z x y hz hx hy (by linear_combination h)
  · exact no_one_cube_sum y x z hy hx hz (by linear_combination h)
  · exact no_two_cube_sum y z x uy hy hz hx (by linear_combination h)
  · exact no_one_cube_sum x y z hx hy hz h
  · exact no_two_cube_sum x z y ux hx hz hy (by linear_combination h)
  · exact no_two_cube_sum x y z ux hx hy hz h
  · exact no_three_cube_sum x y z ux hx hy hz h

/-- The two original mixed-corner constraints imply the finite coordinate set. -/
theorem coordinate_of_critical_constraints (x y : ℂ)
    (hu : Complex.normSq x = 1)
    (hx : x = 1 ∨ x = -1 ∨ x = alpha * y ^ 2)
    (hy : y = 1 ∨ y = -1 ∨ x ^ 2 = alpha * y) : Coordinate x := by
  rcases hx with hx | hx | hx
  · exact Or.inl (Or.inl hx)
  · exact Or.inl (Or.inr (Or.inl hx))
  · rcases hy with hy | hy | hy
    · exact Or.inl (Or.inr (Or.inr (by simpa [hy] using hx)))
    · exact Or.inl (Or.inr (Or.inr (by simpa [hy] using hx)))
    · right
      have hx0 : x ≠ 0 := by intro h; simp [h] at hu
      have hp : x * (x ^ 3 - alpha) = 0 := by
        linear_combination (x ^ 2 + alpha * y) * hy - alpha * hx
      exact sub_eq_zero.mp ((mul_eq_zero.mp hp).resolve_left hx0)

/-- The complementary three columns cannot satisfy the original local
critical constraints and the original complete-row orthogonality equation.
The normalization and mixed-corner identities remain explicit upstream work. -/
theorem complement_impossible (x y : Fin 3 → ℂ)
    (hu : ∀ j, Complex.normSq (x j) = 1)
    (hx : ∀ j, x j = 1 ∨ x j = -1 ∨ x j = alpha * (y j) ^ 2)
    (hy : ∀ j, y j = 1 ∨ y j = -1 ∨ (x j) ^ 2 = alpha * y j)
    (hs : ∑ j, x j = target) : False := by
  have hc (j : Fin 3) : Coordinate (x j) :=
    coordinate_of_critical_constraints (x j) (y j) (hu j) (hx j) (hy j)
  exact coordinates_sum_ne (x 0) (x 1) (x 2) (hu 0) (hu 1) (hu 2)
    (hc 0) (hc 1) (hc 2) (by simpa only [Fin.sum_univ_three] using hs)

end NoFourMUBs.Step2.Critical.Equicorrelation
