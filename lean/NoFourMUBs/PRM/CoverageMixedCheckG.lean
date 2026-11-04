import NoFourMUBs.PRM.CoverageMixedData

/-! Return O, identity (12) (`REPORT.md` §4), checked by the kernel: on the halves in the gauge
`s = t = 1`, with `h² = −XYZ`,

  `z² · X(X − 1) e_X e_Y² e_Z² · (2 T_x) = 2 (z² c (X τ P_X − h Q_X) + G_W · cofG)`,

`c = 18 z (z + 2) τ (τ − X)(Y − Z)`; the cofactor `cofG` of the modulus relation `G_W` is the one of the
return's certificate `generic`. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable section

namespace NoFourMUBs.PRM.Coverage.Mixed

open NoFourMUBs.Kronecker StripId

theorem validG : qvalidR (fq (vz ^ 2 * cmult) * mixedPolyQ txTerms gA.mom gB.mom -
    2 * (fq (vz ^ 2) * qtarget + fq cGW * cofG)) 1 = true := by
  decide +kernel

end NoFourMUBs.PRM.Coverage.Mixed
