import KernelAtlas.Tangent2

/-!
# The sharper tangent test (v2): the kernel checker

A `Nat`-only checker for the v2 tests of `Tangent2.lean`, computed **directly from the six row values** of a bin (no
lane packing), and driven by a per-bin hint.

* Signed integers are pairs `(p, m)` of naturals with value `p − m` (`ZP`); `zmul`, `zadd`, `zabs` are four
  multiplications, two additions and one comparison.
* Square roots are integer upper bounds `s` with `X ≤ s²`: `isqU` computes a candidate (bisection for the bit length,
  then Newton), and the checker tests `X ≤ s²` itself, so `isqU` needs no proof.
* The hint `h` names the test: `h % 4 = 1` is the scalar test (6.12) on column `(h >>> 2) % 8`; `h % 4 = 2` is the
  linear test with multiplier `y_i = ((h >>> (2 + 10 i)) % 1024) − 512`; anything else is no test.  The hint is
  untrusted: the checker decides the named test for whatever `h` it is given.

The per-bin data: `s_i = acc_i − 6B` (Gaussian integer), `w_{ji} = row_j,i − B`, `N_i = |s_i|²`,
`Jt_{ij} = Im(conj(s_i) w_{ji})`, `Rt_{ij} = Re(conj(s_i) w_{ji})`, `Bt_{ik} = Σ_j T'_{kji} Jt_{ij}`
(`= Σ_j (T' − OT)_{kji} Jt_{ij}` because `Σ_j Jt_{ij} = 0`).
-/

namespace NoFourMUBs.KernelAtlas

open Matrix Hadamard6 NoFourMUBs.StageC

/-! ### Signed pairs -/

abbrev ZP := ℕ × ℕ

def zv (a : ZP) : ℤ := (a.1 : ℤ) - a.2

def zadd (a b : ZP) : ZP := (Nat.add a.1 b.1, Nat.add a.2 b.2)

def zsub (a b : ZP) : ZP := (Nat.add a.1 b.2, Nat.add a.2 b.1)

def zmul (a b : ZP) : ZP :=
  (Nat.add (Nat.mul a.1 b.1) (Nat.mul a.2 b.2), Nat.add (Nat.mul a.1 b.2) (Nat.mul a.2 b.1))

/-- `|p − m|`. -/
def zabs (a : ZP) : ℕ := sqd a.2 a.1

/-- The normal form `(p − m, 0)` or `(0, m − p)`. -/
def znorm (a : ZP) : ZP := cond (Nat.ble a.2 a.1) (Nat.sub a.1 a.2, 0) (0, Nat.sub a.2 a.1)

def zsc (n : ℕ) (a : ZP) : ZP := (Nat.mul n a.1, Nat.mul n a.2)

/-- Sums and maxima over the six columns. -/
def sum6N (f : I6 → ℕ) : ℕ :=
  Nat.add (Nat.add (Nat.add (Nat.add (Nat.add (f (.inl 0)) (f (.inl 1))) (f (.inl 2))) (f (.inr 0))) (f (.inr 1)))
    (f (.inr 2))

def sum6Z (f : I6 → ZP) : ZP :=
  zadd (zadd (zadd (zadd (zadd (f (.inl 0)) (f (.inl 1))) (f (.inl 2))) (f (.inr 0))) (f (.inr 1))) (f (.inr 2))

def max6N (f : I6 → ℕ) : ℕ :=
  mx (mx (mx (mx (mx (f (.inl 0)) (f (.inl 1))) (f (.inl 2))) (f (.inr 0))) (f (.inr 1))) (f (.inr 2))

def all6 (f : I6 → Bool) : Bool :=
  f (.inl 0) && f (.inl 1) && f (.inl 2) && f (.inr 0) && f (.inr 1) && f (.inr 2)

