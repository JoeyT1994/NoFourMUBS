import NoFourMUBs.X.Frame
import NoFourMUBs.StageC.Cert
import NoFourMUBs.Record
import NoFourMUBs.Step4

/-!
# Return X: no quartet edge near `F6`, from a Stage C certificate (return X §§2–4, 6)

`PF` is `F6`'s phase matrix, `PF_{ji} = 2π (j i mod 6)/6`, so `e^{iPF}` is the Fourier matrix `F_{ji} = e^{2πi ji/6}`.
`dph H` is the horizontal phase quotient distance of returns W/X: the infimum of `‖δ‖_F` over horizontal `δ` with
`H ≃ e^{i(PF + δ)}` (row and column phases and permutations; windings are absorbed in `δ`).

**The reduction** (`exclude_of_cert`).  Let `P` be a centre with
* `‖PF − P‖ ≤ ε` (the kernel's rational centre),
* the normal-space bound `σ ‖ν‖ ≤ ‖J_P ν‖` for `ν` horizontal and orthogonal to `V` (return X eq. (9)),
* `‖Φ_P(0)‖ ≤ e₀` and `‖J_P (Σ w_k V_k)‖ ≤ j₁ ‖w‖` (both `0` at `P = PF`),
* a Stage C certificate at `P` with frame `V` and radii (radians) `r_H`, `n`, `r_col`, `r_F`,
and the scalar conditions `ρ + ε ≤ r_H, r_F`, `e₀ + j₁(ρ + ε) + √2 (ρ + ε)² ≤ σ n`, `(ρ + ε)² ≤ 3 (r_col − n)²`.
Then no Hadamard `e^{i(PF + δ)}`, `δ` horizontal, `‖δ‖ ≤ ρ`, is a quartet edge.

*Proof.*  `δ' = h(PF + δ − P)` is horizontal, `‖δ'‖ ≤ ρ + ε`, and `e^{i(P + δ')} ≃ e^{i(PF + δ)}`.  Split
`δ' = Σ w_k V_k + ν` (`frame_split`): `‖w‖ ≤ ‖δ'‖`.  Since `Φ_P(δ') = 0`, `J_P ν = −Φ_P(0) − J_P(Σ w_k V_k) − R`
with `‖R‖ ≤ √2 ‖δ'‖²` (`outNorm_rem_le_hor`), so `σ ‖ν‖ ≤ e₀ + j₁(ρ + ε) + √2(ρ + ε)²` and `‖ν‖ ≤ n` (return X
eq. (13)); every column has `‖δ'_{:,i}‖ ≤ ‖δ'‖/√3 + ‖ν‖ ≤ r_col` (eq. (10), (14)).  So `δ'` is admissible and Stage C
excludes it (`StageCCert.excludes`, return X §4–§6: its leaves are the ray cover, its labels and graph the
orthogonality obstruction).

`no_quartet_of_cert` restates the conclusion for phase matrices `Q` with a winding `N` and for `dph`.
-/

open Matrix Hadamard6

namespace NoFourMUBs.X

open NoFourMUBs NoFourMUBs.SeedAtlas NoFourMUBs.StageC

/-- `I6 → ℕ` in the order `inl 0, inl 1, inl 2, inr 0, inr 1, inr 2`. -/
def fidx : I6 → ℕ
  | .inl i => i.val
  | .inr i => i.val + 3

/-- `F6`'s phase matrix: `PF_{ji} = 2π (j i mod 6)/6`. -/
noncomputable def PF : RMat6 := fun j i => 2 * Real.pi * ((fidx j * fidx i % 6 : ℕ) : ℝ) / 6

/-- The horizontal phase quotient distance to `F6`. -/
noncomputable def dph (H : Mat6) : ℝ :=
  sInf {d | ∃ δ : RMat6, IsHorizontal δ ∧ Equivalent H (phaseMat (PF + δ)) ∧ frob δ = d}

lemma hor_eq_self {Y : RMat6} (hY : IsHorizontal Y) : hor Y = Y := by
  have hr : ∀ i, rowMean Y i = 0 := fun i => by simp [rowMean, hY.1 i]
  have hc : ∀ j, colMean Y j = 0 := fun j => by simp [colMean, hY.2 j]
  have ha : allMean Y = 0 := by rw [allMean_eq_rowMean]; simp [hr]
  ext i j; simp [hor_apply, hr, hc, ha]

/-- **The normal bound at a centre `P`** (return X §3.2, eq. (13)). -/
theorem normal_le {P δ ν : RMat6} {w : Fin 4 → ℝ} {σ e0 j1 : ℝ}
    (hH : Hadamard6.IsHadamard (phaseMat (P + δ))) (hδ : IsHorizontal δ) (hs : δ = tang V w + ν)
    (hσ : σ * frob ν ≤ outNorm (Jac P ν)) (he : outNorm (Phi P 0) ≤ e0) (hj : outNorm (Jac P (tang V w)) ≤ j1) :
    σ * frob ν ≤ e0 + j1 + Real.sqrt 2 * frob δ ^ 2 := by
  set Rm := Phi P δ - Phi P 0 - Jac P δ
  have h0 := phi_eq_zero_of_isHadamard hH
  have hJ : Jac P ν = -(Phi P 0 + Rm) - Jac P (tang V w) := by
    have : Jac P δ = Jac P (tang V w) + Jac P ν := by rw [hs, jac_add]
    simp only [Rm, h0]
    rw [this]; abel
  have hR := outNorm_rem_le_hor P δ hδ.2
  have hneg : ∀ x y : Mat6, outNorm (-x - y) ≤ outNorm x + outNorm y := fun x y => by
    rw [sub_eq_add_neg]
    exact (outNorm_add_le _ _).trans (by rw [outNorm_neg, outNorm_neg])
  have h1 : outNorm (Jac P ν) ≤ outNorm (Phi P 0 + Rm) + outNorm (Jac P (tang V w)) := by rw [hJ]; exact hneg _ _
  have h2 := outNorm_add_le (Phi P 0) Rm
  linarith

/-- **Return X from a Stage C certificate at a nearby centre.** -/
theorem exclude_of_cert {P : RMat6} {ρ ε σ e0 j1 rH n rcol rF : ℝ}
    (hPF : frob (PF - P) ≤ ε)
    (hσ : ∀ ν, IsHorizontal ν → (∀ k, ∑ a, ∑ c, V k a c * ν a c = 0) → σ * frob ν ≤ outNorm (Jac P ν))
    (he : outNorm (Phi P 0) ≤ e0) (hj : ∀ w, outNorm (Jac P (tang V w)) ≤ j1 * wnorm w)
    (C : StageCCert ((1 / (2 * Real.pi)) • P) V (rH / (2 * Real.pi)) (n / (2 * Real.pi)) (rcol / (2 * Real.pi))
      (rF / (2 * Real.pi)))
    (hσ0 : 0 < σ) (hρ : 0 ≤ ρ) (hj0 : 0 ≤ j1) (hrH : ρ + ε ≤ rH) (hrF : ρ + ε ≤ rF)
    (hn : e0 + j1 * (ρ + ε) + Real.sqrt 2 * (ρ + ε) ^ 2 ≤ σ * n)
    (hcol : (ρ + ε) ^ 2 ≤ 3 * (rcol - n) ^ 2) (hcn : n ≤ rcol)
    {δ : RMat6} (hδ : IsHorizontal δ) (hδρ : frob δ ≤ ρ) (hH : Hadamard6.IsHadamard (phaseMat (PF + δ))) :
    ¬ QuartetEdge (phaseMat (PF + δ)) := by
  intro hq
  set δ' := hor (PF + δ - P)
  have hε0 : 0 ≤ ε := (frob_nonneg _).trans hPF
  -- the displacement at `P`
  have heq : Equivalent (phaseMat (P + δ')) (phaseMat (PF + δ)) := by
    have h := phaseMat_equivalent_add_hor P (PF + δ - P)
    rwa [add_sub_cancel] at h
  have hH' : Hadamard6.IsHadamard (phaseMat (P + δ')) := isHadamard_of_equivalent (equivalent_symm heq) hH
  have hq' : QuartetEdge (phaseMat (P + δ')) := quartetEdge_of_equivalent (equivalent_symm heq) hq
  have hδ'h : IsHorizontal δ' := hor_isHorizontal _
  have hδ'ρ : frob δ' ≤ ρ + ε := by
    have e : PF + δ - P = δ + (PF - P) := by abel
    rw [show δ' = δ + hor (PF - P) by rw [show δ' = hor (PF + δ - P) from rfl, e, hor_add, hor_eq_self hδ]]
    exact (frob_add_le _ _).trans (add_le_add hδρ ((frob_hor_le _).trans hPF))
  -- the split and the bounds
  obtain ⟨w, ν, hs, hνh, hνT, hw, hsum, hcolT⟩ := frame_split δ' hδ'h
  have hss : ∀ Y : RMat6, frob Y ^ 2 = sumsq Y := fun Y => by rw [frob_eq_sqrt, Real.sq_sqrt (sumsq_nonneg Y)]
  have hfT : frob (tang V w) ≤ ρ + ε := by
    have : frob (tang V w) ^ 2 ≤ frob δ' ^ 2 := by rw [hss, hss]; linarith [sumsq_nonneg ν]
    exact (abs_le_of_sq_le_sq' (this.trans (pow_le_pow_left₀ (frob_nonneg _) hδ'ρ 2)) (by linarith)).2
  have hwn : wnorm w ≤ ρ + ε := by
    have h1 : wnorm w ^ 2 ≤ frob (tang V w) ^ 2 := by rw [hss]; exact hw
    exact (abs_le_of_sq_le_sq' (h1.trans (pow_le_pow_left₀ (frob_nonneg _) hfT 2)) (by linarith)).2
  have hνn : frob ν ≤ n := by
    have hb := normal_le hH' hδ'h hs (hσ ν hνh hνT) he (hj w)
    have h1 : j1 * wnorm w ≤ j1 * (ρ + ε) := mul_le_mul_of_nonneg_left hwn hj0
    have h2 : Real.sqrt 2 * frob δ' ^ 2 ≤ Real.sqrt 2 * (ρ + ε) ^ 2 :=
      mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (frob_nonneg _) hδ'ρ 2) (Real.sqrt_nonneg 2)
    have : σ * frob ν ≤ σ * n := by linarith
    exact le_of_mul_le_mul_left this hσ0
  have hcolδ : ∀ i, colnorm δ' i ≤ rcol := by
    intro i
    have hT : colnorm (tang V w) i ≤ (ρ + ε) / Real.sqrt 3 := by
      have h3 : (0 : ℝ) < Real.sqrt 3 := by positivity
      rw [le_div_iff₀ h3]
      have hsq : (colnorm (tang V w) i * Real.sqrt 3) ^ 2 ≤ (ρ + ε) ^ 2 := by
        rw [mul_pow, Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 3), colnorm, vnorm,
          Real.sq_sqrt (Finset.sum_nonneg fun _ _ => sq_nonneg _)]
        have := hcolT i
        have h4 : sumsq (tang V w) ≤ (ρ + ε) ^ 2 := by rw [← hss]; exact pow_le_pow_left₀ (frob_nonneg _) hfT 2
        linarith
      exact (abs_le_of_sq_le_sq' hsq (by linarith)).2
    have hr : (ρ + ε) / Real.sqrt 3 ≤ rcol - n := by
      have h3 : (0 : ℝ) < Real.sqrt 3 := by positivity
      rw [div_le_iff₀ h3]
      have : (ρ + ε) ^ 2 ≤ ((rcol - n) * Real.sqrt 3) ^ 2 := by
        rw [mul_pow, Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 3)]; linarith
      exact (abs_le_of_sq_le_sq' this (by positivity)).2
    calc colnorm δ' i ≤ colnorm (tang V w) i + colnorm ν i := by rw [hs]; exact colnorm_add_le _ _ _
      _ ≤ (ρ + ε) / Real.sqrt 3 + frob ν := add_le_add hT (colnorm_le_frob _ _)
      _ ≤ rcol := by linarith
  -- admissible in cycles
  have hpi := Real.pi_pos
  set c := 1 / (2 * Real.pi)
  have hc0 : 0 < c := by positivity
  have hcabs : |c| = c := abs_of_pos hc0
  have hdiv : ∀ x, x / (2 * Real.pi) = c * x := fun x => by simp only [c]; ring
  have hadm : Admissible V (rH / (2 * Real.pi)) (n / (2 * Real.pi)) (rcol / (2 * Real.pi)) (rF / (2 * Real.pi))
      (c • δ') := by
    refine ⟨⟨fun k => c * w k, c • ν, ?_, ?_, ?_⟩, fun i => ?_, ?_⟩
    · rw [hs]; simp only [tang, smul_add, Finset.smul_sum]; congr 1
      exact Finset.sum_congr rfl fun k _ => by rw [smul_smul]
    · have : Real.sqrt (∑ k, (c * w k) ^ 2) = c * wnorm w := by
        simp only [mul_pow, ← Finset.mul_sum]
        rw [Real.sqrt_mul (sq_nonneg c), Real.sqrt_sq hc0.le]; rfl
      rw [this, hdiv]; exact mul_le_mul_of_nonneg_left (hwn.trans hrH) hc0.le
    · rw [frob_smul, hcabs, hdiv]; exact mul_le_mul_of_nonneg_left hνn hc0.le
    · rw [colnorm_smul, hcabs, hdiv]; exact mul_le_mul_of_nonneg_left (hcolδ i) hc0.le
    · rw [frob_smul, hcabs, hdiv]; exact mul_le_mul_of_nonneg_left (hδ'ρ.trans hrF) hc0.le
  rw [phaseMat_eq_E, smul_add] at hq'
  exact C.excludes hadm hq'

/-- `e^{i(PF + h(Q − PF + 2πN))} ≃ e^{iQ}`. -/
lemma equivalent_wind (Q : RMat6) (N : Matrix I6 I6 ℤ) :
    Equivalent (phaseMat (PF + hor (Q - PF + wind N))) (phaseMat Q) := by
  have h := phaseMat_equivalent_add_hor PF (Q - PF + wind N)
  rwa [show PF + (Q - PF + wind N) = Q + wind N by abel, wind, phaseMat_add_winding] at h

/-- **Return X, the three forms**, from the hypotheses of `exclude_of_cert` at a radius `ρ`. -/
theorem no_quartet_of_cert {ρ : ℝ}
    (core : ∀ δ : RMat6, IsHorizontal δ → frob δ ≤ ρ → Hadamard6.IsHadamard (phaseMat (PF + δ)) →
      ¬ QuartetEdge (phaseMat (PF + δ))) :
    (∀ (Q : RMat6) (N : Matrix I6 I6 ℤ), frob (hor (Q - PF + wind N)) ≤ ρ →
      Hadamard6.IsHadamard (phaseMat Q) → ¬ QuartetEdge (phaseMat Q)) ∧
    (∀ H : Mat6, Hadamard6.IsHadamard H → dph H < ρ → ¬ QuartetEdge H) := by
  refine ⟨fun Q N hQ hH hq => ?_, fun H hH hd hq => ?_⟩
  · have he := equivalent_wind Q N
    exact core _ (hor_isHorizontal _) hQ (isHadamard_of_equivalent (equivalent_symm he) hH)
      (quartetEdge_of_equivalent (equivalent_symm he) hq)
  · set S := {d | ∃ δ : RMat6, IsHorizontal δ ∧ Equivalent H (phaseMat (PF + δ)) ∧ frob δ = d}
    have hdS : dph H = sInf S := rfl
    -- `S` is nonempty: `H = e^{i(PF + A)}` entrywise, then the horizontal gauge
    have hne : S.Nonempty := by
      have hA := phaseMat_add_arg (P := PF) rfl hH.1
      set A : RMat6 := Matrix.of fun i j => Complex.arg (H i j / phaseMat PF i j)
      have he := phaseMat_equivalent_add_hor PF A
      rw [← hA] at he
      exact ⟨_, hor A, hor_isHorizontal A, equivalent_symm he, rfl⟩
    obtain ⟨d, ⟨δ, hδ, hHe, rfl⟩, hlt⟩ := Real.lt_sInf_add_pos hne (show (0 : ℝ) < ρ - dph H by linarith)
    exact core δ hδ (by linarith) (isHadamard_of_equivalent hHe hH) (quartetEdge_of_equivalent hHe hq)

end NoFourMUBs.X
