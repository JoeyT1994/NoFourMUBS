import CentiradianPhysical

/-! Scoped exact arithmetic and sign algebra for the local repeated-row route.
These lemmas do not assert a completed physical exclusion theorem. -/
set_option autoImplicit false
set_option maxHeartbeats 1200000
namespace Seed0024Mathematical20261007
noncomputable section

def localDelta : ℝ := 77 / 100000
def localTripleSum : ℝ := 53 / 20000
def localPhaseError : ℝ := 2 / 625

theorem local_constants_positive :
    0 < localDelta ∧ 0 < localTripleSum ∧ 0 < localPhaseError := by
  norm_num [localDelta, localTripleSum, localPhaseError]

theorem local_sqrt15_upper_squared : (15 : ℝ) < (31 / 8) ^ 2 := by
  norm_num

theorem local_half_row_sum_margin :
    (3 + (31 : ℝ) / 8) * localDelta / 2 < localTripleSum := by
  norm_num [localDelta, localTripleSum]

theorem local_equilateral_real_window :
    localTripleSum + localTripleSum ^ 2 / 2 < (1 : ℝ) / 100 := by
  norm_num [localTripleSum]

theorem local_arccos_derivative_margin :
    (43 / 50 : ℝ) ^ 2 < 1 - (51 / 100 : ℝ) ^ 2 := by
  norm_num

theorem local_equilateral_phase_margin :
    (50 / 43 : ℝ) * (localTripleSum + localTripleSum ^ 2 / 2) <
      localPhaseError := by
  norm_num [localTripleSum, localPhaseError]

theorem local_orientation_margins :
    8 * localPhaseError < (2 : ℝ) ∧
    8 * localPhaseError < (3 : ℝ) ∧
    4 * localPhaseError / 3 < (1 : ℝ) / 2 := by
  norm_num [localPhaseError]

theorem local_midpoint_arcsin_derivative_margin :
    (1 : ℝ) / (1 - (1 / 2 : ℝ) ^ 2) < (3 / 2 : ℝ) ^ 2 := by
  norm_num

theorem local_normalized_frobenius_margin :
    (10 * localDelta ^ 2 + 96 * localPhaseError ^ 2) / 6 <
      (1 / 75 : ℝ) ^ 2 := by
  norm_num [localDelta, localPhaseError]

theorem local_seed_q_margin :
    360 * localDelta ^ 2 < (1 : ℝ) / 1000 := by
  norm_num [localDelta]

theorem local_witness_lipschitz_margin :
    (1 : ℝ) / 1000 + 24 * (6 * localPhaseError) < (1 : ℝ) / 2 := by
  norm_num [localPhaseError]

theorem local_rounding_arcsin_derivative_margin :
    (1 : ℝ) / (1 - (1 / 6 : ℝ) ^ 2) < (51 / 50 : ℝ) ^ 2 := by
  norm_num

theorem local_rounding_l1_value :
    (51 / 50 : ℝ) * (1 / 6) = (17 : ℝ) / 100 := by
  norm_num

theorem local_projector_margin :
    ((17 / 100 : ℝ) ^ 2) / 108 < (1 / 60 : ℝ) ^ 2 := by
  norm_num

theorem local_tube_sum_margin :
    (1 / 75 : ℝ) + 1 / 60 = (3 : ℝ) / 100 ∧
    (3 / 100 : ℝ) < 1 / 30 := by
  norm_num

/-- Four absolute values capture all eight sign patterns. -/
theorem local_abs_sum_lt_of_four (a b c e : ℝ)
    (h0 : |a + b - c| < e) (h1 : |a - b + c| < e)
    (h2 : |-a + b + c| < e) (h3 : |a + b + c| < e) :
    |a| + |b| + |c| < e := by
  rcases abs_lt.mp h0 with ⟨h0l, h0r⟩
  rcases abs_lt.mp h1 with ⟨h1l, h1r⟩
  rcases abs_lt.mp h2 with ⟨h2l, h2r⟩
  rcases abs_lt.mp h3 with ⟨h3l, h3r⟩
  rcases le_total 0 a with ha | ha <;>
    rcases le_total 0 b with hb | hb <;>
    rcases le_total 0 c with hc | hc <;>
    simp_all only [abs_of_nonneg, abs_of_nonpos] <;> linarith

/-- The phase argument relation is exact and does not use smallness. -/
theorem local_phase_argument_sum (alpha beta : ℝ) :
    (2 * alpha - beta) + (2 * beta - alpha) = alpha + beta := by ring

theorem local_phase_argument_quadratic (alpha beta : ℝ) :
    (2 * alpha - beta) ^ 2 + (2 * beta - alpha) ^ 2 +
      (alpha + beta) ^ 2 =
    6 * (alpha ^ 2 + beta ^ 2 - alpha * beta) := by ring

/-- The projector variance calculation for the repeated-row Fourier form. -/
theorem local_projector_variance_identity (alpha beta : ℝ) :
    (alpha ^ 2 + beta ^ 2 + (alpha - beta) ^ 2) / 36 =
    (alpha ^ 2 + beta ^ 2 - alpha * beta) / 18 := by ring

/-- Inverting the two independent rounded phase arguments. -/
theorem local_rounded_argument_inverse (a b : ℝ) :
    let alpha := (2 * a + b) / 3
    let beta := (a + 2 * b) / 3
    2 * alpha - beta = a ∧ 2 * beta - alpha = b ∧
      alpha + beta = a + b := by
  dsimp
  constructor
  · ring
  constructor <;> ring

theorem local_rounded_projector_identity (a b : ℝ) :
    (((2 * a + b) / 3) ^ 2 + ((a + 2 * b) / 3) ^ 2 -
      ((2 * a + b) / 3) * ((a + 2 * b) / 3)) / 18 =
    (a ^ 2 + b ^ 2 + (a + b) ^ 2) / 108 := by ring

/-- The zero lattice modulo six gives compatible cubic phases. -/
theorem local_zero_lattice_mod3 :
    ∀ n m : Fin 6,
      ((2 * n.val + m.val) % 6) % 3 =
        (2 * ((n.val + 2 * m.val) % 3)) % 3 := by decide

/-- The displayed CRT row and column permutations agree entrywise with F6. -/
theorem local_tensor_fourier_exponents :
    ∀ s n : Fin 3, ∀ b c : Fin 2,
      (((2 * s.val + 3 * b.val) % 6) *
          ((4 * n.val + 3 * c.val) % 6)) % 6 =
        (2 * s.val * n.val + 3 * b.val * c.val) % 6 := by decide

end
end Seed0024Mathematical20261007

#print axioms Seed0024Mathematical20261007.local_abs_sum_lt_of_four
#print axioms Seed0024Mathematical20261007.local_normalized_frobenius_margin
#print axioms Seed0024Mathematical20261007.local_witness_lipschitz_margin
#print axioms Seed0024Mathematical20261007.local_projector_margin
#print axioms Seed0024Mathematical20261007.local_rounded_projector_identity
#print axioms Seed0024Mathematical20261007.local_tensor_fourier_exponents
