import KernelAtlas.NormalK
import NoFourMUBs.X.Main

/-!
# Return X in the kernel: the bridge (`lean/NoFourMUBs/X/README.md`)

The generated modules `KernelAtlas/X/SC/` (`kernel_atlas/generators/x_stagec.py`) run the Record pipeline's Stage C
(`StageCK2B`: the v2 bin cover with label leaves, direct and joint edges, the clique search) on
* the centre `P̃ = Ptil`, `P̃_{ji} = 2π̃ (j i mod 6)/6` with the rational `π̃ = piLo` (radians),
* the frame `V` of return X (`NoFourMUBs.X.V`, integral after `× 6`),
and certify `σ`, `e₀`, `j₁` at `P̃` (`SigmaK`, `E0K`) on a high-precision table.  `xB` decides, by the kernel:
* the table's centre is `P̃` and its integer frame is `V`;
* the radii (`XRadii`, radians) are under the bars of the bin tree, and `1 + e₀/4 ≤ K̄²`;
* the scalar conditions of `NoFourMUBs.X.exclude_of_cert` at the radius `ρ` with `ε = epsX ≥ ‖PF − P̃‖`
  (`frob_PF_sub_Ptil`) and `√2 ≤ s2hi`.
`x_core` turns them, with the generated Stage C certificate, into return X at radius `ρ`.
-/

open Hadamard6 NoFourMUBs NoFourMUBs.StageC NoFourMUBs.SeedAtlas

namespace NoFourMUBs.KernelAtlas.X

open NoFourMUBs.X

/-- `P̃_{ab} = 2π̃ (a b mod 6)/6` (radians). -/
def ptilQ (a b : ℕ) : ℚ := 2 * piLo * ((a * b % 6 : ℕ) : ℚ) / 6

/-- The rational centre `P̃`. -/
noncomputable def Ptil : RMat6 := fun j i => (ptilQ (idx j) (idx i) : ℝ)

/-- `‖PF − P̃‖ ≤ epsX`. -/
def epsX : ℚ := 1 / 10 ^ 18

/-- `√2 ≤ s2hi`. -/
def s2hi : ℚ := 1414213563 / 10 ^ 9

/-- The Stage C radii of return X (radians). -/
structure XRadii where
  rH : ℚ
  n : ℚ
  rcol : ℚ
  rF : ℚ

/-- The centre table holds `P̃`. -/
def centreX (tb : Tab) : Bool :=
  allNat 6 fun a => allNat 6 fun b => decide ((tb.PqL.getD a []).getD b 0 = ptilQ a b)

/-- The integer frame is `V`. -/
def frameX (tc : TCfg) (tq : TParQ) : Bool :=
  all4 fun k => allI6 fun j => allI6 fun i => decide (frameOf tc tq k j i = (vz k j i : ℚ) / 6)

/-- Everything `x_core` needs besides the certificates: centre, frame, bars, `K̄`, and return X's scalar conditions
at radius `ρ`. -/
def xB (tb : Tab) (tc : TCfg) (tq : TParQ) (pq : ParQ) (R : XRadii) (ρ σ e0 j1 : ℚ) : Bool :=
  centreX tb && frameX tc tq &&
  decide (0 ≤ R.n) && decide (0 ≤ R.rcol) && decide (0 ≤ R.rH) && decide (0 ≤ R.rF) &&
  decide (R.rH / (2 * piLo) ≤ tq.rHbar) && decide (R.n / (2 * piLo) ≤ tq.nbar) &&
  decide (R.rcol / (2 * piLo) ≤ pq.rbar) && decide (R.rF / (2 * piLo) ≤ pq.rFbar) &&
  decide (0 ≤ pq.Kbar) && decide (1 + e0 / 4 ≤ pq.Kbar ^ 2) &&
  decide (0 < σ) && decide (0 ≤ ρ) && decide (0 ≤ j1) && decide (0 ≤ e0) &&
  decide (ρ + epsX ≤ R.rH) && decide (ρ + epsX ≤ R.rF) &&
  decide (e0 + j1 * (ρ + epsX) + s2hi * (ρ + epsX) ^ 2 ≤ σ * R.n) &&
  decide ((ρ + epsX) ^ 2 ≤ 3 * (R.rcol - R.n) ^ 2) && decide (R.n ≤ R.rcol)

/-! ### The centre -/

lemma idx_lt6 (i : I6) : idx i < 6 := by rcases i with i | i <;> simp [idx] <;> omega