/-- `Σ_{j ≠ 0}`. -/
def sum5N (f : I6 → ℕ) : ℕ :=
  Nat.add (Nat.add (Nat.add (Nat.add (f (.inl 1)) (f (.inl 2))) (f (.inr 0))) (f (.inr 1))) (f (.inr 2))

def sum4N (f : ℕ → ℕ) : ℕ := Nat.add (Nat.add (Nat.add (f 0) (f 1)) (f 2)) (f 3)

/-! ### The untrusted square root -/

/-- Least `b ∈ [lo, hi]` with `X >>> b = 0`, by bisection with `fuel` steps (untrusted). -/
def blenF : ℕ → ℕ → ℕ → ℕ → ℕ
  | 0, lo, _, _ => lo
  | f + 1, lo, hi, X =>
    cond (Nat.blt lo hi)
      (cond (Nat.beq (Nat.shiftRight X (Nat.div (Nat.add lo hi) 2)) 0)
        (blenF f lo (Nat.div (Nat.add lo hi) 2) X) (blenF f (Nat.add (Nat.div (Nat.add lo hi) 2) 1) hi X))
      lo

/-- `fuel` Newton steps `s ↦ (s + X/s)/2` (untrusted). -/
def newtF : ℕ → ℕ → ℕ → ℕ
  | 0, s, _ => s
  | f + 1, s, X => newtF f (Nat.div (Nat.add s (Nat.div X s)) 2) X

/-- A candidate for `⌈√X⌉` (untrusted; the checker tests `X ≤ s²`). -/
def isqU (X : ℕ) : ℕ :=
  cond (Nat.beq X 0) 0
    (let s := newtF 10 (Nat.shiftLeft 1 (Nat.div (Nat.add (blenF 11 0 1024 X) 1) 2)) X
     cond (Nat.ble X (Nat.mul s s)) s (Nat.add s 1))

/-! ### Configuration -/

/-- Per-depth coefficients of the linear test. -/
structure T2Lv where
  kV : ℕ
  kU : ℕ
  kN : ℕ
  kA : ℕ
  kB : ℕ
  kG : ℕ
  kP : ℕ
  kC1 : ℕ
  kC2 : ℕ
  kD1 : ℕ
  kD2 : ℕ
  k1 : ℕ

/-- Per-depth coefficients of the scalar test. -/
structure T2Sc where
  sV : ℕ
  sR : ℕ
  sA1 : ℕ
  sB1 : ℕ
  sA2 : ℕ
  sB2 : ℕ
  s1 : ℕ

/-- Per-Record constants of the v2 checker.  The frame is `tc.Tp` (offset `tc.OT`), as in v1. -/
structure T2Cfg where
  tc : TCfg
  ke : ℕ
  eZ : ℕ
  g : ℕ
  lv : ℕ → T2Lv
  sc : ℕ → T2Sc

/-! ### The per-bin data -/

/-- The six rows of a bin (`rowv` of `Tangent.lean`). -/
abbrev Rows := I6 → V12

def sZ (c : Cfg) (acc : V12) (i : I6) : ZP × ZP :=
  ((acc.re i, Nat.mul 6 c.boff), (acc.im i, Nat.mul 6 c.boff))

def wZ (c : Cfg) (row : Rows) (j i : I6) : ZP × ZP := (((row j).re i, c.boff), ((row j).im i, c.boff))

/-- `Jt_{ij} = sr·wi − si·wr`. -/
def JtZ (c : Cfg) (acc : V12) (row : Rows) (i j : I6) : ZP :=
  znorm (zsub (zmul (sZ c acc i).1 (wZ c row j i).2) (zmul (sZ c acc i).2 (wZ c row j i).1))

/-- `Rt_{ij} = sr·wr + si·wi`. -/
def RtZ (c : Cfg) (acc : V12) (row : Rows) (i j : I6) : ZP :=
  znorm (zadd (zmul (sZ c acc i).1 (wZ c row j i).1) (zmul (sZ c acc i).2 (wZ c row j i).2))

