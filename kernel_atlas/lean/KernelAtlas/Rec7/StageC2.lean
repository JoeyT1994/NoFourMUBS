import KernelAtlas.Rec7.CoverH2
import KernelAtlas.Rec7.Graph2
import KernelAtlas.Joint2S

/-! Record 7: the Stage C certificate with the v2 tangent test and the joint edge test (generated). -/

namespace NoFourMUBs.KernelAtlas.Rec7

open Hadamard6 NoFourMUBs NoFourMUBs.StageC NoFourMUBs.KernelAtlas

theorem edgesOK2_ : edgesOK2 tab cfg pq t2cfg tq2 labs2 oR2 uR2 HO HU = true := by
  show allNat labs2.length erow = true
  refine allNat_of_ranges chunks (by decide +kernel) ?_
  intro p hp
  simp only [chunks, List.mem_cons, List.mem_nil_iff, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  exacts [ck_0, ck_1, ck_2, ck_3, ck_4, ck_5, ck_6, ck_7, ck_8, ck_9, ck_10, ck_11]

set_option maxHeartbeats 0 in
/-- **Stage C for Record 7**, given the normal-bound radii. -/
noncomputable def stageC2 {rH n r rF K : ℝ} (hK0 : 0 ≤ K)
    (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • Pmat tab.pq) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq2.rHbar) (hn : n ≤ tq2.nbar) :
    StageCCert ((1 / (2 * Real.pi)) • Pmat tab.pq) (Tmat tcfg2 tq2) rH n r rF :=
  stageCK2 (tb := tab) (c := cfg) (pq := pq) (t := t2cfg) (tq := tq2) (labs := labs2) (oR := oR2) (uR := uR2)
    (HO := HO) (HU := HU) (coverT2 hK0 hK hKb hr hrF hrH hn) parOK t2parOK tabOK labs2OK labsSmall2 edgesOK2_
    cliqueOK2 hK0 hK hKb hr hrF hrH hn

end NoFourMUBs.KernelAtlas.Rec7
