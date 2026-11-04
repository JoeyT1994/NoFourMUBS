import KernelAtlas.Tangent2K
import KernelAtlas.StageCK

/-!
# The joint edge test (6.23) in the kernel: the checker

For a label pair `(A, B)` and a hint `h` (fourteen 10-bit fields: `y₀`, `y₁` and the edge multipliers, each
`field − 512`), the checker computes:

* the label-centre rows from the tables (`nodeV`, certified by `nodeB` as for tree nodes), and from them, for each
  label, the integer quantities of the v2 test (`JtZ`, `BtZ`, … of `Tangent2K.lean`) for its multiplier;
* the pair phases `q_j = EU[(w_A,j − w_B,j) mod 192]` and their sum;
* one exact rational comparison, the integer form of `jointO_excl` / `jointU_excl` (`Joint2.lean`).

Everything is untrusted except the comparison: the hint is any natural number.
-/

open Matrix Hadamard6 NoFourMUBs.StageC

namespace NoFourMUBs.KernelAtlas

/-! ### Label centres -/

def nodeC (tb : Tab) (boff : ℕ) (m i : I6) (k : ℕ) : ℤ × ℤ :=
  (rdiv (gmul (tb.eu k) (tb.ep m i)).1 tb.p + boff, rdiv (gmul (tb.eu k) (tb.ep m i)).2 tb.p + boff)

/-- The node value of row `m` at midpoint `k/192`, from the tables. -/
def nodeV (tb : Tab) (boff : ℕ) (m : I6) (k : ℕ) : V12 :=
  ⟨(nodeC tb boff m (.inl 0) k).1.toNat, (nodeC tb boff m (.inl 0) k).2.toNat,
   (nodeC tb boff m (.inl 1) k).1.toNat, (nodeC tb boff m (.inl 1) k).2.toNat,
   (nodeC tb boff m (.inl 2) k).1.toNat, (nodeC tb boff m (.inl 2) k).2.toNat,
   (nodeC tb boff m (.inr 0) k).1.toNat, (nodeC tb boff m (.inr 0) k).2.toNat,
   (nodeC tb boff m (.inr 1) k).1.toNat, (nodeC tb boff m (.inr 1) k).2.toNat,
   (nodeC tb boff m (.inr 2) k).1.toNat, (nodeC tb boff m (.inr 2) k).2.toNat⟩

def labCT (tb : Tab) (boff : ℕ) (m : I6) (k : ℕ) : CT := CT.node k (nodeV tb boff m k) CT.leaf CT.leaf

/-- The five computed nodes of a label centre pass the table check. -/
def labNodesB (tb : Tab) (c : Cfg) (L : Lab) : Bool :=
  nodeB tb c.boff m1 L.w1 (nodeV tb c.boff m1 L.w1) && nodeB tb c.boff m2 L.w2 (nodeV tb c.boff m2 L.w2) &&
  nodeB tb c.boff m3 L.w3 (nodeV tb c.boff m3 L.w3) && nodeB tb c.boff m4 L.w4 (nodeV tb c.boff m4 L.w4) &&
  nodeB tb c.boff m5 L.w5 (nodeV tb c.boff m5 L.w5)

noncomputable section

def lrow (tb : Tab) (c : Cfg) (L : Lab) : Rows :=
  rowv c.W0 (labCT tb c.boff m1 L.w1) (labCT tb c.boff m2 L.w2) (labCT tb c.boff m3 L.w3)
    (labCT tb c.boff m4 L.w4) (labCT tb c.boff m5 L.w5)

def lacc (tb : Tab) (c : Cfg) (L : Lab) : V12 :=
  sumAcc c.W0 (labCT tb c.boff m1 L.w1) (labCT tb c.boff m2 L.w2) (labCT tb c.boff m3 L.w3)
    (labCT tb c.boff m4 L.w4) (labCT tb c.boff m5 L.w5)

/-! ### One label with a multiplier -/

section lab

variable (c : Cfg) (t : T2Cfg) (acc : V12) (row : Rows) (y : I6 → ZP)

def jSp (i : I6) : ℕ := Nat.add (SqN c acc i) t.eZ

