import KernelAtlas.Rec100.TangentCover
import KernelAtlas.Rec100.Graph

/-! Record 100: the Stage C certificate, from the kernel checks (generated). -/

namespace NoFourMUBs.KernelAtlas.Rec100

open Hadamard6 NoFourMUBs NoFourMUBs.StageC NoFourMUBs.KernelAtlas

/-- **Stage C for Record 100**, given the normal-bound radii. -/
noncomputable def stageC {rH n r rF K : ℝ} (hK0 : 0 ≤ K)
    (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • Pmat tab.pq) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq.rHbar) (hn : n ≤ tq.nbar) :
    StageCCert ((1 / (2 * Real.pi)) • Pmat tab.pq) (Tmat tcfg tq) rH n r rF :=
  stageCK (coverT hK0 hK hKb hr hrF hrH hn) parOK (tabB_euB tabOK) labsOK_ labsSmall_ edgesOK_ cliqueOK_

end NoFourMUBs.KernelAtlas.Rec100
