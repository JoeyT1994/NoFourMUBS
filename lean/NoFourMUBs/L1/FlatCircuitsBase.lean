import NoFourMUBs.Identity.Fast

/-!
# Matched flatness: seed variables and packed polynomial data

Circuits in the seeds `a, b, c, d` (variables `0, 1, 2, 3`).  `ofCode W n code` decodes a polynomial
packed into one natural number: `n` fields of `W` bits, low field first, each holding the exponents of
`a, b, c, d` (six bits each), a sign bit and the absolute value of the coefficient.  The kernel decodes
with GMP arithmetic, splitting the sum in halves; the generated data in `FlatData.lean` is therefore never trusted, only evaluated.
-/

namespace NoFourMUBs.L1.FlatCircuits

open NoFourMUBs.Kronecker Circ

abbrev V := Circ 4

def a : V := var 0
def b : V := var 1
def c : V := var 2
def d : V := var 3

/-- The monomial with packed exponents `e`. -/
def mono (e : ℕ) : V := a ^ (e % 64) * b ^ (e / 64 % 64) * c ^ (e / 4096 % 64) * d ^ (e / 262144 % 64)

/-- One packed term. -/
def term (t : ℕ) : V :=
  const (if t / 16777216 % 2 = 1 then -((t / 33554432 : ℕ) : ℤ) else ((t / 33554432 : ℕ) : ℤ)) *
    mono (t % 16777216)

/-- Decode `n` packed terms of width `W` as a balanced sum (`fuel` bounds the depth). -/
def ofCodeBal (W : ℕ) : ℕ → ℕ → ℕ → V
  | 0, _, _ => 0
  | fuel + 1, n, code =>
    if n = 0 then 0 else if n = 1 then term (code % 2 ^ W) else
      ofCodeBal W fuel (n / 2) (code % 2 ^ (W * (n / 2))) +
        ofCodeBal W fuel (n - n / 2) (code / 2 ^ (W * (n / 2)))

/-- Decode `n` packed terms of width `W`. -/
def ofCode (W n code : ℕ) : V := ofCodeBal W (Nat.log2 n + 2) n code

/-- The seed monomial with exponent list `[i, j, k, l]`. -/
def monoL (l : List ℕ) : V := a ^ l.getD 0 0 * b ^ l.getD 1 0 * c ^ l.getD 2 0 * d ^ l.getD 3 0

end NoFourMUBs.L1.FlatCircuits
