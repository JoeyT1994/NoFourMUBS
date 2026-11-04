import KernelAtlas.X.SC.H2Slab00
import KernelAtlas.X.SC.H2Slab01
import KernelAtlas.X.SC.H2Slab02
import KernelAtlas.X.SC.H2Slab03
import KernelAtlas.X.SC.H2Slab04
import KernelAtlas.X.SC.H2Slab05
import KernelAtlas.X.SC.H2Slab06
import KernelAtlas.X.SC.H2Slab07
import KernelAtlas.X.SC.H2Slab08
import KernelAtlas.X.SC.H2Slab09
import KernelAtlas.X.SC.H2Slab10
import KernelAtlas.X.SC.H2Slab11
import KernelAtlas.Tangent2L
import KernelAtlas.Tables

/-!
# return X (F6, rho = 150001/1000000): the bin tree with the direct test and the hinted v2 tangent test, end to end (generated)

Every phase vector `β ∈ [0,1]⁵` lies in a bin rejected by the direct test or the v2 test for every admissible
`δ` of the ball with the exact frame `Tmat tcfg2 tq2`, or in a depth-0 bin in a label (`Tangent2L`).
-/

namespace NoFourMUBs.KernelAtlas.X.SC

open Hadamard6 NoFourMUBs NoFourMUBs.StageC NoFourMUBs.KernelAtlas

theorem t2parOK : T2ParOK cfg pq t2cfg tq2 := by decide +kernel

theorem labTOK : labTreeOK labs2 labT2 340 = true := by decide +kernel