lemma idx_eq_fidx (i : I6) : idx i = fidx i := by rcases i with i | i <;> rfl

theorem Pmat_eq_Ptil {tb : Tab} (h : centreX tb = true) : Pmat tb.pq = Ptil := by
  funext j i
  have hji := of_decide_eq_true (allNat_spec (allNat_spec h (idx j) (idx_lt6 j)) (idx i) (idx_lt6 i))
  show ((tb.PqL.getD (idx j) []).getD (idx i) 0 : ℝ) = (ptilQ (idx j) (idx i) : ℝ)
  rw [hji]

lemma sqrt2_le_s2hi : Real.sqrt 2 ≤ (s2hi : ℝ) := by
  rw [Real.sqrt_le_left (by unfold s2hi; norm_num)]; unfold s2hi; norm_num

/-- `‖PF − P̃‖ ≤ ε`: every entry differs by `2 (π − π̃) m/6`, `m ≤ 5`. -/
theorem frob_PF_sub_Ptil : frob (PF - Ptil) ≤ (epsX : ℝ) := by
  have hlo := piLo_le_pi
  have hhi := Real.pi_lt_d20
  have hent : ∀ j i, (PF - Ptil) j i ^ 2 ≤ ((epsX : ℝ) / 6) ^ 2 := by
    intro j i
    have hm : ((fidx j * fidx i % 6 : ℕ) : ℝ) ≤ 5 := by
      have : fidx j * fidx i % 6 < 6 := Nat.mod_lt _ (by norm_num)
      exact_mod_cast Nat.le_of_lt_succ this
    have hm0 : (0 : ℝ) ≤ ((fidx j * fidx i % 6 : ℕ) : ℝ) := Nat.cast_nonneg _
    have e : (PF - Ptil) j i = 2 * (Real.pi - piLo) * ((fidx j * fidx i % 6 : ℕ) : ℝ) / 6 := by
      simp only [Matrix.sub_apply, PF, Ptil, ptilQ, idx_eq_fidx]; push_cast; ring
    rw [e]
    have h0 : 0 ≤ 2 * (Real.pi - piLo) * ((fidx j * fidx i % 6 : ℕ) : ℝ) / 6 := by
      have : (0 : ℝ) ≤ Real.pi - piLo := by linarith
      positivity
    have h1 : 2 * (Real.pi - piLo) * ((fidx j * fidx i % 6 : ℕ) : ℝ) / 6 ≤ (epsX : ℝ) / 6 := by
      have hd : Real.pi - piLo ≤ 1 / 10 ^ 20 := by unfold piLo at *; push_cast at *; linarith
      have : (2 * (Real.pi - piLo) * ((fidx j * fidx i % 6 : ℕ) : ℝ)) ≤ 2 * (1 / 10 ^ 20) * 5 := by
        have hpi0 : (0 : ℝ) ≤ Real.pi - piLo := by linarith
        gcongr
      unfold epsX; push_cast
      linarith
    exact pow_le_pow_left₀ h0 h1 2
  rw [frob_eq_sqrt]
  refine Real.sqrt_le_iff.mpr ⟨by unfold epsX; positivity, ?_⟩
  calc sumsq (PF - Ptil) ≤ ∑ _j : I6, ∑ _i : I6, ((epsX : ℝ) / 6) ^ 2 :=
        Finset.sum_le_sum fun j _ => Finset.sum_le_sum fun i _ => hent j i
    _ = (epsX : ℝ) ^ 2 := by rw [sum_const_I6, sum_const_I6]; ring

/-! ### The frame -/

theorem toR_eq_V {tc : TCfg} {tq : TParQ} (h : frameX tc tq = true) : (frameOf tc tq).toR = V := by
  funext k j i
  have hk := of_decide_eq_true (allI6_spec (allI6_spec (all4_spec h k) j) i)
  simp only [QFrame.toR, V, hk]; push_cast; ring

theorem Tmat_eq_V {tc : TCfg} {tq : TParQ} (h : frameX tc tq = true) : Tmat tc tq = V := by
  rw [← frameOf_toR, toR_eq_V h]

/-! ### Assembly -/

/-- A radius `x = q ≥ 0` (radians) with `q/2π̃ ≤ b` is at most `b` in cycles. -/
lemma le_barQ {q b : ℚ} (h0 : 0 ≤ q) (h : q / (2 * piLo) ≤ b) : (q : ℝ) / (2 * Real.pi) ≤ b := by
  refine (div_2pi_le (by exact_mod_cast h0)).trans ?_
  have := (Rat.cast_le (K := ℝ)).mpr h
  push_cast at this
  exact this

