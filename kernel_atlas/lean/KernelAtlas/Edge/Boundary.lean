import KernelAtlas.Edge.Transfer
import KernelAtlas.Edge.GlobalChart
import KernelAtlas.Seed.Boundary
import NoFourMUBs.SeedAtlas.EdgeXAtlas

/-! T1 edge transfers linked to the actual seed certificates and the exact sphere cover. -/

open Complex Matrix Hadamard6 NoFourMUBs.Step2 NoFourMUBs.SeedAtlas Set

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

/-- The semantic target link is discharged by the shared kernel table at final assembly. -/
def TransferD.TargetLink (s : TransferD) (S : SeedBallCert) : Prop :=
  S.theta0 = th0R s.ball ∧ S.Mth = MthR s.ball ∧ S.r = rn s.radius ∧ s.ball.o = (S.o : ℤ)

theorem transfer_corner {B : EBallD} {D : EBoxD} {s : TransferD}
    (hok : transferOK B D s = true) (S : SeedBallCert) (hl : s.TargetLink S)
    {v : Fin 4 → ℝ} (hv : Seed.InBox s.h v) {Q : RMat6}
    (hH : Hadamard6.IsHadamard (phaseMat Q))
    (hQ : ∀ i j, (gT (qModels B D) (Seed.ix i j)).Has (fun l => rq (gi s.c l)+v l) (Q i j : ℂ))
    (hK : ∀ i j, (gT (kModels B D) (Seed.ix i j)).Has (fun l => rq (gi s.c l)+v l) (phaseMat Q i j))
    {σ τ : Equiv.Perm I6} (hσ : ∀ i, σ i = permFun s.target.rows i)
    (hτ : ∀ j, τ j = permFun s.target.cols j) {kk : Fin 4} (hkk : (kk : ℕ) = s.target.g) :
    CornerIn S kk σ τ (phaseMat Q) := by
  have hi : IsUnit (MthR s.ball).det := by rw [← hl.2.1]; exact S.hMth
  obtain ⟨⟨w, hw, he⟩, hh, hv⟩ := transferOK_sound hok hv hH hQ hK hσ hτ hkk hl.2.2.2 hi
  refine ⟨⟨w, ?_, ?_⟩, hh, hv⟩
  · rwa [hl.2.2.1]
  · simpa only [SeedBallCert.θ, hl.1, hl.2.1] using he

/-- Exact coordinate link between a dyadic sphere cell and a shifted transfer model. -/
def transferBoxOK (r : ℕ) (D : EBoxD) (s : TransferD) (b : Bx) : Bool :=
  decide (r % 2^b.m = 0) && decide (s.h = b.hbN r) &&
    (l4 fun k => decide (gi D.wc k+gi s.c k = gi (b.wcZ r) k)).all id

theorem transferBoxOK_sound {r : ℕ} {D : EBoxD} {s : TransferD} {b : Bx}
    (h : transferBoxOK r D s b = true) {w : Fin 4 → ℝ} (hw : b.Mem (rn r) w) :
    Seed.InBox s.h (fun k => w k-rq (gi (b.wcZ r) k)) ∧
      (fun k : Fin 4 => rq (gi s.c k)+(w k-rq (gi (b.wcZ r) k))) = localOf D w := by
  simp only [transferBoxOK, Bool.and_eq_true, decide_eq_true_eq] at h
  refine ⟨h.1.2 ▸ Bx.inBox_of_mem h.1.1 hw, ?_⟩
  ext k
  have hk := of_decide_eq_true (all_l4 h.2 k.2)
  unfold localOf rq
  rw [← hk]
  push_cast
  ring

/-- Sphere coverage plus checked T1 source models supplies the atlas boundary field. -/
theorem edgeBoundary_of {σs ιr ιe : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert)
    (E : ιe → EdgeX.EdgeBallCert) (e : ιe) {B : EBallD} {r maxl : ℕ}
    (hr : (E e).r = rn r) (bs : List Bx) (hsph : sphereOK r maxl bs = true)
    (D : Bx → EBoxD) (T : Bx → TransferD) (target : Bx → σs)
    (hbox : ∀ b ∈ bs, transferBoxOK r (D b) (T b) b = true)
    (ht : ∀ b ∈ bs, transferOK B (D b) (T b) = true)
    (hlink : ∀ b ∈ bs, (T b).TargetLink (S (target b)))
    (hg : ∀ b ∈ bs, (T b).target.g < 4)
    (hrows : ∀ b ∈ bs, permOK (T b).target.rows = true)
    (hcols : ∀ b ∈ bs, permOK (T b).target.cols = true)
    (hq : ∀ b ∈ bs, ∀ w, b.Mem (rn r) w → wnorm w = rn r → ∀ i j,
      (gT (qModels B (D b)) (Seed.ix i j)).Has (localOf (D b) w) ((E e).Q w i j : ℂ))
    (hk : ∀ b ∈ bs, ∀ w, b.Mem (rn r) w → wnorm w = rn r → ∀ i j,
      (gT (kModels B (D b)) (Seed.ix i j)).Has (localOf (D b) w) (phaseMat ((E e).Q w) i j)) :
    Nonempty (EdgeX.EdgeBoundaryCover S A E e) := by
  refine ⟨{
    β := {b : Bx // b ∈ bs}
    box := fun b => {w | b.1.Mem (rn r) w}
    tgt := fun b => .t1 (target b.1) ⟨(T b.1).target.g % 4, Nat.mod_lt _ (by norm_num)⟩
      (perm6Of (T b.1).target.rows) (perm6Of (T b.1).target.cols)
    hcover := ?_
    htransfer := ?_
  }⟩
  · intro w hw
    rw [hr] at hw
    obtain ⟨b, hb, hw⟩ := sphere_cover hsph w hw
    exact ⟨⟨b, hb⟩, hw⟩
  · intro b w hw hwr
    have hwr' : wnorm w = rn r := by rwa [hr] at hwr
    obtain ⟨hv, he⟩ := transferBoxOK_sound (hbox b.1 b.2) hw
    apply transfer_corner (ht b.1 b.2) (S (target b.1)) (hlink b.1 b.2) hv
      ((E e).isHadamard hwr.le)
    · simpa only [he] using hq b.1 b.2 w hw hwr'
    · simpa only [he] using hk b.1 b.2 w hw hwr'
    · exact perm6Of_spec (hrows b.1 b.2)
    · exact perm6Of_spec (hcols b.1 b.2)
    · exact Nat.mod_eq_of_lt (hg b.1 b.2)

end NoFourMUBs.KernelAtlas.Edge
