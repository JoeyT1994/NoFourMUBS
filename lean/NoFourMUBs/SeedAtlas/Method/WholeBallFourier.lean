import NoFourMUBs.SeedAtlas.Method.WholeBallTaylor
import Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas
import Mathlib.Analysis.SpecialFunctions.Complex.Analytic
import Mathlib.Analysis.Complex.RealDeriv

/-!
# Derivatives of the quadratic-phase Fourier terms

Z §3 uses the derivatives of `exp(i(a t + b t²/2))` along each parameter
segment. The recurrence below proves the coefficients 1, 10, 15 in the fifth
derivative bound, without replacing cancellation in the summed centre jets
by a sum of norms.
-/

open Complex
open scoped ContDiff

namespace NoFourMUBs.SeedAtlas.Method.WholeBall

noncomputable def chirp (a b : ℝ) (t : ℝ) : ℂ :=
  Complex.exp (((a * t + b * t ^ 2 / 2 : ℝ) : ℂ) * I)

noncomputable def chirpSlope (a b : ℝ) (t : ℝ) : ℂ := ((a + b * t : ℝ) : ℂ) * I

def chirpPoly (n : ℕ) (c d : ℂ) : ℂ :=
  match n with
  | 0 => 1
  | 1 => c
  | 2 => c ^ 2 + d
  | 3 => c ^ 3 + 3 * d * c
  | 4 => c ^ 4 + 6 * d * c ^ 2 + 3 * d ^ 2
  | 5 => c ^ 5 + 10 * d * c ^ 3 + 15 * d ^ 2 * c
  | _ => 0

lemma hasDerivAt_chirp (a b t : ℝ) :
    HasDerivAt (chirp a b) (chirp a b t * chirpSlope a b t) t := by
  have hp : HasDerivAt (fun t : ℝ => a * t + b * t ^ 2 / 2) (a + b * t) t := by
    convert! ((hasDerivAt_id t).const_mul a).add
      (((hasDerivAt_id t).pow 2).const_mul b |>.div_const 2) using 1
    dsimp
    ring
  convert! (hp.ofReal_comp.mul_const I).cexp using 1

lemma hasDerivAt_chirpSlope (a b t : ℝ) :
    HasDerivAt (chirpSlope a b) ((b : ℂ) * I) t := by
  convert! (((hasDerivAt_id t).const_mul b).const_add a).ofReal_comp.mul_const I using 1
  simp

lemma hasDerivAt_chirpPoly (a b t : ℝ) {n : ℕ} (hn : n < 5) :
    HasDerivAt (fun t => chirp a b t * chirpPoly n (chirpSlope a b t) ((b : ℂ) * I))
      (chirp a b t * chirpPoly (n + 1) (chirpSlope a b t) ((b : ℂ) * I)) t := by
  have he := hasDerivAt_chirp a b t
  have hc := hasDerivAt_chirpSlope a b t
  interval_cases n
  · simpa only [chirpPoly, mul_one] using he
  · simp only [chirpPoly]
    convert! he.mul hc using 1
    ring
  · simp only [chirpPoly]
    convert! he.mul ((hc.pow 2).add_const ((b : ℂ) * I)) using 1
    dsimp
    ring
  · simp only [chirpPoly]
    convert! he.mul ((hc.pow 3).add (hc.const_mul (3 * ((b : ℂ) * I)))) using 1
    dsimp
    ring
  · simp only [chirpPoly]
    convert! he.mul (((hc.pow 4).add ((hc.pow 2).const_mul (6 * ((b : ℂ) * I)))).add_const
      (3 * ((b : ℂ) * I) ^ 2)) using 1
    dsimp
    ring

theorem iteratedDeriv_chirp (a b : ℝ) {n : ℕ} (hn : n ≤ 5) :
    iteratedDeriv n (chirp a b) =
      fun t => chirp a b t * chirpPoly n (chirpSlope a b t) ((b : ℂ) * I) := by
  induction n with
  | zero => ext t; simp [chirpPoly]
  | succ n ih =>
    rw [iteratedDeriv_succ, ih (by omega)]
    funext t
    exact (hasDerivAt_chirpPoly a b t (by omega)).deriv

lemma norm_chirp (a b t : ℝ) : ‖chirp a b t‖ = 1 :=
  Complex.norm_exp_ofReal_mul_I _

lemma norm_chirpSlope (a b t : ℝ) : ‖chirpSlope a b t‖ = |a + b * t| := by
  rw [chirpSlope, norm_mul, Complex.norm_I, mul_one, Complex.norm_real, Real.norm_eq_abs]

theorem norm_chirp_fifth (a b t : ℝ) {c d : ℝ}
    (hc : |a + b * t| ≤ c) (hd : |b| ≤ d) :
    ‖iteratedDeriv 5 (chirp a b) t‖ ≤ c ^ 5 + 10 * d * c ^ 3 + 15 * d ^ 2 * c := by
  have hc0 : 0 ≤ c := (abs_nonneg _).trans hc
  have hd0 : 0 ≤ d := (abs_nonneg _).trans hd
  rw [iteratedDeriv_chirp a b (by omega), norm_mul, norm_chirp, one_mul]
  simp only [chirpPoly]
  refine norm_add₃_le.trans ?_
  simp only [norm_mul, norm_pow, norm_chirpSlope, Complex.norm_I, mul_one,
    Complex.norm_real, Real.norm_eq_abs, Complex.norm_ofNat]
  gcongr

theorem norm_chirp_third (a b t : ℝ) {c d : ℝ}
    (hc : |a + b * t| ≤ c) (hd : |b| ≤ d) :
    ‖iteratedDeriv 3 (chirp a b) t‖ ≤ c ^ 3 + 3 * d * c := by
  have hc0 : 0 ≤ c := (abs_nonneg _).trans hc
  have hd0 : 0 ≤ d := (abs_nonneg _).trans hd
  rw [iteratedDeriv_chirp a b (by omega), norm_mul, norm_chirp, one_mul]
  simp only [chirpPoly]
  refine (norm_add_le _ _).trans ?_
  simp only [norm_mul, norm_pow, norm_chirpSlope, Complex.norm_I, mul_one,
    Complex.norm_real, Real.norm_eq_abs, Complex.norm_ofNat]
  gcongr

end NoFourMUBs.SeedAtlas.Method.WholeBall
