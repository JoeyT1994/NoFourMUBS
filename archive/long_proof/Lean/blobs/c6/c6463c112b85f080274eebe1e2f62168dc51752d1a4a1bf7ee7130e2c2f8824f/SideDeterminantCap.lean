import HalfRowBalance

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Seed0024Mathematical20261007
open scoped ComplexConjugate
noncomputable section

def sideDet (x y : Fin 3 → ℂ) : ℂ :=
  x 0*(y 1-y 2) + x 1*(y 2-y 0) + x 2*(y 0-y 1)
def sidePerm (x y : Fin 3 → ℂ) : ℂ :=
  x 0*(y 1+y 2) + x 1*(y 2+y 0) + x 2*(y 0+y 1)
def sideMonomial (x y : Fin 3 → ℂ) : ℂ :=
  x 0*x 1*x 2*y 0*y 1*y 2
def sideQ (x y : Fin 3 → ℂ) : ℂ :=
  sidePerm x y * (sideDet x y)^2 * conj (sideMonomial x y)

theorem sideDet_shift (x y : Fin 3 → ℂ) :
    sideDet x y = sideDet (fun j => x j + 1) y := by
  simp only [sideDet]
  ring

theorem sideDet_norm_bound (x y : Fin 3 → ℂ) (hy : ∀ j, ‖y j‖=1) :
    ‖sideDet x y‖ ≤ 2*(‖x 0+1‖+‖x 1+1‖+‖x 2+1‖) := by
  have hb (j k : Fin 3) : ‖y j-y k‖ ≤ 2 := by
    calc
      _ ≤ ‖y j‖+‖y k‖ := norm_sub_le _ _
      _ = 2 := by rw [hy j, hy k]; norm_num
  rw [sideDet_shift]
  unfold sideDet
  calc
    _ ≤ ‖(x 0+1)*(y 1-y 2)‖ + ‖(x 1+1)*(y 2-y 0)‖ +
          ‖(x 2+1)*(y 0-y 1)‖ := (norm_add_le _ _).trans
            (add_le_add_right (norm_add_le _ _) _)
    _ = ‖x 0+1‖*‖y 1-y 2‖ + ‖x 1+1‖*‖y 2-y 0‖ +
          ‖x 2+1‖*‖y 0-y 1‖ := by simp only [norm_mul]
    _ ≤ ‖x 0+1‖*2 + ‖x 1+1‖*2 + ‖x 2+1‖*2 := by gcongr; exact hb _ _; exact hb _ _; exact hb _ _
    _ = _ := by ring

theorem sidePerm_norm_bound (x y : Fin 3 → ℂ)
    (hx : ∀ j, ‖x j‖=1) (hy : ∀ j, ‖y j‖=1) : ‖sidePerm x y‖ ≤ 6 := by
  have hb (j k : Fin 3) : ‖y j+y k‖ ≤ 2 := by
    calc
      _ ≤ ‖y j‖+‖y k‖ := norm_add_le _ _
      _ = 2 := by rw [hy j, hy k]; norm_num
  unfold sidePerm
  calc
    _ ≤ ‖x 0*(y 1+y 2)‖ + ‖x 1*(y 2+y 0)‖ + ‖x 2*(y 0+y 1)‖ :=
      (norm_add_le _ _).trans (add_le_add_right (norm_add_le _ _) _)
    _ = ‖y 1+y 2‖ + ‖y 2+y 0‖ + ‖y 0+y 1‖ := by simp only [norm_mul, hx, one_mul]
    _ ≤ 6 := by linarith [hb 1 2, hb 2 0, hb 0 1]

theorem norm_square_eq_normSq (z : ℂ) : ‖z‖^2 = Complex.normSq z := by
  rw [Complex.norm_def, Real.sq_sqrt (Complex.normSq_nonneg z)]

/-- Quadratic, reconstruction-free bound on the literal invariant expression.
The factor 72 is deliberately conservative and includes no numerical oracle. -/
theorem sideQ_quadratic_bound (x y : Fin 3 → ℂ)
    (hx : ∀ j, ‖x j‖=1) (hy : ∀ j, ‖y j‖=1) :
    ‖sideQ x y‖ ≤ 72*(Complex.normSq (x 0+1) +
      Complex.normSq (x 1+1) + Complex.normSq (x 2+1)) := by
  have hd := sideDet_norm_bound x y hy
  have hp := sidePerm_norm_bound x y hx hy
  have hc : (‖x 0+1‖+‖x 1+1‖+‖x 2+1‖)^2 ≤
      3*(‖x 0+1‖^2+‖x 1+1‖^2+‖x 2+1‖^2) := by
    nlinarith [sq_nonneg (‖x 0+1‖-‖x 1+1‖),
      sq_nonneg (‖x 0+1‖-‖x 2+1‖), sq_nonneg (‖x 1+1‖-‖x 2+1‖)]
  have hdn : ‖sideDet x y‖^2 ≤
      12*(‖x 0+1‖^2+‖x 1+1‖^2+‖x 2+1‖^2) := by
    have hh := pow_le_pow_left₀ (norm_nonneg (sideDet x y)) hd 2
    nlinarith
  unfold sideQ
  simp only [norm_mul, norm_pow, Complex.norm_conj, sideMonomial, hx, hy, mul_one, one_mul]
  calc
    _ ≤ 6*‖sideDet x y‖^2 := mul_le_mul_of_nonneg_right hp (sq_nonneg _)
    _ ≤ 72*(‖x 0+1‖^2+‖x 1+1‖^2+‖x 2+1‖^2) := by linarith
    _ = _ := by rw [norm_square_eq_normSq, norm_square_eq_normSq, norm_square_eq_normSq]

theorem small_row_sideQ (x y : Fin 3 → ℂ)
    (hx : ∀ j, ‖x j‖=1) (hy : ∀ j, ‖y j‖=1)
    (hsmall : Complex.normSq (x 0+1) + Complex.normSq (x 1+1) +
      Complex.normSq (x 2+1) ≤ 5*((77:ℝ)/100000)^2) :
    ‖sideQ x y‖ < (1:ℝ)/1000 := by
  have h := sideQ_quadratic_bound x y hx hy
  nlinarith

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.sideDet_shift
#print axioms Seed0024Mathematical20261007.sideDet_norm_bound
#print axioms Seed0024Mathematical20261007.sidePerm_norm_bound
#print axioms Seed0024Mathematical20261007.norm_square_eq_normSq
#print axioms Seed0024Mathematical20261007.sideQ_quadratic_bound
#print axioms Seed0024Mathematical20261007.small_row_sideQ
