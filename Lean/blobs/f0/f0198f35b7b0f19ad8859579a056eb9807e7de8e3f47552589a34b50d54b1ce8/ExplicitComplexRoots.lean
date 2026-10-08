import FourierOrientation
import Mathlib.Analysis.SpecialFunctions.Complex.Log

/-! Explicit root choices, including zero, and exhaustive square-root signs. -/
namespace Hadamard6Extensions.FourPhaseRoots
noncomputable section

def squareRoot (z : ℂ) : ℂ :=
  if z=0 then 0 else Complex.exp (Complex.log z/2)
def cubeRoot (z : ℂ) : ℂ :=
  if z=0 then 0 else Complex.exp (Complex.log z/3)

theorem squareRoot_sq (z : ℂ) : squareRoot z ^ 2 = z := by
  by_cases hz : z=0
  · simp [squareRoot,hz]
  · rw [squareRoot,if_neg hz,← Complex.exp_nat_mul]
    convert Complex.exp_log hz using 1 <;> congr 1 <;> ring

theorem cubeRoot_cube (z : ℂ) : cubeRoot z ^ 3 = z := by
  by_cases hz : z=0
  · simp [cubeRoot,hz]
  · rw [cubeRoot,if_neg hz,← Complex.exp_nat_mul]
    convert Complex.exp_log hz using 1 <;> congr 1 <;> ring

def signedSquareRoot (negative : Bool) (z : ℂ) : ℂ :=
  if negative then -squareRoot z else squareRoot z

theorem signedSquareRoot_sq (negative : Bool) (z : ℂ) :
    signedSquareRoot negative z ^ 2 = z := by
  cases negative <;> simp [signedSquareRoot,squareRoot_sq]

theorem square_roots_exhaustive {delta z : ℂ} (hd : delta^2=z) :
    ∃ negative : Bool, delta=signedSquareRoot negative z := by
  have hs := squareRoot_sq z
  have hp : (delta-squareRoot z)*(delta+squareRoot z)=0 := by
    linear_combination hd-hs
  rcases mul_eq_zero.mp hp with hm | hm
  · exact ⟨false,sub_eq_zero.mp hm⟩
  · exact ⟨true,eq_neg_of_add_eq_zero_left hm⟩

theorem cubeRoot_ne_zero {z : ℂ} (hz : z≠0) : cubeRoot z≠0 := by
  intro hc
  have h := cubeRoot_cube z
  rw [hc] at h
  exact hz (by simpa using h.symm)

def omega : ℂ := (-1+squareRoot (-3))/2

theorem omega_quadratic : omega^2+omega+1=0 := by
  have h := squareRoot_sq (-3)
  unfold omega
  linear_combination (1/4 : ℂ)*h

#check squareRoot_sq
#check cubeRoot_cube
#check signedSquareRoot_sq
#check square_roots_exhaustive
#check cubeRoot_ne_zero
#check omega_quadratic
#print axioms squareRoot_sq
#print axioms cubeRoot_cube
#print axioms signedSquareRoot_sq
#print axioms square_roots_exhaustive
#print axioms cubeRoot_ne_zero
#print axioms omega_quadratic
end
end Hadamard6Extensions.FourPhaseRoots
