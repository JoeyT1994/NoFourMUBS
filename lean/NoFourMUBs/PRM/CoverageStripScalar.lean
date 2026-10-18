import NoFourMUBs.PRM.CoverageStripBlock
import NoFourMUBs.PRM.CoverageTenKappa

/-!
# Critical strip classification (I4): the scalar layer of the nonzero-`J` stratum

* `param_of_reduction`: the critical corner reduction (`criticalCorner_nonzeroJ`) with `J > 0` is the
  rational parametrisation `p = 9 − 4/h`, `J = 8k/h²`, `W = q(q² − 8q + 18)/2` of
  `CRITICAL_STRIP_CLASSIFICATION.md` §3, with `k = 2J/(9 − p)² > 0`, `h = 1 + k²`, `q = 4/h`.
* `theta_param_pos/neg`: the two halves have `g_± = 3q ± J`, `z_± = −2(1 ± k)/h`.
* `kmin_le`, `disc_nonneg`: physical data satisfy `K ≥ J²/4 = K_min` and the modulus-cubic
  discriminant `−4(K − K₀)(K − K₊)(K − K₋)` is `≥ 0` (paper (8)).
* `pole_K`: at a pole, `K ∈ {K_min, K₀, K₊, K₋}` (paper §4).
* `conclusion_of_candidates`: the three candidates give `17/3 < p < 29/5`, the equicorrelation
  endpoint (`X = Y = Z = 9/5`, `|J| = 54/25`) or the `p = 7` endpoint (`{X, Y, Z} = {1, 1, 5}`,
  `|J| = 2`); the moduli are read off the modulus cubic at those `(k, K)`.
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

open Quartic

theorem hk_pos (k : ℝ) : 0 < hk k := by unfold hk; positivity

