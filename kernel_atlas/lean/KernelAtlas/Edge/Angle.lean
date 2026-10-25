import KernelAtlas.Edge.SideContinuity

/-! The checked argument window gives a unique continuous real phase lift. -/

open Complex Set NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

def argRadius (h : List ℕ) (a : ℤ) (T : CT) : ℕ :=
  ((T.cg 0).1 - a).natAbs + Lsum h T + T.ρ

lemma has_argRadius {h : List ℕ} {u : Fin 4 → ℝ} (hu : InBox h u)
    {T : CT} {x : ℝ} (hT : T.Has u (x : ℂ)) (a : ℤ) :
    |x - rq a| ≤ rn (argRadius h a T) := by
  have hm := (Complex.abs_re_le_norm ((x : ℂ) - cz (T.cg 0))).trans (norm_sub_c_le hu hT)
  have hc_re : (cz (T.cg 0)).re = rq (T.cg 0).1 := by
    rw [cz_eq]
    simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.ofReal_im,
      Complex.I_re, Complex.I_im]
    unfold rq
    ring
  simp only [Complex.sub_re, Complex.ofReal_re, hc_re] at hm
  have hc : |rq (T.cg 0).1 - rq a| = rn ((T.cg 0).1 - a).natAbs := by
    unfold rq rn
    rw [← sub_div, abs_div, abs_of_pos (two_pow_pos pp), Nat.cast_natAbs, Int.cast_abs, Int.cast_sub]
  calc |x - rq a| ≤ |x - rq (T.cg 0).1| + |rq (T.cg 0).1 - rq a| := abs_sub_le _ _ _
    _ ≤ rn (Lsum h T + T.ρ) + rn ((T.cg 0).1 - a).natAbs := by rw [hc]; exact add_le_add hm le_rfl
    _ = rn (argRadius h a T) := by simp only [argRadius, rn_add]; ring

/-- The integer slack in `argWin` covers the error in the rounded value of π/3. -/
lemma argRadius_lt_pi {h : List ℕ} {a : ℤ} {T : CT} (hok : argWin h a T = true) :
    rn (argRadius h a T) < Real.pi := by
  have hn : argRadius h a T + 4 < 3 * pi3Z.natAbs := of_decide_eq_true hok
  have hnat : (pi3Z.natAbs : ℝ) = (pi3Z : ℝ) := by norm_num [pi3Z]
  have hn' : (argRadius h a T : ℝ) + 4 < 3 * (pi3Z : ℝ) := by
    have H := Nat.cast_lt (α := ℝ).mpr hn
    simpa only [Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat, hnat] using H
  have hp := pi3_bound
  rw [abs_le] at hp
  have hT := two_pow_pos pp
  have hpi : (pi3Z : ℝ) ≤ Real.pi / 3 * 2 ^ pp + 1 := by
    have H := (div_le_iff₀ hT).mp (show (pi3Z : ℝ) / 2 ^ pp ≤ Real.pi / 3 + 1 / 2 ^ pp by linarith)
    rw [add_mul, div_mul_cancel₀ _ (ne_of_gt hT)] at H
    exact H
  unfold rn
  apply (div_lt_iff₀ hT).2
  nlinarith

/-- Any phase lift in a fixed window narrower than 2π is continuous. -/
theorem continuous_phase_lift {P : Type*} [TopologicalSpace P] (z : P → ℂ)
    (hz : Continuous z) (φ : P → ℝ) (a r : ℝ) (hr : r < Real.pi)
    (hmem : ∀ p, φ p ∈ Icc (a - r) (a + r))
    (hexp : ∀ p, exp ((φ p : ℂ) * I) = z p) : Continuous φ := by
  let K := Icc (a - r) (a + r)
  let : CompactSpace K := isCompact_iff_compactSpace.mp isCompact_Icc
  let f : P → K := fun p => ⟨φ p, hmem p⟩
  let F : P × K → ℂ := fun q => exp ((q.2.1 : ℂ) * I) - z q.1
  have hF : Continuous F := by dsimp only [F]; fun_prop
  have hf : Continuous f := continuous_unique_zero F hF f fun p x => by
    constructor
    · intro hx
      apply Subtype.ext
      apply Circle.exp_injOn_Icc (a := a - r) (b := a + r) (by linarith) x.2 (hmem p)
      apply Subtype.ext
      change exp ((x.1 : ℂ) * I) = exp ((φ p : ℂ) * I)
      exact (sub_eq_zero.mp hx).trans (hexp p).symm
    · intro hx
      subst x
      exact sub_eq_zero.mpr (hexp p)
  exact continuous_subtype_val.comp hf

end NoFourMUBs.KernelAtlas.Edge
