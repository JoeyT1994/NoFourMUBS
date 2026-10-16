import KernelAtlas.NormalK

/-!
# A zero-dimensional Record from kernel checks (Tao's `S₆`)

At Tao's matrix the Hadamard Jacobian is injective on the horizontal space (tangent dimension 0), so the Record has the
frame `T = 0`: `g = λ = t = 0`, `r_H = 0`, and every horizontal `δ` is normal (`δ = ν`). `recordK0` is `recordK`
without the frame check `frameOK` (which needs `G ≈ I`):
* `hproj`, `hlam`, `hcol` hold with `η = 0` because the frame is zero (`frameZero`, decided);
* `hσ` (`sigmaOK`, now on the whole horizontal space), `he` (`e0OK`), `hj` (`j1OK`) as in `recordK`;
* `barsOK0`: with `b̄ = e₀`, `s_lo² ≤ σ² − 4 s̄₃ b̄` and `n̄ = 2b̄/(σ + s_lo)`, the cycle radii `r_H = 0`,
  `n̄/2π̃ ≤ n̄_bar`, `r = n̄/2π̃ ≤ r̄`, `r_F ≤ n̄/2π̃ ≤ r̄_F` (the Stage C radii are all `n`), `2 s̄₃ R < σ`,
  `1 + e₀/4 ≤ K̄²`.
-/

open Hadamard6 NoFourMUBs NoFourMUBs.StageC

namespace NoFourMUBs.KernelAtlas

/-- The frame is zero. -/
def frameZero (F : QFrame) : Bool := all4 fun k => allI6 fun a => allI6 fun c => decide (F k a c = 0)

lemma frameZero_toR {F : QFrame} (h : frameZero F = true) (k : Fin 4) : F.toR k = 0 := by
  ext a c
  have := of_decide_eq_true (allI6_spec (allI6_spec (all4_spec h k) a) c)
  simp [QFrame.toR, this]

def BarsQ.nbar0 (B : BarsQ) : ℚ := 2 * B.e0 / (B.sigma + B.slo)

def barsOK0 (B : BarsQ) (pq : ParQ) (tq : TParQ) : Bool :=
  decide (0 ≤ B.R) && decide (0 < B.sigma) && decide (2 * s3hi * B.R < B.sigma) && decide (0 ≤ B.e0) &&
  decide (0 ≤ B.j1) && decide (0 ≤ B.slo) && decide (B.slo ^ 2 ≤ B.sigma ^ 2 - 4 * s3hi * B.e0) &&
  decide (0 ≤ tq.rHbar) && decide (B.nbar0 / (2 * piLo) ≤ tq.nbar) && decide (B.nbar0 / (2 * piLo) ≤ pq.rbar) &&
  decide (B.nbar0 / (2 * piLo) ≤ pq.rFbar) && decide (1 + B.e0 / 4 ≤ pq.Kbar ^ 2) && decide (0 ≤ pq.Kbar)

lemma barsOK0_parts {B : BarsQ} {pq : ParQ} {tq : TParQ} (h : barsOK0 B pq tq = true) :
    0 ≤ B.R ∧ 0 < B.sigma ∧ 2 * s3hi * B.R < B.sigma ∧ 0 ≤ B.e0 ∧ 0 ≤ B.j1 ∧ 0 ≤ B.slo ∧
    B.slo ^ 2 ≤ B.sigma ^ 2 - 4 * s3hi * B.e0 ∧ 0 ≤ tq.rHbar ∧ B.nbar0 / (2 * piLo) ≤ tq.nbar ∧
    B.nbar0 / (2 * piLo) ≤ pq.rbar ∧ B.nbar0 / (2 * piLo) ≤ pq.rFbar ∧ 1 + B.e0 / 4 ≤ pq.Kbar ^ 2 ∧ 0 ≤ pq.Kbar := by
  simp only [barsOK0, Bool.and_eq_true] at h
  obtain ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩, h6⟩, h7⟩, h8⟩, h9⟩, h10⟩, h11⟩, h12⟩, h13⟩ := h
  exact ⟨of_decide_eq_true h1, of_decide_eq_true h2, of_decide_eq_true h3, of_decide_eq_true h4,
    of_decide_eq_true h5, of_decide_eq_true h6, of_decide_eq_true h7, of_decide_eq_true h8, of_decide_eq_true h9,
    of_decide_eq_true h10, of_decide_eq_true h11, of_decide_eq_true h12, of_decide_eq_true h13⟩

