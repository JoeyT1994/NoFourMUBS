import KernelAtlas.X.SC.CoverH2
import KernelAtlas.X.SC.Graph2
import KernelAtlas.StageCK2B

/-! return X (F6, rho = 150001/1000000): the Stage C certificate with the v2 tangent test and the joint edge test (generated). -/

namespace NoFourMUBs.KernelAtlas.X.SC

open Hadamard6 NoFourMUBs NoFourMUBs.StageC NoFourMUBs.KernelAtlas

theorem edgesOK2_ : edgesOK2 tab cfg pq t2cfg tq2 labs2 oR2 uR2 HO HU = true := by
  show allNat labs2.length erow = true
  refine allNat_of_ranges chunks (by decide +kernel) ?_
  intro p hp
  simp only [chunks, List.mem_cons, List.mem_nil_iff, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  exacts [ck_0, ck_1, ck_2, ck_3, ck_4, ck_5, ck_6, ck_7, ck_8, ck_9, ck_10, ck_11, ck_12, ck_13, ck_14, ck_15, ck_16, ck_17, ck_18, ck_19, ck_20, ck_21, ck_22, ck_23, ck_24, ck_25, ck_26, ck_27, ck_28, ck_29, ck_30, ck_31, ck_32, ck_33]

set_option maxHeartbeats 0 in
/-- **Stage C for return X (F6, rho = 150001/1000000)**, for any radii under the bars. -/
noncomputable def stageC2 {rH n r rF K : ℝ} (hK0 : 0 ≤ K)
    (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • Pmat tab.pq) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq2.rHbar) (hn : n ≤ tq2.nbar) :
    StageCCert ((1 / (2 * Real.pi)) • Pmat tab.pq) (Tmat tcfg2 tq2) rH n r rF :=
  stageCK2B (tb := tab) (c := cfg) (pq := pq) (t := t2cfg) (tq := tq2) (labs := labs2) (oR := oR2) (uR := uR2)
    (HO := HO) (HU := HU) (coverT2 hK0 hK hKb hr hrF hrH hn) parOK t2parOK tabOK labs2OK labsSmall2 edgesOK2_
    cliqueOK2 hK0 hK hKb hr hrF hrH hn

end NoFourMUBs.KernelAtlas.X.SC
