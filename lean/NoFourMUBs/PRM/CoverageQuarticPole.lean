import NoFourMUBs.PRM.CoverageQuarticDefs

/-!
# The pole substitutions of the critical scalar classification

`CRITICAL_STRIP_CLASSIFICATION.md` §4.  With `v = 9 z_σ + g_σ`, clearing denominators,

    h⁸ z_σ³ f(α_σ) = h⁸ (v³ − p v² z_σ + (W + K) v z_σ² − K z_σ³),

and for each of the four boundary values of `K` this is an explicit factored polynomial in `k`.
Its positive zeros are `k = 1`, `k = 1/3` and the root `κ` of `3k³ + k² + k − 1`, with the stated
`K`; every other factor is positive for `k > 0`.
-/

noncomputable section

namespace NoFourMUBs.PRM.Coverage.Quartic

theorem z3f (σ k K : ℝ) (hz : zS σ k ≠ 0) :
    zS σ k ^ 3 * fM k K (alphaS σ k) =
      (9 * zS σ k + gS σ k) ^ 3 - pk k * (9 * zS σ k + gS σ k) ^ 2 * zS σ k +
        (Wk k + K) * (9 * zS σ k + gS σ k) * zS σ k ^ 2 - K * zS σ k ^ 3 := by
  unfold fM alphaS
  field_simp

/-- The numerator `h⁸ z³ f(α)`. -/
def poleNum (σ k K : ℝ) : ℝ :=
  (1 + k ^ 2) ^ 8 * ((9 * zS σ k + gS σ k) ^ 3 - pk k * (9 * zS σ k + gS σ k) ^ 2 * zS σ k +
    (Wk k + K) * (9 * zS σ k + gS σ k) * zS σ k ^ 2 - K * zS σ k ^ 3)

theorem poleNum_eq_zero {σ k K : ℝ} (hz : zS σ k ≠ 0) (hf : fM k K (alphaS σ k) = 0) :
    poleNum σ k K = 0 := by
  rw [poleNum, ← z3f σ k K hz, hf]; ring

section factorizations
variable (k : ℝ)

private theorem hpos : (1 + k ^ 2) ≠ 0 := by positivity

theorem pole_p_min : poleNum 1 k (Kmin k) =
    16 * (3 * k ^ 2 + 2 * k + 3) * (3 * k ^ 2 + 1) ^ 2 * (3 * k ^ 3 - k ^ 2 + k + 1) ^ 2 := by
  have := hpos k
  unfold poleNum zS gS pk Wk qk Jk Kmin hk; field_simp; ring

theorem pole_p_0 : poleNum 1 k (K0 k) =
    16 * (k - 1) * (3 * k + 1) ^ 3 * (k ^ 2 + 1) ^ 2 * (3 * k ^ 2 + 1) ^ 2 := by
  have := hpos k
  unfold poleNum zS gS pk Wk qk Jk K0 hk; field_simp; ring

theorem pole_p_p : poleNum 1 k (Kp k) =
    -64 * k * (3 * k ^ 2 + 2 * k + 3) * (k ^ 2 + 1) ^ 2 * (3 * k ^ 3 - k ^ 2 + k + 1) ^ 2 := by
  have := hpos k
  unfold poleNum zS gS pk Wk qk Jk Kp hk; field_simp; ring

theorem pole_p_n : poleNum 1 k (Kn k) =
    -64 * (k - 1) * k * (3 * k + 1) ^ 3 * (k ^ 2 + 1) ^ 4 := by
  have := hpos k
  unfold poleNum zS gS pk Wk qk Jk Kn hk; field_simp; ring

theorem pole_m_min : poleNum (-1) k (Kmin k) =
    16 * (3 * k ^ 2 - 2 * k + 3) * (3 * k ^ 2 + 1) ^ 2 * (3 * k ^ 3 + k ^ 2 + k - 1) ^ 2 := by
  have := hpos k
  unfold poleNum zS gS pk Wk qk Jk Kmin hk; field_simp; ring

theorem pole_m_0 : poleNum (-1) k (K0 k) =
    16 * (k + 1) * (3 * k - 1) ^ 3 * (k ^ 2 + 1) ^ 2 * (3 * k ^ 2 + 1) ^ 2 := by
  have := hpos k
  unfold poleNum zS gS pk Wk qk Jk K0 hk; field_simp; ring

theorem pole_m_p : poleNum (-1) k (Kp k) =
    64 * k * (k + 1) * (3 * k - 1) ^ 3 * (k ^ 2 + 1) ^ 4 := by
  have := hpos k
  unfold poleNum zS gS pk Wk qk Jk Kp hk; field_simp; ring

theorem pole_m_n : poleNum (-1) k (Kn k) =
    64 * k * (3 * k ^ 2 - 2 * k + 3) * (k ^ 2 + 1) ^ 2 * (3 * k ^ 3 + k ^ 2 + k - 1) ^ 2 := by
  have := hpos k
  unfold poleNum zS gS pk Wk qk Jk Kn hk; field_simp; ring

end factorizations

theorem Kn_sub_Kmin (k : ℝ) :
    Kn k - Kmin k = (3 * k ^ 2 - 2 * k + 3) * (3 * k ^ 3 + k ^ 2 + k - 1) ^ 2 / (1 + k ^ 2) ^ 4 := by
  have : (1 + k ^ 2) ≠ 0 := by positivity
  unfold Kn Kmin hk; field_simp; ring

