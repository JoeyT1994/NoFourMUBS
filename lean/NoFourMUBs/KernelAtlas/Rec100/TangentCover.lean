import NoFourMUBs.KernelAtlas.Rec100.TangentSlab00
import NoFourMUBs.KernelAtlas.Rec100.TangentSlab01
import NoFourMUBs.KernelAtlas.Rec100.TangentSlab02
import NoFourMUBs.KernelAtlas.Rec100.TangentSlab03
import NoFourMUBs.KernelAtlas.Rec100.TangentSlab04
import NoFourMUBs.KernelAtlas.Rec100.TangentSlab05
import NoFourMUBs.KernelAtlas.Rec100.TangentSlab06
import NoFourMUBs.KernelAtlas.Rec100.TangentSlab07
import NoFourMUBs.KernelAtlas.Rec100.TangentSlab08
import NoFourMUBs.KernelAtlas.Rec100.TangentSlab09
import NoFourMUBs.KernelAtlas.Rec100.TangentSlab10
import NoFourMUBs.KernelAtlas.Rec100.TangentSlab11

/-!
# Record 100: the bin tree with the direct and the tangent test, end to end (generated)

Every phase vector `β ∈ [0,1]⁵` lies in a bin that is rejected by the direct test or by the tangent test
(C2(b), multiplier `y = c`) for every admissible `δ` of the Record ball with the exact frame `Tmat tcfg tq`,
or in a depth-0 (`M = 96`) bin.  Hypotheses: the operator-norm bound `K` and the Stage C radii
`r ≤ r̄`, `r_F ≤ r̄_F`, `r_H ≤ r̄_H`, `n ≤ n̄` (cycles), which come from the normal bound.
-/

namespace NoFourMUBs.KernelAtlas.Rec100

open Hadamard6 NoFourMUBs NoFourMUBs.StageC NoFourMUBs.KernelAtlas

theorem tslabs : ∀ c1 ∈ L1, slabT cfg tcfg true true (leafL labs) c1 L2 L3 L4 L5 = true := by
  intro c1 hc1
  simp only [L1, List.mem_cons, List.mem_nil_iff, or_false] at hc1
  rcases hc1 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · refine slabT_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [tsub_0_0, tsub_0_1, tsub_0_2, tsub_0_3, tsub_0_4, tsub_0_5, tsub_0_6, tsub_0_7, tsub_0_8, tsub_0_9, tsub_0_10, tsub_0_11]
  · refine slabT_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [tsub_1_0, tsub_1_1, tsub_1_2, tsub_1_3, tsub_1_4, tsub_1_5, tsub_1_6, tsub_1_7, tsub_1_8, tsub_1_9, tsub_1_10, tsub_1_11]
  · refine slabT_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [tsub_2_0, tsub_2_1, tsub_2_2, tsub_2_3, tsub_2_4, tsub_2_5, tsub_2_6, tsub_2_7, tsub_2_8, tsub_2_9, tsub_2_10, tsub_2_11]
  · refine slabT_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [tsub_3_0, tsub_3_1, tsub_3_2, tsub_3_3, tsub_3_4, tsub_3_5, tsub_3_6, tsub_3_7, tsub_3_8, tsub_3_9, tsub_3_10, tsub_3_11]
  · refine slabT_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [tsub_4_0, tsub_4_1, tsub_4_2, tsub_4_3, tsub_4_4, tsub_4_5, tsub_4_6, tsub_4_7, tsub_4_8, tsub_4_9, tsub_4_10, tsub_4_11]
  · refine slabT_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [tsub_5_0, tsub_5_1, tsub_5_2, tsub_5_3, tsub_5_4, tsub_5_5, tsub_5_6, tsub_5_7, tsub_5_8, tsub_5_9, tsub_5_10, tsub_5_11]
  · refine slabT_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [tsub_6_0, tsub_6_1, tsub_6_2, tsub_6_3, tsub_6_4, tsub_6_5, tsub_6_6, tsub_6_7, tsub_6_8, tsub_6_9, tsub_6_10, tsub_6_11]
  · refine slabT_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [tsub_7_0, tsub_7_1, tsub_7_2, tsub_7_3, tsub_7_4, tsub_7_5, tsub_7_6, tsub_7_7, tsub_7_8, tsub_7_9, tsub_7_10, tsub_7_11]
  · refine slabT_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [tsub_8_0, tsub_8_1, tsub_8_2, tsub_8_3, tsub_8_4, tsub_8_5, tsub_8_6, tsub_8_7, tsub_8_8, tsub_8_9, tsub_8_10, tsub_8_11]
  · refine slabT_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [tsub_9_0, tsub_9_1, tsub_9_2, tsub_9_3, tsub_9_4, tsub_9_5, tsub_9_6, tsub_9_7, tsub_9_8, tsub_9_9, tsub_9_10, tsub_9_11]
  · refine slabT_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [tsub_10_0, tsub_10_1, tsub_10_2, tsub_10_3, tsub_10_4, tsub_10_5, tsub_10_6, tsub_10_7, tsub_10_8, tsub_10_9, tsub_10_10, tsub_10_11]
  · refine slabT_of_sub fun c2 hc2 => ?_
    simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
    rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    exacts [tsub_11_0, tsub_11_1, tsub_11_2, tsub_11_3, tsub_11_4, tsub_11_5, tsub_11_6, tsub_11_7, tsub_11_8, tsub_11_9, tsub_11_10, tsub_11_11]

theorem coverT {rH n r rF K : ℝ} (hK0 : 0 ≤ K)
    (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • Pmat tab.pq) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq.rHbar) (hn : n ≤ tq.nbar) :
    ∀ β : I6 → ℝ, β j0 = 0 → (∀ j, 0 ≤ β j ∧ β j ≤ 1) →
      Covered (Pmat tab.pq) (Tmat tcfg tq) rH n r rF cfg.W0 (leafL labs) β := by
  obtain ⟨hW, h1, h2, h3, h4, h5⟩ := tabB_spec tabOK
  obtain ⟨r1, r2, r3, r4, r5⟩ := rootsOK
  exact topT_sound parOK tparOK hW hK0 hK hKb hr hrF hrH hn true true (leafL labs) h1 h2 h3 h4 h5 r1 r2 r3 r4 r5 tslabs

end NoFourMUBs.KernelAtlas.Rec100