/-- **The nonzero-`J` parametrisation.** -/
theorem param_of_reduction {p J W : ℝ} (_h5 : 5 < p) (h9 : p < 9)
    (hJ2 : J ^ 2 = (9 - p) ^ 3 * (p - 5) / 4) (hW : W = -(p - 9) * (p ^ 2 - 10 * p + 27) / 2)
    (hJ : 0 < J) :
    0 < 2 * J / (9 - p) ^ 2 ∧ p = pk (2 * J / (9 - p) ^ 2) ∧ J = Jk (2 * J / (9 - p) ^ 2) ∧
      W = Wk (2 * J / (9 - p) ^ 2) := by
  have hq0 : 0 < 9 - p := by linarith
  have hJ2' : 4 * J ^ 2 = (9 - p) ^ 3 * (4 - (9 - p)) := by rw [hJ2]; ring
  have hh : hk (2 * J / (9 - p) ^ 2) * (9 - p) = 4 := by
    unfold hk; rw [div_pow]; field_simp; linear_combination hJ2'
  have hh' : hk (2 * J / (9 - p) ^ 2) = 4 / (9 - p) := by
    rw [eq_div_iff hq0.ne']; exact hh
  have hq : qk (2 * J / (9 - p) ^ 2) = 9 - p := by
    rw [qk, hh']; field_simp
  refine ⟨by positivity, ?_, ?_, ?_⟩
  · rw [pk, hq]; ring
  · rw [Jk, hh']; field_simp; norm_num
  · rw [Wk, hq, hW]; ring

theorem pk_eq_pStar (k : ℝ) : pk k = CoverageTen.pStar k := by
  simp only [pk, qk, hk, CoverageTen.pStar]

/-- `g_±` and `z_±` of the two halves. -/
theorem theta_param {k σ g χ : ℝ} (hk0 : 0 < k) (hσ : σ = 1 ∨ σ = -1)
    (hg : g = 27 - 3 * pk k + σ * Jk k)
    (hχ : χ = Wk k - (pk k - 9) * (pk k - 18) + (pk k - 15) * (σ * Jk k)) :
    g = Quartic.gS σ k ∧ χ / (2 * g) = zS σ k := by
  have hh := hk_pos k
  have hg' : g = Quartic.gS σ k := by
    rw [hg, Quartic.gS, pk, qk]; ring
  refine ⟨hg', ?_⟩
  have hpos : 0 < 3 * k ^ 2 + 2 * σ * k + 3 := by
    rcases hσ with rfl | rfl <;> nlinarith
  have hg2 : g = 4 * (3 * k ^ 2 + 2 * σ * k + 3) / hk k ^ 2 := by
    rw [hg']; unfold Quartic.gS qk Jk hk
    rcases hσ with rfl | rfl <;> (field_simp; ring)
  rw [div_eq_iff (by rw [hg2]; positivity), hχ, hg2]
  simp only [zS, Wk, pk, Jk, qk]
  have hh0 : hk k ≠ 0 := hh.ne'
  rcases hσ with rfl | rfl <;> (field_simp; unfold hk; ring)

/-- `K_min = J²/4`. -/
theorem kmin_eq (k : ℝ) : Kmin k = Jk k ^ 2 / 4 := by
  have h0 : hk k ≠ 0 := (hk_pos k).ne'
  rw [Kmin, Jk, div_pow, mul_pow, ← pow_mul]
  field_simp
  ring

theorem kmin_le {B : Mat3} {k : ℝ} (hJ : blockJ B ^ 2 = Jk k ^ 2) : Kmin k ≤ blockK B := by
  rw [kmin_eq, ← hJ]; linarith [blockJ_sq_le B]

/-- The modulus-cubic discriminant in `(k, K)`. -/
theorem disc_eq {B : Mat3} {k : ℝ} (hp : blockP B = pk k) (hW : blockW B = Wk k) :
    ((blockX B - blockY B) * (blockX B - blockZ B) * (blockY B - blockZ B)) ^ 2 =
      -4 * ((blockK B - K0 k) * (blockK B - Kp k) * (blockK B - Kn k)) := by
  rw [modulus_disc, hp, hW]
  have h0 : (1 + k ^ 2) ≠ 0 := by positivity
  simp only [pk, qk, Wk, K0, Kp, Kn, hk]
  field_simp
  ring

theorem disc_nonneg {B : Mat3} {k : ℝ} (hp : blockP B = pk k) (hW : blockW B = Wk k) :
    0 ≤ -((blockK B - K0 k) * (blockK B - Kp k) * (blockK B - Kn k)) := by
  have h := disc_eq hp hW
  nlinarith [sq_nonneg ((blockX B - blockY B) * (blockX B - blockZ B) * (blockY B - blockZ B))]

/-- `Im w = 0` forces `K = J²/4`. -/
theorem blockK_of_im {B : Mat3} (h : (blockWc B).im = 0) : blockK B = blockJ B ^ 2 / 4 := by
  rw [blockK_eq_normSq, Complex.normSq_apply, h, blockJ_eq]; ring

/-- **Pole values of `K`** (`CRITICAL_STRIP_CLASSIFICATION.md` §4). -/
theorem pole_K {B : Mat3} {k : ℝ} (hp : blockP B = pk k) (hW : blockW B = Wk k)
    (hJ : blockJ B ^ 2 = Jk k ^ 2)
    (h : (blockWc B).im = 0 ∨
      (blockX B - blockY B) * (blockX B - blockZ B) * (blockY B - blockZ B) = 0) :
    blockK B = Kmin k ∨ blockK B = K0 k ∨ blockK B = Kp k ∨ blockK B = Kn k := by
  rcases h with h | h
  · left; rw [blockK_of_im h, hJ, kmin_eq]
  · have e := disc_eq hp hW
    rw [h] at e
    have : (blockK B - K0 k) * (blockK B - Kp k) * (blockK B - Kn k) = 0 := by linarith
    rcases mul_eq_zero.1 this with h1 | h1
    · rcases mul_eq_zero.1 h1 with h2 | h2
      · right; left; linarith
      · right; right; left; linarith
    · right; right; right; linarith

/-- The moduli are roots of `fM k K`. -/
theorem fM_mod {B : Mat3} {k : ℝ} (hp : blockP B = pk k) (hW : blockW B = Wk k) (j : Fin 3) :
    fM k (blockK B) (blockMod B j) = 0 := by
  have := modulus_cubic_root B j
  rw [hp, hW] at this
  rw [fM]; linarith

/-! ### The candidates -/

theorem cubic_third (T : ℝ) :
    fM (1 / 3) (729 / 125) T = (T - 9 / 5) ^ 3 := by
  simp only [fM, pk, qk, Wk, hk]; norm_num; ring

theorem cubic_one (T : ℝ) : fM 1 5 T = (T - 1) ^ 2 * (T - 5) := by
  simp only [fM, pk, qk, Wk, hk]; norm_num; ring

theorem mod_of_cubic {B : Mat3} {k : ℝ} (hp : blockP B = pk k) (hW : blockW B = Wk k) :
    fM k (blockK B) (blockX B) = 0 ∧ fM k (blockK B) (blockY B) = 0 ∧ fM k (blockK B) (blockZ B) = 0 :=
  ⟨fM_mod hp hW 2, fM_mod hp hW 1, fM_mod hp hW 0⟩

/-- **The candidates give the conclusion of `TopStripClassification`.** -/
theorem conclusion_of_candidates {B : Mat3} {k : ℝ} (hk0 : 0 < k) (hp : blockP B = pk k)
    (hJ : |blockJ B| = Jk k) (hW : blockW B = Wk k) (hc : Candidates k (blockK B)) :
    ((17 : ℝ) / 3 < blockP B ∧ blockP B < (29 : ℝ) / 5) ∨ EquiEndpoint B ∨ P7Endpoint B := by
  obtain ⟨fX, fY, fZ⟩ := mod_of_cubic hp hW
  rcases hc with ⟨hc, -⟩ | ⟨rfl, hK⟩ | ⟨rfl, hK⟩
  · left; rw [hp, pk_eq_pStar]; exact CoverageTen.pStar_bounds hk0 hc
  · right; left
    rw [hK, cubic_third] at fX fY fZ
    have hX := pow_eq_zero_iff (n := 3) (by norm_num) |>.1 fX
    have hY := pow_eq_zero_iff (n := 3) (by norm_num) |>.1 fY
    have hZ := pow_eq_zero_iff (n := 3) (by norm_num) |>.1 fZ
    refine ⟨by linarith, by linarith, by linarith, ?_⟩
    rw [hJ]; simp only [Jk, hk]; norm_num
  · right; right
    rw [hK, cubic_one] at fX fY fZ
    have hsum : blockX B + blockY B + blockZ B = 7 := by
      rw [← blockP_eq, hp]; simp only [pk, qk, hk]; norm_num
    have r1 : ∀ T : ℝ, (T - 1) ^ 2 * (T - 5) = 0 → T = 1 ∨ T = 5 := by
      intro T hT
      rcases mul_eq_zero.1 hT with h | h
      · left; have := pow_eq_zero_iff (n := 2) (by norm_num) |>.1 h; linarith
      · right; linarith
    refine ⟨by rw [hJ]; simp only [Jk, hk]; norm_num, ?_⟩
    rcases r1 _ fX with hX | hX <;> rcases r1 _ fY with hY | hY <;> rcases r1 _ fZ with hZ | hZ
    all_goals first
      | (exfalso; linarith)
      | (left; exact ⟨hX, hY, hZ⟩)
      | (right; left; exact ⟨hX, hY, hZ⟩)
      | (right; right; exact ⟨hX, hY, hZ⟩)

end NoFourMUBs.PRM.Coverage
