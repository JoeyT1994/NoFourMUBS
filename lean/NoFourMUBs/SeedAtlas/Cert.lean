import NoFourMUBs.SeedAtlas.Seed
import NoFourMUBs.Record

/-!
# A certified seed ball (`proof/seed_atlas/SPEC.md` §2, §9)

A `SeedBallCert` holds the data of one seed ball record:
* the parametrisation `θ(w) = θ₀ + M_θ w` (`M_θ` invertible), the radius `r` (the ball is `{θ(w) : ‖w‖ ≤ r}`) and
  the orientation `o = ±1`;
* the Stage C centre `P` and frame `U` (`U w = Σ_k w_k U_k`, the SPEC's `36 × 4` matrix `U` column by column), the
  enclosure remainder `n`, and the column and Frobenius constants `t ≥ max_i ‖U_(i)‖₂`, `λ_F ≥ ‖U‖₂` with the facts
  they certify: `‖(U w)_{:,i}‖ ≤ t ‖w‖`, `‖U w‖ ≤ λ_F ‖w‖`;
* **the enclosure C1, as a hypothesis** (`hC1`): for every `w` with `‖w‖ ≤ r`, `θ(w) ∈ Ω`, and some representative
  of `f_o(θ(w))` in the gauge of §1 (a Hadamard matched completion `e^{iQ}` with orientation `o`) has phases with
  `‖Q − P − U w − 2πN‖ ≤ n` for an integer matrix `N`;
* the Stage C certificate `StageCCert (P/2π) U (r/2π) (n/2π) (r_col/2π) (r_F/2π)`, `r_col = t r + n`,
  `r_F = λ_F r + n`: `stagec.stage_c(P/2π, rcol/2π, tang=(U, r/2π, n/2π), radius=label_radius, rF=rF/2π)`
  (the label radius is part of `StageCCert`).

`SeedBallCert.excludes`: **no class in the seed ball image is a quartet edge.**  Every matched completion `K` at
`θ(w)` is equivalent to C1's representative (`matchedO_unique`), which is `e^{i(P + δ)}` with `δ = U w + ν`,
`‖w‖ ≤ r`, `‖ν‖ ≤ n`; this `δ` is admissible for the Stage C certificate (`StageC.Admissible` with the frame `U`),
so `StageCCert.excludes` applies verbatim.
-/

open Matrix Hadamard6 NoFourMUBs.Step2

noncomputable section

namespace NoFourMUBs.SeedAtlas

open StageC

/-- `U w = Σ_k w_k U_k`. -/
def tang (U : Fin 4 → RMat6) (w : Fin 4 → ℝ) : RMat6 := ∑ k, w k • U k

/-- The integer winding `2πN`. -/
def wind (N : Matrix I6 I6 ℤ) : RMat6 := (2 * Real.pi) • N.map (Int.cast : ℤ → ℝ)

/-- **A certified seed ball.** -/
structure SeedBallCert where
  theta0 : Fin 4 → ℝ
  Mth : Matrix (Fin 4) (Fin 4) ℝ
  r : ℝ
  o : ℤˣ
  P : RMat6
  U : Fin 4 → RMat6
  n : ℝ
  t : ℝ
  lamF : ℝ
  hMth : IsUnit Mth.det
  ht0 : 0 ≤ t
  hF0 : 0 ≤ lamF
  hcol : ∀ (w : Fin 4 → ℝ) (i : I6), colnorm (tang U w) i ≤ t * wnorm w
  hfrob : ∀ w : Fin 4 → ℝ, frob (tang U w) ≤ lamF * wnorm w
  /-- **C1** (SPEC §2): for every `‖w‖ ≤ r`, `θ(w)` is strict and some representative of `f_o(θ(w))` has phases
  `Q` with `‖Q − P − U w − 2πN‖ ≤ n`. -/
  hC1 : ∀ w : Fin 4 → ℝ, wnorm w ≤ r →
    0 < seedR (seedOf (theta0 + Mth *ᵥ w)) ∧
    ∃ Q : RMat6, ∃ N : Matrix I6 I6 ℤ, Hadamard6.IsHadamard (phaseMat Q) ∧
      MatchedO o (seedOf (theta0 + Mth *ᵥ w)) (phaseMat Q) ∧ frob (Q - P - tang U w - wind N) ≤ n
  stageC : StageCCert ((1 / (2 * Real.pi)) • P) U (r / (2 * Real.pi)) (n / (2 * Real.pi))
    ((t * r + n) / (2 * Real.pi)) ((lamF * r + n) / (2 * Real.pi))

namespace SeedBallCert

variable (S : SeedBallCert)

/-- The seed phases `θ(w) = θ₀ + M_θ w`. -/
def θ (w : Fin 4 → ℝ) : Fin 4 → ℝ := S.theta0 + S.Mth *ᵥ w

lemma continuous_θ : Continuous S.θ :=
  continuous_const.add (continuous_const.matrix_mulVec continuous_id)

/-- The seed ball image: the Hadamard matched completions with orientation `o` at `θ(w)`, `‖w‖ ≤ r`. -/
def Ball (K : Mat6) : Prop :=
  Hadamard6.IsHadamard K ∧ ∃ w, wnorm w ≤ S.r ∧ MatchedO S.o (seedOf (S.θ w)) K

lemma strict {w : Fin 4 → ℝ} (hw : wnorm w ≤ S.r) : 0 < seedR (seedOf (S.θ w)) := (S.hC1 w hw).1

/-- **The enclosure:** every point of the seed ball image is equivalent to `e^{i(P + U w + ν)}`, `‖w‖ ≤ r`,
`‖ν‖ ≤ n`. -/
theorem enclosure {K : Mat6} (hK : S.Ball K) :
    ∃ w ν, wnorm w ≤ S.r ∧ frob ν ≤ S.n ∧ Equivalent K (phaseMat (S.P + (tang S.U w + ν))) := by
  obtain ⟨hKH, w, hw, hm⟩ := hK
  obtain ⟨hR, Q, N, hQH, hQm, hn⟩ := S.hC1 w hw
  refine ⟨w, Q - S.P - tang S.U w - wind N, hw, hn, ?_⟩
  have e : phaseMat Q = phaseMat (S.P + (tang S.U w + (Q - S.P - tang S.U w - wind N))) := by
    rw [← phaseMat_add_winding (S.P + (tang S.U w + (Q - S.P - tang S.U w - wind N))) N]
    congr 1
    simp only [wind]; abel
  rw [← e]
  exact matchedO_unique hR hKH hQH hm hQm

/-- **Stage C exclusion on a seed ball:** no matrix of the seed ball image is a quartet edge. -/
theorem excludes {K : Mat6} (hK : S.Ball K) : ¬ QuartetEdge K := by
  obtain ⟨w, ν, hw, hν, hKe⟩ := S.enclosure hK
  intro hq
  have hq' := quartetEdge_of_equivalent hKe hq
  set δ := tang S.U w + ν
  have hpi := Real.pi_pos
  set c := 1 / (2 * Real.pi)
  have hc0 : 0 < c := by positivity
  have hcabs : |c| = c := abs_of_pos hc0
  have hs0 : 0 ≤ wnorm w := wnorm_nonneg w
  have hadm : Admissible S.U (S.r / (2 * Real.pi)) (S.n / (2 * Real.pi)) ((S.t * S.r + S.n) / (2 * Real.pi))
      ((S.lamF * S.r + S.n) / (2 * Real.pi)) (c • δ) := by
    refine ⟨⟨fun k => c * w k, c • ν, ?_, ?_, ?_⟩, fun i => ?_, ?_⟩
    · simp only [δ, tang, smul_add, Finset.smul_sum]; congr 1
      exact Finset.sum_congr rfl fun k _ => by rw [smul_smul]
    · have : Real.sqrt (∑ k, (c * w k) ^ 2) = c * wnorm w := by
        simp only [mul_pow, ← Finset.mul_sum]
        rw [Real.sqrt_mul (sq_nonneg c), Real.sqrt_sq hc0.le]; rfl
      rw [this, div_eq_mul_one_div, mul_comm S.r]
      exact mul_le_mul_of_nonneg_left hw hc0.le
    · rw [frob_smul, hcabs, div_eq_mul_one_div, mul_comm S.n]
      exact mul_le_mul_of_nonneg_left hν hc0.le
    · rw [colnorm_smul, hcabs, div_eq_mul_one_div, mul_comm _ (1 / (2 * Real.pi))]
      refine mul_le_mul_of_nonneg_left ?_ hc0.le
      calc colnorm δ i ≤ colnorm (tang S.U w) i + colnorm ν i := colnorm_add_le _ _ _
        _ ≤ S.t * wnorm w + frob ν := add_le_add (S.hcol w i) (colnorm_le_frob _ _)
        _ ≤ S.t * S.r + S.n := add_le_add (mul_le_mul_of_nonneg_left hw S.ht0) hν
    · rw [frob_smul, hcabs, div_eq_mul_one_div, mul_comm _ (1 / (2 * Real.pi))]
      refine mul_le_mul_of_nonneg_left ?_ hc0.le
      calc frob δ ≤ frob (tang S.U w) + frob ν := frob_add_le _ _
        _ ≤ S.lamF * wnorm w + frob ν := add_le_add (S.hfrob w) le_rfl
        _ ≤ S.lamF * S.r + S.n := add_le_add (mul_le_mul_of_nonneg_left hw S.hF0) hν
  rw [phaseMat_eq_E, smul_add] at hq'
  exact S.stageC.excludes hadm hq'

/-- Equivalent matrices in the image are excluded too (as needed by the coverage route). -/
theorem excludes_of_equivalent {K M : Mat6} (hK : S.Ball K) (hMK : Equivalent M K) : ¬ QuartetEdge M :=
  fun hq => S.excludes hK (quartetEdge_of_equivalent hMK hq)

end SeedBallCert

end NoFourMUBs.SeedAtlas
