import FormalCore
import Mathlib.Tactic.Ring

/-! Exact physical nonemptiness of the Tao calibration carrier.
The finite ray exclusion is not assumed or reproved here. -/
namespace Mub6.Numerical.TaoCalibration
open scoped BigOperators
open Matrix
set_option maxHeartbeats 1200000

noncomputable def omega : ℂ := ⟨-1/2, Real.sqrt 3 / 2⟩
noncomputable def omegaBar : ℂ := ⟨-1/2, -(Real.sqrt 3 / 2)⟩

noncomputable def tao : BasisMatrix :=
  !![1, 1, 1, 1, 1, 1;
     1, 1, omega, omega, omegaBar, omegaBar;
     1, omega, 1, omegaBar, omegaBar, omega;
     1, omega, omegaBar, 1, omega, omegaBar;
     1, omegaBar, omegaBar, omega, 1, omega;
     1, omegaBar, omega, omegaBar, omega, 1]

/-- Literal rational endpoints generated from the source-hashed target03 carrier. -/
def carrier : CarrierRegion :=
  ![![⟨1, 1, 0, 0⟩, ⟨1, 1, 0, 0⟩, ⟨1, 1, 0, 0⟩, ⟨1, 1, 0, 0⟩, ⟨1, 1, 0, 0⟩, ⟨1, 1, 0, 0⟩],
    ![⟨1, 1, 0, 0⟩, ⟨(16777215/16777216), (16777217/16777216), (-1/16777216), (1/16777216)⟩, ⟨(-8388609/16777216), (-8388607/16777216), (14529495/16777216), (1816187/2097152)⟩, ⟨(-8388609/16777216), (-8388607/16777216), (14529495/16777216), (1816187/2097152)⟩, ⟨(-8388609/16777216), (-8388607/16777216), (-1816187/2097152), (-14529495/16777216)⟩, ⟨(-8388609/16777216), (-8388607/16777216), (-1816187/2097152), (-14529495/16777216)⟩],
    ![⟨1, 1, 0, 0⟩, ⟨(-8388609/16777216), (-8388607/16777216), (14529495/16777216), (1816187/2097152)⟩, ⟨(16777215/16777216), (16777217/16777216), (-1/16777216), (1/16777216)⟩, ⟨(-8388609/16777216), (-8388607/16777216), (-1816187/2097152), (-14529495/16777216)⟩, ⟨(-8388609/16777216), (-8388607/16777216), (-1816187/2097152), (-14529495/16777216)⟩, ⟨(-8388609/16777216), (-8388607/16777216), (14529495/16777216), (1816187/2097152)⟩],
    ![⟨1, 1, 0, 0⟩, ⟨(-8388609/16777216), (-8388607/16777216), (14529495/16777216), (1816187/2097152)⟩, ⟨(-8388609/16777216), (-8388607/16777216), (-1816187/2097152), (-14529495/16777216)⟩, ⟨(16777215/16777216), (16777217/16777216), (-1/16777216), (1/16777216)⟩, ⟨(-8388609/16777216), (-8388607/16777216), (14529495/16777216), (1816187/2097152)⟩, ⟨(-8388609/16777216), (-8388607/16777216), (-1816187/2097152), (-14529495/16777216)⟩],
    ![⟨1, 1, 0, 0⟩, ⟨(-8388609/16777216), (-8388607/16777216), (-1816187/2097152), (-14529495/16777216)⟩, ⟨(-8388609/16777216), (-8388607/16777216), (-1816187/2097152), (-14529495/16777216)⟩, ⟨(-8388609/16777216), (-8388607/16777216), (14529495/16777216), (1816187/2097152)⟩, ⟨(16777215/16777216), (16777217/16777216), (-1/16777216), (1/16777216)⟩, ⟨(-8388609/16777216), (-8388607/16777216), (14529495/16777216), (1816187/2097152)⟩],
    ![⟨1, 1, 0, 0⟩, ⟨(-8388609/16777216), (-8388607/16777216), (-1816187/2097152), (-14529495/16777216)⟩, ⟨(-8388609/16777216), (-8388607/16777216), (14529495/16777216), (1816187/2097152)⟩, ⟨(-8388609/16777216), (-8388607/16777216), (-1816187/2097152), (-14529495/16777216)⟩, ⟨(-8388609/16777216), (-8388607/16777216), (14529495/16777216), (1816187/2097152)⟩, ⟨(16777215/16777216), (16777217/16777216), (-1/16777216), (1/16777216)⟩]]

theorem sqrt_three_bounds :
    (14529495 / 8388608 : ℝ) ≤ Real.sqrt 3 ∧
    Real.sqrt 3 ≤ (1816187 / 1048576 : ℝ) := by
  constructor
  · apply Real.le_sqrt_of_sq_le
    norm_num
  · apply (Real.sqrt_le_left (by norm_num : (0:ℝ) ≤ 1816187 / 1048576)).2
    norm_num

theorem omegaBar_eq_sq : omegaBar = omega ^ 2 := by
  have hs := Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 3)
  apply Complex.ext <;>
    simp [omegaBar, omega, pow_two, Complex.mul_re, Complex.mul_im] <;>
    nlinarith

theorem tao_isPhaseHadamard : PhaseHadamard tao := by
  have hs := Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 3)
  constructor
  · intro r k
    fin_cases r <;> fin_cases k <;>
      norm_num [tao, omega, omegaBar, Complex.normSq_apply] <;> nlinarith
  · ext r k : 2
    fin_cases r <;> fin_cases k <;> apply Complex.ext <;>
      norm_num [tao, omega, omegaBar, Matrix.mul_apply, Fin.sum_univ_succ,
        Matrix.conjTranspose_apply, Complex.star_def, Complex.mul_re, Complex.mul_im,
        Matrix.smul_apply, Matrix.one_apply] <;> nlinarith

theorem tao_memCarrier : CarrierBox carrier tao := by
  have hs := sqrt_three_bounds
  intro r k
  fin_cases r <;> fin_cases k <;>
    norm_num [CarrierBox, MemRectangle, carrier, tao, omega, omegaBar] <;>
    constructor <;> linarith [hs.1, hs.2]

theorem carrier_contains_physical_matrix :
    ∃ H : BasisMatrix, PhaseHadamard H ∧ CarrierBox carrier H :=
  ⟨tao, tao_isPhaseHadamard, tao_memCarrier⟩

#print axioms sqrt_three_bounds
#print axioms omegaBar_eq_sq
#print axioms tao_isPhaseHadamard
#print axioms tao_memCarrier
#print axioms carrier_contains_physical_matrix
end Mub6.Numerical.TaoCalibration
