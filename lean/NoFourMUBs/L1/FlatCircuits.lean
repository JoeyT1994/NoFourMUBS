import NoFourMUBs.L1.FlatData

/-!
# Matched flatness: the identities as circuits in the seeds

`FLATNESS.md` §4.  All quantities are Laurent expressions in the seeds `a, b, c, d` (`conj a = a⁻¹`),
built with `Frac` over the table `a, b, c, d, g, P₀ʰ, P̄₁ʰ, P̄₂ʰ, P₀ᵛ, P̄₁ᵛ, P̄₂ᵛ, 2, 3, 5`, the table
polynomials being the generated `gP, P0hP, …` (each a Laurent factor times a seed monomial, checked in
`FlatCheckTable`).

* `K`, `Kst`: the forced-block map `K = −E* G⁻¹` and its conjugate transpose `−G⁻¹ E`.
* `Qh q i`, `Qv p i`: the third-moment matrices (4.3)/(4.4) of the horizontal and vertical sides, split
  into their `z⁰` and `z¹` parts through the actual-side formulas of `SideFormulas`.
* `mhUnred q i`: `K Qh K*`, and `mhData q i`: its reduced form from `FlatData`; `qvData p i`: the reduced
  vertical third moments.
* `F0 p q`, `F1 p q`: the coefficients of `1` and `z` in the weighted defect `W p q` (4.5)–(4.6), where the
  vertical side is evaluated at `z̄ = h − z` and `z² = h z − η`.
-/

namespace NoFourMUBs.L1.FlatCircuits

open NoFourMUBs.Kronecker Circ

noncomputable section

/-- The table of permitted denominators (with no relation; the sheet is added in `C`). -/
def C0 : Ctx 4 14 :=
  ⟨![a, b, c, d, gP, P0hP, B1hP, B2hP, P0vP, B1vP, B2vP, 2, 3, 5], (0, fun _ => 0), (0, fun _ => 0)⟩

abbrev Fr := Frac C0

def fl (x : V) : Fr := Frac.ofCirc x
def ia : Fr := Frac.inv C0 0
def ib : Fr := Frac.inv C0 1
def ic : Fr := Frac.inv C0 2
def id' : Fr := Frac.inv C0 3

/-- `1 / f` for the table polynomial `fₖ = f · mono`. -/
def tinv (k : Fin 14) (mono : List ℕ) : Fr := Frac.inv C0 k * fl (monoL mono)

/-! ### Gram data and invariants -/

structure Gram {m : ℕ} (C : Ctx 4 m) where
  s : Frac C
  S : Frac C
  t : Frac C
  T : Frac C
  r : Frac C
  Q : Frac C

namespace Gram

variable {m : ℕ} {C : Ctx 4 m} (G : Gram C)

def X : Frac C := G.s * G.S
def Y : Frac C := G.t * G.T
def Z : Frac C := G.r * G.Q
def p : Frac C := G.X + G.Y + G.Z
def J : Frac C := G.s * G.r * G.T + G.S * G.Q * G.t
def g : Frac C := 27 - 3 * G.p + G.J
def eta : Frac C := 9 - G.p + G.J
def chi : Frac C := G.X * G.Y + G.X * G.Z + G.Y * G.Z - G.X * G.Y * G.Z - (G.p - 9) * (G.p - 18) +
  (G.p - 15) * G.J
def c0 : Frac C := 9 - G.Z
def c1 : Frac C := 9 - G.Y
def c2 : Frac C := 9 - G.X
def P0 : Frac C := G.r * G.s * G.s + G.Q * G.t * G.t + (3 - G.Z) * G.s * G.t
def B1 : Frac C := G.T * G.s * G.s + G.Q * G.Q * G.t + (3 - G.Y) * G.Q * G.s
def B2 : Frac C := G.S * G.t * G.t + G.r * G.r * G.s + (3 - G.X) * G.r * G.t

