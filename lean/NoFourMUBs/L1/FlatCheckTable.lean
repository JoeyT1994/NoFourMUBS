import NoFourMUBs.L1.FlatCircuits

/-! Kernel checks in the seeds-only context: each table polynomial is its Laurent factor times its seed
monomial, and the horizontal and vertical invariants `g, η, χ` agree. -/

namespace NoFourMUBs.L1.FlatCircuits

set_option maxRecDepth 1000000

open NoFourMUBs.Kronecker

/-- A polynomial in the seeds-only context. -/
def pl (x : V) : Frac CS := Frac.ofCirc x

theorem gP_valid : (HS.g * (pl (monoL gMono)) - pl gP).num.valid 0 = true := by decide +kernel
theorem P0hP_valid : (HS.P0 * (pl (monoL P0hMono)) - pl P0hP).num.valid 0 = true := by decide +kernel
theorem B1hP_valid : (HS.B1 * (pl (monoL B1hMono)) - pl B1hP).num.valid 0 = true := by decide +kernel
theorem B2hP_valid : (HS.B2 * (pl (monoL B2hMono)) - pl B2hP).num.valid 0 = true := by decide +kernel
theorem P0vP_valid : (VS.P0 * (pl (monoL P0vMono)) - pl P0vP).num.valid 0 = true := by decide +kernel
theorem B1vP_valid : (VS.B1 * (pl (monoL B1vMono)) - pl B1vP).num.valid 0 = true := by decide +kernel
theorem B2vP_valid : (VS.B2 * (pl (monoL B2vMono)) - pl B2vP).num.valid 0 = true := by decide +kernel
theorem g_hv_valid : (VS.g - HS.g).num.valid 0 = true := by decide +kernel
theorem eta_hv_valid : (VS.eta - HS.eta).num.valid 0 = true := by decide +kernel
theorem chi_hv_valid : (VS.chi - HS.chi).num.valid 0 = true := by decide +kernel

end NoFourMUBs.L1.FlatCircuits