def lGJ (j : I6) : ZP := sum6Z fun i => zmul (y i) (JtZ c acc row i j)
def lGR (j : I6) : ZP := sum6Z fun i => zmul (y i) (RtZ c acc row i j)
def lBk (k : ℕ) : ZP := sum6Z fun i => zmul (y i) (BtZ c t acc row i k)
def lNX : ℕ := sum6N fun i => Nat.mul (Nat.mul (zabs (y i)) (zabs (y i)))
  (sum6N fun j => Nat.mul (zabs (JtZ c acc row i j)) (zabs (JtZ c acc row i j)))
def lGX : ℕ := max6N fun j => Nat.add (Nat.mul (zabs (lGR c acc row y j)) (zabs (lGR c acc row y j)))
  (Nat.mul (zabs (lGJ c acc row y j)) (zabs (lGJ c acc row y j)))
def lSX : ℕ := sum6N fun i => Nat.mul (Nat.mul (zabs (y i)) (zabs (y i))) (Nat.mul (jSp c t acc i) (jSp c t acc i))
def lSY1 : ℕ := sum6N fun i => Nat.mul (zabs (y i)) (jSp c t acc i)
def lSYinf : ℕ := max6N fun i => Nat.mul (zabs (y i)) (jSp c t acc i)
def lY1 : ℕ := sum6N fun i => zabs (y i)
def lYinf : ℕ := max6N fun i => zabs (y i)
def lC : ℤ := zv (sum6Z fun i => zmul (y i) (NN c acc i, c.six))

/-- The square-root checks of one label. -/
def lOK : Bool :=
  all6 (fun i => Nat.ble (NN c acc i) (Nat.mul (SqN c acc i) (SqN c acc i))) &&
    Nat.ble (lNX c acc row y) (Nat.mul (isqU (lNX c acc row y)) (isqU (lNX c acc row y))) &&
    Nat.ble (lGX c acc row y) (Nat.mul (isqU (lGX c acc row y)) (isqU (lGX c acc row y))) &&
    Nat.ble (lSX c t acc y) (Nat.mul (isqU (lSX c t acc y)) (isqU (lSX c t acc y)))

end lab

/-! ### The pair -/

def jy (h k : ℕ) : ZP := (Nat.mod (Nat.shiftRight h (Nat.mul 10 k)) 1024, 512)
def jy0 (h : ℕ) (i : I6) : ZP := jy h (idx i)
def jy1 (h : ℕ) (i : I6) : ZP := jy h (6 + idx i)

/-- The midpoint index of label `L` in coordinate `j` (`0` for `j₀`). -/
def lw (L : Lab) : I6 → ℕ
  | .inl 0 => 0 | .inl 1 => L.w1 | .inl 2 => L.w2 | .inr 0 => L.w3 | .inr 1 => L.w4 | .inr 2 => L.w5

def pq_ (tb : Tab) (A B : Lab) (j : I6) : ℤ × ℤ := tb.eu (dIdx (lw A j) (lw B j))

def pQ (tb : Tab) (A B : Lab) : ℤ × ℤ :=
  (∑ j, (pq_ tb A B j).1, ∑ j, (pq_ tb A B j).2)

/-- `24 π Z² 𝓔^{ball}` in rational form. -/
def EBqQ (pq : ParQ) (tq : TParQ) (Z : ℚ) (eW s : ℚ) (NJ Gb Y1 Yinf SY2 SY1 SYinf : ℚ) : ℚ :=
  4 * pq.pihi * tq.nbar * NJ + 4 * pq.s6hi * pq.pihi * tq.nbar * eW * Z ^ 2 * Y1 +
    24 * pq.pihi ^ 2 * Z ^ 2 * min (Yinf * (pq.Kbar * s + pq.rFbar) ^ 2) (Y1 * (pq.Kbar * s + pq.rbar) ^ 2) +
    4 * pq.pihi ^ 2 * s ^ 2 * Gb + 4 * pq.pihi ^ 2 * s ^ 2 * Z ^ 2 * eW * Y1 +
    8 * pq.pihi ^ 2 * Z * s * min (SY2 * pq.rFbar) (SY1 * pq.rbar) +
    4 * pq.pihi ^ 2 * Z * min (SYinf * pq.rFbar ^ 2) (SY1 * pq.rbar ^ 2)

