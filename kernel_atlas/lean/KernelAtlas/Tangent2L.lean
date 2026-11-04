import KernelAtlas.Tangent2S
import KernelAtlas.Labels

/-!
# The hinted traversal with label hints at the leaves

As `binH` (`Tangent2K.lean`), except that the leaf function at depth 0 also receives the bin's hint.  A hint
`h ≡ 3 (mod 4)` names a label, `h >>> 2`, and `leafLH` checks that one label instead of scanning the list (and
instead of a tangent test: most depth-0 bins that the v2 test rejects already lie in a label, and the linear test
costs as much as about forty direct tests).  The label is looked up by a function `lab` (a generated comparison tree:
indexing the list with `List.getD` in the kernel costs more than the tests it saves); `labTreeOK`, decided once per
Record, checks `lab b = labs[b]` for `b < n`.

`binL_sound`, `subL_sound`, `topL_sound`: as `binH_sound` etc., for a hinted leaf function `leafOK` and any plain
leaf function `L` that every accepted hinted leaf implies (`leafLH_imp`: `leafLH labs` implies `leafL labs`), so the
conclusion (`Covered … L β`) and everything downstream are unchanged.
-/

open Matrix Hadamard6 NoFourMUBs.StageC

namespace NoFourMUBs.KernelAtlas

noncomputable section

/-- A leaf function that also receives the bin's hint. -/
abbrev LeafFnH := ℕ → LeafFn

/-- An unused label (for the comparison of `labTreeOK`). -/
def labZ : Lab := ⟨0, 0, 0, 0, 0, 0⟩

def labEq (a b : Lab) : Bool :=
  Nat.beq a.w1 b.w1 && Nat.beq a.w2 b.w2 && Nat.beq a.w3 b.w3 && Nat.beq a.w4 b.w4 && Nat.beq a.w5 b.w5 &&
    Nat.beq a.sn b.sn

lemma labEq_eq {a b : Lab} (h : labEq a b = true) : a = b := by
  cases a; cases b
  simp only [labEq, Bool.and_eq_true, Nat.beq_eq] at h
  obtain ⟨⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩, h6⟩ := h
  subst h1 h2 h3 h4 h5 h6; rfl

/-- `lab b` is the label `b` of `labs`, for `b < n`. -/
def labTreeOK (labs : List Lab) (lab : ℕ → Lab) (n : ℕ) : Bool :=
  Nat.ble n labs.length && (List.range n).all fun b => labEq (lab b) (labs.getD b labZ)

