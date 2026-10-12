import Mathlib.Analysis.Complex.Polynomial.Basic
import Mathlib.Tactic
import NoFourMUBs.Step2.CriticalZero.PhaseFacts

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000
namespace GeometricSixRoots20261003
open scoped BigOperators
open Polynomial
noncomputable section

def e1 (x : Fin 6 → ℂ) : ℂ :=
  x 0 +
  x 1 +
  x 2 +
  x 3 +
  x 4 +
  x 5

def e2 (x : Fin 6 → ℂ) : ℂ :=
  x 0*x 1 +
  x 0*x 2 +
  x 0*x 3 +
  x 0*x 4 +
  x 0*x 5 +
  x 1*x 2 +
  x 1*x 3 +
  x 1*x 4 +
  x 1*x 5 +
  x 2*x 3 +
  x 2*x 4 +
  x 2*x 5 +
  x 3*x 4 +
  x 3*x 5 +
  x 4*x 5

def e3 (x : Fin 6 → ℂ) : ℂ :=
  x 0*x 1*x 2 +
  x 0*x 1*x 3 +
  x 0*x 1*x 4 +
  x 0*x 1*x 5 +
  x 0*x 2*x 3 +
  x 0*x 2*x 4 +
  x 0*x 2*x 5 +
  x 0*x 3*x 4 +
  x 0*x 3*x 5 +
  x 0*x 4*x 5 +
  x 1*x 2*x 3 +
  x 1*x 2*x 4 +
  x 1*x 2*x 5 +
  x 1*x 3*x 4 +
  x 1*x 3*x 5 +
  x 1*x 4*x 5 +
  x 2*x 3*x 4 +
  x 2*x 3*x 5 +
  x 2*x 4*x 5 +
  x 3*x 4*x 5

def e4 (x : Fin 6 → ℂ) : ℂ :=
  x 0*x 1*x 2*x 3 +
  x 0*x 1*x 2*x 4 +
  x 0*x 1*x 2*x 5 +
  x 0*x 1*x 3*x 4 +
  x 0*x 1*x 3*x 5 +
  x 0*x 1*x 4*x 5 +
  x 0*x 2*x 3*x 4 +
  x 0*x 2*x 3*x 5 +
  x 0*x 2*x 4*x 5 +
  x 0*x 3*x 4*x 5 +
  x 1*x 2*x 3*x 4 +
  x 1*x 2*x 3*x 5 +
  x 1*x 2*x 4*x 5 +
  x 1*x 3*x 4*x 5 +
  x 2*x 3*x 4*x 5

def e5 (x : Fin 6 → ℂ) : ℂ :=
  x 0*x 1*x 2*x 3*x 4 +
  x 0*x 1*x 2*x 3*x 5 +
  x 0*x 1*x 2*x 4*x 5 +
  x 0*x 1*x 3*x 4*x 5 +
  x 0*x 2*x 3*x 4*x 5 +
  x 1*x 2*x 3*x 4*x 5

def e6 (x : Fin 6 → ℂ) : ℂ :=
  x 0*x 1*x 2*x 3*x 4*x 5

theorem first_two_coefficients (x : Fin 6 → ℂ)
    (h1 : ∑ i, x i = 0) (h2 : ∑ i, (x i)^2 = 0) : e1 x = 0 ∧ e2 x = 0 := by
  have hs : e1 x = 0 := by simpa [e1, Fin.sum_univ_succ, add_assoc] using h1
  refine ⟨hs, ?_⟩
  have hsq := congrArg (fun z : ℂ => z^2) hs
  simp only [zero_pow (by norm_num : (2:ℕ)≠0)] at hsq
  simp [Fin.sum_univ_succ] at h2
  dsimp [e1] at hsq
  dsimp [e2]
  linear_combination (1/2:ℂ)*hsq - (1/2:ℂ)*h2

theorem complementary_coefficients (x : Fin 6 → ℂ)
    (hu : ∀ i, Complex.normSq (x i) = 1)
    (h1 : e1 x = 0) (h2 : e2 x = 0) : e4 x = 0 ∧ e5 x = 0 := by
  have hn0 := FourierSeedBinding.phase_ne_zero (hu 0)
  have hn1 := FourierSeedBinding.phase_ne_zero (hu 1)
  have hn2 := FourierSeedBinding.phase_ne_zero (hu 2)
  have hn3 := FourierSeedBinding.phase_ne_zero (hu 3)
  have hn4 := FourierSeedBinding.phase_ne_zero (hu 4)
  have hn5 := FourierSeedBinding.phase_ne_zero (hu 5)
  have hc0 := FourierSeedBinding.phase_star (hu 0)
  have hc1 := FourierSeedBinding.phase_star (hu 1)
  have hc2 := FourierSeedBinding.phase_star (hu 2)
  have hc3 := FourierSeedBinding.phase_star (hu 3)
  have hc4 := FourierSeedBinding.phase_star (hu 4)
  have hc5 := FourierSeedBinding.phase_star (hu 5)
  have hs1 := congrArg (fun z : ℂ => star z) h1
  have hs2 := congrArg (fun z : ℂ => star z) h2
  simp only [e1, e2, star_add, star_mul, star_zero, hc0, hc1, hc2, hc3, hc4, hc5] at hs1 hs2
  field_simp [hn0, hn1, hn2, hn3, hn4, hn5] at hs1 hs2
  constructor
  · dsimp [e4]
    linear_combination hs2
  · dsimp [e5]
    linear_combination hs1

theorem sparse_six_product (x : Fin 6 → ℂ)
    (hu : ∀ i, Complex.normSq (x i) = 1)
    (h1 : ∑ i, x i = 0) (h2 : ∑ i, (x i)^2 = 0) (t : ℂ) :
    (∏ i, (t-x i)) = t^6-e3 x*t^3+e6 x := by
  obtain ⟨hc1,hc2⟩ := first_two_coefficients x h1 h2
  obtain ⟨hc4,hc5⟩ := complementary_coefficients x hu hc1 hc2
  simp only [Fin.prod_univ_succ]
  dsimp [e1,e2,e4,e5] at hc1 hc2 hc4 hc5
  dsimp [e3,e6]
  linear_combination -(t^5)*hc1 + t^4*hc2 + t^2*hc4 - t*hc5

end
end GeometricSixRoots20261003
#print axioms GeometricSixRoots20261003.first_two_coefficients
#print axioms GeometricSixRoots20261003.complementary_coefficients
#print axioms GeometricSixRoots20261003.sparse_six_product
