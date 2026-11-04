import KernelAtlas.E0K
import KernelAtlas.StageCK

/-!
# A `RecordCert` from kernel checks

`recordK` assembles a certified Record from:
* the frame checks `frameOK` (`hproj`, `hlam`, `hcol`, and `g, λ, t ≥ 0`);
* `sigmaOK` (`hσ`), `e0OK` (`he`), `j1OK` (`hj`) on a high-precision table `tbN` with the same centre;
* `barsOK`: with `√3 ≤ s̄₃`, `b̄ = e₀ + j₁ gR + s̄₃ λ (gR)²`, `0 ≤ s_lo`, `s_lo² ≤ σ² − 4 s̄₃ b̄` and
  `n̄ = 2b̄/(σ + s_lo)` (so `nroot σ b ≤ n̄`, `nroot_le`), the cycle radii are below the bars of the bin tree:
  `gR/2π̃ ≤ r̄_H`, `n̄/2π̃ ≤ n̄_bar`, `(t gR + n̄)/2π̃ ≤ r̄`, `R/2π̃ ≤ r̄_F` (`π̃ ≤ π`), `2 s̄₃ R < σ`, and
  `1 + e₀/4 ≤ K̄²` (`hK` via `opnorm_sound`);
* a Stage C certificate for any radii below the bars (`Rec100.stageC` and its siblings).
-/

open Hadamard6 NoFourMUBs NoFourMUBs.StageC

namespace NoFourMUBs.KernelAtlas

def s3hi : ℚ := 1732050808 / 10 ^ 9

/-- The rational radius data of one Record. -/
structure BarsQ where
  R : ℚ
  sigma : ℚ
  e0 : ℚ
  j1 : ℚ
  slo : ℚ

def BarsQ.gR (B : BarsQ) (fq : FrameQ) : ℚ := fq.g * B.R
def BarsQ.bbar (B : BarsQ) (fq : FrameQ) : ℚ := B.e0 + B.j1 * B.gR fq + s3hi * fq.lam * B.gR fq ^ 2
def BarsQ.nbar (B : BarsQ) (fq : FrameQ) : ℚ := 2 * B.bbar fq / (B.sigma + B.slo)

def barsOK (B : BarsQ) (fq : FrameQ) (pq : ParQ) (tq : TParQ) : Bool :=
  decide (0 ≤ B.R) && decide (0 < B.sigma) && decide (2 * s3hi * B.R < B.sigma) && decide (0 ≤ B.e0) &&
  decide (0 ≤ B.j1) && decide (0 ≤ B.slo) && decide (B.slo ^ 2 ≤ B.sigma ^ 2 - 4 * s3hi * B.bbar fq) &&
  decide (B.gR fq / (2 * piLo) ≤ tq.rHbar) && decide (B.nbar fq / (2 * piLo) ≤ tq.nbar) &&
  decide ((fq.t * B.gR fq + B.nbar fq) / (2 * piLo) ≤ pq.rbar) && decide (B.R / (2 * piLo) ≤ pq.rFbar) &&
  decide (1 + B.e0 / 4 ≤ pq.Kbar ^ 2) && decide (0 ≤ pq.Kbar)

lemma barsOK_parts {B : BarsQ} {fq : FrameQ} {pq : ParQ} {tq : TParQ} (h : barsOK B fq pq tq = true) :
    0 ≤ B.R ∧ 0 < B.sigma ∧ 2 * s3hi * B.R < B.sigma ∧ 0 ≤ B.e0 ∧ 0 ≤ B.j1 ∧ 0 ≤ B.slo ∧
    B.slo ^ 2 ≤ B.sigma ^ 2 - 4 * s3hi * B.bbar fq ∧ B.gR fq / (2 * piLo) ≤ tq.rHbar ∧
    B.nbar fq / (2 * piLo) ≤ tq.nbar ∧ (fq.t * B.gR fq + B.nbar fq) / (2 * piLo) ≤ pq.rbar ∧
    B.R / (2 * piLo) ≤ pq.rFbar ∧ 1 + B.e0 / 4 ≤ pq.Kbar ^ 2 ∧ 0 ≤ pq.Kbar := by
  simp only [barsOK, Bool.and_eq_true] at h
  obtain ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩, h6⟩, h7⟩, h8⟩, h9⟩, h10⟩, h11⟩, h12⟩, h13⟩ := h
  exact ⟨of_decide_eq_true h1, of_decide_eq_true h2, of_decide_eq_true h3, of_decide_eq_true h4,
    of_decide_eq_true h5, of_decide_eq_true h6, of_decide_eq_true h7, of_decide_eq_true h8, of_decide_eq_true h9,
    of_decide_eq_true h10, of_decide_eq_true h11, of_decide_eq_true h12, of_decide_eq_true h13⟩

lemma sqrt3_le_s3hi : Real.sqrt 3 ≤ (s3hi : ℝ) := by
  rw [Real.sqrt_le_left (by unfold s3hi; positivity)]
  unfold s3hi; norm_num