/-- `Bt_{ik} = Σ_j T'_{kji} Jt_{ij}`. -/
def BtZ (c : Cfg) (t : T2Cfg) (acc : V12) (row : Rows) (i : I6) (k : ℕ) : ZP :=
  znorm (sum6Z fun j => zsc (t.tc.Tp k j i) (JtZ c acc row i j))

def NN (c : Cfg) (acc : V12) (i : I6) : ℕ := nsq (Nat.mul 6 c.boff) (acc.re i) (acc.im i)

/-! ### Hints -/

def hfield (h : ℕ) (i : I6) : ℕ := Nat.mod (Nat.shiftRight h (Nat.add 2 (Nat.mul 10 (idx i)))) 1024

/-- The multiplier `y_i = field − 512` as a signed pair. -/
def yZ (h : ℕ) (i : I6) : ZP := (hfield h i, 512)

def ymag (h : ℕ) (i : I6) : ℕ := zabs (yZ h i)

/-! ### The tests -/

/-- `Sp_i = s_i + eZ` with the square-root candidate `s_i` of `N_i`. -/
def SqN (c : Cfg) (acc : V12) (i : I6) : ℕ := isqU (NN c acc i)

def lin2B (c : Cfg) (t : T2Cfg) (d h : ℕ) (acc : V12) (row : Rows) : Bool :=
  let Jt := JtZ c acc row
  let Rt := RtZ c acc row
  let y := yZ h
  let ym := ymag h
  let GJ : I6 → ZP := fun j => sum6Z fun i => zmul (y i) (Jt i j)
  let GR : I6 → ZP := fun j => sum6Z fun i => zmul (y i) (Rt i j)
  let Bk : ℕ → ZP := fun k => sum6Z fun i => zmul (y i) (BtZ c t acc row i k)
  let SJ := sum5N fun j => zabs (GJ j)
  let UX := sum4N fun k => Nat.mul (zabs (Bk k)) (zabs (Bk k))
  let GX := max6N fun j => Nat.add (Nat.mul (zabs (GR j)) (zabs (GR j))) (Nat.mul (zabs (GJ j)) (zabs (GJ j)))
  let NX := sum6N fun i => Nat.mul (Nat.mul (ym i) (ym i)) (sum6N fun j => Nat.mul (zabs (Jt i j)) (zabs (Jt i j)))
  let Sp : I6 → ℕ := fun i => Nat.add (SqN c acc i) t.eZ
  let SX := sum6N fun i => Nat.mul (Nat.mul (ym i) (ym i)) (Nat.mul (Sp i) (Sp i))
  let SY1 := sum6N fun i => Nat.mul (ym i) (Sp i)
  let SYinf := max6N fun i => Nat.mul (ym i) (Sp i)
  let Y1 := sum6N ym
  let Yinf := max6N ym
  let Ct := zabs (sum6Z fun i => zmul (y i) (NN c acc i, c.six))
  let Ub := isqU UX
  let NJ := isqU NX
  let Gb := isqU GX
  let SY2 := isqU SX
  let l := t.lv d
  let rhs := Nat.add (Nat.add (Nat.add (Nat.add (Nat.add (Nat.add (Nat.add (Nat.mul l.kV SJ) (Nat.mul l.kU Ub))
    (Nat.mul l.kN NJ)) (mn (Nat.mul l.kA Yinf) (Nat.mul l.kB Y1))) (mn (Nat.mul l.kG Gb) (Nat.mul l.kP SY2)))
    (mn (Nat.mul l.kC1 SY2) (Nat.mul l.kC2 SY1))) (mn (Nat.mul l.kD1 SYinf) (Nat.mul l.kD2 SY1))) (Nat.mul l.k1 Y1)
  all6 (fun i => Nat.ble (NN c acc i) (Nat.mul (SqN c acc i) (SqN c acc i))) &&
    (Nat.ble UX (Nat.mul Ub Ub) && (Nat.ble NX (Nat.mul NJ NJ) && (Nat.ble GX (Nat.mul Gb Gb) &&
    (Nat.ble SX (Nat.mul SY2 SY2) && (Nat.blt (Nat.mul t.ke Y1) Ct &&
    Nat.blt rhs (Nat.shiftLeft (Nat.sub Ct (Nat.mul t.ke Y1)) t.g))))))

