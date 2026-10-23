import NoFourMUBs.L1.FlatCircuits

/-! # Matched flatness: the two cleared coefficients of `W₁₁` vanish (return R2)

`F0`, `F1` (`FlatCircuits`) are Laurent polynomials in the seeds built from the definitions, with no
generated data; the kernel decides that both are zero.  The other three weighted defects follow by
relabelling (`FlatBridge.W_zero`). -/

namespace NoFourMUBs.L1.FlatCircuits

open NoFourMUBs.Kronecker

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem F0_valid : F0.num.validR 0 = true := by decide +kernel

theorem F1_valid : F1.num.validR 0 = true := by decide +kernel

/-- The two coefficient identities of `W₁₁`. -/
theorem F_valid : F0.num.validR 0 = true ∧ F1.num.validR 0 = true := ⟨F0_valid, F1_valid⟩

end NoFourMUBs.L1.FlatCircuits
