import LocalArithmetic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds

/-! Explicit scalar overlaps of the actual six-entry columns used by the
repeated-row Fourier construction and its exhibited half-phase row gauge.
No unknown orbit-metric hypothesis is introduced. -/
set_option autoImplicit false
set_option maxHeartbeats 1600000
namespace Seed0024Mathematical20261007
open scoped BigOperators ComplexConjugate
noncomputable section

def cis (t : ℝ) : ℂ := ⟨Real.cos t, Real.sin t⟩

theorem cis_normSq (t : ℝ) : Complex.normSq (cis t) = 1 := by
  simpa only [cis, Complex.normSq_apply, pow_two, add_comm] using
    Real.sin_sq_add_cos_sq t

theorem cis_zero : cis 0 = 1 := by ext <;> simp [cis]

theorem cis_conj_mul (x y : ℝ) : conj (cis x) * cis y = cis (y - x) := by
  ext <;> simp [cis, Real.cos_sub, Real.sin_sub] <;> ring

theorem cis_conj (x : ℝ) : conj (cis x) = cis (-x) := by
  ext <;> simp [cis]

theorem cis_eq_exp (t : ℝ) : cis t = Complex.exp (Complex.I * (t : ℂ)) := by
  ext <;> simp [cis, Complex.exp_re, Complex.exp_im]

def meanPhasor (x y : ℝ) : ℂ := (1 + cis x + cis y) / 3

theorem meanPhasor_normSq (x y : ℝ) :
    Complex.normSq (meanPhasor x y) =
      (3 + 2 * Real.cos x + 2 * Real.cos y + 2 * Real.cos (x-y)) / 9 := by
  simp only [meanPhasor, Complex.normSq_div, Complex.normSq_apply,
    Complex.add_re, Complex.add_im, Complex.one_re, Complex.one_im,
    Complex.ofNat_re, Complex.ofNat_im, cis]
  rw [Real.cos_sub]
  norm_num
  nlinarith [Real.sin_sq_add_cos_sq x, Real.sin_sq_add_cos_sq y]

theorem meanPhasor_variance_identity (x y : ℝ) :
    1 - Complex.normSq (meanPhasor x y) =
      (2 / 9 : ℝ) * ((1 - Real.cos x) + (1 - Real.cos y) +
        (1 - Real.cos (x-y))) := by
  rw [meanPhasor_normSq]
  ring

theorem meanPhasor_variance_le (x y : ℝ) :
    1 - Complex.normSq (meanPhasor (x/2) (y/2)) ≤
      (x^2+y^2-x*y)/18 := by
  rw [meanPhasor_variance_identity]
  have hx := Real.one_sub_sq_div_two_le_cos (x := x/2)
  have hy := Real.one_sub_sq_div_two_le_cos (x := y/2)
  have hxy := Real.one_sub_sq_div_two_le_cos (x := x/2-y/2)
  nlinarith

def repeatedPhase (x y : ℝ) : Fin 6 → ℝ := ![0,0,x,x,y,y]

def phaseColumn (z : Fin 6 → ℂ) (p : Fin 6 → ℝ) : Fin 6 → ℂ :=
  fun i => cis (p i) * z i / (Real.sqrt 6 : ℂ)

def columnOverlap (u v : Fin 6 → ℂ) : ℂ :=
  ∑ i : Fin 6, conj (u i) * v i

def columnMass (u : Fin 6 → ℂ) : ℝ := ∑ i : Fin 6, Complex.normSq (u i)

theorem normalized_phase_entry_overlap (z : ℂ) (hz : Complex.normSq z = 1)
    (a b : ℝ) :
    conj (cis a * z / (Real.sqrt 6 : ℂ)) *
      (cis b * z / (Real.sqrt 6 : ℂ)) = cis (b-a) / 6 := by
  have hs : (Real.sqrt 6 : ℂ) * (Real.sqrt 6 : ℂ) = 6 := by
    rw [← Complex.ofReal_mul, Real.mul_self_sqrt (by norm_num : (0:ℝ) ≤ 6)]
    norm_num
  have hz' : conj z * z = 1 := by
    simpa only [mul_comm, Complex.mul_conj, hz, Complex.ofReal_one]
  calc
    _ = (conj (cis a) * cis b) * (conj z * z) /
        ((Real.sqrt 6 : ℂ) * (Real.sqrt 6 : ℂ)) := by
      simp only [map_div, map_mul, Complex.conj_ofReal]
      ring
    _ = cis (b-a)/6 := by rw [cis_conj_mul, hz', hs]; ring

theorem phaseColumn_mass (z : Fin 6 → ℂ) (hz : ∀ i, Complex.normSq (z i) = 1)
    (p : Fin 6 → ℝ) : columnMass (phaseColumn z p) = 1 := by
  have hs : Complex.normSq (Real.sqrt 6 : ℂ) = 6 := by
    simp only [Complex.normSq_ofReal]
    exact Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 6)
  unfold columnMass phaseColumn
  simp only [Complex.normSq_div, Complex.normSq_mul, cis_normSq, hz,
    one_mul, hs]
  norm_num

