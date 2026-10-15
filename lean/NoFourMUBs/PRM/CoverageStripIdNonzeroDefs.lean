import NoFourMUBs.PRM.CoverageStripIdHalf

/-!
# Critical strip identities (I4), nonzero `J`: the circuits

Variables `X, Y, k` (`Circ 3`), `h = 1 + k²`, the frame `s = t = 1, s̄ = X, t̄ = Y` of
`CoverageStripIdFormal`, and the quadratic element `ζ = r s/t` with `Yζ² − Jζ + XZ = 0`
(`J = 8k/h²`, `hZ = 9h − 4 − hX − hY`), `r̄ t/s = (J − Yζ)/X`.  The two halves have
`z_± = −2(1 ± k)/h`, `g_± = 12/h ± 8k/h²`, so `L_{j,±} = 2 ℓ_{j,±}/h²` with the polynomials `ℓ_{j,±}`.
The denominators are `X, Y, h, 2` and the six `ℓ_{j,±}`.
-/

noncomputable section

namespace NoFourMUBs.PRM.Coverage.StripId.Nonzero

open NoFourMUBs.Kronecker StripMoments

abbrev V := Circ 3

def vX : V := Circ.var 0
def vY : V := Circ.var 1
def vk : V := Circ.var 2
def ch : V := 1 + vk ^ 2

/-- `Σ_{i < len} cᵢ vⁱ` (Horner form, with a final `v · 0`), the `cᵢ` packed in `W`-bit fields of the
code; by the recursor, which the kernel reduces fast. -/
def hornerUR (v : V) (W len : ℕ) : ℕ → V :=
  Nat.rec (motive := fun _ => ℕ → V) (fun _ => 0)
    (fun _ ih code => Circ.const (unpackInt W (code % 2 ^ W)) + v * ih (code / 2 ^ W)) len

/-- Packed data: `L[a][b] = (len, code)` is the coefficient of `Xᵃ Yᵇ`, a polynomial in `k`
(Horner form in `X` and `Y`, by the recursors). -/
def hornerR (W : ℕ) (L : List (List (ℕ × ℕ))) : V :=
  List.rec (motive := fun _ => V) 0
    (fun row _ ih => List.rec (motive := fun _ => V) 0
      (fun e _ ih2 => hornerUR vk W e.1 e.2 + vY * ih2) row + vX * ih) L