theorem labTree_mem {labs : List Lab} {lab : ℕ → Lab} {n : ℕ} (h : labTreeOK labs lab n = true) :
    ∀ b < n, lab b ∈ labs := by
  intro b hb
  simp only [labTreeOK, Bool.and_eq_true, Nat.ble_eq, List.all_eq_true, List.mem_range] at h
  have hb' : b < labs.length := lt_of_lt_of_le hb h.1
  rw [labEq_eq (h.2 b hb), List.getD_eq_getElem _ _ hb']
  exact List.getElem_mem hb'

/-- The hinted leaf: hint `4b + 3` (`b < n`) checks label `lab b` only; any other hint scans the labels (`leafL`). -/
def leafLH (labs : List Lab) (lab : ℕ → Lab) (n : ℕ) : LeafFnH := fun h acc t1 t2 t3 t4 t5 =>
  cond (Nat.beq (Nat.mod h 4) 3)
    (Nat.blt (Nat.shiftRight h 2) n && labOK (lab (Nat.shiftRight h 2)) t1.k t2.k t3.k t4.k t5.k)
    (leafL labs acc t1 t2 t3 t4 t5)

theorem leafLH_imp (labs : List Lab) (lab : ℕ → Lab) (n : ℕ) (hlab : ∀ b < n, lab b ∈ labs)
    (h : ℕ) (acc : V12) (t1 t2 t3 t4 t5 : CT)
    (hl : leafLH labs lab n h acc t1 t2 t3 t4 t5 = true) : leafL labs acc t1 t2 t3 t4 t5 = true := by
  unfold leafLH at hl
  cases hm : Nat.beq (Nat.mod h 4) 3
  · rw [hm, cond_false] at hl; exact hl
  · rw [hm, cond_true, Bool.and_eq_true] at hl
    obtain ⟨hb, hok⟩ := hl
    have hb' : Nat.shiftRight h 2 < n := by simpa using hb
    simp only [leafL, List.any_eq_true]
    exact ⟨_, hlab _ hb', hok⟩

/-! ### The traversal -/

def baseL (c : Cfg) (t : T2Cfg) (leafOK : LeafFnH) (acc : V12) (t1 t2 t3 t4 t5 : CT) (hs : List ℕ) :
    Option (List ℕ) :=
  cond (rejectB c (c.lv 0) acc) (some hs)
    (cond (tang2B c t 0 (hd hs) acc (rowv c.W0 t1 t2 t3 t4 t5) || leafOK (hd hs) acc t1 t2 t3 t4 t5) (some (tl hs))
      none)

/-- The recursive check of one bin at depth `d` (the steps above depth 0 are `stepH`). -/
def binL (c : Cfg) (t : T2Cfg) (leafOK : LeafFnH) (d : ℕ) : BinFnH :=
  Nat.rec (motive := fun _ => BinFnH) (baseL c t leafOK) (fun d ih => stepH c t d ih) d

def top5L (c : Cfg) (t : T2Cfg) (leafOK : LeafFnH) (a4 : V12) (c1 c2 c3 c4 : CT) (L5 : List CT) :
    List ℕ → Option (List ℕ) :=
  allH L5 fun c5 => binL c t leafOK 3 (a4.add c5.v) c1 c2 c3 c4 c5

def top4L (c : Cfg) (t : T2Cfg) (leafOK : LeafFnH) (a3 : V12) (c1 c2 c3 : CT) (L4 L5 : List CT) :
    List ℕ → Option (List ℕ) :=
  allH L4 fun c4 => top5L c t leafOK (a3.add c4.v) c1 c2 c3 c4 L5

def top3L (c : Cfg) (t : T2Cfg) (leafOK : LeafFnH) (a2 : V12) (c1 c2 : CT) (L3 L4 L5 : List CT) :
    List ℕ → Option (List ℕ) :=
  allH L3 fun c3 => top4L c t leafOK (a2.add c3.v) c1 c2 c3 L4 L5

/-- One sub-slab (first two coordinate trees fixed) with its hint list. -/
def subL (c : Cfg) (t : T2Cfg) (leafOK : LeafFnH) (c1 c2 : CT) (L3 L4 L5 : List CT) (hs : List ℕ) : Bool :=
  Option.isSome (top3L c t leafOK ((c.W0.add c1.v).add c2.v) c1 c2 L3 L4 L5 hs)

/-! ### Soundness -/

/-- **Soundness of the hinted traversal with label hints**, for any hints. -/
theorem binL_sound {P : RMat6} {c : Cfg} {pq : ParQ} {t : T2Cfg} {tq : TParQ} (hp : ParOK c pq)
    (ht : T2ParOK c pq t tq) (hW : NodeOK P c.Z c.boff pq.eps1 j0 0 c.W0)
    {rH n r rF K : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq.rHbar) (hn : n ≤ tq.nbar)
    (leafOK : LeafFnH) (L : LeafFn)
    (hL : ∀ h acc t1 t2 t3 t4 t5, leafOK h acc t1 t2 t3 t4 t5 = true → L acc t1 t2 t3 t4 t5 = true) :
    ∀ d, d ≤ 3 → ∀ t1 t2 t3 t4 t5 : CT,
      TreeOK P c.Z c.boff pq.eps1 m1 d t1 → TreeOK P c.Z c.boff pq.eps1 m2 d t2 →
      TreeOK P c.Z c.boff pq.eps1 m3 d t3 → TreeOK P c.Z c.boff pq.eps1 m4 d t4 →
      TreeOK P c.Z c.boff pq.eps1 m5 d t5 → ∀ hs hs' : List ℕ,
      binL c t leafOK d (sumAcc c.W0 t1 t2 t3 t4 t5) t1 t2 t3 t4 t5 hs = some hs' →
      ∀ β, InBox β d t1 t2 t3 t4 t5 → Covered P (Tmat t.tc tq) rH n r rF c.W0 L β := by
  intro d
  induction d with
  | zero =>
    intro hd t1 t2 t3 t4 t5 h1 h2 h3 h4 h5 hs hs' h β hβ
    have h0 : baseL c t leafOK (sumAcc c.W0 t1 t2 t3 t4 t5) t1 t2 t3 t4 t5 hs = some hs' := h
    obtain ⟨hsum, hw, hsE⟩ := bin_hyps hp hW h1.node h2.node h3.node h4.node h5.node
    refine ⟨uvec t1.k t2.k t3.k t4.k t5.k, (2 : ℝ) ^ 0 / 192, rfl, by positivity, inBox_dist hβ, ?_⟩
    unfold baseL at h0
    cases hrej : rejectB c (c.lv 0) (sumAcc c.W0 t1 t2 t3 t4 t5)
    · rw [hrej, cond_false] at h0
      cases htan : (tang2B c t 0 (NoFourMUBs.KernelAtlas.hd hs) (sumAcc c.W0 t1 t2 t3 t4 t5)
          (rowv c.W0 t1 t2 t3 t4 t5) ||
          leafOK (NoFourMUBs.KernelAtlas.hd hs) (sumAcc c.W0 t1 t2 t3 t4 t5) t1 t2 t3 t4 t5)
      · rw [htan, cond_false] at h0; cases h0
      · rw [Bool.or_eq_true] at htan
        rcases htan with htan | hleaf
        · exact Or.inl (tang2B_sound hp ht (by omega) hsum hw hsE htan hK0 hK hKb hr hrF hrH hn)
        · exact Or.inr ⟨t1, t2, t3, t4, t5, rfl, by norm_num, hL _ _ _ _ _ _ _ hleaf⟩
    · exact Or.inl (rejectB_sound hp hd hsE hrej hK0 hK hKb hr hrF)
  | succ d ih =>
    intro hd t1 t2 t3 t4 t5 h1 h2 h3 h4 h5 hs hs' h β hβ
    have h0 : stepH c t d (binL c t leafOK d) (sumAcc c.W0 t1 t2 t3 t4 t5) t1 t2 t3 t4 t5 hs = some hs' := h
    obtain ⟨hsum, hw, hsE⟩ := bin_hyps hp hW h1.node h2.node h3.node h4.node h5.node
    unfold stepH at h0
    cases hrej : rejectB c (c.lv (d + 1)) (sumAcc c.W0 t1 t2 t3 t4 t5)
    · rw [hrej, cond_false] at h0
      cases htan : tang2B c t (d + 1) (NoFourMUBs.KernelAtlas.hd hs) (sumAcc c.W0 t1 t2 t3 t4 t5)
          (rowv c.W0 t1 t2 t3 t4 t5)
      · rw [htan, cond_false] at h0
        obtain ⟨hb0, hb1, hb2, hb3, hb4, hb5⟩ := hβ
        obtain ⟨c1, hc1, hT1, hd1⟩ := child h1 hb1
        obtain ⟨c2, hc2, hT2, hd2⟩ := child h2 hb2
        obtain ⟨c3, hc3, hT3, hd3⟩ := child h3 hb3
        obtain ⟨c4, hc4, hT4, hd4⟩ := child h4 hb4
        obtain ⟨c5, hc5, hT5, hd5⟩ := child h5 hb5
        obtain ⟨x, y, hxy⟩ := kidsH_mem h0 hc1 hc2 hc3 hc4 hc5
        exact ih (by omega) c1 c2 c3 c4 c5 hT1 hT2 hT3 hT4 hT5 x y hxy β ⟨hb0, hd1, hd2, hd3, hd4, hd5⟩
      · exact ⟨uvec t1.k t2.k t3.k t4.k t5.k, (2 : ℝ) ^ (d + 1) / 192, rfl, by positivity, inBox_dist hβ,
          Or.inl (tang2B_sound hp ht hd hsum hw hsE htan hK0 hK hKb hr hrF hrH hn)⟩
    · exact ⟨uvec t1.k t2.k t3.k t4.k t5.k, (2 : ℝ) ^ (d + 1) / 192, rfl, by positivity, inBox_dist hβ,
        Or.inl (rejectB_sound hp hd hsE hrej hK0 hK hKb hr hrF)⟩

/-- **One sub-slab with its hints.** -/
theorem subL_sound {P : RMat6} {c : Cfg} {pq : ParQ} {t : T2Cfg} {tq : TParQ} (hp : ParOK c pq)
    (ht : T2ParOK c pq t tq) (hW : NodeOK P c.Z c.boff pq.eps1 j0 0 c.W0)
    {rH n r rF K : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq.rHbar) (hn : n ≤ tq.nbar)
    (leafOK : LeafFnH) (L : LeafFn)
    (hL : ∀ h acc t1 t2 t3 t4 t5, leafOK h acc t1 t2 t3 t4 t5 = true → L acc t1 t2 t3 t4 t5 = true)
    {c1 c2 : CT} {L3 L4 L5 : List CT} {hs : List ℕ}
    (hT1 : TreeOK P c.Z c.boff pq.eps1 m1 3 c1) (hT2 : TreeOK P c.Z c.boff pq.eps1 m2 3 c2)
    (hT3 : ∀ t ∈ L3, TreeOK P c.Z c.boff pq.eps1 m3 3 t)
    (hT4 : ∀ t ∈ L4, TreeOK P c.Z c.boff pq.eps1 m4 3 t) (hT5 : ∀ t ∈ L5, TreeOK P c.Z c.boff pq.eps1 m5 3 t)
    (hR3 : RootsK L3) (hR4 : RootsK L4) (hR5 : RootsK L5)
    (h : subL c t leafOK c1 c2 L3 L4 L5 hs = true) :
    ∀ β : I6 → ℝ, β j0 = 0 → |β m1 - c1.k / 192| ≤ 2 ^ 3 / 192 → |β m2 - c2.k / 192| ≤ 2 ^ 3 / 192 →
      (∀ j, 0 ≤ β j ∧ β j ≤ 1) → Covered P (Tmat t.tc tq) rH n r rF c.W0 L β := by
  intro β hβ0 hβ1 hβ2 hβ
  obtain ⟨c3, hc3, hd3⟩ := roots_cover hR3 (hβ m3).1 (hβ m3).2
  obtain ⟨c4, hc4, hd4⟩ := roots_cover hR4 (hβ m4).1 (hβ m4).2
  obtain ⟨c5, hc5, hd5⟩ := roots_cover hR5 (hβ m5).1 (hβ m5).2
  have hs1 : ∃ y, top3L c t leafOK ((c.W0.add c1.v).add c2.v) c1 c2 L3 L4 L5 hs = some y := by
    unfold subL at h
    cases hq : top3L c t leafOK ((c.W0.add c1.v).add c2.v) c1 c2 L3 L4 L5 hs with
    | none => rw [hq] at h; cases h
    | some y => exact ⟨y, rfl⟩
  obtain ⟨y0, hy0⟩ := hs1
  obtain ⟨x3, y3, g3⟩ := allH_mem hy0 c3 hc3
  obtain ⟨x4, y4, g4⟩ := allH_mem g3 c4 hc4
  obtain ⟨x5, y5, g5⟩ := allH_mem g4 c5 hc5
  exact binL_sound hp ht hW hK0 hK hKb hr hrF hrH hn leafOK L hL 3 le_rfl c1 c2 c3 c4 c5 hT1 hT2 (hT3 c3 hc3)
    (hT4 c4 hc4) (hT5 c5 hc5) x5 y5 g5 β ⟨hβ0, hβ1, hβ2, hd3, hd4, hd5⟩

/-- **The whole bin tree with the v2 test and label hints**, from one hinted check per sub-slab. -/
theorem topL_sound {P : RMat6} {c : Cfg} {pq : ParQ} {t : T2Cfg} {tq : TParQ} (hp : ParOK c pq)
    (ht : T2ParOK c pq t tq) (hW : NodeOK P c.Z c.boff pq.eps1 j0 0 c.W0)
    {rH n r rF K : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq.rHbar) (hn : n ≤ tq.nbar)
    (leafOK : LeafFnH) (L : LeafFn)
    (hL : ∀ h acc t1 t2 t3 t4 t5, leafOK h acc t1 t2 t3 t4 t5 = true → L acc t1 t2 t3 t4 t5 = true)
    {L1 L2 L3 L4 L5 : List CT}
    (hT1 : ∀ t ∈ L1, TreeOK P c.Z c.boff pq.eps1 m1 3 t) (hT2 : ∀ t ∈ L2, TreeOK P c.Z c.boff pq.eps1 m2 3 t)
    (hT3 : ∀ t ∈ L3, TreeOK P c.Z c.boff pq.eps1 m3 3 t)
    (hT4 : ∀ t ∈ L4, TreeOK P c.Z c.boff pq.eps1 m4 3 t) (hT5 : ∀ t ∈ L5, TreeOK P c.Z c.boff pq.eps1 m5 3 t)
    (hR1 : RootsK L1) (hR2 : RootsK L2) (hR3 : RootsK L3) (hR4 : RootsK L4) (hR5 : RootsK L5)
    (h : ∀ c1 ∈ L1, ∀ c2 ∈ L2, ∃ hs, subL c t leafOK c1 c2 L3 L4 L5 hs = true) :
    ∀ β : I6 → ℝ, β j0 = 0 → (∀ j, 0 ≤ β j ∧ β j ≤ 1) → Covered P (Tmat t.tc tq) rH n r rF c.W0 L β := by
  intro β hβ0 hβ
  obtain ⟨c1, hc1, hd1⟩ := roots_cover hR1 (hβ m1).1 (hβ m1).2
  obtain ⟨c2, hc2, hd2⟩ := roots_cover hR2 (hβ m2).1 (hβ m2).2
  obtain ⟨hs, hsub⟩ := h c1 hc1 c2 hc2
  exact subL_sound hp ht hW hK0 hK hKb hr hrF hrH hn leafOK L hL (hT1 c1 hc1) (hT2 c2 hc2) hT3 hT4 hT5 hR3 hR4
    hR5 hsub β hβ0 hd1 hd2 hβ

end

end NoFourMUBs.KernelAtlas