def scal2B (c : Cfg) (t : T2Cfg) (d : ℕ) (i : I6) (acc : V12) (row : Rows) : Bool :=
  let Jt := JtZ c acc row i
  let SJ := sum5N fun j => zabs (Jt j)
  let QX := sum6N fun j => Nat.mul (zabs (Jt j)) (zabs (Jt j))
  let NJ := isqU QX
  let Sp := Nat.add (SqN c acc i) t.eZ
  let Ct := sqd c.six (NN c acc i)
  let l := t.sc d
  let rhs := Nat.add (Nat.add (Nat.add (Nat.mul l.sV SJ) (Nat.mul l.sR NJ))
    (mn (Nat.add l.sA1 (Nat.mul l.sB1 Sp)) (Nat.add l.sA2 (Nat.mul l.sB2 Sp)))) l.s1
  Nat.ble (NN c acc i) (Nat.mul (SqN c acc i) (SqN c acc i)) && (Nat.ble QX (Nat.mul NJ NJ) &&
    (Nat.blt t.ke Ct && Nat.blt rhs (Nat.shiftLeft (Nat.sub Ct t.ke) t.g)))

/-- The column named by a scalar hint (`6, 7` name none). -/
def colOf (n : ℕ) : Option I6 :=
  match n with
  | 0 => some (.inl 0) | 1 => some (.inl 1) | 2 => some (.inl 2) | 3 => some (.inr 0) | 4 => some (.inr 1)
  | 5 => some (.inr 2) | _ => none

/-- **The v2 test** of a bin, as named by the hint `h`. -/
def tang2B (c : Cfg) (t : T2Cfg) (d h : ℕ) (acc : V12) (row : Rows) : Bool :=
  match Nat.mod h 4 with
  | 1 => match colOf (Nat.mod (Nat.shiftRight h 2) 8) with
    | some i => scal2B c t d i acc row
    | none => false
  | 2 => lin2B c t d h acc row
  | _ => false

/-! ### The hinted traversal

As `binOK` of `Bins.lean`, with the v2 test after the direct test.  The hint list is threaded through the traversal:
every bin that survives the direct test consumes one hint (`0` if the list is exhausted). -/

noncomputable section

abbrev BinFnH := V12 → CT → CT → CT → CT → CT → List ℕ → Option (List ℕ)

def hd (hs : List ℕ) : ℕ := List.headD hs 0

def tl (hs : List ℕ) : List ℕ := List.tail hs

def h5H (ih : BinFnH) (a4 : V12) (c1 c2 c3 c4 t5 : CT) (hs : List ℕ) : Option (List ℕ) :=
  Option.bind (ih (a4.add t5.l.v) c1 c2 c3 c4 t5.l hs) fun hs' => ih (a4.add t5.r.v) c1 c2 c3 c4 t5.r hs'

def h4H (ih : BinFnH) (a3 : V12) (c1 c2 c3 t4 t5 : CT) (hs : List ℕ) : Option (List ℕ) :=
  Option.bind (h5H ih (a3.add t4.l.v) c1 c2 c3 t4.l t5 hs) fun hs' => h5H ih (a3.add t4.r.v) c1 c2 c3 t4.r t5 hs'

def h3H (ih : BinFnH) (a2 : V12) (c1 c2 t3 t4 t5 : CT) (hs : List ℕ) : Option (List ℕ) :=
  Option.bind (h4H ih (a2.add t3.l.v) c1 c2 t3.l t4 t5 hs) fun hs' => h4H ih (a2.add t3.r.v) c1 c2 t3.r t4 t5 hs'

