import KernelAtlas.Seed.Full
import NoFourMUBs.SeedAtlas.Atlas

/-!
# A kernel seed ball as a `SeedBallCert`, and its transfer boxes as `SeedTargetHolds`

* `hC1_of_boxes`: the C1 boxes of a ball (each `c1Box = true`) covering `{‖w‖ ≤ r}` give the field `hC1`;
* `ballCert`: the `SeedBallCert` of a kernel ball `D : SeedD` from `hMth`, `hcol`, `hfrob`, `hC1` and Stage C
  (`Seed/Frame.lean`, `Seed/StageC.lean`);
* `t1_holds`, `t2_holds`: a transfer box of a C1 box (`fullBox_sound`) gives the semantic claim of `Transfer.lean` for
  any atlas family whose balls and records carry the kernel data (the links are the assembly's business, by `rfl`
  through the shared table).
-/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas NoFourMUBs.StageC

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### C1 on a ball -/

/-- **C1 from the boxes.** -/
theorem hC1_of_boxes {B : BallD} {o : ℤˣ} (ho : B.o = (o : ℤ)) {r : ℝ} {boxes : List BoxD}
    (hall : ∀ D ∈ boxes, c1Box B D = true)
    (hcov : ∀ w, wnorm w ≤ r → ∃ D ∈ boxes, InBox D.hb (fun l => w l - rq (gi D.wc l))) :
    ∀ w : Fin 4 → ℝ, wnorm w ≤ r →
      0 < seedR (seedOf (th0R B + MthR B *ᵥ w)) ∧
      ∃ Q : RMat6, ∃ N : Matrix I6 I6 ℤ, Hadamard6.IsHadamard (phaseMat Q) ∧
        MatchedO o (seedOf (th0R B + MthR B *ᵥ w)) (phaseMat Q) ∧
        frob (Q - Pm B - tang (Um B) w - wind N) ≤ rn B.n := by
  intro w hw
  obtain ⟨D, hD, hu⟩ := hcov w hw
  have e : wOf D (fun l => w l - rq (gi D.wc l)) = w := by funext l; simp [wOf]
  have := c1Box_sound (hall D hD) ho hu
  rwa [e] at this

/-- **The kernel seed ball.** -/
def ballCert (D : SeedD) (o : ℤˣ) (hMth : IsUnit (MthR D.B).det)
    (hcol : ∀ (w : Fin 4 → ℝ) (i : I6), colnorm (tang (Um D.B) w) i ≤ rn D.t * wnorm w)
    (hfrob : ∀ w : Fin 4 → ℝ, frob (tang (Um D.B) w) ≤ rn D.lamF * wnorm w)
    (hC1 : ∀ w : Fin 4 → ℝ, wnorm w ≤ rn D.r →
      0 < seedR (seedOf (th0R D.B + MthR D.B *ᵥ w)) ∧
      ∃ Q : RMat6, ∃ N : Matrix I6 I6 ℤ, Hadamard6.IsHadamard (phaseMat Q) ∧
        MatchedO o (seedOf (th0R D.B + MthR D.B *ᵥ w)) (phaseMat Q) ∧
        frob (Q - Pm D.B - tang (Um D.B) w - wind N) ≤ rn D.B.n)
    (stageC : StageC.StageCCert ((1 / (2 * Real.pi)) • Pm D.B) (Um D.B) (rn D.r / (2 * Real.pi))
      (rn D.B.n / (2 * Real.pi)) ((rn D.t * rn D.r + rn D.B.n) / (2 * Real.pi))
      ((rn D.lamF * rn D.r + rn D.B.n) / (2 * Real.pi))) : SeedBallCert where
  theta0 := th0R D.B
  Mth := MthR D.B
  r := rn D.r
  o := o
  P := Pm D.B
  U := Um D.B
  n := rn D.B.n
  t := rn D.t
  lamF := rn D.lamF
  hMth := hMth
  ht0 := rn_nonneg _
  hF0 := rn_nonneg _
  hcol := hcol
  hfrob := hfrob
  hC1 := hC1
  stageC := stageC

/-! ### Transfer boxes -/

section Targets

variable {σs ιr : Type} {S : σs → SeedBallCert} {A : ιr → RecordCert}

