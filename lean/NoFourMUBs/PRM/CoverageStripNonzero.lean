import NoFourMUBs.PRM.CoverageStripScalar

/-!
# Critical strip classification (I4): the nonzero-`J` stratum

`CRITICAL_STRIP_CLASSIFICATION.md` §§3–4, assembled.  At a corner of the top strip of an all-critical
Hadamard matrix with invertible minors and `J ≠ 0`:

* exchange the corner with its complement to make `J > 0` (`nonzeroJ_classification`; the
  conclusion only involves `p`, `X, Y, Z`, `|J|`, which agree on complementary corners);
* the critical corner reduction gives `p = 9 − 4/h`, `J = 8k/h²`, `W = W(k)`, `k > 0`
  (`param_of_reduction`), and the halves have `g_±`, `z_± = −2(1 ± k)/h` (`theta_param`);
* **poles** (some `L_{j,±} = 0`): `pole_block` and `pole_K` give exactly the hypotheses of
  `Quartic.PoleClassification`;
* **no poles**: the whole-strip square sum `S = Σ_corners 4 (Im Ψ)²` vanishes on an all-critical
  matrix (`stripSq_eq_zero`); the square-sum identity `NonzeroJSquareSum` (paper (6)–(7) and
  `I4_ADDENDUM.md` §1, stated below) then gives `Q(k, K) = 0`, and `Quartic.ScalarClassification`
  applies (`kmin_le`, `disc_nonneg`);
* the three candidates give the conclusion (`conclusion_of_candidates`).
-/

open Matrix Hadamard6 ComplexConjugate

noncomputable section

namespace NoFourMUBs.PRM.Coverage

open Quartic

/-- **The nonzero-`J` square-sum identity** (`CRITICAL_STRIP_CLASSIFICATION.md` §3, equations (6)–(7),
with the full rational form of `I4_ADDENDUM.md` §1:
`S = −256 k² (3k² + 1)³ Q(k, K) / (h⁴ A₊² A₋²)` and `∏_j L_{j,±} = ∓16 A_±/h⁷`).

For three rows of a Hadamard matrix, a column split `l | 19 − l` whose two halves are nonsingular
with real side signature, `J > 0` on the first half and no moment pole (`L_{j,±} ≠ 0`):
`S · (∏_j L_{j,+})² (∏_j L_{j,−})² = −2²⁴ k² (3k² + 1)³ Q(k, K) / (1 + k²)³²`,
with `k = 2J/(9 − p)²` and `K = XYZ`. -/
def NonzeroJSquareSum : Prop :=
  ∀ H : Mat6, Hadamard6.IsHadamard H → ∀ l : Fin 20,
    (Step2.sideSignature (triBlock H 0 l)).im = 0 →
    (Step2.sideSignature (triBlock H 0 (19 - l))).im = 0 →
    (triBlock H 0 l).det ≠ 0 → (triBlock H 0 (19 - l)).det ≠ 0 →
    0 < blockJ (triBlock H 0 l) →
    (∀ j, blockL (triBlock H 0 l) j ≠ 0) → (∀ j, blockL (triBlock H 0 (19 - l)) j ≠ 0) →
    stripSq H * (∏ j, blockL (triBlock H 0 l) j) ^ 2 * (∏ j, blockL (triBlock H 0 (19 - l)) j) ^ 2 =
      -2 ^ 24 * blockKpar (triBlock H 0 l) ^ 2 * (3 * blockKpar (triBlock H 0 l) ^ 2 + 1) ^ 3 *
        Quartic.Q (blockKpar (triBlock H 0 l)) (blockK (triBlock H 0 l)) /
          (1 + blockKpar (triBlock H 0 l) ^ 2) ^ 32

