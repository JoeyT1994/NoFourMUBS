import Mathlib.Analysis.Complex.Exponential
import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Data.Rat.Floor

/-!
# Kernel-checkable enclosures of `cos` and `sin` at rational points

For `x : ℚ`, `taylorCS x n = (C, S)` is the exact rational Taylor polynomial of `exp(ix)` of order `n`:
`Σ_{m<n} (ix)^m/m! = C + iS`.  `cisRound x n p = (c, s)` rounds it to the dyadic grid `2^{-p}`.

**Soundness** (`cisRound_spec`): if `|x|/(n+1) ≤ 1/2` then

  `‖exp(ix) − (c + is)/2^p‖ ≤ |x|^n/n!·2 + 2^{-p}`,

and hence `|cos x − c/2^p|` and `|sin x − s/2^p|` obey the same bound (`cos_encl`, `sin_encl`).  The remainder is
Mathlib's `Complex.exp_bound'`.  For `|x| ≤ 8`, `n = 60` gives a remainder below `10⁻²⁷`; for `|x| ≤ π`, `n = 30`
gives `< 10⁻¹⁷`.

Everything is computable over `ℚ`/`ℤ` (written with `Nat.rec`), so concrete instances are decided by
`decide +kernel`.  The rounding keeps the stored integers at `p + 1` bits regardless of `n`.
-/

namespace NoFourMUBs.KernelAtlas

open Complex Finset

/-- One Taylor step: state `(tᵣ, tᵢ, sᵣ, sᵢ)` with term `(ix)^m/m! = tᵣ + i tᵢ` and partial sum `sᵣ + i sᵢ`. -/
def taylorStep (x : ℚ) (m : ℕ) (s : ℚ × ℚ × ℚ × ℚ) : ℚ × ℚ × ℚ × ℚ :=
  (-s.2.1 * x / (m + 1), s.1 * x / (m + 1), s.2.2.1 + s.1, s.2.2.2 + s.2.1)

/-- The state after `n` steps. -/
def taylorState (x : ℚ) (n : ℕ) : ℚ × ℚ × ℚ × ℚ :=
  Nat.rec (motive := fun _ => ℚ × ℚ × ℚ × ℚ) (1, 0, 0, 0) (fun m s => taylorStep x m s) n

/-- `(C, S)` with `Σ_{m<n} (ix)^m/m! = C + iS`. -/
def taylorCS (x : ℚ) (n : ℕ) : ℚ × ℚ := ((taylorState x n).2.2.1, (taylorState x n).2.2.2)

/-- The remainder bound `|x|^n/n!·2` of `Complex.exp_bound'`. -/
def cisRem (x : ℚ) (n : ℕ) : ℚ := |x| ^ n / (Nat.factorial n : ℚ) * 2

/-- `⌊q·2^p + 1/2⌋`, computed as `num / den`. -/
def rnd (q : ℚ) (p : ℕ) : ℤ := (q * (2 : ℚ) ^ p + 1 / 2).num / ((q * (2 : ℚ) ^ p + 1 / 2).den : ℤ)

/-- The rounded enclosure `(c, s)`: `exp(ix) ≈ (c + is)/2^p`. -/
def cisRound (x : ℚ) (n p : ℕ) : ℤ × ℤ := (rnd (taylorCS x n).1 p, rnd (taylorCS x n).2 p)

/-! ### Soundness -/

lemma taylorState_spec (x : ℚ) (n : ℕ) :
    ((taylorState x n).1 : ℂ) + ((taylorState x n).2.1 : ℂ) * I = ((x : ℂ) * I) ^ n / (n.factorial : ℂ) ∧
    ((taylorState x n).2.2.1 : ℂ) + ((taylorState x n).2.2.2 : ℂ) * I =
      ∑ m ∈ range n, ((x : ℂ) * I) ^ m / (m.factorial : ℂ) := by
  induction n with
  | zero => simp [taylorState]
  | succ n ih =>
    obtain ⟨h1, h2⟩ := ih
    have hs : taylorState x (n + 1) = taylorStep x n (taylorState x n) := rfl
    rw [hs]
    set s := taylorState x n
    simp only [taylorStep]
    constructor
    · have hf : ((n + 1).factorial : ℂ) = (n + 1) * (n.factorial : ℂ) := by
        rw [Nat.factorial_succ]; push_cast; ring
      have hn : (n.factorial : ℂ) ≠ 0 := by exact_mod_cast Nat.factorial_ne_zero n
      have hn1 : ((n : ℂ) + 1) ≠ 0 := by exact_mod_cast Nat.succ_ne_zero n
      rw [show ((x : ℂ) * I) ^ (n + 1) / ((n + 1).factorial : ℂ) =
          ((x : ℂ) * I) ^ n / (n.factorial : ℂ) * ((x : ℂ) * I / ((n : ℂ) + 1)) by
        rw [hf, pow_succ, div_mul_div_comm, mul_comm ((n : ℂ) + 1)]]
      rw [← h1]; push_cast
      linear_combination (-(s.2.1 : ℂ) * (x : ℂ) / ((n : ℂ) + 1)) * Complex.I_sq
    · rw [sum_range_succ, ← h2, ← h1]
      push_cast
      ring

