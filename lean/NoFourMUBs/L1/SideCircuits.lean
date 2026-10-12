import NoFourMUBs.Identity.Frac

/-!
# Side existence: the Gram identities as circuits

The quantities of `SIDE_EXISTENCE.md` §3 as rational expressions in the Gram data, after rotating the
first two Gram entries to be real (`s = s̄`, `t = t̄`; the side problem is invariant under this
rotation).  The circuit variables are `s, t, r, r̄`.  The permitted denominators are
`3, P̄₀, P₁, P₂, P₀, P̄₁`, and the sheet element is `ζ = g z` with `ζ² = χ ζ − g² η`.

Each auxiliary quantity is its compact numerator withDen its denominator (§3.1).  The identities I, II,
III, the determinant identity and Y0, Y1 are formed from these, and their numerators are checked by the
kernel in `SideCheck*`.
-/

namespace NoFourMUBs.L1.SideCircuits

open NoFourMUBs.Kronecker Circ

noncomputable section

abbrev V := Circ 4

def s : V := var 0
def t : V := var 1
def r : V := var 2
def Q : V := var 3
/-- The conjugates of the rotated (real) entries. -/
def S : V := s
def T : V := t

def X : V := s * S
def Y : V := t * T
def Z : V := r * Q
def p : V := X + Y + Z
def J : V := s * r * T + S * Q * t
def g : V := 27 - 3 * p + J
def eta : V := 9 - p + J
def chi : V := X * Y + X * Z + Y * Z - X * Y * Z - (p - 9) * (p - 18) + (p - 15) * J
def c0 : V := 9 - Z
def c1 : V := 9 - Y
def c2 : V := 9 - X
def P0 : V := r * s * s + Q * t * t + (3 - Z) * s * t
def B0 : V := Q * S * S + r * T * T + (3 - Z) * S * T
def P1 : V := t * S * S + r * r * T + (3 - Y) * r * S
def B1 : V := T * s * s + Q * Q * t + (3 - Y) * Q * s
def P2 : V := s * T * T + Q * Q * S + (3 - X) * Q * T

/-- Denominators `3, P̄₀, P₁, P₂, P₀, P̄₁`; sheet `ζ² = χ ζ − g² η`. -/
def C : Ctx 4 6 := ⟨![3, B0, P1, P2, P0, B1], (chi, fun _ => 0), (0 - g * g * eta, fun _ => 0)⟩

abbrev E := QF C

/-- A polynomial. -/
def L (c : V) : E := QF.ofFrac (Frac.ofCirc c)
/-- `ζ`. -/
def y : E := QF.z

/-- Put a numerator (with no denominator) withDen `3^d₀ P̄₀^d₁ P₁^d₂ P₂^d₃ P₀^d₄ P̄₁^d₅`. -/
def withDen (x : E) (d : List ℕ) : E :=
  ⟨⟨x.x0.num, fun i => d.getD i.val 0⟩, ⟨x.x1.num, fun i => d.getD i.val 0⟩⟩

/-! ### Compact numerators (§3.1, §3.2) -/

def U1 : E := L (g * g + c0 * chi + c0 * c1 * eta) + L (c1 - c0) * y
def U1b : E := L (g * g + c1 * chi + c0 * c1 * eta) - L (c1 - c0) * y
def U2 : E := L (g * g + c0 * chi + c0 * c2 * eta) + L (c2 - c0) * y
def EN : E := L (g * g * (g * g + c0 * chi + (c0 * c1 + c0 * c2 - c1 * c2) * eta)) +
  L ((c1 + c2 - c0) * g * g + c1 * c2 * chi + c0 * c1 * c2 * eta) * y
def AN : E := L (s * s * B0 * P1) - L (3 * S) * U1
def ABN : E := L (S * S * P0 * B1) - L (3 * s) * U1b
def BN : E := L (t * t * B0 * P2) - L (3 * T) * U2
def GN : E := L (2 * s * t * B0) - 3 * (y + L (c0 * eta))
def GBN : E := L (2 * S * T * P0) - 3 * (L chi - y + L (c0 * eta))

/-! ### The auxiliary quantities -/

def n : E := withDen (L c2) [2]
def m : E := withDen (L c1) [2]
def k : E := withDen (L (3 * r - t * S)) [2]
def K : E := withDen (L (3 * Q - T * s)) [2]
def h : E := withDen (L g) [3]
def u : E := withDen U1 [0, 1, 1]
def mu : E := withDen (L s) [1]
def nu : E := withDen (L t) [1]
def Nu : E := withDen (L T) [1]
/-- `α` and `ᾱ`. -/
def a : E := withDen AN [2, 1, 1]
def A : E := withDen ABN [2, 0, 0, 0, 1, 1]
/-- `β`. -/
def b : E := withDen BN [2, 1, 0, 1]
/-- `γ` and `γ̄`. -/
def c : E := withDen GN [2, 1]
def Cb : E := withDen GBN [2, 0, 0, 0, 1]
def e : E := withDen EN [3, 1, 1, 1]

/-! ### The identities -/

def detId : E := h - (n * m - k * K)
def coreI : E := c * c - 4 * a * b - e
def coreII : E := e * A - n * c * k + a * k * k + n * n * b
def coreIII : E := e * Cb - c * (n * m + k * K) + 2 * a * k * m + 2 * b * n * K

def Dd : E := n * c - 2 * a * k
def t3 : E := n * nu * K
def t2 : E := n * Nu * k * a + A * (k * K - h) * u
def t1 : E := A * (k * K - h) * mu * a
def u3 : E := e * n * Nu + h * k * u
def u2 : E := h * a * (k * mu - n * nu)
def L00 : E := -(u3 * n * a * A) - u2 * a * A - e * K * A * A * mu * a
def L01 : E := -(t3 * n * a * A) - t2 * a * A
def L10 : E := u3 * (n * n - a * A) + u2 * n - e * K * A * A * u
def L11 : E := t3 * (n * n - a * A) + t2 * n + t1
def Y0 : E := 2 * L00 + n * L10 + Dd * L11
def Y1 : E := 2 * e * L01 + Dd * L10 + e * n * L11

end

end NoFourMUBs.L1.SideCircuits