/-- **The nonzero-`J` stratum with `J > 0`.** -/
theorem nonzeroJ_pos (hS : ScalarClassification) (hP : PoleClassification) (hN : NonzeroJSquareSum)
    {H : Mat6} (hH : Hadamard6.IsHadamard H) (hc : AllCritical H) (hinv : AllMinorsInvertible H)
    (l : Fin 20) (hJ : 0 < blockJ (triBlock H 0 l)) :
    ((17 : ℝ) / 3 < blockP (triBlock H 0 l) ∧ blockP (triBlock H 0 l) < (29 : ℝ) / 5) ∨
      EquiEndpoint (triBlock H 0 l) ∨ P7Endpoint (triBlock H 0 l) := by
  have hd := triBlock_det_ne hinv 0 l
  have hd' := triBlock_det_ne hinv 0 (19 - l)
  have hBu := triBlock_unit hH 0 l
  have hBu' := triBlock_unit hH 0 (19 - l)
  have hIm := hc.triBlock_im 0 l
  have hIm' := hc.triBlock_im 0 (19 - l)
  have hNl := hN H hH l hIm hIm' hd hd' hJ
  set B := triBlock H 0 l with hBdef
  set B' := triBlock H 0 (19 - l) with hB'def
  obtain ⟨h5, h9, hJ2, hW⟩ := criticalCorner_nonzeroJ hH hc 0 l hd hd' hJ.ne'
  obtain ⟨hk0, hp, hJk, hWk⟩ := param_of_reduction h5 h9 hJ2 hW hJ
  have hkp : blockKpar B = 2 * blockJ B / (9 - blockP B) ^ 2 := rfl
  set k := 2 * blockJ B / (9 - blockP B) ^ 2 with hkdef
  have hp' : blockP B' = pk k := by rw [hB'def, blockP_compl hH]; exact hp
  have hW' : blockW B' = Wk k := by rw [hB'def, blockW_compl hH]; exact hWk
  have hJ' : blockJ B' = -Jk k := by rw [hB'def, blockJ_compl hH, ← hJk]
  have hK' : blockK B' = blockK B := blockK_compl hH 0 l
  obtain ⟨hg, hz⟩ := theta_param (σ := 1) (g := blockG B) (χ := blockChi B) hk0 (Or.inl rfl)
    (by rw [blockG_eq, hp, ← hJk]; ring) (by rw [blockChi_eq, hp, ← hJk, hWk]; ring)
  obtain ⟨hg', hz'⟩ := theta_param (σ := -1) (g := blockG B') (χ := blockChi B') hk0 (Or.inr rfl)
    (by rw [blockG_eq, hp', hJ']; ring) (by rw [blockChi_eq, hp', hJ', hW']; ring)
  have hz2 : blockTheta B = zS 1 k := hz
  have hz2' : blockTheta B' = zS (-1) k := hz'
  have cand : Candidates k (blockK B) := by
    by_cases hpole : ∃ j, blockL B j = 0
    · obtain ⟨j, hj⟩ := hpole
      obtain ⟨hz0, hmod, hor⟩ := pole_block hBu hd hIm hj
      refine hP 1 k (blockK B) (Or.inl rfl) hk0 (pole_K hp hWk (by rw [hJk]) hor) ?_ ?_
      · rw [← hz2]; exact hz0
      · have e : alphaS 1 k = blockMod B j := by rw [hmod, alphaS, ← hg, ← hz2]
        rw [e]; exact fM_mod hp hWk j
    by_cases hpole' : ∃ j, blockL B' j = 0
    · obtain ⟨j, hj⟩ := hpole'
      obtain ⟨hz0, hmod, hor⟩ := pole_block hBu' hd' hIm' hj
      have hK := pole_K hp' hW' (by rw [hJ']; ring) hor
      rw [hK'] at hK
      refine hP (-1) k (blockK B) (Or.inr rfl) hk0 hK ?_ ?_
      · rw [← hz2']; exact hz0
      · have e : alphaS (-1) k = blockMod B j := by
          rw [← blockMod_compl hH 0 l j, ← hB'def, hmod, alphaS, ← hg', ← hz2']
        rw [e]; exact fM_mod hp hWk j
    simp only [not_exists] at hpole hpole'
    have e := hNl hpole hpole'
    rw [stripSq_eq_zero hc, zero_mul, zero_mul, hkp] at e
    have hQ : Quartic.Q k (blockK B) = 0 := by
      have hk2 : (0 : ℝ) < (1 + k ^ 2) ^ 32 := by positivity
      have e2 : -2 ^ 24 * k ^ 2 * (3 * k ^ 2 + 1) ^ 3 * Quartic.Q k (blockK B) = 0 := by
        rcases div_eq_zero_iff.1 e.symm with h | h
        · exact h
        · exact absurd h hk2.ne'
      have hne : -2 ^ 24 * k ^ 2 * (3 * k ^ 2 + 1) ^ 3 ≠ 0 := by
        have : 0 < 3 * k ^ 2 + 1 := by positivity
        have : k ≠ 0 := hk0.ne'
        positivity
      exact (mul_eq_zero.1 e2).resolve_left hne
    exact hS k (blockK B) hk0 (kmin_le (by rw [hJk])) (disc_nonneg hp hWk) hQ
  exact conclusion_of_candidates hk0 hp (by rw [abs_of_pos hJ]; exact hJk) hWk cand

theorem equiEndpoint_compl {H : Mat6} (hH : Hadamard6.IsHadamard H) (l : Fin 20) :
    EquiEndpoint (triBlock H 0 (19 - l)) ↔ EquiEndpoint (triBlock H 0 l) := by
  simp only [EquiEndpoint, blockX_compl hH, blockY_compl hH, blockZ_compl hH, blockJ_compl hH, abs_neg]

theorem p7Endpoint_compl {H : Mat6} (hH : Hadamard6.IsHadamard H) (l : Fin 20) :
    P7Endpoint (triBlock H 0 (19 - l)) ↔ P7Endpoint (triBlock H 0 l) := by
  simp only [P7Endpoint, blockX_compl hH, blockY_compl hH, blockZ_compl hH, blockJ_compl hH, abs_neg]

/-- **The nonzero-`J` stratum** (`CRITICAL_STRIP_CLASSIFICATION.md` §§3–4). -/
theorem nonzeroJ_classification (hS : ScalarClassification) (hP : PoleClassification)
    (hN : NonzeroJSquareSum) {H : Mat6} (hH : Hadamard6.IsHadamard H) (hc : AllCritical H)
    (hinv : AllMinorsInvertible H) (l : Fin 20) (hJ : blockJ (triBlock H 0 l) ≠ 0) :
    ((17 : ℝ) / 3 < blockP (triBlock H 0 l) ∧ blockP (triBlock H 0 l) < (29 : ℝ) / 5) ∨
      EquiEndpoint (triBlock H 0 l) ∨ P7Endpoint (triBlock H 0 l) := by
  rcases lt_or_gt_of_ne hJ with hneg | hpos
  · have hJ' : 0 < blockJ (triBlock H 0 (19 - l)) := by rw [blockJ_compl hH]; linarith
    have h := nonzeroJ_pos hS hP hN hH hc hinv (19 - l) hJ'
    rwa [blockP_compl hH, equiEndpoint_compl hH, p7Endpoint_compl hH] at h
  · exact nonzeroJ_pos hS hP hN hH hc hinv l hpos

end NoFourMUBs.PRM.Coverage
