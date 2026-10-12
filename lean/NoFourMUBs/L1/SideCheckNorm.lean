import NoFourMUBs.L1.SideCircuits

/-! Kernel check of the norm identities (6): `|Pⱼ|² = g² + cⱼ χ + cⱼ² η`. -/

namespace NoFourMUBs.L1.SideCircuits

/-- `P̄₂`. -/
def B2 : V := S * t * t + r * r * s + (3 - X) * r * t

def norm0 : E := L (P0 * B0 - (g * g + c0 * chi + c0 * c0 * eta))
def norm1 : E := L (P1 * B1 - (g * g + c1 * chi + c1 * c1 * eta))
def norm2 : E := L (P2 * B2 - (g * g + c2 * chi + c2 * c2 * eta))

set_option maxRecDepth 1000000

theorem norm0_valid : norm0.valid 2 = true := by decide +kernel

theorem norm1_valid : norm1.valid 2 = true := by decide +kernel

theorem norm2_valid : norm2.valid 2 = true := by decide +kernel

end NoFourMUBs.L1.SideCircuits
