import KernelAtlas.Edge.GlobalChart

/-! Finite Boolean compatibility tables and strict cover margins for edge charts. -/

open Hadamard6 NoFourMUBs.SeedAtlas Filter Topology Set

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

def disjointBoxes (D E : EBoxD) : Bool :=
  (l4 fun k => decide ((gn D.hb k : ℤ)+gn E.hb k < |gi D.wc k-gi E.wc k|)).any id

/-- Disjoint pairs are discarded; intersecting pairs must pass root identification. -/
def pairOK (D E : EBoxD) : Bool := disjointBoxes D E || overlapOK D E

def overlapsOK (Ds : List EBoxD) : Bool := Ds.all fun D => Ds.all (pairOK D)

lemma disjointBoxes_sound {D E : EBoxD} (h : disjointBoxes D E = true) :
    Disjoint (boxRegion D) (boxRegion E) := by
  rw [Set.disjoint_left]
  intro w hd he
  simp only [disjointBoxes, l4, List.any_cons, List.any_nil, id, Bool.or_eq_true, decide_eq_true_eq] at h
  have hn (k : Fin 4) : ¬ ((gn D.hb k : ℤ)+gn E.hb k < |gi D.wc k-gi E.wc k|) := by
    intro hk
    have ha := hd k
    have hb := he k
    change |w k-rq (gi D.wc k)| ≤ rn (gn D.hb k) at ha
    change |w k-rq (gi E.wc k)| ≤ rn (gn E.hb k) at hb
    have hc : |rq (gi D.wc k)-rq (gi E.wc k)| ≤ rn (gn D.hb k)+rn (gn E.hb k) := by
      calc |rq (gi D.wc k)-rq (gi E.wc k)|
          = |(w k-rq (gi E.wc k))-(w k-rq (gi D.wc k))| := by congr 1; ring
        _ ≤ |w k-rq (gi E.wc k)|+|w k-rq (gi D.wc k)| := abs_sub _ _
        _ ≤ _ := by linarith
    have hkR := Int.cast_lt (R := ℝ).mpr hk
    simp only [Int.cast_add, Int.cast_natCast, Int.cast_abs, Int.cast_sub] at hkR
    have hp : (0 : ℝ) < 2^pp := two_pow_pos pp
    unfold rq rn at hc
    rw [← sub_div, abs_div, abs_of_pos hp, ← add_div] at hc
    exact (not_lt_of_ge ((div_le_div_iff_of_pos_right hp).mp hc)) hkR
  have h0 := hn 0
  have h1 := hn 1
  have h2 := hn 2
  have h3 := hn 3
  simp only [Fin.val_zero, Fin.val_one, Fin.val_two, Fin.val_ofNat] at h0 h1 h2 h3
  tauto

theorem pairOK_sound {D E : EBoxD} (h : pairOK D E = true) {w : Fin 4 → ℝ}
    (hd : w ∈ boxRegion D) (he : w ∈ boxRegion E) : overlapOK D E = true := by
  simp only [pairOK, Bool.or_eq_true] at h
  rcases h with h | h
  · exact False.elim (Set.disjoint_left.mp (disjointBoxes_sound h) hd he)
  · exact h

theorem overlapsOK_sound {Ds : List EBoxD} (h : overlapsOK Ds = true)
    {D E : EBoxD} (hd : D ∈ Ds) (he : E ∈ Ds) {w : Fin 4 → ℝ}
    (hwd : w ∈ boxRegion D) (hwe : w ∈ boxRegion E) : overlapOK D E = true :=
  pairOK_sound (List.all_eq_true.mp (List.all_eq_true.mp h D hd) E he) hwd hwe

/-- A positive margin makes every covered point an interior point of its edge box. -/
def interiorMatch (r : ℕ) (b : Bx) (D : EBoxD) : Bool :=
  coverMatch r b D && (l4 fun k => decide (gn (b.hbN r) k < gn D.hb k)).all id

lemma inBox_nhds_of_lt {h : List ℕ} {u : Fin 4 → ℝ}
    (hu : ∀ k, |u k| < rn (gn h k)) : {v | InBox h v} ∈ 𝓝 u := by
  have hs : IsOpen {v : Fin 4 → ℝ | ∀ k, |v k| < rn (gn h k)} := by
    simp only [Set.setOf_forall]
    exact isOpen_iInter_of_finite fun k => isOpen_lt (continuous_apply k).abs continuous_const
  exact Filter.mem_of_superset (hs.mem_nhds hu) (fun _ hv k => (hv k).le)

theorem interiorMatch_sound {r : ℕ} {b : Bx} {D : EBoxD} (hm : interiorMatch r b D = true)
    {w : Fin 4 → ℝ} (hw : b.Mem (rn r) w) :
    {u | InBox D.hb u} ∈ 𝓝 (localOf D w) := by
  simp only [interiorMatch, Bool.and_eq_true] at hm
  rcases hm with ⟨hc, hm⟩
  have hp := hc
  simp only [coverMatch, Bool.and_eq_true, decide_eq_true_eq] at hp
  have hb := Bx.inBox_of_mem hp.1 hw
  apply inBox_nhds_of_lt
  intro k
  have hk := of_decide_eq_true (all_l4 hp.2 k.2)
  have ht := of_decide_eq_true (all_l4 hm k.2)
  change |w k-rq (gi D.wc k)| < rn (gn D.hb k)
  rw [hk.1]
  apply (hb k).trans_lt
  unfold rn
  exact (div_lt_div_iff_of_pos_right (two_pow_pos pp)).mpr (Nat.cast_lt.mpr ht)

end NoFourMUBs.KernelAtlas.Edge
