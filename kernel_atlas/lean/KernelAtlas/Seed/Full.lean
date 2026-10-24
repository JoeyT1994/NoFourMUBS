import KernelAtlas.Seed.Shift

/-!
# One kernel check per C1 box: C1 and the transfer boxes inside it

`fullBox B D subs`: the C1 check of the box `D` and, for every transfer box `s` inside it (centre `w_c + c`,
half-widths `h'`), the T1 or T2 check on the core's models re-centred on `s` (`shiftL`).  The core is computed once:
`qModels B D` and `kModels B D` are closed terms, shared by all the transfer checks (the kernel caches them).

`fullBox_sound`: C1 on the box, and on every transfer box the T1 claim (`t1OK_sound`) or the T2 claim (`t2OK_sound`).
-/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

/-- A transfer box inside a C1 box: offset `c`, half-widths `h`, kind (`1` = T1, `2` = T2) and the target data
(for T1 the target's `θ₀`, `M_θ`, `o` as a `BallD` and its radius `rl`). -/
structure SubD where
  c : List ℤ
  h : List ℕ
  kind : ℕ
  t1 : T1D
  bl : BallD
  rl : ℕ
  t2 : T2D

/-- The sub-box lies in the box. -/
def boxIn (h : List ℕ) (c : List ℤ) (h' : List ℕ) : Bool :=
  (l4 fun l => decide ((gi c l).natAbs + gn h' l ≤ gn h l)).all id

def subOK (D : BoxD) (qm km : List CT) (s : SubD) : Bool :=
  boxIn D.hb s.c s.h &&
    (if s.kind = 1 then t1OK s.h (shiftL s.c s.h qm) (shiftL s.c s.h km) s.t1 s.bl s.rl
     else t2OK s.h (shiftL s.c s.h qm) s.t2)

/-- **The per-C1-box check.** -/
def fullBox (B : BallD) (D : BoxD) (subs : List SubD) : Bool :=
  c1Box B D && subs.all (subOK D (qModels B D) (kModels B D))

lemma boxIn_spec {h : List ℕ} {c : List ℤ} {h' : List ℕ} (hb : boxIn h c h' = true) {v : Fin 4 → ℝ}
    (hv : InBox h' v) : InBox h (fun l => rq (gi c l) + v l) := by
  intro l
  have hl := all_l4 hb l.2
  rw [decide_eq_true_eq] at hl
  have h1 : ((gi c l).natAbs : ℝ) + (gn h' l : ℝ) ≤ gn h l := by exact_mod_cast hl
  have h2 := hv l
  have h3 : |rq (gi c l)| = ((gi c l).natAbs : ℝ) / 2 ^ pp := by
    unfold rq; rw [abs_div, abs_of_pos (two_pow_pos pp), Nat.cast_natAbs, Int.cast_abs]
  calc |rq (gi c l) + v l| ≤ |rq (gi c l)| + |v l| := abs_add_le _ _
    _ ≤ ((gi c l).natAbs : ℝ) / 2 ^ pp + rn (h'.getD l 0) := add_le_add h3.le h2
    _ ≤ rn (h.getD l 0) := by
        unfold rn; rw [← add_div]; exact div_le_div_of_nonneg_right h1 (two_pow_pos pp).le

lemma qModels_length (B : BallD) (D : BoxD) : (qModels B D).length = 36 := rfl
lemma kModels_length (B : BallD) (D : BoxD) : (kModels B D).length = 36 := rfl

/-- The transfer box `s` of `D` as points `w`. -/
def subW (D : BoxD) (s : SubD) (v : Fin 4 → ℝ) : Fin 4 → ℝ := wOf D (fun l => rq (gi s.c l) + v l)

/-- **Soundness of the per-C1-box check.** -/
theorem fullBox_sound {B : BallD} {D : BoxD} {subs : List SubD} (hok : fullBox B D subs = true) {o : ℤˣ}
    (ho : B.o = (o : ℤ)) :
    c1Box B D = true ∧ ∀ s ∈ subs, ∀ v : Fin 4 → ℝ, InBox s.h v →
      ∃ Q : RMat6, Hadamard6.IsHadamard (phaseMat Q) ∧
        MatchedO o (seedOf (th0R B + MthR B *ᵥ subW D s v)) (phaseMat Q) ∧
        (s.kind = 1 → ∀ {σ τ : Equiv.Perm I6}, (∀ i, σ i = permFun s.t1.rows i) → (∀ j, τ j = permFun s.t1.cols j) →
          ∀ {kk : Fin 4}, (kk : ℕ) = s.t1.g → ∀ {ol : ℤˣ}, s.bl.o = (ol : ℤ) → IsUnit (MthR s.bl).det →
          (∃ w', wnorm w' < rn s.rl ∧
            leadingBlock (cornerMat kk σ τ (phaseMat Q)) = seedCorner (seedOf (th0R s.bl + MthR s.bl *ᵥ w'))) ∧
          0 < osgn ol * (psi (rightBlock (cornerMat kk σ τ (phaseMat Q)))).im ∧
          0 < -osgn ol * (psi (lowerBlock (cornerMat kk σ τ (phaseMat Q)))).im) ∧
        (s.kind ≠ 1 → ∀ {σ τ : Equiv.Perm I6}, (∀ i, σ i = permFun s.t2.rows i) →
          (∀ j, τ j = permFun s.t2.cols j) →
          frob (hor ((SignedPerm.mk σ τ s.t2.tr s.t2.cj).act Q + wind (Nmat s.t2.N) - Pg s.t2.Pt)) ≤ rn s.t2.nb) := by
  unfold fullBox at hok
  rw [Bool.and_eq_true, List.all_eq_true] at hok
  obtain ⟨hc1, hsubs⟩ := hok
  refine ⟨hc1, fun s hs v hv => ?_⟩
  have hsub := hsubs s hs
  unfold subOK at hsub
  rw [Bool.and_eq_true] at hsub
  obtain ⟨hin, htest⟩ := hsub
  have hcore : coreOK B D = true := by
    rw [c1Box_eq, Bool.and_eq_true] at hc1; exact hc1.1
  have hu := boxIn_spec hin hv
  obtain ⟨-, Q, hH, hM, hQ, hK⟩ := core_sound hcore ho hu
  have hQs : ∀ i j, (gT (shiftL s.c s.h (qModels B D)) (ix i j)).Has v (Q i j : ℂ) := fun i j => by
    rw [gT_shiftL (by rw [qModels_length]; exact ix_lt i j)]; exact has_shift hv (hQ i j)
  have hKs : ∀ i j, (gT (shiftL s.c s.h (kModels B D)) (ix i j)).Has v (phaseMat Q i j) := fun i j => by
    rw [gT_shiftL (by rw [kModels_length]; exact ix_lt i j)]; exact has_shift hv (hK i j)
  refine ⟨Q, hH, hM, fun hk1 σ τ hσ hτ kk hkk ol hol hMl => ?_, fun hk2 σ τ hσ hτ => ?_⟩
  · rw [if_pos hk1] at htest
    exact t1OK_sound hv hH hQs hKs htest hσ hτ hkk hol hMl
  · rw [if_neg hk2] at htest
    exact t2OK_sound hv hQs htest hσ hτ

end NoFourMUBs.KernelAtlas.Seed