/-- **Return X at radius `ρ`, from the kernel checks.** -/
theorem x_core {tb tbN : Tab} {tc : TCfg} {tq : TParQ} {pq : ParQ} {R : XRadii} {ρ σ e0 j1 : ℚ} {S : SigQ}
    (hx : xB tb tc tq pq R ρ σ e0 j1 = true) (hN : tbN.PqL = tb.PqL)
    (hS : sigmaOK tbN (frameOf tc tq) S σ = true) (he : e0OK tbN e0 = true) (hj : j1OK tbN (frameOf tc tq) j1 = true)
    (SC : ∀ {rH n r rF K : ℝ}, 0 ≤ K → (∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • Pmat tb.pq) z) ≤ K * cnorm z) →
      K ≤ pq.Kbar → r ≤ pq.rbar → rF ≤ pq.rFbar → rH ≤ tq.rHbar → n ≤ tq.nbar →
      StageCCert ((1 / (2 * Real.pi)) • Pmat tb.pq) (Tmat tc tq) rH n r rF) :
    ∀ δ : RMat6, IsHorizontal δ → frob δ ≤ ρ → Hadamard6.IsHadamard (phaseMat (PF + δ)) →
      ¬ QuartetEdge (phaseMat (PF + δ)) := by
  simp only [xB, Bool.and_eq_true, decide_eq_true_eq] at hx
  obtain ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨hc, hf⟩, hn0⟩, hrc0⟩, hrH0⟩, hrF0⟩, hrH⟩, hn⟩, hr⟩, hrF⟩, hK0⟩, hK⟩, hσ0⟩, hρ0⟩,
    hj0⟩, he0⟩, hρH⟩, hρF⟩, hnb⟩, hcol⟩, hcn⟩ := hx
  have hPq : Pmat tbN.pq = Pmat tb.pq := by funext j i; simp only [Pmat, Tab.pq, hN]
  have hP := Pmat_eq_Ptil hc
  have hT := Tmat_eq_V hf
  have hpq : tbN.pq = tb.pq := by funext j i; simp only [Tab.pq, hN]
  have C := SC (K := pq.Kbar) (by exact_mod_cast hK0)
    (fun z => by rw [← hpq]; exact opnorm_sound he (by rw [hpq] at *; exact hK) hK0 z) le_rfl
    (le_barQ hrc0 hr) (le_barQ hrF0 hrF) (le_barQ hrH0 hrH) (le_barQ hn0 hn)
  rw [hP, hT] at C
  intro δ hδ hδρ hH
  have hs2 := sqrt2_le_s2hi
  have hρε : (0 : ℝ) ≤ (ρ : ℝ) + epsX := by
    have : (0 : ℚ) ≤ ρ + epsX := by unfold epsX; positivity
    exact_mod_cast this
  refine exclude_of_cert (ε := epsX) (σ := σ) (e0 := e0) (j1 := j1) frob_PF_sub_Ptil
    (fun ν hν horth => ?_) ?_ (fun w => ?_) C (by exact_mod_cast hσ0) (by exact_mod_cast hρ0)
    (by exact_mod_cast hj0) (by exact_mod_cast hρH) (by exact_mod_cast hρF) ?_ (by exact_mod_cast hcol)
    (by exact_mod_cast hcn) hδ hδρ hH
  · rw [← hP, ← hPq]; exact sigma_sound hS ν hν (by rw [toR_eq_V hf]; exact horth)
  · rw [← hP, ← hPq]; exact e0_sound he
  · rw [← hP, ← hPq]
    have := j1_sound hj w
    rw [toR_eq_V hf] at this
    exact this
  · have h1 : ((e0 + j1 * (ρ + epsX) + s2hi * (ρ + epsX) ^ 2 : ℚ) : ℝ) ≤ ((σ * R.n : ℚ) : ℝ) := by
      exact_mod_cast hnb
    push_cast at h1
    have h2 : Real.sqrt 2 * ((ρ : ℝ) + epsX) ^ 2 ≤ (s2hi : ℝ) * ((ρ : ℝ) + epsX) ^ 2 :=
      mul_le_mul_of_nonneg_right hs2 (sq_nonneg _)
    linarith

end NoFourMUBs.KernelAtlas.X