/-- `0 ≤ nroot σ e₀ ≤ n̄`. -/
lemma nroot_bars0 {B : BarsQ} {pq : ParQ} {tq : TParQ} (hB : barsOK0 B pq tq = true) :
    0 ≤ nroot B.sigma B.e0 ∧ nroot B.sigma B.e0 ≤ (B.nbar0 : ℝ) := by
  obtain ⟨-, hσ0, -, he0, -, hslo, hD, -⟩ := barsOK0_parts hB
  have he0' : (0 : ℝ) ≤ B.e0 := by exact_mod_cast he0
  have hD' : (B.slo : ℝ) ^ 2 ≤ (B.sigma : ℝ) ^ 2 - 4 * s3hi * (B.e0 : ℝ) := by exact_mod_cast hD
  have hσ' : (0 : ℝ) < B.sigma := by exact_mod_cast hσ0
  have hslo' : (0 : ℝ) ≤ B.slo := by exact_mod_cast hslo
  refine ⟨?_, by simpa [BarsQ.nbar0] using nroot_le he0' le_rfl sqrt3_le_s3hi hslo' hD' hσ'⟩
  unfold nroot
  apply div_nonneg _ (by positivity)
  rw [sub_nonneg]
  calc Real.sqrt ((B.sigma : ℝ) ^ 2 - 2 * (2 * Real.sqrt 3) * B.e0) ≤ Real.sqrt ((B.sigma : ℝ) ^ 2) :=
        Real.sqrt_le_sqrt (by have : 0 < Real.sqrt 3 := Real.sqrt_pos.mpr (by norm_num); nlinarith)
    _ = B.sigma := Real.sqrt_sq hσ'.le

/-- **A zero-dimensional certified Record from kernel checks.** -/
noncomputable def recordK0 {tb tbN : Tab} {F : QFrame} {S : SigQ} {B : BarsQ} {pq : ParQ} {tq : TParQ}
    (hPq : tbN.pq = tb.pq) (hF : frameZero F = true) (hS : sigmaOK tbN F S B.sigma = true)
    (he : e0OK tbN B.e0 = true) (hj : j1OK tbN F B.j1 = true) (hB : barsOK0 B pq tq = true)
    (SC : ∀ {rH n r rF K : ℝ}, 0 ≤ K → (∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • Pmat tb.pq) z) ≤ K * cnorm z) →
      K ≤ pq.Kbar → r ≤ pq.rbar → rF ≤ pq.rFbar → rH ≤ tq.rHbar → n ≤ tq.nbar →
      StageCCert ((1 / (2 * Real.pi)) • Pmat tb.pq) F.toR rH n r rF) : RecordCert where
  P := Pmat tb.pq
  R := B.R
  T := F.toR
  σ := B.sigma
  e0 := B.e0
  j1 := B.j1
  lam := 0
  g := 0
  t := 0
  hj0 := by obtain ⟨-, -, -, -, hj0, -⟩ := barsOK0_parts hB; exact_mod_cast hj0
  hlam0 := le_rfl
  hg0 := le_rfl
  ht0 := le_rfl
  hproj := fun δ hδ => ⟨0, δ, by simp [frameZero_toR hF], hδ, fun k => by simp [frameZero_toR hF k],
    by simp⟩
  hσ := fun ν hν horth => by rw [← hPq]; exact sigma_sound hS ν hν horth
  he := by rw [← hPq]; exact e0_sound he
  hj := fun η => by rw [← hPq]; exact j1_sound hj η
  hlam := fun η => by simp [frameZero_toR hF, sumsq]
  hcol := fun η i => by
    simp only [frameZero_toR hF, smul_zero, Finset.sum_const_zero, zero_mul]
    simp [colnorm, vnorm]
  hLR := by
    obtain ⟨hR0, -, hLR, -⟩ := barsOK0_parts hB
    have h1 : (2 * s3hi * B.R : ℝ) < B.sigma := by exact_mod_cast hLR
    have hR : (0 : ℝ) ≤ B.R := by exact_mod_cast hR0
    nlinarith [sqrt3_le_s3hi]
  stageC := by
    obtain ⟨hR0, -, -, -, -, -, -, hrH, hn, hr, hrF, hK, hK0⟩ := barsOK0_parts hB
    obtain ⟨hroot0, hroot⟩ := nroot_bars0 hB
    have hb : (B.e0 : ℝ) + B.j1 * (0 * B.R) + Real.sqrt 3 * 0 * (0 * B.R) ^ 2 = B.e0 := by ring
    rw [hb]
    have hpi := piLo_pos
    have cyc : nroot B.sigma B.e0 / (2 * Real.pi) ≤ (B.nbar0 : ℝ) / (2 * piLo) :=
      (div_2pi_le hroot0).trans (by gcongr)
    refine SC (K := pq.Kbar) (by exact_mod_cast hK0) ?_ le_rfl ?_ ?_ ?_ ?_
    · intro z; rw [← hPq]
      exact opnorm_sound he (by rw [hPq] at *; exact hK) hK0 z
    · have h1 := (Rat.cast_le (K := ℝ)).mpr hr; push_cast at h1
      calc (0 * (0 * (B.R : ℝ)) + nroot B.sigma B.e0) / (2 * Real.pi) = nroot B.sigma B.e0 / (2 * Real.pi) := by
            ring_nf
        _ ≤ _ := cyc.trans h1
    · have h1 := (Rat.cast_le (K := ℝ)).mpr hrF; push_cast at h1
      calc min (B.R : ℝ) (Real.sqrt 0 * (0 * B.R) + nroot B.sigma B.e0) / (2 * Real.pi)
          ≤ nroot B.sigma B.e0 / (2 * Real.pi) := by
            gcongr; exact (min_le_right _ _).trans (by simp)
        _ ≤ _ := cyc.trans h1
    · have h1 : (0 : ℝ) ≤ tq.rHbar := by exact_mod_cast hrH
      simpa using h1
    · have h1 := (Rat.cast_le (K := ℝ)).mpr hn; push_cast at h1
      exact cyc.trans h1

end NoFourMUBs.KernelAtlas