lemma piLo_le_pi : (piLo : ℝ) ≤ Real.pi := by
  have := Real.pi_gt_d20; unfold piLo; push_cast; norm_num at this ⊢; linarith

lemma piLo_pos : (0 : ℝ) < piLo := by unfold piLo; norm_num

lemma div_2pi_le {x : ℝ} (hx : 0 ≤ x) : x / (2 * Real.pi) ≤ x / (2 * piLo) :=
  div_le_div_of_nonneg_left hx (by have := piLo_pos; positivity) (by linarith [piLo_le_pi])

/-- `nroot σ b ≤ 2b̄/(σ + s_lo)`. -/
lemma nroot_le {σ b bb s3 slo : ℝ} (hb0 : 0 ≤ b) (hbb : b ≤ bb) (hs3 : Real.sqrt 3 ≤ s3) (hslo : 0 ≤ slo)
    (hD : slo ^ 2 ≤ σ ^ 2 - 4 * s3 * bb) (hσ : 0 < σ) : nroot σ b ≤ 2 * bb / (σ + slo) := by
  have h3 : 0 < Real.sqrt 3 := Real.sqrt_pos.mpr (by norm_num)
  have hbb0 : 0 ≤ bb := hb0.trans hbb
  set D := σ ^ 2 - 2 * (2 * Real.sqrt 3) * b with hDdef
  have hDge : slo ^ 2 ≤ D := by
    have : Real.sqrt 3 * b ≤ s3 * bb := mul_le_mul hs3 hbb hb0 (h3.le.trans hs3)
    rw [hDdef]; nlinarith
  have hD0 : 0 ≤ D := (sq_nonneg _).trans hDge
  have hsD : slo ≤ Real.sqrt D := Real.le_sqrt_of_sq_le hDge
  have hsq : Real.sqrt D ^ 2 = D := Real.sq_sqrt hD0
  have hpos : 0 < σ + Real.sqrt D := by positivity
  have hroot : nroot σ b = 2 * b / (σ + Real.sqrt D) := by
    unfold nroot
    rw [← hDdef, div_eq_div_iff (by positivity) hpos.ne']
    nlinarith
  rw [hroot, div_le_div_iff₀ hpos (by linarith)]
  nlinarith

/-- **A certified Record from kernel checks.** -/
noncomputable def recordK {tb tbN : Tab} {F : QFrame} {fq : FrameQ} {S : SigQ} {B : BarsQ} {pq : ParQ} {tq : TParQ}
    (hPq : tbN.pq = tb.pq) (hF : frameOK F fq = true) (hS : sigmaOK tbN F S B.sigma = true)
    (he : e0OK tbN B.e0 = true) (hj : j1OK tbN F B.j1 = true) (hB : barsOK B fq pq tq = true)
    (SC : ∀ {rH n r rF K : ℝ}, 0 ≤ K → (∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • Pmat tb.pq) z) ≤ K * cnorm z) →
      K ≤ pq.Kbar → r ≤ pq.rbar → rF ≤ pq.rFbar → rH ≤ tq.rHbar → n ≤ tq.nbar →
      StageCCert ((1 / (2 * Real.pi)) • Pmat tb.pq) F.toR rH n r rF) : RecordCert where
  P := Pmat tb.pq
  R := B.R
  T := F.toR
  σ := B.sigma
  e0 := B.e0
  j1 := B.j1
  lam := fq.lam
  g := fq.g
  t := fq.t
  hj0 := by obtain ⟨-, -, -, -, hj0, -⟩ := barsOK_parts hB; exact_mod_cast hj0
  hlam0 := by
    obtain ⟨-, -, -, he0, -, -, -, hl, -⟩ := frameOK_parts hF
    have : (0 : ℚ) ≤ fq.lam := by linarith
    exact_mod_cast this
  hg0 := by obtain ⟨-, -, -, -, -, -, hg0, -⟩ := frameOK_parts hF; exact_mod_cast hg0
  ht0 := by obtain ⟨-, -, -, -, -, -, -, -, ht0, -⟩ := frameOK_parts hF; exact_mod_cast ht0
  hproj := frame_proj hF
  hσ := fun ν hν horth => by rw [← hPq]; exact sigma_sound hS ν hν horth
  he := by rw [← hPq]; exact e0_sound he
  hj := fun η => by rw [← hPq]; exact j1_sound hj η
  hlam := frame_lam hF
  hcol := frame_col hF
  hLR := by
    obtain ⟨hR0, -, hLR, -⟩ := barsOK_parts hB
    have h1 : (2 * s3hi * B.R : ℝ) < B.sigma := by exact_mod_cast hLR
    have hR : (0 : ℝ) ≤ B.R := by exact_mod_cast hR0
    nlinarith [sqrt3_le_s3hi]
  stageC := by
    obtain ⟨hR0, hσ0, hLR, he0, hj0, hslo, hD, hrH, hn, hr, hrF, hK, hK0⟩ := barsOK_parts hB
    obtain ⟨-, -, -, hG0, -, -, hg0, hl, ht0, -⟩ := frameOK_parts hF
    have hR0' : (0 : ℝ) ≤ B.R := by exact_mod_cast hR0
    have hg0' : (0 : ℝ) ≤ fq.g := by exact_mod_cast hg0
    have ht0' : (0 : ℝ) ≤ fq.t := by exact_mod_cast ht0
    have hl0q : (0 : ℚ) ≤ fq.lam := by linarith
    have hl0' : (0 : ℝ) ≤ fq.lam := by exact_mod_cast hl0q
    have he0' : (0 : ℝ) ≤ B.e0 := by exact_mod_cast he0
    have hj0' : (0 : ℝ) ≤ B.j1 := by exact_mod_cast hj0
    have hgR : (0 : ℝ) ≤ fq.g * B.R := mul_nonneg hg0' hR0'
    -- the normal-bound root against `n̄`
    set b : ℝ := B.e0 + B.j1 * (fq.g * B.R) + Real.sqrt 3 * fq.lam * (fq.g * B.R) ^ 2 with hbdef
    have hb0 : 0 ≤ b := by positivity
    have hbb : b ≤ (B.bbar fq : ℝ) := by
      simp only [BarsQ.bbar, BarsQ.gR]; push_cast
      have := mul_le_mul_of_nonneg_right sqrt3_le_s3hi (mul_nonneg hl0' (sq_nonneg (fq.g * B.R : ℝ)))
      nlinarith
    have hD' : (B.slo : ℝ) ^ 2 ≤ (B.sigma : ℝ) ^ 2 - 4 * s3hi * (B.bbar fq : ℝ) := by exact_mod_cast hD
    have hσ' : (0 : ℝ) < B.sigma := by exact_mod_cast hσ0
    have hslo' : (0 : ℝ) ≤ B.slo := by exact_mod_cast hslo
    have hroot : nroot B.sigma b ≤ (B.nbar fq : ℝ) := by
      have := nroot_le hb0 hbb sqrt3_le_s3hi hslo' hD' hσ'
      simpa [BarsQ.nbar] using this
    have hroot0 : 0 ≤ nroot B.sigma b := by
      unfold nroot
      have h3 : 0 < Real.sqrt 3 := Real.sqrt_pos.mpr (by norm_num)
      apply div_nonneg _ (by positivity)
      rw [sub_nonneg]
      calc Real.sqrt ((B.sigma : ℝ) ^ 2 - 2 * (2 * Real.sqrt 3) * b) ≤ Real.sqrt ((B.sigma : ℝ) ^ 2) :=
            Real.sqrt_le_sqrt (by nlinarith)
        _ = B.sigma := Real.sqrt_sq hσ'.le
    have hn0 : (0 : ℝ) ≤ B.nbar fq := hroot0.trans hroot
    refine SC (K := pq.Kbar) (by exact_mod_cast hK0) ?_ le_rfl ?_ ?_ ?_ ?_
    · intro z; rw [← hPq]
      exact opnorm_sound he (by rw [hPq] at *; exact hK) hK0 z
    · -- r
      have h1 := (Rat.cast_le (K := ℝ)).mpr hr
      push_cast [BarsQ.gR] at h1
      calc (fq.t * (fq.g * B.R) + nroot B.sigma b) / (2 * Real.pi)
          ≤ (fq.t * (fq.g * B.R) + nroot B.sigma b) / (2 * piLo) := div_2pi_le (by positivity)
        _ ≤ (fq.t * (fq.g * B.R) + B.nbar fq) / (2 * piLo) := by gcongr; have := piLo_pos; positivity
        _ ≤ _ := h1
    · -- r_F
      have h1 := (Rat.cast_le (K := ℝ)).mpr hrF
      push_cast at h1
      calc min (B.R : ℝ) (Real.sqrt fq.lam * (fq.g * B.R) + nroot B.sigma b) / (2 * Real.pi)
          ≤ B.R / (2 * Real.pi) := by gcongr; exact min_le_left _ _
        _ ≤ B.R / (2 * piLo) := div_2pi_le hR0'
        _ ≤ _ := h1
    · -- r_H
      have h1 := (Rat.cast_le (K := ℝ)).mpr hrH
      push_cast [BarsQ.gR] at h1
      exact (div_2pi_le hgR).trans h1
    · -- n
      have h1 := (Rat.cast_le (K := ℝ)).mpr hn
      push_cast at h1
      calc nroot B.sigma b / (2 * Real.pi) ≤ nroot B.sigma b / (2 * piLo) := div_2pi_le hroot0
        _ ≤ B.nbar fq / (2 * piLo) := by gcongr; have := piLo_pos; positivity
        _ ≤ _ := h1

end NoFourMUBs.KernelAtlas