lemma taylorCS_spec (x : ℚ) (n : ℕ) :
    ((taylorCS x n).1 : ℂ) + ((taylorCS x n).2 : ℂ) * I = ∑ m ∈ range n, ((x : ℂ) * I) ^ m / (m.factorial : ℂ) :=
  (taylorState_spec x n).2

/-- Taylor remainder for `exp(ix)`. -/
theorem taylorCS_err (x : ℚ) (n : ℕ) (hx : |(x : ℝ)| / (n + 1) ≤ 1 / 2) :
    ‖Complex.exp ((x : ℝ) * I) - (((taylorCS x n).1 : ℂ) + ((taylorCS x n).2 : ℂ) * I)‖ ≤ (cisRem x n : ℝ) := by
  have hnorm : ‖((x : ℂ) * I)‖ = |(x : ℝ)| := by
    rw [norm_mul, Complex.norm_I, mul_one]
    have : ((x : ℂ)) = (((x : ℝ)) : ℂ) := by push_cast; rfl
    rw [this, Complex.norm_real, Real.norm_eq_abs]
  have hb := Complex.exp_bound' (x := (x : ℂ) * I) (n := n) (by
    rw [hnorm]; simpa [Nat.succ_eq_add_one] using hx)
  rw [taylorCS_spec]
  have hc : ((x : ℝ) : ℂ) = (x : ℂ) := by push_cast; rfl
  rw [hc]
  refine hb.trans (le_of_eq ?_)
  rw [hnorm, cisRem]; push_cast; rfl

