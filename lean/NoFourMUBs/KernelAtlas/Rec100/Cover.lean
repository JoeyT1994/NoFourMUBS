import NoFourMUBs.KernelAtlas.Rec100.Slab00
import NoFourMUBs.KernelAtlas.Rec100.Slab01
import NoFourMUBs.KernelAtlas.Rec100.Slab02
import NoFourMUBs.KernelAtlas.Rec100.Slab03
import NoFourMUBs.KernelAtlas.Rec100.Slab04
import NoFourMUBs.KernelAtlas.Rec100.Slab05
import NoFourMUBs.KernelAtlas.Rec100.Slab06
import NoFourMUBs.KernelAtlas.Rec100.Slab07
import NoFourMUBs.KernelAtlas.Rec100.Slab08
import NoFourMUBs.KernelAtlas.Rec100.Slab09
import NoFourMUBs.KernelAtlas.Rec100.Slab10
import NoFourMUBs.KernelAtlas.Rec100.Slab11

/-!
# Record 100: the direct-test bin tree, end to end (generated)

Every phase vector `β ∈ [0,1]⁵` lies in a bin that is rejected by the direct single-vector test for every
admissible `δ` of the Record ball, or in a depth-0 (`M = 96`) bin.  Hypotheses: the operator-norm bound `K`
and the Stage C radii `r ≤ r̄`, `r_F ≤ r̄_F` (cycles), which come from the normal bound (not yet in the kernel).
-/

namespace NoFourMUBs.KernelAtlas.Rec100

open Hadamard6 NoFourMUBs NoFourMUBs.StageC NoFourMUBs.KernelAtlas

theorem slabs : ∀ c1 ∈ L1, slabOK cfg leafT c1 L2 L3 L4 L5 = true := by
  intro c1 hc1
  simp only [L1, List.mem_cons, List.mem_nil_iff, or_false] at hc1
  rcases hc1 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · refine slabOK_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [sub_0_0, sub_0_1, sub_0_2, sub_0_3, sub_0_4, sub_0_5, sub_0_6, sub_0_7, sub_0_8, sub_0_9, sub_0_10, sub_0_11]
  · refine slabOK_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [sub_1_0, sub_1_1, sub_1_2, sub_1_3, sub_1_4, sub_1_5, sub_1_6, sub_1_7, sub_1_8, sub_1_9, sub_1_10, sub_1_11]
  · refine slabOK_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [sub_2_0, sub_2_1, sub_2_2, sub_2_3, sub_2_4, sub_2_5, sub_2_6, sub_2_7, sub_2_8, sub_2_9, sub_2_10, sub_2_11]
  · refine slabOK_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [sub_3_0, sub_3_1, sub_3_2, sub_3_3, sub_3_4, sub_3_5, sub_3_6, sub_3_7, sub_3_8, sub_3_9, sub_3_10, sub_3_11]
  · refine slabOK_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [sub_4_0, sub_4_1, sub_4_2, sub_4_3, sub_4_4, sub_4_5, sub_4_6, sub_4_7, sub_4_8, sub_4_9, sub_4_10, sub_4_11]
  · refine slabOK_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [sub_5_0, sub_5_1, sub_5_2, sub_5_3, sub_5_4, sub_5_5, sub_5_6, sub_5_7, sub_5_8, sub_5_9, sub_5_10, sub_5_11]
  · refine slabOK_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [sub_6_0, sub_6_1, sub_6_2, sub_6_3, sub_6_4, sub_6_5, sub_6_6, sub_6_7, sub_6_8, sub_6_9, sub_6_10, sub_6_11]
  · refine slabOK_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [sub_7_0, sub_7_1, sub_7_2, sub_7_3, sub_7_4, sub_7_5, sub_7_6, sub_7_7, sub_7_8, sub_7_9, sub_7_10, sub_7_11]
  · refine slabOK_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [sub_8_0, sub_8_1, sub_8_2, sub_8_3, sub_8_4, sub_8_5, sub_8_6, sub_8_7, sub_8_8, sub_8_9, sub_8_10, sub_8_11]
  · refine slabOK_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [sub_9_0, sub_9_1, sub_9_2, sub_9_3, sub_9_4, sub_9_5, sub_9_6, sub_9_7, sub_9_8, sub_9_9, sub_9_10, sub_9_11]
  · refine slabOK_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [sub_10_0, sub_10_1, sub_10_2, sub_10_3, sub_10_4, sub_10_5, sub_10_6, sub_10_7, sub_10_8, sub_10_9, sub_10_10, sub_10_11]
  · refine slabOK_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [sub_11_0, sub_11_1, sub_11_2, sub_11_3, sub_11_4, sub_11_5, sub_11_6, sub_11_7, sub_11_8, sub_11_9, sub_11_10, sub_11_11]

theorem cover {T : Fin 4 → RMat6} {rH n r rF K : ℝ} (hK0 : 0 ≤ K)
    (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • Pmat tab.pq) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) :
    ∀ β : I6 → ℝ, β j0 = 0 → (∀ j, 0 ≤ β j ∧ β j ≤ 1) →
      Covered (Pmat tab.pq) T rH n r rF cfg.W0 leafT β := by
  obtain ⟨hW, h1, h2, h3, h4, h5⟩ := tabB_spec tabOK
  obtain ⟨r1, r2, r3, r4, r5⟩ := rootsOK
  exact topOK_sound parOK hW hK0 hK hKb hr hrF leafT h1 h2 h3 h4 h5 r1 r2 r3 r4 r5 slabs

end NoFourMUBs.KernelAtlas.Rec100
