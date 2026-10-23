import NoFourMUBs.PRM.CoverageMixedData

/-! Return O, identity (27a) (`REPORT.md` §7.2), checked by the kernel: on the halves in the gauge
`s = t = 1` with `X = Y = v`, `h² = −v²Z`, the coefficient of `1` in `2 T_{x|y} = x₀ + x₁ h` is

  `x₀ = 3 (C + 2vD) / (8 τ⁵) + C₂ · cofR / (8 z⁴ e_Z³ e_v⁴ τ⁵)`;

the cofactor `cofR` of `C₂` is the one of the return's certificate `repeated_Tpair`. -/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

noncomputable section

namespace NoFourMUBs.PRM.Coverage.Mixed

open NoFourMUBs.Kronecker StripId

theorem validR : ((mixedPolyQ tpTerms rA.mom rB.mom).x0 - rtarget -
    Frac.ofCirc dC2 * (⟨cofR, rcofDen⟩ : Frac CR)).num.validR 1 = true := by
  decide +kernel

end NoFourMUBs.PRM.Coverage.Mixed