theorem hsubs : ∀ c1 ∈ L1, ∀ c2 ∈ L2, ∃ hs, subL cfg t2cfg (leafLH labs2 labT2 340) c1 c2 L3 L4 L5 hs = true := by
  intro c1 hc1 c2 hc2
  simp only [L1, List.mem_cons, List.mem_nil_iff, or_false] at hc1
  simp only [L2, List.mem_cons, List.mem_nil_iff, or_false] at hc2
  rcases hc1 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rcases hc2 with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  exacts [⟨_, sub2_0_0⟩, ⟨_, sub2_0_1⟩, ⟨_, sub2_0_2⟩, ⟨_, sub2_0_3⟩, ⟨_, sub2_0_4⟩, ⟨_, sub2_0_5⟩, ⟨_, sub2_0_6⟩, ⟨_, sub2_0_7⟩, ⟨_, sub2_0_8⟩, ⟨_, sub2_0_9⟩, ⟨_, sub2_0_10⟩, ⟨_, sub2_0_11⟩, ⟨_, sub2_1_0⟩, ⟨_, sub2_1_1⟩, ⟨_, sub2_1_2⟩, ⟨_, sub2_1_3⟩, ⟨_, sub2_1_4⟩, ⟨_, sub2_1_5⟩, ⟨_, sub2_1_6⟩, ⟨_, sub2_1_7⟩, ⟨_, sub2_1_8⟩, ⟨_, sub2_1_9⟩, ⟨_, sub2_1_10⟩, ⟨_, sub2_1_11⟩, ⟨_, sub2_2_0⟩, ⟨_, sub2_2_1⟩, ⟨_, sub2_2_2⟩, ⟨_, sub2_2_3⟩, ⟨_, sub2_2_4⟩, ⟨_, sub2_2_5⟩, ⟨_, sub2_2_6⟩, ⟨_, sub2_2_7⟩, ⟨_, sub2_2_8⟩, ⟨_, sub2_2_9⟩, ⟨_, sub2_2_10⟩, ⟨_, sub2_2_11⟩, ⟨_, sub2_3_0⟩, ⟨_, sub2_3_1⟩, ⟨_, sub2_3_2⟩, ⟨_, sub2_3_3⟩, ⟨_, sub2_3_4⟩, ⟨_, sub2_3_5⟩, ⟨_, sub2_3_6⟩, ⟨_, sub2_3_7⟩, ⟨_, sub2_3_8⟩, ⟨_, sub2_3_9⟩, ⟨_, sub2_3_10⟩, ⟨_, sub2_3_11⟩, ⟨_, sub2_4_0⟩, ⟨_, sub2_4_1⟩, ⟨_, sub2_4_2⟩, ⟨_, sub2_4_3⟩, ⟨_, sub2_4_4⟩, ⟨_, sub2_4_5⟩, ⟨_, sub2_4_6⟩, ⟨_, sub2_4_7⟩, ⟨_, sub2_4_8⟩, ⟨_, sub2_4_9⟩, ⟨_, sub2_4_10⟩, ⟨_, sub2_4_11⟩, ⟨_, sub2_5_0⟩, ⟨_, sub2_5_1⟩, ⟨_, sub2_5_2⟩, ⟨_, sub2_5_3⟩, ⟨_, sub2_5_4⟩, ⟨_, sub2_5_5⟩, ⟨_, sub2_5_6⟩, ⟨_, sub2_5_7⟩, ⟨_, sub2_5_8⟩, ⟨_, sub2_5_9⟩, ⟨_, sub2_5_10⟩, ⟨_, sub2_5_11⟩, ⟨_, sub2_6_0⟩, ⟨_, sub2_6_1⟩, ⟨_, sub2_6_2⟩, ⟨_, sub2_6_3⟩, ⟨_, sub2_6_4⟩, ⟨_, sub2_6_5⟩, ⟨_, sub2_6_6⟩, ⟨_, sub2_6_7⟩, ⟨_, sub2_6_8⟩, ⟨_, sub2_6_9⟩, ⟨_, sub2_6_10⟩, ⟨_, sub2_6_11⟩, ⟨_, sub2_7_0⟩, ⟨_, sub2_7_1⟩, ⟨_, sub2_7_2⟩, ⟨_, sub2_7_3⟩, ⟨_, sub2_7_4⟩, ⟨_, sub2_7_5⟩, ⟨_, sub2_7_6⟩, ⟨_, sub2_7_7⟩, ⟨_, sub2_7_8⟩, ⟨_, sub2_7_9⟩, ⟨_, sub2_7_10⟩, ⟨_, sub2_7_11⟩, ⟨_, sub2_8_0⟩, ⟨_, sub2_8_1⟩, ⟨_, sub2_8_2⟩, ⟨_, sub2_8_3⟩, ⟨_, sub2_8_4⟩, ⟨_, sub2_8_5⟩, ⟨_, sub2_8_6⟩, ⟨_, sub2_8_7⟩, ⟨_, sub2_8_8⟩, ⟨_, sub2_8_9⟩, ⟨_, sub2_8_10⟩, ⟨_, sub2_8_11⟩, ⟨_, sub2_9_0⟩, ⟨_, sub2_9_1⟩, ⟨_, sub2_9_2⟩, ⟨_, sub2_9_3⟩, ⟨_, sub2_9_4⟩, ⟨_, sub2_9_5⟩, ⟨_, sub2_9_6⟩, ⟨_, sub2_9_7⟩, ⟨_, sub2_9_8⟩, ⟨_, sub2_9_9⟩, ⟨_, sub2_9_10⟩, ⟨_, sub2_9_11⟩, ⟨_, sub2_10_0⟩, ⟨_, sub2_10_1⟩, ⟨_, sub2_10_2⟩, ⟨_, sub2_10_3⟩, ⟨_, sub2_10_4⟩, ⟨_, sub2_10_5⟩, ⟨_, sub2_10_6⟩, ⟨_, sub2_10_7⟩, ⟨_, sub2_10_8⟩, ⟨_, sub2_10_9⟩, ⟨_, sub2_10_10⟩, ⟨_, sub2_10_11⟩, ⟨_, sub2_11_0⟩, ⟨_, sub2_11_1⟩, ⟨_, sub2_11_2⟩, ⟨_, sub2_11_3⟩, ⟨_, sub2_11_4⟩, ⟨_, sub2_11_5⟩, ⟨_, sub2_11_6⟩, ⟨_, sub2_11_7⟩, ⟨_, sub2_11_8⟩, ⟨_, sub2_11_9⟩, ⟨_, sub2_11_10⟩, ⟨_, sub2_11_11⟩]

theorem coverT2 {rH n r rF K : ℝ} (hK0 : 0 ≤ K)
    (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • Pmat tab.pq) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq2.rHbar) (hn : n ≤ tq2.nbar) :
    ∀ β : I6 → ℝ, β j0 = 0 → (∀ j, 0 ≤ β j ∧ β j ≤ 1) →
      Covered (Pmat tab.pq) (Tmat tcfg2 tq2) rH n r rF cfg.W0 (leafL labs2) β := by
  obtain ⟨hW, h1, h2, h3, h4, h5⟩ := tabB_spec tabOK
  obtain ⟨r1, r2, r3, r4, r5⟩ := rootsOK
  exact topL_sound parOK t2parOK hW hK0 hK hKb hr hrF hrH hn (leafLH labs2 labT2 340) (leafL labs2) (leafLH_imp labs2 labT2 340 (labTree_mem labTOK))
    h1 h2 h3 h4 h5 r1 r2 r3 r4 r5 hsubs

end NoFourMUBs.KernelAtlas.X.SC