def h2H (ih : BinFnH) (a1 : V12) (c1 t2 t3 t4 t5 : CT) (hs : List ℕ) : Option (List ℕ) :=
  Option.bind (h3H ih (a1.add t2.l.v) c1 t2.l t3 t4 t5 hs) fun hs' => h3H ih (a1.add t2.r.v) c1 t2.r t3 t4 t5 hs'

def kidsH (W0 : V12) (ih : BinFnH) (t1 t2 t3 t4 t5 : CT) (hs : List ℕ) : Option (List ℕ) :=
  Option.bind (h2H ih (W0.add t1.l.v) t1.l t2 t3 t4 t5 hs) fun hs' => h2H ih (W0.add t1.r.v) t1.r t2 t3 t4 t5 hs'

def baseH (c : Cfg) (t : T2Cfg) (leafOK : LeafFn) (acc : V12) (t1 t2 t3 t4 t5 : CT) (hs : List ℕ) :
    Option (List ℕ) :=
  cond (rejectB c (c.lv 0) acc) (some hs)
    (cond (tang2B c t 0 (hd hs) acc (rowv c.W0 t1 t2 t3 t4 t5) || leafOK acc t1 t2 t3 t4 t5) (some (tl hs)) none)

def stepH (c : Cfg) (t : T2Cfg) (d : ℕ) (ih : BinFnH) (acc : V12) (t1 t2 t3 t4 t5 : CT) (hs : List ℕ) :
    Option (List ℕ) :=
  cond (rejectB c (c.lv (d + 1)) acc) (some hs)
    (cond (tang2B c t (d + 1) (hd hs) acc (rowv c.W0 t1 t2 t3 t4 t5)) (some (tl hs))
      (kidsH c.W0 ih t1 t2 t3 t4 t5 (tl hs)))

/-- The recursive check of one bin at depth `d`. -/
def binH (c : Cfg) (t : T2Cfg) (leafOK : LeafFn) (d : ℕ) : BinFnH :=
  Nat.rec (motive := fun _ => BinFnH) (baseH c t leafOK) (fun d ih => stepH c t d ih) d

def allH {α : Type} (l : List α) (f : α → List ℕ → Option (List ℕ)) : List ℕ → Option (List ℕ) :=
  List.rec (motive := fun _ => List ℕ → Option (List ℕ)) (fun hs => some hs)
    (fun a _ r hs => Option.bind (f a hs) r) l

def top5H (c : Cfg) (t : T2Cfg) (leafOK : LeafFn) (a4 : V12) (c1 c2 c3 c4 : CT) (L5 : List CT) :
    List ℕ → Option (List ℕ) :=
  allH L5 fun c5 => binH c t leafOK 3 (a4.add c5.v) c1 c2 c3 c4 c5

def top4H (c : Cfg) (t : T2Cfg) (leafOK : LeafFn) (a3 : V12) (c1 c2 c3 : CT) (L4 L5 : List CT) :
    List ℕ → Option (List ℕ) :=
  allH L4 fun c4 => top5H c t leafOK (a3.add c4.v) c1 c2 c3 c4 L5

def top3H (c : Cfg) (t : T2Cfg) (leafOK : LeafFn) (a2 : V12) (c1 c2 : CT) (L3 L4 L5 : List CT) :
    List ℕ → Option (List ℕ) :=
  allH L3 fun c3 => top4H c t leafOK (a2.add c3.v) c1 c2 c3 L4 L5

/-- One sub-slab (first two coordinate trees fixed) with its hint list. -/
def subH (c : Cfg) (t : T2Cfg) (leafOK : LeafFn) (c1 c2 : CT) (L3 L4 L5 : List CT) (hs : List ℕ) : Bool :=
  Option.isSome (top3H c t leafOK ((c.W0.add c1.v).add c2.v) c1 c2 L3 L4 L5 hs)

end

end NoFourMUBs.KernelAtlas