/-- As `hornerUR`, with each `W`-bit field carrying a 64-bit filler below the coefficient (the
filler only varies the low bits of the intermediate codes, which keeps the kernel's caches fast). -/
def hornerUS (v : V) (W len : ℕ) : ℕ → V :=
  Nat.rec (motive := fun _ => ℕ → V) (fun _ => 0)
    (fun _ ih code => Circ.const (unpackInt (W - 64) (code % 2 ^ W / 2 ^ 64)) + v * ih (code / 2 ^ W)) len

/-- Abbreviations for explicit data circuits. -/
abbrev pa : V → V → V := Circ.add
abbrev pm : V → V → V := Circ.mul
abbrev pc : ℤ → V := Circ.const
abbrev p0 : V := Circ.const 0

/-- `Σᵢ cᵢ vⁱ` (Horner form, explicit constructors) for a list of coefficients. -/
def hornerLZ (v : V) (L : List ℤ) : V :=
  List.rec (motive := fun _ => V) p0 (fun c _ ih => pa (pc c) (pm v ih)) L

/-- Data: `L[a][b]` lists the coefficients (in `k`) of `Xᵃ Yᵇ`. -/
def hornerZ (L : List (List (List ℤ))) : V :=
  List.rec (motive := fun _ => V) p0
    (fun row _ ih => pa (List.rec (motive := fun _ => V) p0
      (fun e _ ih2 => pa (hornerLZ vk e) (pm vY ih2)) row) (pm vX ih)) L

/-- `hornerR` with `hornerUS`. -/
def hornerS (W : ℕ) (L : List (List (ℕ × ℕ))) : V :=
  List.rec (motive := fun _ => V) 0
    (fun row _ ih => List.rec (motive := fun _ => V) 0
      (fun e _ ih2 => hornerUS vk W e.1 e.2 + vY * ih2) row + vX * ih) L
/-- `h Z`. -/
def chZ : V := 9 * ch - 4 - ch * vX - ch * vY
def cl0A : V := 6 * vk ^ 2 + 2 - (1 + vk) * ch * (vX + vY)
def cl1A : V := 6 * ch + 4 * vk - (1 + vk) * ch * (9 - vY)
def cl2A : V := 6 * ch + 4 * vk - (1 + vk) * ch * (9 - vX)
def cl0B : V := 6 * vk ^ 2 + 2 - (1 - vk) * ch * (vX + vY)
def cl1B : V := 6 * ch - 4 * vk - (1 - vk) * ch * (9 - vY)
def cl2B : V := 6 * ch - 4 * vk - (1 - vk) * ch * (9 - vX)

/-- The denominators `X, Y, h, 2, ℓ_{0,+}, ℓ_{1,+}, ℓ_{2,+}, ℓ_{0,−}, ℓ_{1,−}, ℓ_{2,−}` and the relation
`ζ² = (J/Y) ζ − XZ/Y`. -/
def C1 : Ctx 3 10 :=
  ⟨![vX, vY, ch, 2, cl0A, cl1A, cl2A, cl0B, cl1B, cl2B], (8 * vk, ![0, 1, 2, 0, 0, 0, 0, 0, 0, 0]),
    (-(vX * chZ), ![0, 1, 1, 0, 0, 0, 0, 0, 0, 0])⟩

abbrev Q := QF C1

def fq (c : V) : Q := QF.ofFrac (Frac.ofCirc c)
def qX : Q := fq vX
def qY : Q := fq vY
def qZ : Q := QF.ofFrac ⟨chZ, ![0, 0, 1, 0, 0, 0, 0, 0, 0, 0]⟩
/-- `r̄ t/s = (J − Yζ)/X`. -/
def qR : Q := ⟨⟨8 * vk, ![1, 0, 2, 0, 0, 0, 0, 0, 0, 0]⟩, ⟨-vY, ![1, 0, 0, 0, 0, 0, 0, 0, 0, 0]⟩⟩
def qzA : Q := QF.ofFrac ⟨-(2 * (1 + vk)), ![0, 0, 1, 0, 0, 0, 0, 0, 0, 0]⟩
def qzB : Q := QF.ofFrac ⟨-(2 * (1 - vk)), ![0, 0, 1, 0, 0, 0, 0, 0, 0, 0]⟩
/-- `1/L = h²/(2 ℓ)`. -/
def iL (j : Fin 10) : Q := QF.ofFrac ⟨ch ^ 2, fun i => if i = 3 ∨ i = j then 1 else 0⟩

def dA : HalfQ C1 := halfQ 1 qX 1 qY QF.z qR qX qY qZ (iL 4) (iL 5) (iL 6) qzA
def dB : HalfQ C1 := halfQ (-1) (-qX) (-1) (-qY) (-QF.z) (-qR) qX qY qZ (iL 7) (iL 8) (iL 9) qzB

/-- The combined moment `M_A + M_B`, from the formulas. -/
def mSum (p : ℤ × ℤ) : Q := dA.mom p + dB.mom p

end NoFourMUBs.PRM.Coverage.StripId.Nonzero

namespace NoFourMUBs.PRM.Coverage.StripId.Nonzero

open NoFourMUBs.Kronecker

/-- `h K = XY · hZ`, `Q_h = h⁴ Q(k, K)`, `Π ℓ`, and the modulus relation `G = h³ (W(X, Y, Z) − W_k)`. -/
def cKh : V := vX * vY * chZ
def cQh : V := (Quartic.qCoeffs.map fun c => Circ.const c.1 * vk ^ c.2.1 * cKh ^ c.2.2 * ch ^ (4 - c.2.2)).foldr
  (· + ·) 0
def cP : V := cl0A * cl1A * cl2A * (cl0B * cl1B * cl2B)
def cG : V := ch ^ 3 * vX * vY + ch ^ 2 * (vX + vY) * chZ - ch ^ 2 * vX * vY * chZ -
  2 * (16 - 32 * ch + 18 * ch ^ 2)

end NoFourMUBs.PRM.Coverage.StripId.Nonzero
