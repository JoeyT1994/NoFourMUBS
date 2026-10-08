import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace CriticalModulusDomain20261003
noncomputable section

def h (k : ℝ) : ℝ := 1+k^2
def p (k : ℝ) : ℝ := 9-4/h k
def w (k : ℝ) : ℝ := 2*(16-32*h k+18*(h k)^2)/(h k)^3
def minimum (k : ℝ) : ℝ := 16*k^2/(h k)^4
def root0 (k : ℝ) : ℝ := 4*(9*k^2+1)/(h k)^3
def rootPlus (k : ℝ) : ℝ :=
  (27*k^6+9*k^4+17*k^2+3+8*k*h k)/(h k)^3
def rootMinus (k : ℝ) : ℝ :=
  (27*k^6+9*k^4+17*k^2+3-8*k*h k)/(h k)^3
def discriminant (P V K : ℝ) : ℝ :=
  P^2*(V+K)^2-4*(V+K)^3-4*P^3*K-27*K^2+18*P*(V+K)*K

theorem h_pos (k : ℝ) : 0<h k := by
  unfold h
  nlinarith [sq_nonneg k]

theorem discriminant_of_three_roots (X Y Z : ℝ) :
    discriminant (X+Y+Z) (X*Y+X*Z+Y*Z-X*Y*Z) (X*Y*Z)=
      (X-Y)^2*(X-Z)^2*(Y-Z)^2 := by
  unfold discriminant
  ring

theorem physical_discriminant_nonnegative (X Y Z P V K : ℝ)
    (hp : X+Y+Z=P) (hw : X*Y+X*Z+Y*Z=V+K) (hk : X*Y*Z=K) :
    0≤discriminant P V K := by
  have hv : V=X*Y+X*Z+Y*Z-X*Y*Z := by rw [hw,hk]; ring
  rw [← hp,hv,← hk,discriminant_of_three_roots]
  exact mul_nonneg (mul_nonneg (sq_nonneg _) (sq_nonneg _)) (sq_nonneg _)

theorem discriminant_factorization (k K : ℝ) :
    discriminant (p k) (w k) K=
      -4*(K-root0 k)*(K-rootPlus k)*(K-rootMinus k) := by
  have hh : (1+k^2 : ℝ)≠0 := ne_of_gt (h_pos k)
  unfold discriminant p w root0 rootPlus rootMinus h
  field_simp [hh]
  <;> ring

theorem plus_minus_difference (k : ℝ) :
    rootPlus k-rootMinus k=16*k/(h k)^2 := by
  have hh : (1+k^2 : ℝ)≠0 := ne_of_gt (h_pos k)
  unfold rootPlus rootMinus h
  field_simp [hh]
  <;> ring

theorem plus_zero_difference (k : ℝ) :
    rootPlus k-root0 k=(k+1)*(3*k-1)^3/(h k)^2 := by
  have hh : (1+k^2 : ℝ)≠0 := ne_of_gt (h_pos k)
  unfold rootPlus root0 h
  field_simp [hh]
  <;> ring

theorem minus_zero_difference (k : ℝ) :
    rootMinus k-root0 k=(k-1)*(3*k+1)^3/(h k)^2 := by
  have hh : (1+k^2 : ℝ)≠0 := ne_of_gt (h_pos k)
  unfold rootMinus root0 h
  field_simp [hh]
  <;> ring

theorem zero_minimum_difference (k : ℝ) :
    root0 k-minimum k=4*(3*k^2+1)^2/(h k)^4 := by
  have hh : (1+k^2 : ℝ)≠0 := ne_of_gt (h_pos k)
  unfold root0 minimum h
  field_simp [hh]
  <;> ring

theorem minus_minimum_difference (k : ℝ) :
    rootMinus k-minimum k=
      (3*k^2-2*k+3)*(3*k^3+k^2+k-1)^2/(h k)^4 := by
  have hh : (1+k^2 : ℝ)≠0 := ne_of_gt (h_pos k)
  unfold rootMinus minimum h
  field_simp [hh]
  <;> ring

theorem plus_minimum_difference (k : ℝ) :
    rootPlus k-minimum k=
      (3*k^2+2*k+3)*(3*k^3-k^2+k+1)^2/(h k)^4 := by
  have hh : (1+k^2 : ℝ)≠0 := ne_of_gt (h_pos k)
  unfold rootPlus minimum h
  field_simp [hh]
  <;> ring

theorem trace_square (k : ℝ) : (8*k/(h k)^2)^2=4*minimum k := by
  have hh : (1+k^2 : ℝ)≠0 := ne_of_gt (h_pos k)
  unfold minimum h
  field_simp [hh]
  <;> ring

theorem minimum_le_of_trace_bound (k K : ℝ)
    (hb : (8*k/(h k)^2)^2≤4*K) : minimum k≤K := by
  rw [trace_square] at hb
  linarith

end
#print axioms h_pos
#print axioms discriminant_of_three_roots
#print axioms physical_discriminant_nonnegative
#print axioms discriminant_factorization
#print axioms plus_minus_difference
#print axioms plus_zero_difference
#print axioms minus_zero_difference
#print axioms zero_minimum_difference
#print axioms minus_minimum_difference
#print axioms plus_minimum_difference
#print axioms trace_square
#print axioms minimum_le_of_trace_bound
end CriticalModulusDomain20261003
