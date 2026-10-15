import NoFourMUBs.KernelAtlas.FrameK

/-!
# High-precision phase products for the normal bound

With a table `tb` (`epB tb`: `‖exp(−i P_ji) − X_ji / 2^p‖ ≤ ε_P`) and `Z = e^{iP}` (`P = Pmat tb.pq`):
* `wq tb a b c = conj(X_ac) X_bc` approximates `w_abc = Z_ac Z̄_bc` at scale `2^{2p}`, with
  `‖w_abc − wq/2^{2p}‖ ≤ ω = ε(1 + ε) + ε` (`w_err`);
* `cq tb a b c c' = Re(wq_abc · conj wq_abc') / 2^{4p}` approximates `C_abcc' = Re(w_abc · conj w_abc')`, with
  `|C − cq| ≤ γ = ω(1 + ω) + ω` (`c_err`).
-/

open Hadamard6 NoFourMUBs NoFourMUBs.StageC Complex

namespace NoFourMUBs.KernelAtlas

def gconj (z : ℤ × ℤ) : ℤ × ℤ := (z.1, -z.2)

/-- `conj(X_ac) · X_bc`. -/
def wq (tb : Tab) (a b c : I6) : ℤ × ℤ := gmul (gconj (tb.ep a c)) (tb.ep b c)

/-- `Re(wq_abc · conj wq_abc') / 2^{4p}`. -/
def cq (tb : Tab) (a b c c' : I6) : ℚ :=
  (((wq tb a b c).1 * (wq tb a b c').1 + (wq tb a b c).2 * (wq tb a b c').2 : ℤ) : ℚ) / 2 ^ (4 * tb.p)

def omegaQ (tb : Tab) : ℚ := tb.epsP * (1 + tb.epsP) + tb.epsP
def gammaQ (tb : Tab) : ℚ := omegaQ tb * (1 + omegaQ tb) + omegaQ tb

/-- The exact phase product `Z_ac Z̄_bc`. -/
noncomputable def wex (P : RMat6) (a b c : I6) : ℂ := phaseMat P a c * star (phaseMat P b c)

lemma gval_gconj (p : ℕ) (z : ℤ × ℤ) : gval p (gconj z) = star (gval p z) := by
  unfold gval gconj
  rw [star_div₀]
  simp [Complex.conj_I]

lemma gval_gmul' (p : ℕ) (z w : ℤ × ℤ) : gval (2 * p) (gmul z w) = gval p z * gval p w := by
  have h := gval_gmul p z w
  have h2p : (2 : ℂ) ^ p ≠ 0 := pow_ne_zero _ two_ne_zero
  unfold gval at h ⊢
  rw [h, pow_mul', show ((2 : ℂ) ^ p) ^ 2 = 2 ^ p * 2 ^ p by ring]
  field_simp

lemma norm_wex (P : RMat6) (a b c : I6) : ‖wex P a b c‖ = 1 := by
  rw [wex, norm_mul, norm_star, norm_phaseMat, norm_phaseMat, one_mul]

/-- `‖w_abc − wq/2^{2p}‖ ≤ ω`. -/
theorem w_err {tb : Tab} (h : epB tb = true) (a b c : I6) :
    ‖wex (Pmat tb.pq) a b c - gval (2 * tb.p) (wq tb a b c)‖ ≤ omegaQ tb := by
  have ha := epB_spec h a c
  have hb := epB_spec h b c
  have hx : ‖Complex.exp (((tb.pq a c : ℝ) : ℂ) * I)‖ = 1 := by
    rw [Complex.norm_exp_ofReal_mul_I]
  have hy : ‖Complex.exp (((-(tb.pq b c : ℝ) : ℝ) : ℂ) * I)‖ = 1 := by
    rw [Complex.norm_exp_ofReal_mul_I]
  have ha' : ‖star (gval tb.p (tb.ep a c)) - Complex.exp (((tb.pq a c : ℝ) : ℂ) * I)‖ ≤ tb.epsP := by
    have e : Complex.exp (((tb.pq a c : ℝ) : ℂ) * I) = star (Complex.exp (((-(tb.pq a c : ℝ) : ℝ) : ℂ) * I)) := by
      rw [star_exp_mul_I]; simp
    rw [e, ← star_sub, norm_star, norm_sub_rev]; exact ha
  have hb' : ‖gval tb.p (tb.ep b c) - Complex.exp (((-(tb.pq b c : ℝ) : ℝ) : ℂ) * I)‖ ≤ tb.epsP := by
    rw [norm_sub_rev]; exact hb
  have hm := norm_mul_sub_le hx hy ha' hb'
  have hw : wex (Pmat tb.pq) a b c =
      Complex.exp (((tb.pq a c : ℝ) : ℂ) * I) * Complex.exp (((-(tb.pq b c : ℝ) : ℝ) : ℂ) * I) := by
    simp only [wex, phaseMat, Pmat, Matrix.of_apply, star_exp_mul_I]
  rw [hw, wq, gval_gmul', gval_gconj, norm_sub_rev]
  simpa [omegaQ] using hm

/-- The exact cosine coefficient `C_abcc' = Re(w_abc · conj w_abc')`. -/
noncomputable def cex (P : RMat6) (a b c c' : I6) : ℝ := (wex P a b c * star (wex P a b c')).re

lemma gval_eq (p : ℕ) (z : ℤ × ℤ) : gval p z = ⟨(z.1 : ℝ) / 2 ^ p, (z.2 : ℝ) / 2 ^ p⟩ := by
  have h : (2 : ℂ) ^ p = ((2 ^ p : ℝ) : ℂ) := by push_cast; rfl
  apply Complex.ext
  · rw [gval, h, Complex.div_ofReal_re]; simp
  · rw [gval, h, Complex.div_ofReal_im]; simp

lemma cq_eq (tb : Tab) (a b c c' : I6) :
    ((cq tb a b c c' : ℚ) : ℝ) = (gval (2 * tb.p) (wq tb a b c) * star (gval (2 * tb.p) (wq tb a b c'))).re := by
  rw [gval_eq, gval_eq, Complex.mul_re]
  simp only [Complex.star_def, Complex.conj_re, Complex.conj_im]
  unfold cq
  push_cast
  field_simp
  ring

/-- `|C − cq| ≤ γ`. -/
theorem c_err {tb : Tab} (h : epB tb = true) (a b c c' : I6) :
    |cex (Pmat tb.pq) a b c c' - cq tb a b c c'| ≤ gammaQ tb := by
  have h1 := w_err h a b c
  have h2 := w_err h a b c'
  have h2' : ‖star (gval (2 * tb.p) (wq tb a b c')) - star (wex (Pmat tb.pq) a b c')‖ ≤ omegaQ tb := by
    rw [← star_sub, norm_star, norm_sub_rev]; exact h2
  have h1' : ‖gval (2 * tb.p) (wq tb a b c) - wex (Pmat tb.pq) a b c‖ ≤ omegaQ tb := by
    rw [norm_sub_rev]; exact h1
  have hm := norm_mul_sub_le (norm_wex _ a b c) (by rw [norm_star, norm_wex]) h1' h2'
  rw [cq_eq, cex, ← Complex.sub_re]
  refine (Complex.abs_re_le_norm _).trans ?_
  rw [norm_sub_rev]
  simpa [gammaQ] using hm

end NoFourMUBs.KernelAtlas