def labS (L : Lab) : ℚ := (L.sn : ℚ) / 2 ^ 30

section pair

variable (tb : Tab) (c : Cfg) (pq : ParQ) (t : T2Cfg) (tq : TParQ) (A B : Lab) (h : ℕ)

/-- The rational ball terms of one label. -/
def lEB (L : Lab) (y : I6 → ZP) : ℚ :=
  EBqQ pq tq c.Z ((6 + pq.E) * pq.eps1 + pq.E) (labS L) (isqU (lNX c (lacc tb c L) (lrow tb c L) y))
    (isqU (lGX c (lacc tb c L) (lrow tb c L) y)) (lY1 y) (lYinf y) (isqU (lSX c t (lacc tb c L) y))
    (lSY1 c t (lacc tb c L) y) (lSYinf c t (lacc tb c L) y)

def jGJA (j : I6) : ℤ := zv (lGJ c (lacc tb c A) (lrow tb c A) (jy0 h) j)
def jGJB (j : I6) : ℤ := zv (lGJ c (lacc tb c B) (lrow tb c B) (jy1 h) j)
def jUX : ℤ := ∑ k : Fin 4, (zv (lBk c t (lacc tb c A) (lrow tb c A) (jy0 h) k) +
  zv (lBk c t (lacc tb c B) (lrow tb c B) (jy1 h) k)) ^ 2

/-- The common checks of both edge types. -/
def jCommon : Bool :=
  labNodesB tb c A && labNodesB tb c B &&
  lOK c t (lacc tb c A) (lrow tb c A) (jy0 h) && lOK c t (lacc tb c B) (lrow tb c B) (jy1 h) &&
  decide (jUX tb c t A B h ≤ (isqU (jUX tb c t A B h).toNat : ℤ) ^ 2)

/-- `6Z²(D^T y_e)_j` for the O test: `6Z (ye₂ Re q_j − ye₁ Im q_j)`. -/
def jDO (j : I6) : ℤ := 6 * c.Z * (zv (jy h 13) * (pq_ tb A B j).1 - zv (jy h 12) * (pq_ tb A B j).2)

def jVXA (D : I6 → ℤ) : ℤ := ∑ j, (-jGJA tb c A h j + D j) ^ 2
def jVXB (D : I6 → ℤ) : ℤ := ∑ j, (-jGJB tb c B h j - D j) ^ 2

/-- The rational right-hand side shared by both types, with the pair error `dE` and edge term `EE`. -/
def jRhs (VNA VNB : ℕ) (dE EE : ℚ) : ℚ :=
  let eW := (6 + pq.E) * pq.eps1 + pq.E
  let Z : ℚ := c.Z
  let sa := labS A
  let sb := labS B
  let Y1A : ℚ := lY1 (jy0 h)
  let Y1B : ℚ := lY1 (jy1 h)
  4 * pq.pihi * sa * VNA + 4 * pq.s6hi * pq.pihi * sa * Z ^ 2 * (eW * Y1A + 6 * dE) + lEB tb c pq t tq A (jy0 h) +
  4 * pq.pihi * sb * VNB + 4 * pq.s6hi * pq.pihi * sb * Z ^ 2 * (eW * Y1B + 6 * dE) + lEB tb c pq t tq B (jy1 h) +
  4 * pq.pihi * tq.rHbar * (isqU (jUX tb c t A B h).toNat : ℚ) / tq.DT +
  8 * pq.pihi * tq.rHbar * tq.tcol * eW * Z ^ 2 * (Y1A + Y1B) + EE