/-- **T1 on a transfer box** of a C1 box of ball `j`, into ball `l`. -/
theorem t1_holds {j l : σs} {B : BallD} {o : ℤˣ} (ho : B.o = (o : ℤ))
    (hj : (S j).theta0 = th0R B ∧ (S j).Mth = MthR B ∧ (S j).o = o)
    {D : BoxD} {subs : List SubD} (hfb : fullBox B D subs = true) {s : SubD} (hs : s ∈ subs) (hk : s.kind = 1)
    {ol : ℤˣ} (hl : (S l).theta0 = th0R s.bl ∧ (S l).Mth = MthR s.bl ∧ (S l).r = rn s.rl ∧ (S l).o = ol)
    (hol : s.bl.o = (ol : ℤ)) {σ τ : Equiv.Perm I6} (hσ : ∀ i, σ i = permFun s.t1.rows i)
    (hτ : ∀ j, τ j = permFun s.t1.cols j) {kk : Fin 4} (hkk : (kk : ℕ) = s.t1.g)
    {v : Fin 4 → ℝ} (hv : InBox s.h v) :
    SeedTargetHolds S A j (.t1 l kk σ τ) (subW D s v) := by
  obtain ⟨-, hsub⟩ := fullBox_sound hfb ho
  obtain ⟨Q, hH, hM, h1, -⟩ := hsub s hs v hv
  have hMl : IsUnit (MthR s.bl).det := by rw [← hl.2.1]; exact (S l).hMth
  obtain ⟨⟨w', hw', hE⟩, hB, hC⟩ := h1 hk hσ hτ hkk hol hMl
  refine ⟨phaseMat Q, hH, ?_, ⟨w', ?_, ?_⟩, ?_, ?_⟩
  · simp only [SeedBallCert.θ, hj.1, hj.2.1, hj.2.2]; exact hM
  · rw [hl.2.2.1]; exact hw'
  · simp only [SeedBallCert.θ, hl.1, hl.2.1]; exact hE
  · rw [hl.2.2.2]; exact hB
  · rw [hl.2.2.2]; exact hC

/-- **T2 on a transfer box** of a C1 box of ball `j`, into record `t`: the grid centre's bound plus its distance to the
record's centre stays under the record's radius. -/
theorem t2_holds {j : σs} {t : ιr} {B : BallD} {o : ℤˣ} (ho : B.o = (o : ℤ))
    (hj : (S j).theta0 = th0R B ∧ (S j).Mth = MthR B ∧ (S j).o = o)
    {D : BoxD} {subs : List SubD} (hfb : fullBox B D subs = true) {s : SubD} (hs : s ∈ subs) (hk : s.kind ≠ 1)
    {σ τ : Equiv.Perm I6} (hσ : ∀ i, σ i = permFun s.t2.rows i) (hτ : ∀ j, τ j = permFun s.t2.cols j)
    (hR : rn s.t2.nb + frob (Pg s.t2.Pt - (A t).P) < (A t).R)
    {v : Fin 4 → ℝ} (hv : InBox s.h v) :
    SeedTargetHolds S A j (.t2 t (SignedPerm.mk σ τ s.t2.tr s.t2.cj) (Nmat s.t2.N)) (subW D s v) := by
  obtain ⟨-, hsub⟩ := fullBox_sound hfb ho
  obtain ⟨Q, hH, hM, -, h2⟩ := hsub s hs v hv
  have hb := h2 hk hσ hτ
  refine ⟨Q, hH, ?_, ?_⟩
  · simp only [SeedBallCert.θ, hj.1, hj.2.1, hj.2.2]; exact hM
  · set X := (SignedPerm.mk σ τ s.t2.tr s.t2.cj).act Q + wind (Nmat s.t2.N)
    have e : X - (A t).P = (X - Pg s.t2.Pt) + (Pg s.t2.Pt - (A t).P) := by abel
    rw [e, hor_add]
    calc frob (hor (X - Pg s.t2.Pt) + hor (Pg s.t2.Pt - (A t).P))
        ≤ frob (hor (X - Pg s.t2.Pt)) + frob (hor (Pg s.t2.Pt - (A t).P)) := frob_add_le _ _
      _ ≤ rn s.t2.nb + frob (Pg s.t2.Pt - (A t).P) := add_le_add hb (frob_hor_le _)
      _ < (A t).R := hR

end Targets

end NoFourMUBs.KernelAtlas.Seed