theorem phaseColumn_overlap (z : Fin 6 → ℂ)
    (hz : ∀ i, Complex.normSq (z i) = 1) (p q : Fin 6 → ℝ) :
    columnOverlap (phaseColumn z p) (phaseColumn z q) =
      ∑ i : Fin 6, cis (q i-p i)/6 := by
  unfold columnOverlap phaseColumn
  apply Finset.sum_congr rfl
  intro i _
  exact normalized_phase_entry_overlap (z i) (hz i) (p i) (q i)

/-- Left-family columns compared with the explicitly row-gauged reference. -/
theorem repeated_left_overlap (z : Fin 6 → ℂ)
    (hz : ∀ i, Complex.normSq (z i) = 1) (x y : ℝ) :
    columnOverlap (phaseColumn z (fun _ => 0))
      (phaseColumn z (fun i => repeatedPhase x y i / 2)) =
    meanPhasor (x/2) (y/2) := by
  rw [phaseColumn_overlap z hz]
  simp only [Fin.sum_univ_succ, repeatedPhase, Matrix.cons_val_zero,
    Matrix.cons_val_succ, sub_zero, zero_div, cis_zero]
  unfold meanPhasor
  ring

/-- Right-family columns compared with the same row-gauged reference. -/
theorem repeated_right_overlap (z : Fin 6 → ℂ)
    (hz : ∀ i, Complex.normSq (z i) = 1) (x y : ℝ) :
    columnOverlap (phaseColumn z (repeatedPhase x y))
      (phaseColumn z (fun i => repeatedPhase x y i / 2)) =
    meanPhasor (-x/2) (-y/2) := by
  rw [phaseColumn_overlap z hz]
  simp only [Fin.sum_univ_succ, repeatedPhase, Matrix.cons_val_zero,
    Matrix.cons_val_succ, zero_div, sub_zero, cis_zero]
  have hx : x/2-x = -x/2 := by ring
  have hy : y/2-y = -y/2 := by ring
  rw [hx, hy]
  unfold meanPhasor
  ring

theorem repeated_left_infidelity_le (z : Fin 6 → ℂ)
    (hz : ∀ i, Complex.normSq (z i) = 1) (x y : ℝ) :
    1 - Complex.normSq (columnOverlap (phaseColumn z (fun _ => 0))
      (phaseColumn z (fun i => repeatedPhase x y i / 2))) ≤
    (x^2+y^2-x*y)/18 := by
  rw [repeated_left_overlap z hz]
  exact meanPhasor_variance_le x y

theorem repeated_right_infidelity_le (z : Fin 6 → ℂ)
    (hz : ∀ i, Complex.normSq (z i) = 1) (x y : ℝ) :
    1 - Complex.normSq (columnOverlap (phaseColumn z (repeatedPhase x y))
      (phaseColumn z (fun i => repeatedPhase x y i / 2))) ≤
    (x^2+y^2-x*y)/18 := by
  rw [repeated_right_overlap z hz]
  have h := meanPhasor_variance_le (-x) (-y)
  simpa only [neg_sq, neg_mul_neg] using h

end
end Seed0024Mathematical20261007

#print axioms Seed0024Mathematical20261007.cis_eq_exp
#print axioms Seed0024Mathematical20261007.meanPhasor_variance_le
#print axioms Seed0024Mathematical20261007.phaseColumn_mass
#print axioms Seed0024Mathematical20261007.repeated_left_infidelity_le
#print axioms Seed0024Mathematical20261007.repeated_right_infidelity_le