/-- **The joint O test** of the ordered pair `(A, B)`. -/
def jointOB : Bool :=
  let D := jDO tb c A B h
  let ye1 := zv (jy h 12)
  let ye2 := zv (jy h 13)
  let Z : ℚ := c.Z
  let yX : ℕ := Nat.add (Nat.mul (zabs (jy h 12)) (zabs (jy h 12))) (Nat.mul (zabs (jy h 13)) (zabs (jy h 13)))
  let eU : ℚ := tb.epsU
  let yL1 : ℚ := (zabs (jy h 12) : ℚ) + zabs (jy h 13)
  jCommon tb c t A B h &&
  decide (jVXA tb c A h D ≤ (isqU (jVXA tb c A h D).toNat : ℤ) ^ 2) &&
  decide (jVXB tb c B h D ≤ (isqU (jVXB tb c B h D).toNat : ℤ) ^ 2) &&
  Nat.ble yX (Nat.mul (isqU yX) (isqU yX)) &&
  decide (jRhs tb c pq t tq A B h (isqU (jVXA tb c A h D).toNat) (isqU (jVXB tb c B h D).toNat) (yL1 * eU)
      (24 * pq.pihi ^ 2 * Z ^ 2 * (labS A + labS B) ^ 2 * (isqU yX : ℚ)) <
    (|lC c (lacc tb c A) (jy0 h) + lC c (lacc tb c B) (jy1 h) + 12 * c.Z * (ye1 * (pQ tb A B).1 + ye2 * (pQ tb A B).2)| : ℚ) -
      (((lY1 (jy0 h) : ℚ) + lY1 (jy1 h)) * (pq.E * (12 + pq.E)) * Z ^ 2 + 72 * Z ^ 2 * eU * yL1))

/-- `6Z²(y_e D_U)_j` for the U test: `−ye Im(conj(Q) q_j)`. -/
def jDU (j : I6) : ℤ := -zv (jy h 12) * ((pQ tb A B).1 * (pq_ tb A B j).2 - (pQ tb A B).2 * (pq_ tb A B j).1)

/-- **The joint U test** of the ordered pair `(A, B)`. -/
def jointUB : Bool :=
  let D := jDU tb A B h
  let ye := zv (jy h 12)
  let Z : ℚ := c.Z
  let Q2 : ℤ := (pQ tb A B).1 ^ 2 + (pQ tb A B).2 ^ 2
  let QN := isqU Q2.toNat
  let eU : ℚ := tb.epsU
  let ya : ℚ := (zabs (jy h 12) : ℚ)
  jCommon tb c t A B h &&
  decide (jVXA tb c A h D ≤ (isqU (jVXA tb c A h D).toNat : ℤ) ^ 2) &&
  decide (jVXB tb c B h D ≤ (isqU (jVXB tb c B h D).toNat : ℤ) ^ 2) &&
  decide (Q2 ≤ (QN : ℤ) ^ 2) &&
  decide (jRhs tb c pq t tq A B h (isqU (jVXA tb c A h D).toNat) (isqU (jVXB tb c B h D).toNat)
      (ya * ((12 + 6 * eU) * eU) / 6)
      (24 * pq.pihi ^ 2 * Z ^ 2 * (labS A + labS B) ^ 2 * (1 + ((QN : ℚ) / Z + 6 * eU) / 6) * ya) <
    (|lC c (lacc tb c A) (jy0 h) + lC c (lacc tb c B) (jy1 h) + ye * (Q2 - 6 * c.Z ^ 2)| : ℚ) -
      (((lY1 (jy0 h) : ℚ) + lY1 (jy1 h)) * (pq.E * (12 + pq.E)) * Z ^ 2 + ya * Z ^ 2 * (6 * eU * (12 + 6 * eU))))

end pair

/-! ### Edges with the joint test -/

def hintAt (H : List (List ℕ)) (i j : ℕ) : ℕ := (H.getD i []).getD j 0

/-- Every clear O (U) bit is backed by the direct test or by the joint test with its hint. -/
def edgesOK2 (tb : Tab) (c : Cfg) (pq : ParQ) (t : T2Cfg) (tq : TParQ) (labs : List Lab) (oR uR : ℕ → ℕ)
    (HO HU : List (List ℕ)) : Bool :=
  allNat labs.length fun i => allNat labs.length fun j =>
    ((oR i).testBit j || edgeOB tb pq (labs.getD i labD) (labs.getD j labD) ||
      jointOB tb c pq t tq (labs.getD i labD) (labs.getD j labD) (hintAt HO i j)) &&
    ((uR i).testBit j || edgeUB tb pq (labs.getD i labD) (labs.getD j labD) ||
      jointUB tb c pq t tq (labs.getD i labD) (labs.getD j labD) (hintAt HU i j))

end

end NoFourMUBs.KernelAtlas
