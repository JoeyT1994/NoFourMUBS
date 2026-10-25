import KernelAtlas.Edge.ChartLink
import KernelAtlas.Edge.Boundary

/-! Checked fine transfer sources, their parent-chart links, and indexed sphere assembly. -/

open Complex Hadamard6 NoFourMUBs.SeedAtlas Set

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

structure SourceD (n : ℕ) where
  parent : Fin n
  box : EBoxD
  transfer : TransferD
  cell : Bx
  target : ℕ

def sourceOK {n : ℕ} (B : EBallD) (r : ℕ) (Ds : Fin n → EBoxD) (s : SourceD n) : Bool :=
  coreOK B s.box && labelOK B s.box && sourceLinkOK s.box (Ds s.parent) &&
    transferOK B s.box s.transfer && transferBoxOK r s.box s.transfer s.cell &&
    decide (s.transfer.target.g < 4) && permOK s.transfer.target.rows && permOK s.transfer.target.cols

structure SourceFacts {n : ℕ} (B : EBallD) (r : ℕ) (Ds : Fin n → EBoxD) (s : SourceD n) : Prop where
  core : coreOK B s.box = true
  label : labelOK B s.box = true
  link : sourceLinkOK s.box (Ds s.parent) = true
  transfer : transferOK B s.box s.transfer = true
  box : transferBoxOK r s.box s.transfer s.cell = true
  g : s.transfer.target.g < 4
  rows : permOK s.transfer.target.rows = true
  cols : permOK s.transfer.target.cols = true

theorem sourceOK_sound {n : ℕ} {B : EBallD} {r : ℕ} {Ds : Fin n → EBoxD} {s : SourceD n}
    (h : sourceOK B r Ds s = true) : SourceFacts B r Ds s := by
  simp only [sourceOK, Bool.and_eq_true, decide_eq_true_eq] at h
  rcases h with ⟨⟨⟨⟨⟨⟨⟨hc, hl⟩, hlink⟩, ht⟩, hb⟩, hg⟩, hr⟩, hcol⟩
  exact ⟨hc, hl, hlink, ht, hb, hg, hr, hcol⟩

theorem source_models {n : ℕ} {B : EBallD} {r : ℕ} {Ds : Fin n → EBoxD}
    {Cs : ∀ i, BoxChart B (Ds i)} (G : BallChart B r Ds Cs)
    (hc : ∀ i, coreOK B (Ds i) = true) {s : SourceD n} (hs : sourceOK B r Ds s = true)
    {w : Fin 4 → ℝ} (hw : wnorm w ≤ rn r) (hb : s.cell.Mem (rn r) w) :
    (∀ a b, (gT (qModels B s.box) (Seed.ix a b)).Has (localOf s.box w) (G.Q w a b : ℂ)) ∧
    (∀ a b, (gT (kModels B s.box) (Seed.ix a b)).Has (localOf s.box w) (phaseMat (G.Q w) a b)) := by
  have h := sourceOK_sound hs
  obtain ⟨hv, he⟩ := transferBoxOK_sound h.box hb
  have hsub := h.transfer
  simp only [transferOK, Bool.and_eq_true] at hsub
  have hd : w ∈ boxRegion s.box := by
    have hm := boxIn_spec hsub.1 hv
    rwa [he] at hm
  let C := boxChart h.core h.label
  rw [sourceLinkOK_eq G s.parent C h.core (hc s.parent) h.link hw hd]
  exact ⟨C.q_models _, C.k_models _⟩

/-- Indexed source tables avoid repeated searches through a large list of sphere cells. -/
theorem sourceBoundary_of {σs ιr ιe : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert)
    (E : ιe → EdgeX.EdgeBallCert) (e : ιe) (ofS : ℕ → σs)
    {n m : ℕ} {B : EBallD} {r maxl : ℕ} {Ds : Fin n → EBoxD} {Cs : ∀ i, BoxChart B (Ds i)}
    (G : BallChart B r Ds Cs) (hc : ∀ i, coreOK B (Ds i) = true)
    (hr : (E e).r = rn r) (hQ : (E e).Q = G.Q)
    (ss : Fin m → SourceD n) (hs : ∀ i, sourceOK B r Ds (ss i) = true)
    (hlink : ∀ i, (ss i).transfer.TargetLink (S (ofS (ss i).target)))
    (hsph : sphereOK r maxl ((List.finRange m).map fun i => (ss i).cell) = true) :
    Nonempty (EdgeX.EdgeBoundaryCover S A E e) := by
  refine ⟨{
    β := Fin m
    box := fun i => {w | (ss i).cell.Mem (rn r) w}
    tgt := fun i => .t1 (ofS (ss i).target)
      ⟨(ss i).transfer.target.g % 4, Nat.mod_lt _ (by norm_num)⟩
      (perm6Of (ss i).transfer.target.rows) (perm6Of (ss i).transfer.target.cols)
    hcover := ?_
    htransfer := ?_
  }⟩
  · intro w hw
    rw [hr] at hw
    obtain ⟨b, hb, hw⟩ := sphere_cover hsph w hw
    obtain ⟨i, _, rfl⟩ := List.mem_map.mp hb
    exact ⟨i, hw⟩
  · intro i w hw hwr
    have h := sourceOK_sound (hs i)
    have hwr' : wnorm w = rn r := by rwa [hr] at hwr
    obtain ⟨hv, he⟩ := transferBoxOK_sound h.box hw
    obtain ⟨hq, hk⟩ := source_models G hc (hs i) hwr'.le hw
    apply transfer_corner h.transfer (S (ofS (ss i).target)) (hlink i) hv ((E e).isHadamard hwr.le)
    · simpa only [he, hQ] using hq
    · simpa only [he, hQ] using hk
    · exact perm6Of_spec h.rows
    · exact perm6Of_spec h.cols
    · exact Nat.mod_eq_of_lt h.g

end NoFourMUBs.KernelAtlas.Edge