/-- **Reading the positive zeros of a pole numerator** on the four boundary values of `K`. -/
theorem candidates_of_poleNum {σ k K : ℝ} (hσ : σ = 1 ∨ σ = -1) (hk : 0 < k)
    (hK : K = Kmin k ∨ K = K0 k ∨ K = Kp k ∨ K = Kn k) (h0 : poleNum σ k K = 0) : Candidates k K := by
  have q1 : 0 < 3 * k ^ 2 + 1 := by positivity
  have q2 : 0 < 3 * k ^ 2 + 2 * k + 3 := by positivity
  have q3 : 0 < 3 * k ^ 2 - 2 * k + 3 := by nlinarith [sq_nonneg (k - 1 / 3)]
  have q4 : 0 < 3 * k ^ 3 - k ^ 2 + k + 1 := by nlinarith [sq_nonneg (k - 1 / 6), mul_pos hk hk]
  have q5 : 0 < k ^ 2 + 1 := by positivity
  have q6 : 0 < 3 * k + 1 := by linarith
  have q7 : 0 < k + 1 := by linarith
  rcases hσ with rfl | rfl <;> rcases hK with rfl | rfl | rfl | rfl
  · rw [pole_p_min] at h0
    exfalso; have : (0 : ℝ) < 16 * (3 * k ^ 2 + 2 * k + 3) * (3 * k ^ 2 + 1) ^ 2 *
      (3 * k ^ 3 - k ^ 2 + k + 1) ^ 2 := by positivity
    linarith
  · rw [pole_p_0] at h0
    have : k - 1 = 0 := by
      by_contra hne
      have : (16 * (3 * k + 1) ^ 3 * (k ^ 2 + 1) ^ 2 * (3 * k ^ 2 + 1) ^ 2) * (k - 1) ≠ 0 :=
        mul_ne_zero (by positivity) hne
      exact this (by linarith)
    have hk1 : k = 1 := by linarith
    subst hk1
    right; right; refine ⟨rfl, ?_⟩; norm_num [K0, Quartic.hk]
  · rw [pole_p_p] at h0
    exfalso; have : (0 : ℝ) < 64 * k * (3 * k ^ 2 + 2 * k + 3) * (k ^ 2 + 1) ^ 2 *
      (3 * k ^ 3 - k ^ 2 + k + 1) ^ 2 := by positivity
    linarith
  · rw [pole_p_n] at h0
    have : k - 1 = 0 := by
      by_contra hne
      have : (64 * k * (3 * k + 1) ^ 3 * (k ^ 2 + 1) ^ 4) * (k - 1) ≠ 0 :=
        mul_ne_zero (by positivity) hne
      exact this (by linarith)
    have hk1 : k = 1 := by linarith
    subst hk1
    right; right; refine ⟨rfl, ?_⟩; norm_num [Kn, Quartic.hk]
  · rw [pole_m_min] at h0
    have : 3 * k ^ 3 + k ^ 2 + k - 1 = 0 := by
      by_contra hne
      have hA : (0 : ℝ) < 16 * (3 * k ^ 2 - 2 * k + 3) * (3 * k ^ 2 + 1) ^ 2 := by positivity
      have hs : (0 : ℝ) < (3 * k ^ 3 + k ^ 2 + k - 1) ^ 2 :=
        lt_of_le_of_ne (sq_nonneg _) (Ne.symm (pow_ne_zero 2 hne))
      have := mul_pos hA hs
      linarith
    exact Or.inl ⟨this, rfl⟩
  · rw [pole_m_0] at h0
    have : 3 * k - 1 = 0 := by
      by_contra hne
      have : (16 * (k + 1) * (k ^ 2 + 1) ^ 2 * (3 * k ^ 2 + 1) ^ 2) * (3 * k - 1) ^ 3 ≠ 0 :=
        mul_ne_zero (by positivity) (pow_ne_zero 3 hne)
      exact this (by linarith)
    have hk1 : k = 1 / 3 := by linarith
    subst hk1
    right; left; refine ⟨rfl, ?_⟩; norm_num [K0, Quartic.hk]
  · rw [pole_m_p] at h0
    have : 3 * k - 1 = 0 := by
      by_contra hne
      have : (64 * k * (k + 1) * (k ^ 2 + 1) ^ 4) * (3 * k - 1) ^ 3 ≠ 0 :=
        mul_ne_zero (by positivity) (pow_ne_zero 3 hne)
      exact this (by linarith)
    have hk1 : k = 1 / 3 := by linarith
    subst hk1
    right; left; refine ⟨rfl, ?_⟩; norm_num [Kp, Quartic.hk]
  · rw [pole_m_n] at h0
    have hκ : 3 * k ^ 3 + k ^ 2 + k - 1 = 0 := by
      by_contra hne
      have : (64 * k * (3 * k ^ 2 - 2 * k + 3) * (k ^ 2 + 1) ^ 2) *
          (3 * k ^ 3 + k ^ 2 + k - 1) ^ 2 ≠ 0 :=
        mul_ne_zero (by positivity) (pow_ne_zero 2 hne)
      exact this (by linarith)
    refine Or.inl ⟨hκ, ?_⟩
    have := Kn_sub_Kmin k
    rw [hκ] at this
    simp at this
    linarith

/-- **§4, the pole substitutions.** -/
theorem poleClassification : PoleClassification := by
  intro σ k K hσ hk hK hz hf
  exact candidates_of_poleNum hσ hk hK (poleNum_eq_zero hz hf)

end NoFourMUBs.PRM.Coverage.Quartic