/-- The horizontal and vertical Gram data `6 I − E E*`, `(6 I − E* E)ᵀ` in a context whose first four
denominators are the seeds. -/
def horiz (fa fb fc fd ia ib ic id' : Frac C) : Gram C :=
  ⟨-(1 + fa + fb), -(1 + ia + ib), -(1 + fc + fd), -(1 + ic + id'), -(1 + fc * ia + fd * ib),
    -(1 + fa * ic + fb * id')⟩
def vert (fa fb fc fd ia ib ic id' : Frac C) : Gram C :=
  ⟨-(1 + fa + fc), -(1 + ia + ic), -(1 + fb + fd), -(1 + ib + id'), -(1 + fb * ia + fd * ic),
    -(1 + fa * ib + fc * id')⟩

end Gram

def fa : Fr := fl a
def fb : Fr := fl b
def fc : Fr := fl c
def fd : Fr := fl d

def H : Gram C0 := Gram.horiz fa fb fc fd ia ib ic id'
def Vg : Gram C0 := Gram.vert fa fb fc fd ia ib ic id'

/-! ### The seeds-only context, for the nonvanishing of the table polynomials -/

def CS : Ctx 4 4 := ⟨![a, b, c, d], (0, fun _ => 0), (0, fun _ => 0)⟩
def HS : Gram CS := Gram.horiz (Frac.ofCirc a) (Frac.ofCirc b) (Frac.ofCirc c) (Frac.ofCirc d)
  (Frac.inv CS 0) (Frac.inv CS 1) (Frac.inv CS 2) (Frac.inv CS 3)
def VS : Gram CS := Gram.vert (Frac.ofCirc a) (Frac.ofCirc b) (Frac.ofCirc c) (Frac.ofCirc d)
  (Frac.inv CS 0) (Frac.inv CS 1) (Frac.inv CS 2) (Frac.inv CS 3)

/-- Inverses of the table factors. -/
def ig : Fr := tinv 4 gMono
def iP0h : Fr := tinv 5 P0hMono
def iB1h : Fr := tinv 6 B1hMono
def iB2h : Fr := tinv 7 B2hMono
def iP0v : Fr := tinv 8 P0vMono
def iB1v : Fr := tinv 9 B1vMono
def iB2v : Fr := tinv 10 B2vMono

/-! ### The forced-block map -/

def E : Fin 3 → Fin 3 → Fr := ![![1, 1, 1], ![1, fa, fb], ![1, fc, fd]]
def Ec : Fin 3 → Fin 3 → Fr := ![![1, 1, 1], ![1, ia, ib], ![1, ic, id']]

/-- `G = 6 I − E E*`. -/
def Gh (i j : Fin 3) : Fr := (if i = j then 6 else 0) - (E i 0 * Ec j 0 + E i 1 * Ec j 1 + E i 2 * Ec j 2)

/-- The other two indices of `i`, in order. -/
def oth : Fin 3 → Fin 3 × Fin 3 := ![(1, 2), (0, 2), (0, 1)]

/-- `G⁻¹ = adj G / g`. -/
def Ginv (i j : Fin 3) : Fr :=
  let rs := oth j; let cs := oth i
  (if (i.val + j.val) % 2 = 0 then 1 else -1) *
    (Gh rs.1 cs.1 * Gh rs.2 cs.2 - Gh rs.1 cs.2 * Gh rs.2 cs.1) * ig

/-- `K = −E* G⁻¹`. -/
def K (a' b' : Fin 3) : Fr := -(Ec 0 a' * Ginv 0 b' + Ec 1 a' * Ginv 1 b' + Ec 2 a' * Ginv 2 b')
/-- `K* = −G⁻¹ E`. -/
def Kst (c' d' : Fin 3) : Fr := -(Ginv c' 0 * E 0 d' + Ginv c' 1 * E 1 d' + Ginv c' 2 * E 2 d')

/-! ### Third moments -/

/-- The third-moment matrices of a side with Gram data `G`, against row `q + 1`, split into the
coefficients of `z⁰` (`i = 0`) and `z¹` (`i = 1`).  `iP0, iB1, iB2` are `1/P₀, 1/P̄₁, 1/P̄₂` and the
invariants are the horizontal ones (they agree with the vertical ones, `FlatCheckTable`). -/
def Qm (G : Gram C0) (iP0 iB1 iB2 : Fr) (q i : ℕ) : Fin 3 → Fin 3 → Fr :=
  let g := H.g; let η := H.eta; let χ := H.chi
  let U0 := (g * g + G.c1 * χ + G.c0 * G.c1 * η) * iP0 * iB1
  let U1 := g * (G.c0 - G.c1) * iP0 * iB1
  let V0 := (g * g + G.c2 * χ + G.c0 * G.c2 * η) * iP0 * iB2
  let V1 := g * (G.c0 - G.c2) * iP0 * iB2
  let Pi0 := (χ + G.c0 * η) * iP0
  let Pi1 := -g * iP0
  let zL10 := G.c1 * η * iB1
  let zL11 := g * iB1
  let zL20 := G.c2 * η * iB2
  let zL21 := g * iB2
  match q, i with
  | 0, 0 => ![![G.S, G.S * G.S - 2 * G.s * U0, G.S * G.T - Pi0], ![3, G.S, G.T],
      ![G.r, G.S * G.r - zL10, G.S]]
  | 0, _ => ![![0, -(2 * G.s * U1), -Pi1], ![0, 0, 0], ![0, -zL11, 0]]
  | _, 0 => ![![G.T, G.S * G.T - Pi0, G.T * G.T - 2 * G.t * V0], ![G.Q, G.T, G.T * G.Q - zL20],
      ![3, G.S, G.T]]
  | _, _ => ![![0, -Pi1, -(2 * G.t * V1)], ![0, 0, -zL21], ![0, 0, 0]]

def Qh (q i : ℕ) := Qm H iP0h iB1h iB2h q i
def Qv (p i : ℕ) := Qm Vg iP0v iB1v iB2v p i

/-- `K Q K*`, unreduced. -/
def mhUnred (q i : ℕ) (a' c' : Fin 3) : Fr :=
  let row (b' : Fin 3) := K a' b' * Qh q i b' 0 * Kst 0 c' + K a' b' * Qh q i b' 1 * Kst 1 c' +
    K a' b' * Qh q i b' 2 * Kst 2 c'
  row 0 + row 1 + row 2

/-- `K Q K*`, reduced (generated). -/
def mhData (q i : ℕ) (a' c' : Fin 3) : Fr :=
  ⟨mhNum q i a'.val c'.val, fun k => (mhDen q i a'.val c'.val).getD k.val 0⟩

/-- The vertical third moments, reduced (generated). -/
def qvData (p i : ℕ) (a' c' : Fin 3) : Fr :=
  ⟨qvNum p i a'.val c'.val, fun k => (qvDen p i a'.val c'.val).getD k.val 0⟩

/-! ### The weighted defects on the matched sheet -/

/-- `h = χ/g`: on the matched sheet `z̄ = h − z` and `z² = h z − η`. -/
def hF : Fr := H.chi * ig

/-- A balanced sum over the nine entries. -/
def sum9 (f : Fin 3 → Fin 3 → Fr) : Fr :=
  ((f 0 0 + f 0 1) + (f 0 2 + f 1 0)) + ((f 1 1 + f 1 2) + (f 2 0 + (f 2 1 + f 2 2)))

/-- The `z¹` coefficient of `W p q` (4.6), from the reduced data. -/
def F1 (p q : ℕ) : Fr := sum9 fun a' c' =>
  qvData p 0 a' c' * mhData q 1 a' c' - qvData p 1 a' c' * mhData q 0 a' c'

/-- The `z⁰` coefficient of `W p q` (4.6), from the reduced data, with `h` and `η` factored out. -/
def F0 (p q : ℕ) : Fr :=
  (sum9 (fun a' c' => qvData p 0 a' c' * mhData q 0 a' c') +
    hF * sum9 (fun a' c' => qvData p 1 a' c' * mhData q 0 a' c') +
    H.eta * sum9 (fun a' c' => qvData p 1 a' c' * mhData q 1 a' c')) -
  (if p = 0 then Vg.S else Vg.T) * (if q = 0 then H.S else H.T)

end

end NoFourMUBs.L1.FlatCircuits
