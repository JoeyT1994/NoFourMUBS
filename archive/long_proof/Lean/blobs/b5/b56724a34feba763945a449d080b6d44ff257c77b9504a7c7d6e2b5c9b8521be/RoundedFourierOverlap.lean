import PiRounding

/-! Connected small-witness-sine to actual normalized-column overlap bound.
The reference phases are explicit integer-pi lattice values. -/
set_option autoImplicit false
set_option maxHeartbeats 1600000
namespace Seed0024Mathematical20261007
noncomputable section

def latticeAlpha (alpha beta : ℝ) : ℝ :=
  (2*(nearestPiInt (2*alpha-beta) : ℝ) +
    (nearestPiInt (2*beta-alpha) : ℝ))*Real.pi/3

def latticeBeta (alpha beta : ℝ) : ℝ :=
  ((nearestPiInt (2*alpha-beta) : ℝ) +
    2*(nearestPiInt (2*beta-alpha) : ℝ))*Real.pi/3

def errorAlpha (alpha beta : ℝ) : ℝ := alpha-latticeAlpha alpha beta

def errorBeta (alpha beta : ℝ) : ℝ := beta-latticeBeta alpha beta

theorem lattice_arguments (alpha beta : ℝ) :
    2*latticeAlpha alpha beta-latticeBeta alpha beta =
      (nearestPiInt (2*alpha-beta) : ℝ)*Real.pi ∧
    2*latticeBeta alpha beta-latticeAlpha alpha beta =
      (nearestPiInt (2*beta-alpha) : ℝ)*Real.pi := by
  unfold latticeAlpha latticeBeta
  constructor <;> ring

theorem errorAlpha_from_residues (alpha beta : ℝ) :
    errorAlpha alpha beta =
      (2*piResidue (2*alpha-beta)+piResidue (2*beta-alpha))/3 := by
  unfold errorAlpha latticeAlpha piResidue
  ring

theorem errorBeta_from_residues (alpha beta : ℝ) :
    errorBeta alpha beta =
      (piResidue (2*alpha-beta)+2*piResidue (2*beta-alpha))/3 := by
  unfold errorBeta latticeBeta piResidue
  ring

theorem sum_three_squares_le_abs_sum_square (a b c : ℝ) :
    a^2+b^2+c^2 ≤ (|a|+|b|+|c|)^2 := by
  have hab := mul_nonneg (abs_nonneg a) (abs_nonneg b)
  have hac := mul_nonneg (abs_nonneg a) (abs_nonneg c)
  have hbc := mul_nonneg (abs_nonneg b) (abs_nonneg c)
  have ha := sq_abs a
  have hb := sq_abs b
  have hc := sq_abs c
  nlinarith

theorem rounded_fourier_variance_lt (alpha beta : ℝ)
    (hs : |Real.sin (2*alpha-beta)|+|Real.sin (2*beta-alpha)|+
      |Real.sin (alpha+beta)| < (1:ℝ)/6) :
    ((errorAlpha alpha beta)^2+(errorBeta alpha beta)^2-
      (errorAlpha alpha beta)*(errorBeta alpha beta))/18 < (1/60:ℝ)^2 := by
  obtain ⟨hrel, hsum⟩ := local_sine_triple_rounding
    (2*alpha-beta) (2*beta-alpha) (alpha+beta) (by ring) hs
  rw [errorAlpha_from_residues, errorBeta_from_residues,
    local_rounded_projector_identity, hrel]
  have hsq := sum_three_squares_le_abs_sum_square
    (piResidue (2*alpha-beta)) (piResidue (2*beta-alpha))
    (piResidue (alpha+beta))
  have hpos : 0 < (17:ℝ)/100 +
      (|piResidue (2*alpha-beta)|+|piResidue (2*beta-alpha)|+
        |piResidue (alpha+beta)|) := by
    linarith [abs_nonneg (piResidue (2*alpha-beta)),
      abs_nonneg (piResidue (2*beta-alpha)), abs_nonneg (piResidue (alpha+beta))]
  have hp := mul_pos (sub_pos.mpr hsum) hpos
  have hm := local_projector_margin
  nlinarith

/-- Actual left column, actual reference column, and the exhibited row gauge. -/
theorem rounded_fourier_left_overlap_gt (z : Fin 6 → ℂ)
    (hz : ∀ i, Complex.normSq (z i) = 1) (alpha beta : ℝ)
    (hs : |Real.sin (2*alpha-beta)|+|Real.sin (2*beta-alpha)|+
      |Real.sin (alpha+beta)| < (1:ℝ)/6) :
    1-(1/60:ℝ)^2 < Complex.normSq
      (columnOverlap (phaseColumn z (fun _ => 0))
        (phaseColumn z (fun i =>
          repeatedPhase (errorAlpha alpha beta) (errorBeta alpha beta) i/2))) := by
  have hc := repeated_left_infidelity_le z hz
    (errorAlpha alpha beta) (errorBeta alpha beta)
  have hv := rounded_fourier_variance_lt alpha beta hs
  linarith

/-- Actual right column compared with exactly the same row gauge. -/
theorem rounded_fourier_right_overlap_gt (z : Fin 6 → ℂ)
    (hz : ∀ i, Complex.normSq (z i) = 1) (alpha beta : ℝ)
    (hs : |Real.sin (2*alpha-beta)|+|Real.sin (2*beta-alpha)|+
      |Real.sin (alpha+beta)| < (1:ℝ)/6) :
    1-(1/60:ℝ)^2 < Complex.normSq
      (columnOverlap
        (phaseColumn z (repeatedPhase (errorAlpha alpha beta) (errorBeta alpha beta)))
        (phaseColumn z (fun i =>
          repeatedPhase (errorAlpha alpha beta) (errorBeta alpha beta) i/2))) := by
  have hc := repeated_right_infidelity_le z hz
    (errorAlpha alpha beta) (errorBeta alpha beta)
  have hv := rounded_fourier_variance_lt alpha beta hs
  linarith

end
end Seed0024Mathematical20261007

#print axioms Seed0024Mathematical20261007.rounded_fourier_variance_lt
#print axioms Seed0024Mathematical20261007.rounded_fourier_left_overlap_gt
#print axioms Seed0024Mathematical20261007.rounded_fourier_right_overlap_gt
