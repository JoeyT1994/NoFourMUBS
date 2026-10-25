import KernelAtlas.Edge.RootDerivative

/-! Residual-based enclosures for solutions of the differentiated augmented equations. -/

open Matrix NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

/-- An approximate solution of `A z + b = 0` encloses the exact solution when the
preconditioned residual and row contraction fit in the claimed radius. -/
theorem linear_residual_error {m : ℕ} (A Y : Matrix (Fin m) (Fin m) ℝ)
    (z p b : Fin m → ℝ) {q e r : ℝ} (hq0 : 0 ≤ q) (hq1 : q < 1) (he0 : 0 ≤ e)
    (he : e ≤ (1-q)*r) (hz : A.mulVec z + b = 0)
    (hA : ∀ i, ∑ j, |(1-Y*A) i j| ≤ q)
    (hb : ∀ i, |Y.mulVec (A.mulVec p + b) i| ≤ e) : ‖z-p‖ ≤ r := by
  let d := z-p
  have hY : Y.mulVec (A.mulVec z) + Y.mulVec b = 0 := by
    rw [← Matrix.mulVec_add, hz, Matrix.mulVec_zero]
  have hid : d = (1-Y*A).mulVec d - Y.mulVec (A.mulVec p + b) := by
    simp only [d, Matrix.sub_mulVec, Matrix.one_mulVec, ← Matrix.mulVec_mulVec,
      Matrix.mulVec_sub, Matrix.mulVec_add]
    ext i
    have hi := congrFun hY i
    simp only [Pi.add_apply, Pi.sub_apply, Pi.zero_apply] at hi ⊢
    linarith
  have hc (i : Fin m) : |d i| ≤ q*‖d‖+e := by
    have hmul : |((1-Y*A).mulVec d) i| ≤ q*‖d‖ := by
      simp only [Matrix.mulVec, dotProduct]
      calc |∑ j, (1-Y*A) i j*d j| ≤ ∑ j, |(1-Y*A) i j*d j| := Finset.abs_sum_le_sum_abs _ _
        _ ≤ ∑ j, |(1-Y*A) i j| *‖d‖ := by
          apply Finset.sum_le_sum
          intro j _
          rw [abs_mul]
          exact mul_le_mul_of_nonneg_left (Method.abs_le_norm_pi d j) (abs_nonneg _)
        _ = (∑ j, |(1-Y*A) i j|)*‖d‖ := by rw [Finset.sum_mul]
        _ ≤ q*‖d‖ := mul_le_mul_of_nonneg_right (hA i) (norm_nonneg _)
    calc |d i| = |((1-Y*A).mulVec d) i - (Y.mulVec (A.mulVec p+b)) i| := congrArg (fun v => |v i|) hid
      _ ≤ |((1-Y*A).mulVec d) i| + |Y.mulVec (A.mulVec p+b) i| := abs_sub _ _
      _ ≤ q*‖d‖+e := add_le_add hmul (hb i)
  have hn : ‖d‖ ≤ q*‖d‖+e := by
    apply (pi_norm_le_iff_of_nonneg (by positivity)).mpr
    intro i
    simpa only [Real.norm_eq_abs] using hc i
  apply le_of_not_gt
  intro hr
  have hp := mul_pos (sub_pos.mpr hq1) (sub_pos.mpr hr)
  change ‖d‖ > r at hr
  nlinarith

end NoFourMUBs.KernelAtlas.Edge
