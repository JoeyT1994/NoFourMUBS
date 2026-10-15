import NoFourMUBs.PRM.CoverageStripIdHalf

/-!
# Critical strip identities (I4), zero `J`: the circuits

Variables `z, X, Y` (`Circ 3`), the frame `s = t = 1, s̄ = X, t̄ = Y` of `CoverageStripIdFormal`, and the
quadratic element `ζ = r s/t` with `ζ² = −XZ/Y`, `Z = 9 − z² − X − Y`, `r̄ t/s = −Yζ/X` (`J = 0`).
The denominators are `X, Y, z` and `e₀ = 3z + 9 − Z`, `e₁ = 3z + 9 − Y`, `e₂ = 3z + 9 − X`
(`L_j = z e_j` for `g = 3z²`).
-/

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Zero

open NoFourMUBs.Kronecker StripMoments

abbrev V := Circ 3

def vz : V := Circ.var 0
def vX : V := Circ.var 1
def vY : V := Circ.var 2
def cZ : V := 9 - vz ^ 2 - vX - vY
def ce0 : V := vX + vY + vz ^ 2 + 3 * vz
def ce1 : V := 3 * vz + 9 - vY
def ce2 : V := 3 * vz + 9 - vX

/-- The denominators `X, Y, z, e₀, e₁, e₂` and the relation `ζ² = −XZ/Y`. -/
def C0 : Ctx 3 6 := ⟨![vX, vY, vz, ce0, ce1, ce2], (0, fun _ => 0), (-(vX * cZ), ![0, 1, 0, 0, 0, 0])⟩

abbrev Q := QF C0

def fq (c : V) : Q := QF.ofFrac (Frac.ofCirc c)
def qX : Q := fq vX
def qY : Q := fq vY
def qZ : Q := fq cZ
def qz : Q := fq vz
/-- `r̄ t/s = −Yζ/X`. -/
def qR : Q := ⟨0, ⟨-vY, ![1, 0, 0, 0, 0, 0]⟩⟩
/-- `1/L_j = 1/(z e_j)`. -/
def iL0 : Q := QF.ofFrac (Frac.inv C0 2 * Frac.inv C0 3)
def iL1 : Q := QF.ofFrac (Frac.inv C0 2 * Frac.inv C0 4)
def iL2 : Q := QF.ofFrac (Frac.inv C0 2 * Frac.inv C0 5)

def dA : HalfQ C0 := halfQ 1 qX 1 qY QF.z qR qX qY qZ iL0 iL1 iL2 qz
def dB : HalfQ C0 := halfQ (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) qX qY qZ iL0 iL1 iL2 qz

/-- The combined moment `M_A + M_B`, from the formulas. -/
def mSum (p : ℤ × ℤ) : Q := dA.mom p + dB.mom p

/-- `K = XYZ`, the target `T`, `E = e₀e₁e₂` and the modulus relation `G = W − z²(z + 3)²`. -/
def cK : V := vX * vY * cZ
def cB : V := vz ^ 2 * (vz + 3) ^ 4 + (vz + 2) ^ 2 * cK
def cT : V := -3888 * vz * (vz + 2) ^ 2 * (vz + 3) ^ 2 * (cK + (vz - 1) * (vz + 3) ^ 3) * cB ^ 2
def cE : V := ce0 * ce1 * ce2
def cG : V := vX * vY + vX * cZ + vY * cZ - vX * vY * cZ - vz ^ 2 * (vz + 3) ^ 2

end NoFourMUBs.PRM.Coverage.StripId.Zero
