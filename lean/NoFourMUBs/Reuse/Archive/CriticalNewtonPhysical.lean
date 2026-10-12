import NoFourMUBs.Reuse.Archive.CriticalNewtonCore

set_option autoImplicit false
set_option maxHeartbeats 1000000
namespace CriticalNewton20261003
noncomputable section

theorem phase_nonzero {z : ℂ} (h : Complex.normSq z=1) : z≠0 := by
  intro hz
  simp [hz] at h

theorem phase_inverse {z : ℂ} (h : Complex.normSq z=1) : z⁻¹=star z := by
  simp [Complex.inv_def,h]

theorem phase_invRow {x : Fin 3 → ℂ} (hx : ∀ j, Complex.normSq (x j)=1) :
    invRow x = fun j => star (x j) := by
  funext j
  exact phase_inverse (hx j)

/-- The inverse variables in the Laurent verification are actual conjugates
on the physical unit torus, including all zero sums and zero permanents. -/
theorem phase_data_conjugates {x y : Fin 3 → ℂ}
    (hx : ∀ j, Complex.normSq (x j)=1) (hy : ∀ j, Complex.normSq (y j)=1) :
    (dataOf x y).S=star (dataOf x y).s ∧
    (dataOf x y).T=star (dataOf x y).t ∧
    (dataOf x y).U=star (dataOf x y).u ∧
    (dataOf x y).V=star (dataOf x y).v ∧
    (dataOf x y).PI=star (dataOf x y).pi := by
  simp [dataOf,rowSum,rowProd,perm,phase_invRow hx,phase_invRow hy,
    phase_inverse (hx 0),phase_inverse (hx 1),phase_inverse (hx 2),
    phase_inverse (hy 0),phase_inverse (hy 1),phase_inverse (hy 2),
    mul_comm,mul_left_comm,mul_assoc]

theorem phase_moment_conjugate {x y : Fin 3 → ℂ}
    (hx : ∀ j, Complex.normSq (x j)=1) (hy : ∀ j, Complex.normSq (y j)=1)
    (a b : ℤ) : star (moment x y a b)=moment x y (-a) (-b) := by
  simp only [moment,star_add,star_mul,star_zpow₀,zpow_neg]
  rw [← phase_inverse (hx 0),← phase_inverse (hx 1),← phase_inverse (hx 2),
    ← phase_inverse (hy 0),← phase_inverse (hy 1),← phase_inverse (hy 2)]
  simp [mul_comm]

end
#print axioms phase_nonzero
#print axioms phase_inverse
#print axioms phase_invRow
#print axioms phase_data_conjugates
#print axioms phase_moment_conjugate
end CriticalNewton20261003