lemma rnd_eq_floor (q : ℚ) (p : ℕ) : rnd q p = ⌊q * (2 : ℚ) ^ p + 1 / 2⌋ := by
  rw [rnd, Rat.floor_def']

/-- Rounding error: `|q − rnd q p / 2^p| ≤ 2^{-(p+1)}`. -/
lemma rnd_err (q : ℚ) (p : ℕ) : |(q : ℝ) - (rnd q p : ℝ) / 2 ^ p| ≤ 1 / 2 ^ (p + 1) := by
  rw [rnd_eq_floor]
  have h1 := Int.floor_le (q * (2 : ℚ) ^ p + 1 / 2)
  have h2 := Int.lt_floor_add_one (q * (2 : ℚ) ^ p + 1 / 2)
  set f := ⌊q * (2 : ℚ) ^ p + 1 / 2⌋
  have h1' := (Rat.cast_le (K := ℝ)).mpr h1
  have h2' := (Rat.cast_lt (K := ℝ)).mpr h2
  push_cast at h1' h2' 
  have hp : (0 : ℝ) < 2 ^ p := by positivity
  rw [abs_le, pow_succ]
  constructor
  · rw [neg_le, neg_sub, sub_le_iff_le_add, div_le_iff₀ hp]
    have : 1 / (2 ^ p * 2) * 2 ^ p = (1 : ℝ) / 2 := by field_simp
    rw [add_mul, this]; linarith
  · rw [sub_le_iff_le_add, ← sub_le_iff_le_add', le_div_iff₀ hp]
    have : 1 / (2 ^ p * 2) * 2 ^ p = (1 : ℝ) / 2 := by field_simp
    rw [sub_mul, this]; linarith

lemma norm_le_abs_re_add_abs_im' (a b : ℝ) : ‖(a : ℂ) + (b : ℂ) * I‖ ≤ |a| + |b| := by
  refine (norm_add_le _ _).trans (le_of_eq ?_)
  rw [norm_mul, Complex.norm_I, mul_one, Complex.norm_real, Complex.norm_real, Real.norm_eq_abs, Real.norm_eq_abs]

/-- **Soundness of the rounded enclosure.** -/
theorem cisRound_spec (x : ℚ) (n p : ℕ) (hx : |(x : ℝ)| / (n + 1) ≤ 1 / 2) :
    ‖Complex.exp ((x : ℝ) * I) - (((cisRound x n p).1 : ℂ) + ((cisRound x n p).2 : ℂ) * I) / 2 ^ p‖ ≤
      (cisRem x n : ℝ) + 1 / 2 ^ p := by
  set C := (taylorCS x n).1
  set S := (taylorCS x n).2
  have ht := taylorCS_err x n hx
  have hr : ‖((C : ℂ) + (S : ℂ) * I) - (((cisRound x n p).1 : ℂ) + ((cisRound x n p).2 : ℂ) * I) / 2 ^ p‖ ≤
      1 / 2 ^ p := by
    have e : ((C : ℂ) + (S : ℂ) * I) - (((cisRound x n p).1 : ℂ) + ((cisRound x n p).2 : ℂ) * I) / 2 ^ p =
        (((C : ℝ) - (rnd C p : ℝ) / 2 ^ p : ℝ) : ℂ) + (((S : ℝ) - (rnd S p : ℝ) / 2 ^ p : ℝ) : ℂ) * I := by
      simp only [cisRound, C, S]; push_cast; ring
    rw [e]
    refine (norm_le_abs_re_add_abs_im' _ _).trans ?_
    have := rnd_err C p; have := rnd_err S p
    have h2 : (1 : ℝ) / 2 ^ (p + 1) + 1 / 2 ^ (p + 1) = 1 / 2 ^ p := by rw [pow_succ]; field_simp; norm_num
    linarith
  calc _ ≤ ‖Complex.exp ((x : ℝ) * I) - ((C : ℂ) + (S : ℂ) * I)‖ +
        ‖((C : ℂ) + (S : ℂ) * I) - (((cisRound x n p).1 : ℂ) + ((cisRound x n p).2 : ℂ) * I) / 2 ^ p‖ :=
          norm_sub_le_norm_sub_add_norm_sub _ _ _
    _ ≤ _ := add_le_add ht hr

/-- `cos` enclosure. -/
theorem cos_encl (x : ℚ) (n p : ℕ) (hx : |(x : ℝ)| / (n + 1) ≤ 1 / 2) :
    |Real.cos x - ((cisRound x n p).1 : ℝ) / 2 ^ p| ≤ (cisRem x n : ℝ) + 1 / 2 ^ p := by
  refine le_trans ?_ (cisRound_spec x n p hx)
  refine le_trans (le_of_eq ?_) (Complex.abs_re_le_norm _)
  congr 1
  rw [Complex.sub_re, Complex.exp_ofReal_mul_I_re]
  have e : (((cisRound x n p).1 : ℂ) + ((cisRound x n p).2 : ℂ) * I) / 2 ^ p =
      ((((cisRound x n p).1 : ℝ) / 2 ^ p : ℝ) : ℂ) + ((((cisRound x n p).2 : ℝ) / 2 ^ p : ℝ) : ℂ) * I := by
    push_cast; ring
  rw [e, Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, Complex.I_re,
    Complex.I_im]; ring

/-- `sin` enclosure. -/
theorem sin_encl (x : ℚ) (n p : ℕ) (hx : |(x : ℝ)| / (n + 1) ≤ 1 / 2) :
    |Real.sin x - ((cisRound x n p).2 : ℝ) / 2 ^ p| ≤ (cisRem x n : ℝ) + 1 / 2 ^ p := by
  refine le_trans ?_ (cisRound_spec x n p hx)
  refine le_trans (le_of_eq ?_) (Complex.abs_im_le_norm _)
  congr 1
  rw [Complex.sub_im, Complex.exp_ofReal_mul_I_im]
  have e : (((cisRound x n p).1 : ℂ) + ((cisRound x n p).2 : ℂ) * I) / 2 ^ p =
      ((((cisRound x n p).1 : ℝ) / 2 ^ p : ℝ) : ℂ) + ((((cisRound x n p).2 : ℝ) / 2 ^ p : ℝ) : ℂ) * I := by
    push_cast; ring
  rw [e, Complex.add_im, Complex.ofReal_im, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im, Complex.I_re,
    Complex.I_im]; ring

/-- `exp(ia)` is `1`-Lipschitz in `a`. -/
lemma norm_exp_mul_I_sub_le (a b : ℝ) : ‖Complex.exp (a * I) - Complex.exp (b * I)‖ ≤ |a - b| := by
  have e : Complex.exp (a * I) - Complex.exp (b * I) = Complex.exp (b * I) * (Complex.exp (I * ((a - b : ℝ) : ℂ)) - 1) := by
    rw [mul_sub, ← Complex.exp_add, mul_one]; push_cast; ring_nf
  rw [e, norm_mul, Complex.norm_exp_ofReal_mul_I, one_mul]
  exact (Real.norm_exp_I_mul_ofReal_sub_one_le).trans (le_of_eq (Real.norm_eq_abs _))

/-! ### A sample: `cos 1` and `sin 1` to `2^{-60}` by the kernel -/

/-- Kernel check of the side condition and the error bound for `x = 1`, `n = 30`, `p = 60`. -/
theorem sample_ok : (|(1 : ℚ)| / 31 ≤ 1 / 2 ∧ cisRem 1 30 + 1 / 2 ^ 60 ≤ 1 / 2 ^ 59) := by decide +kernel

end NoFourMUBs.KernelAtlas
