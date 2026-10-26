import KernelAtlas.WholeBall.Interval
import KernelAtlas.Trig
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds

/-! A centre-only complex exponential enclosure from an exact rational phase
interval. The phase uncertainty is propagated with the unit-circle Lipschitz
bound, and the centre value uses the existing kernel Taylor checker. -/

open Complex
namespace NoFourMUBs.KernelAtlas.WholeBall

lemma exp_phase_lipschitz (a b : ℝ) :
    ‖Complex.exp ((a : ℂ) * I) - Complex.exp ((b : ℂ) * I)‖ ≤ |a - b| := by
  have he : Complex.exp ((a : ℂ) * I) - Complex.exp ((b : ℂ) * I) =
      Complex.exp ((b : ℂ) * I) * (Complex.exp (((a - b : ℝ) : ℂ) * I) - 1) := by
    rw [mul_sub, ← Complex.exp_add, mul_one]
    congr 2
    push_cast
    ring
  rw [he, norm_mul, Complex.norm_exp_ofReal_mul_I, one_mul]
  simpa only [mul_comm I, Real.norm_eq_abs] using
    (Real.norm_exp_I_mul_ofReal_sub_one_le (x := a - b))

def RealInterval.cisCheck (A : RealInterval) (n : ℕ) : Bool :=
  decide (|A.mid| / ((n : ℚ) + 1) ≤ 1 / 2)

def RealInterval.cos (A : RealInterval) (n p : ℕ) : RealInterval :=
  ⟨(cisRound A.mid n p).1 / (2 : ℚ) ^ p, A.rad + cisRem A.mid n + 1 / (2 : ℚ) ^ p⟩

def RealInterval.sin (A : RealInterval) (n p : ℕ) : RealInterval :=
  ⟨(cisRound A.mid n p).2 / (2 : ℚ) ^ p, A.rad + cisRem A.mid n + 1 / (2 : ℚ) ^ p⟩

lemma RealInterval.cis_error {A : RealInterval} {a : ℝ} (ha : A.Has a)
    {n : ℕ} (h : A.cisCheck n = true) (p : ℕ) :
    ‖Complex.exp ((a : ℂ) * I) -
      (((cisRound A.mid n p).1 : ℂ) + ((cisRound A.mid n p).2 : ℂ) * I) / 2 ^ p‖ ≤
      ((A.rad + cisRem A.mid n + 1 / (2 : ℚ) ^ p : ℚ) : ℝ) := by
  have hx : |(A.mid : ℝ)| / ((n : ℝ) + 1) ≤ 1 / 2 := by
    have hh : |A.mid| / ((n : ℚ) + 1) ≤ 1 / 2 := of_decide_eq_true h
    have hh' : ((|A.mid| / ((n : ℚ) + 1) : ℚ) : ℝ) ≤ ((1/2 : ℚ) : ℝ) := by
      exact_mod_cast hh
    push_cast at hh'
    exact hh'
  have he := cisRound_spec A.mid n p hx
  have hd := (exp_phase_lipschitz a (A.mid : ℝ)).trans ha
  apply (norm_sub_le_norm_sub_add_norm_sub _ (Complex.exp (((A.mid : ℝ) : ℂ) * I)) _).trans
  push_cast at he hd ⊢
  linarith

lemma RealInterval.Has.cos {A : RealInterval} {a : ℝ} (ha : A.Has a)
    {n : ℕ} (h : A.cisCheck n = true) (p : ℕ) :
    (A.cos n p).Has (Complex.exp ((a : ℂ) * I)).re := by
  have hh := (Complex.abs_re_le_norm _).trans (RealInterval.cis_error ha h p)
  have he : (2 : ℂ) ^ p = (((2 : ℝ) ^ p : ℝ) : ℂ) := by simp
  rw [he, Complex.sub_re, Complex.div_ofReal_re] at hh
  simpa [RealInterval.Has, RealInterval.cos] using hh

lemma RealInterval.Has.sin {A : RealInterval} {a : ℝ} (ha : A.Has a)
    {n : ℕ} (h : A.cisCheck n = true) (p : ℕ) :
    (A.sin n p).Has (Complex.exp ((a : ℂ) * I)).im := by
  have hh := (Complex.abs_im_le_norm _).trans (RealInterval.cis_error ha h p)
  have he : (2 : ℂ) ^ p = (((2 : ℝ) ^ p : ℝ) : ℂ) := by simp
  rw [he, Complex.sub_im, Complex.div_ofReal_im] at hh
  simpa [RealInterval.Has, RealInterval.sin] using hh

end NoFourMUBs.KernelAtlas.WholeBall
