import NoFourMUBs.KernelAtlas.Tables

/-!
# A kernel-decided checker for the Stage C tangent test C2(b)

This file adds the **linearised single-vector test** of Stage C (`STAGEC.md` C2(b), `stagec.py: tangent_tests`) to the
kernel bin checker of `Bins.lean`, with the multiplier rule `y = c` computed in the kernel (no per-bin hints), and
proves that a `true` answer gives `LeafRej` for every admissible `δ` (via `StageC.leafRej_of_linear`).

## The integer test

For a bin with column sums `s_i` (Gaussian integers at scale `Z`, stored with offset `C = 6B`) and node values
`w̃_{ji}` (offset `B = boff`), put (all exact integers)

* `Ỹ_i = N_i − 6Z²` with `N_i = |s_i|²` — the multiplier `y_i = Ỹ_i` is proportional to `c_i = (|S_i|² − 1)/4π`;
* `J̃_{ij} = Im(conj(s_i) w̃_{ji})` (`≈ −6Z² J_{ij}`), `V_j = Σ_i Ỹ_i J̃_{ij}`, `B̃_k = Σ_i Ỹ_i Σ_j T̂_{kji} J̃_{ij}`,
  where `T̂ = DT·T` is the exact integer tangent frame;

and reject if `kV·SV6 + kU·Ub + kQ·SQ + min(kA·Yinf, kB·Y1) + k1·Y1 < YY·2^g`, with `SV6 = 6 Σ_{j≠0} |V_j|`,
`Ub ≥ ‖B̃‖`, `SQ ≥ (Σ Ỹ_i² N_i + ke·YY)^{1/2}` (two Newton steps), `YY = Σ Ỹ_i²`, `Y1 = Σ |Ỹ_i|`, `Yinf = max |Ỹ_i|`.
The coefficients are per-depth naturals whose validity is a rational inequality (`TLevelOK`), decided once per
Record.

## Lane packing (`Nat` only)

Everything is computed with `Nat.add/sub/mul/div/mod` (kernel GMP), signed quantities being sign-split or offset.
The 36 `J̃_{ij}` and the 24 frame contractions are never formed one by one: lanes `m = 0..9` of radix `R` hold the six
rows `j` (lanes `0..5`) and the four frame directions `k` (lanes `6..9`).  The constant `TP_{ji} = R^j + Σ_k T'_{kji}
R^{6+k}` (`T' = T̂ + OT ≥ 0`) turns a node value into its packed field; the packed bin sums `pk` are accumulated along
the traversal exactly like the column sums.  Per column, two multiplications give `X_i = sr_i·pkI_i − si_i·pkR_i + OX`,
and six more give `G = Σ_i Ỹ_i X_i + OG`, whose ten lanes are `V_j + Λ` and `B̃_k + 6·OT·Λ − (6·OT − 1)(ox·ΣỸ + og)`
(using `Σ_j J̃_{ij} = 0` and the vanishing column sums of the horizontal frame).

## Soundness

`tangB_sound`: if `tangB = true` then the bin is rejected for every admissible `δ` (`LeafRej`), through
`leafRej_of_linear` with `y = Ỹ`.  `binT_sound`/`topT_sound`: the traversal with the direct test, then the tangent
test, then the 32 children, yields `Covered` (as in `Bins.lean`).
-/

open Matrix Hadamard6 Complex

namespace NoFourMUBs.KernelAtlas

open NoFourMUBs.StageC

noncomputable section

/-! ### Fast `Nat` helpers -/

/-- `V12.add` written with `Nat.add` (no instance unfolding in the kernel). -/
def V12.addN (x y : V12) : V12 :=
  ⟨Nat.add x.a0 y.a0, Nat.add x.b0 y.b0, Nat.add x.a1 y.a1, Nat.add x.b1 y.b1, Nat.add x.a2 y.a2,
    Nat.add x.b2 y.b2, Nat.add x.a3 y.a3, Nat.add x.b3 y.b3, Nat.add x.a4 y.a4, Nat.add x.b4 y.b4,
    Nat.add x.a5 y.a5, Nat.add x.b5 y.b5⟩

lemma V12.addN_eq (x y : V12) : x.addN y = x.add y := rfl

/-- `max` on `Nat` via `Nat.ble`. -/
def mx (a b : ℕ) : ℕ := cond (Nat.ble a b) b a

/-- `min` on `Nat` via `Nat.ble`. -/
def mn (a b : ℕ) : ℕ := cond (Nat.ble a b) a b

/-! ### Configuration -/

/-- Per-depth integer coefficients of the final comparison. -/
structure TThr where
  kV : ℕ
  kU : ℕ
  kQ : ℕ
  kA : ℕ
  kB : ℕ
  k1 : ℕ

/-- Per-Record constants of the tangent checker. -/
structure TCfg where
  /-- lane radix `R = 2^L` -/
  R : ℕ
  /-- offset of the frame entries: `T' = T̂ + OT ≥ 0` -/
  OT : ℕ
  /-- `T'_{kji}` at position `36k + 6·idx j + idx i` -/
  TpL : List ℕ
  /-- the lane offsets and their packed forms `ox·Σ_{m<10} R^m`, `og·Σ_{m<10} R^m` -/
  ox : ℕ
  og : ℕ
  OX : ℕ
  OG : ℕ
  /-- `c1 = (6·OT − 1)·ox`, `c0 = (6·OT − 1)(og − 6·ox·six)` -/
  c1 : ℕ
  c0 : ℕ
  /-- `ke ≥ e_N Z²` -/
  ke : ℕ
  /-- scale `2^g` of the final comparison -/
  g : ℕ
  lv : ℕ → TThr

/-- `T'_{kji}`. -/
def TCfg.Tp (tc : TCfg) (k : ℕ) (j i : I6) : ℕ := tc.TpL.getD (36 * k + 6 * idx j + idx i) 0

/-- `TP_{ji} = R^{idx j} + Σ_k T'_{kji} R^{6+k}`. -/
def TCfg.TP (tc : TCfg) (j i : I6) : ℕ :=
  Nat.add (Nat.pow tc.R (idx j)) (Nat.add (Nat.mul (tc.Tp 0 j i) (Nat.pow tc.R 6))
    (Nat.add (Nat.mul (tc.Tp 1 j i) (Nat.pow tc.R 7))
      (Nat.add (Nat.mul (tc.Tp 2 j i) (Nat.pow tc.R 8)) (Nat.mul (tc.Tp 3 j i) (Nat.pow tc.R 9)))))

/-- The packed field of a node value of row `j`. -/
def pkN (tc : TCfg) (j : I6) (v : V12) : V12 :=
  ⟨Nat.mul v.a0 (tc.TP j (.inl 0)), Nat.mul v.b0 (tc.TP j (.inl 0)), Nat.mul v.a1 (tc.TP j (.inl 1)),
    Nat.mul v.b1 (tc.TP j (.inl 1)), Nat.mul v.a2 (tc.TP j (.inl 2)), Nat.mul v.b2 (tc.TP j (.inl 2)),
    Nat.mul v.a3 (tc.TP j (.inr 0)), Nat.mul v.b3 (tc.TP j (.inr 0)), Nat.mul v.a4 (tc.TP j (.inr 1)),
    Nat.mul v.b4 (tc.TP j (.inr 1)), Nat.mul v.a5 (tc.TP j (.inr 2)), Nat.mul v.b5 (tc.TP j (.inr 2))⟩

/-! ### The test -/

/-- Lane `m` of a packed number. -/
def lane (R G m : ℕ) : ℕ := Nat.mod (Nat.div G (Nat.pow R m)) R

/-- `X = sr·pB − si·pA + OX` for one column (`sr = AR − C`, `si = AI − C`, sign-split). -/
def colX (OX C AR AI pA pB : ℕ) : ℕ :=
  cond (Nat.ble C AR)
    (cond (Nat.ble C AI) (Nat.sub (Nat.add (Nat.mul (sqd C AR) pB) OX) (Nat.mul (sqd C AI) pA))
      (Nat.add (Nat.add (Nat.mul (sqd C AR) pB) (Nat.mul (sqd C AI) pA)) OX))
    (cond (Nat.ble C AI) (Nat.sub (Nat.sub OX (Nat.mul (sqd C AR) pB)) (Nat.mul (sqd C AI) pA))
      (Nat.sub (Nat.add (Nat.mul (sqd C AI) pA) OX) (Nat.mul (sqd C AR) pB)))

/-- `cond (six ≤ N) m 0`: the positive part of `Ỹ·X`. -/
def posP (six N m : ℕ) : ℕ := cond (Nat.ble six N) m 0

/-- The final comparison, from the lanes and the scalar sums. -/
def tFin (tc : TCfg) (t : TThr) (SN YY Y1 Yinf Q G : ℕ) : Bool :=
  let R := tc.R
  let g0 := lane R G 0
  let g1 := lane R G 1
  let g2 := lane R G 2
  let g3 := lane R G 3
  let g4 := lane R G 4
  let g5 := lane R G 5
  let H := Nat.add (Nat.add (Nat.add (Nat.add (Nat.add g0 g1) g2) g3) g4) g5
  let SV6 := Nat.add (Nat.add (Nat.add (Nat.add (sqd H (Nat.mul 6 g1)) (sqd H (Nat.mul 6 g2)))
    (sqd H (Nat.mul 6 g3))) (sqd H (Nat.mul 6 g4))) (sqd H (Nat.mul 6 g5))
  let OTH := Nat.mul tc.OT H
  let cS := Nat.add (Nat.mul tc.c1 SN) tc.c0
  let b0 := sqd OTH (Nat.add (lane R G 6) cS)
  let b1 := sqd OTH (Nat.add (lane R G 7) cS)
  let b2 := sqd OTH (Nat.add (lane R G 8) cS)
  let b3 := sqd OTH (Nat.add (lane R G 9) cS)
  let X1 := Nat.add (Nat.add (Nat.add (Nat.mul b0 b0) (Nat.mul b1 b1)) (Nat.mul b2 b2)) (Nat.mul b3 b3)
  let X2 := Nat.add Q (Nat.mul tc.ke YY)
  let L0 := Nat.add (Nat.add (Nat.mul t.kV SV6) (mn (Nat.mul t.kA Yinf) (Nat.mul t.kB Y1))) (Nat.mul t.k1 Y1)
  let W := Nat.shiftLeft YY tc.g
  let C2 := Nat.mul (Nat.sub W L0) (Nat.sub W L0)
  let QX := Nat.mul (Nat.mul t.kQ t.kQ) X2
  let UX := Nat.mul (Nat.mul t.kU t.kU) X1
  Nat.blt L0 W && (Nat.blt QX C2 && (Nat.blt UX (Nat.add C2 QX) &&
    Nat.blt (Nat.mul (Nat.mul 4 C2) QX) (Nat.mul (Nat.sub (Nat.add C2 QX) UX) (Nat.sub (Nat.add C2 QX) UX))))

/-- The multiplier stage: `|Ỹ_i| = sqd six N_i` and the packed `G = Σ_i Ỹ_i X_i + OG`. -/
def tY (six : ℕ) (tc : TCfg) (t : TThr) (N0 N1 N2 N3 N4 N5 X0 X1 X2 X3 X4 X5 : ℕ) : Bool :=
  let y0 := sqd six N0
  let y1 := sqd six N1
  let y2 := sqd six N2
  let y3 := sqd six N3
  let y4 := sqd six N4
  let y5 := sqd six N5
  let m0 := Nat.mul y0 X0
  let m1 := Nat.mul y1 X1
  let m2 := Nat.mul y2 X2
  let m3 := Nat.mul y3 X3
  let m4 := Nat.mul y4 X4
  let m5 := Nat.mul y5 X5
  let Pp := Nat.add (Nat.add (Nat.add (Nat.add (Nat.add (posP six N0 m0) (posP six N1 m1)) (posP six N2 m2))
    (posP six N3 m3)) (posP six N4 m4)) (posP six N5 m5)
  let Ma := Nat.add (Nat.add (Nat.add (Nat.add (Nat.add m0 m1) m2) m3) m4) m5
  let q0 := Nat.mul y0 y0
  let q1 := Nat.mul y1 y1
  let q2 := Nat.mul y2 y2
  let q3 := Nat.mul y3 y3
  let q4 := Nat.mul y4 y4
  let q5 := Nat.mul y5 y5
  tFin tc t (Nat.add (Nat.add (Nat.add (Nat.add (Nat.add N0 N1) N2) N3) N4) N5)
    (Nat.add (Nat.add (Nat.add (Nat.add (Nat.add q0 q1) q2) q3) q4) q5)
    (Nat.add (Nat.add (Nat.add (Nat.add (Nat.add y0 y1) y2) y3) y4) y5)
    (mx (mx (mx (mx (mx y0 y1) y2) y3) y4) y5)
    (Nat.add (Nat.add (Nat.add (Nat.add (Nat.add (Nat.mul q0 N0) (Nat.mul q1 N1)) (Nat.mul q2 N2))
      (Nat.mul q3 N3)) (Nat.mul q4 N4)) (Nat.mul q5 N5))
    (Nat.sub (Nat.add (Nat.add Pp Pp) tc.OG) Ma)

/-- **The tangent test** of a bin with column sums `acc` and packed sums `pk` at depth `d`.  The `N_i` and the
sign-split `|sr_i|`, `|si_i|`, `|Ỹ_i|` are the very expressions of `rejectB`, so the kernel shares them. -/
def tangB (c : Cfg) (tc : TCfg) (d : ℕ) (acc pk : V12) : Bool :=
  tY c.six tc (tc.lv d)
    (nsq (6 * c.boff) acc.a0 acc.b0) (nsq (6 * c.boff) acc.a1 acc.b1) (nsq (6 * c.boff) acc.a2 acc.b2)
    (nsq (6 * c.boff) acc.a3 acc.b3) (nsq (6 * c.boff) acc.a4 acc.b4) (nsq (6 * c.boff) acc.a5 acc.b5)
    (colX tc.OX (6 * c.boff) acc.a0 acc.b0 pk.a0 pk.b0) (colX tc.OX (6 * c.boff) acc.a1 acc.b1 pk.a1 pk.b1)
    (colX tc.OX (6 * c.boff) acc.a2 acc.b2 pk.a2 pk.b2) (colX tc.OX (6 * c.boff) acc.a3 acc.b3 pk.a3 pk.b3)
    (colX tc.OX (6 * c.boff) acc.a4 acc.b4 pk.a4 pk.b4) (colX tc.OX (6 * c.boff) acc.a5 acc.b5 pk.a5 pk.b5)

/-! ### The traversal (direct test, then tangent test, then children)

As in `Bins.lean`, with the packed sums carried along.  `on`/`use`: `on = false` skips the tangent test, and
`use = false` computes it but ignores the answer (both for benchmarking; the certificate uses `true`, `true`). -/

abbrev BinFnT := V12 → V12 → CT → CT → CT → CT → CT → Bool

def tl5 (tc : TCfg) (ih : BinFnT) (a4 p4 : V12) (c1 c2 c3 c4 t5 : CT) : Bool :=
  ih (a4.addN t5.l.v) (p4.addN (pkN tc m5 t5.l.v)) c1 c2 c3 c4 t5.l &&
    ih (a4.addN t5.r.v) (p4.addN (pkN tc m5 t5.r.v)) c1 c2 c3 c4 t5.r

def tl4 (tc : TCfg) (ih : BinFnT) (a3 p3 : V12) (c1 c2 c3 t4 t5 : CT) : Bool :=
  tl5 tc ih (a3.addN t4.l.v) (p3.addN (pkN tc m4 t4.l.v)) c1 c2 c3 t4.l t5 &&
    tl5 tc ih (a3.addN t4.r.v) (p3.addN (pkN tc m4 t4.r.v)) c1 c2 c3 t4.r t5

def tl3 (tc : TCfg) (ih : BinFnT) (a2 p2 : V12) (c1 c2 t3 t4 t5 : CT) : Bool :=
  tl4 tc ih (a2.addN t3.l.v) (p2.addN (pkN tc m3 t3.l.v)) c1 c2 t3.l t4 t5 &&
    tl4 tc ih (a2.addN t3.r.v) (p2.addN (pkN tc m3 t3.r.v)) c1 c2 t3.r t4 t5

def tl2 (tc : TCfg) (ih : BinFnT) (a1 p1 : V12) (c1 t2 t3 t4 t5 : CT) : Bool :=
  tl3 tc ih (a1.addN t2.l.v) (p1.addN (pkN tc m2 t2.l.v)) c1 t2.l t3 t4 t5 &&
    tl3 tc ih (a1.addN t2.r.v) (p1.addN (pkN tc m2 t2.r.v)) c1 t2.r t3 t4 t5

/-- The packed row `0`. -/
def P0 (c : Cfg) (tc : TCfg) : V12 := pkN tc j0 c.W0

def kidsT (c : Cfg) (tc : TCfg) (ih : BinFnT) (t1 t2 t3 t4 t5 : CT) : Bool :=
  tl2 tc ih (c.W0.addN t1.l.v) ((P0 c tc).addN (pkN tc m1 t1.l.v)) t1.l t2 t3 t4 t5 &&
    tl2 tc ih (c.W0.addN t1.r.v) ((P0 c tc).addN (pkN tc m1 t1.r.v)) t1.r t2 t3 t4 t5

/-- The tangent stage. -/
def tStage (c : Cfg) (tc : TCfg) (on use : Bool) (d : ℕ) (acc pk : V12) : Bool :=
  on && (tangB c tc d acc pk && use)

def baseT (c : Cfg) (tc : TCfg) (on use : Bool) (leafOK : LeafFn) (acc pk : V12) (t1 t2 t3 t4 t5 : CT) : Bool :=
  rejectB c (c.lv 0) acc || tStage c tc on use 0 acc pk || leafOK acc t1 t2 t3 t4 t5

def stepT (c : Cfg) (tc : TCfg) (on use : Bool) (d : ℕ) (ih : BinFnT) (acc pk : V12) (t1 t2 t3 t4 t5 : CT) :
    Bool :=
  rejectB c (c.lv (d + 1)) acc || tStage c tc on use (d + 1) acc pk || kidsT c tc ih t1 t2 t3 t4 t5

/-- The recursive check of one bin at depth `d`. -/
def binT (c : Cfg) (tc : TCfg) (on use : Bool) (leafOK : LeafFn) (d : ℕ) : BinFnT :=
  Nat.rec (motive := fun _ => BinFnT) (baseT c tc on use leafOK) (fun d ih => stepT c tc on use d ih) d

def topT5 (c : Cfg) (tc : TCfg) (on use : Bool) (leafOK : LeafFn) (a4 p4 : V12) (c1 c2 c3 c4 : CT)
    (L5 : List CT) : Bool :=
  allL L5 fun c5 => binT c tc on use leafOK 3 (a4.addN c5.v) (p4.addN (pkN tc m5 c5.v)) c1 c2 c3 c4 c5

def topT4 (c : Cfg) (tc : TCfg) (on use : Bool) (leafOK : LeafFn) (a3 p3 : V12) (c1 c2 c3 : CT)
    (L4 L5 : List CT) : Bool :=
  allL L4 fun c4 => topT5 c tc on use leafOK (a3.addN c4.v) (p3.addN (pkN tc m4 c4.v)) c1 c2 c3 c4 L5

def topT3 (c : Cfg) (tc : TCfg) (on use : Bool) (leafOK : LeafFn) (a2 p2 : V12) (c1 c2 : CT)
    (L3 L4 L5 : List CT) : Bool :=
  allL L3 fun c3 => topT4 c tc on use leafOK (a2.addN c3.v) (p2.addN (pkN tc m3 c3.v)) c1 c2 c3 L4 L5

/-- All level-12 bins whose first coordinate tree is `c1`. -/
def slabT (c : Cfg) (tc : TCfg) (on use : Bool) (leafOK : LeafFn) (c1 : CT) (L2 L3 L4 L5 : List CT) : Bool :=
  allL L2 fun c2 => topT3 c tc on use leafOK ((c.W0.addN c1.v).addN c2.v)
    (((P0 c tc).addN (pkN tc m1 c1.v)).addN (pkN tc m2 c2.v)) c1 c2 L3 L4 L5

/-! ### Rational side conditions (decided once per Record) -/

/-- Rational data: the frame denominator `DT` (`T = (T' − OT)/DT`), the radii `r_H ≤ rHbar`, `n ≤ nbar`
(cycles), and `tcol ≥ max_{k,i} Σ_j |T_{kji}|`. -/
structure TParQ where
  DT : ℕ
  rHbar : ℚ
  nbar : ℚ
  tcol : ℚ

/-- The exact tangent frame. -/
def Tmat (tc : TCfg) (tq : TParQ) : Fin 4 → RMat6 :=
  fun k j i => (((tc.Tp k j i : ℤ) - tc.OT : ℤ) : ℝ) / tq.DT

def sum6 (f : I6 → ℕ) : ℕ := f (.inl 0) + f (.inl 1) + f (.inl 2) + f (.inr 0) + f (.inr 1) + f (.inr 2)

def sum6Q (f : I6 → ℚ) : ℚ := f (.inl 0) + f (.inl 1) + f (.inl 2) + f (.inr 0) + f (.inr 1) + f (.inr 2)

/-- `Σ_{m<10} R^m`. -/
def geo10 (R : ℕ) : ℕ := 1 + R + R ^ 2 + R ^ 3 + R ^ 4 + R ^ 5 + R ^ 6 + R ^ 7 + R ^ 8 + R ^ 9

/-- The coefficients of depth `d` dominate the rational bounds of the tangent test. -/
def TLevelOK (c : Cfg) (pq : ParQ) (tc : TCfg) (tq : TParQ) (d : ℕ) : Prop :=
  2 / 3 * pq.pihi * ahalf d * 2 ^ tc.g ≤ ((tc.lv d).kV : ℚ) ∧
  4 * pq.pihi * tq.rHbar * 2 ^ tc.g / tq.DT ≤ ((tc.lv d).kU : ℚ) ∧
  24 * pq.pihi * c.Z * pq.i6hi * (tq.nbar + pq.pihi * (pq.Kbar * (3 / 2 * ahalf d) * (pq.x29hi * ahalf d) +
    2 * pq.i6hi * (pq.x29hi * ahalf d) * pq.rFbar + pq.i6hi * pq.rFbar ^ 2)) * 2 ^ tc.g ≤ ((tc.lv d).kQ : ℚ) ∧
  24 * pq.pihi ^ 2 * c.Z ^ 2 * (pq.Kbar * (pq.x29hi * ahalf d) + pq.rFbar) ^ 2 * 2 ^ tc.g ≤ ((tc.lv d).kA : ℚ) ∧
  24 * pq.pihi ^ 2 * c.Z ^ 2 * (pq.Kbar * (pq.x29hi * ahalf d) + pq.rbar) ^ 2 * 2 ^ tc.g ≤ ((tc.lv d).kB : ℚ) ∧
  (20 * pq.pihi * ahalf d * ((6 + pq.E) * pq.eps1 + pq.E) + 8 * pq.pihi * tq.rHbar * ((6 + pq.E) * pq.eps1 + pq.E) *
    tq.tcol + pq.E * (12 + pq.E)) * c.Z ^ 2 * 2 ^ tc.g ≤ ((tc.lv d).k1 : ℚ)

/-- All side conditions of the tangent checker for one Record. -/
def TParOK (c : Cfg) (pq : ParQ) (tc : TCfg) (tq : TParQ) : Prop :=
  0 < tc.R ∧ 1 ≤ tc.OT ∧ tc.TpL.length = 144 ∧ c.boff = 2 * c.Z ∧ pq.eps1 ≤ 1 ∧
  (allNat 4 fun k => allI6 fun j => allI6 fun i => Nat.ble (tc.Tp k j i) (2 * tc.OT)) = true ∧
  (allNat 4 fun k => allI6 fun i => Nat.beq (sum6 fun j => tc.Tp k j i) (6 * tc.OT)) = true ∧
  288 * tc.OT * c.boff ^ 2 ≤ tc.ox ∧ 12 * (72 * c.boff ^ 2) * tc.ox ≤ tc.og ∧ 2 * tc.og < tc.R ∧
  c.six ≤ 72 * c.boff ^ 2 ∧ 6 * tc.ox * c.six ≤ tc.og ∧
  tc.OX = tc.ox * geo10 tc.R ∧ tc.OG = tc.og * geo10 tc.R ∧
  tc.c1 = (6 * tc.OT - 1) * tc.ox ∧ tc.c0 = (6 * tc.OT - 1) * (tc.og - 6 * tc.ox * c.six) ∧
  0 < tq.DT ∧ 0 ≤ tq.rHbar ∧ 0 ≤ tq.nbar ∧ pq.E * (12 + pq.E) * c.Z ^ 2 ≤ (tc.ke : ℚ) ∧
  (allNat 4 fun k => allI6 fun i =>
    decide (sum6Q (fun j => |(tc.Tp k j i : ℚ) - tc.OT|) ≤ tq.tcol * tq.DT)) = true ∧
  TLevelOK c pq tc tq 0 ∧ TLevelOK c pq tc tq 1 ∧ TLevelOK c pq tc tq 2 ∧ TLevelOK c pq tc tq 3

instance (c : Cfg) (pq : ParQ) (tc : TCfg) (tq : TParQ) (d : ℕ) : Decidable (TLevelOK c pq tc tq d) := by
  unfold TLevelOK; infer_instance

instance (c : Cfg) (pq : ParQ) (tc : TCfg) (tq : TParQ) : Decidable (TParOK c pq tc tq) := by
  unfold TParOK; infer_instance

/-- The packed sums of a bin, in the order of `sumAcc`. -/
def pkAcc (c : Cfg) (tc : TCfg) (t1 t2 t3 t4 t5 : CT) : V12 :=
  (((((P0 c tc).addN (pkN tc m1 t1.v)).addN (pkN tc m2 t2.v)).addN (pkN tc m3 t3.v)).addN (pkN tc m4 t4.v)).addN
    (pkN tc m5 t5.v)


/-! ### Integer layer: `Nat` primitives -/

lemma sqd_int (C a : ℕ) : ((sqd C a : ℕ) : ℤ) = |(a : ℤ) - C| := by
  unfold sqd
  cases h : Nat.ble C a
  · have : a < C := Nat.lt_of_not_le fun hc => by rw [Nat.ble_eq_true_of_le hc] at h; exact Bool.noConfusion h
    simp only [cond_false]; rw [Nat.cast_sub this.le, abs_of_neg (by omega)]; ring
  · have : C ≤ a := Nat.le_of_ble_eq_true h
    simp only [cond_true]; rw [Nat.cast_sub this, abs_of_nonneg (by omega)]

lemma nsq_int (C a b : ℕ) : ((nsq C a b : ℕ) : ℤ) = ((a : ℤ) - C) ^ 2 + ((b : ℤ) - C) ^ 2 := by
  unfold nsq; push_cast [sqd_int]; rw [abs_mul_abs_self, abs_mul_abs_self]; ring

lemma mx_ge (a b : ℕ) : a ≤ mx a b ∧ b ≤ mx a b := by
  unfold mx; cases h : Nat.ble a b
  · have : ¬ a ≤ b := fun hc => by rw [Nat.ble_eq_true_of_le hc] at h; exact Bool.noConfusion h
    simp only [cond_false]; omega
  · have := Nat.le_of_ble_eq_true h; simp only [cond_true]; omega

lemma mn_eq (a b : ℕ) : mn a b = min a b := by
  unfold mn; cases h : Nat.ble a b
  · have : ¬ a ≤ b := fun hc => by rw [Nat.ble_eq_true_of_le hc] at h; exact Bool.noConfusion h
    simp only [cond_false]; omega
  · have := Nat.le_of_ble_eq_true h; simp only [cond_true]; omega

lemma posP_int (six N m : ℕ) :
    2 * ((posP six N m : ℕ) : ℤ) - m = (if six ≤ N then 1 else -1) * (m : ℤ) := by
  unfold posP; cases h : Nat.ble six N
  · have : ¬ six ≤ N := fun hc => by rw [Nat.ble_eq_true_of_le hc] at h; exact Bool.noConfusion h
    simp [this]
  · have := Nat.le_of_ble_eq_true h; simp [this]; ring

/-- `sqd six N` with its sign is `N − six`. -/
lemma sgn_sqd (six N : ℕ) : (if six ≤ N then (1 : ℤ) else -1) * (sqd six N : ℤ) = (N : ℤ) - six := by
  rw [sqd_int]
  split_ifs with h
  · rw [abs_of_nonneg (by omega)]; ring
  · rw [abs_of_neg (by omega)]; ring

/-- Semantics of `colX` when the result is nonnegative. -/
lemma colX_int (OX C AR AI pA pB : ℕ)
    (h : 0 ≤ ((AR : ℤ) - C) * pB - ((AI : ℤ) - C) * pA + OX) :
    ((colX OX C AR AI pA pB : ℕ) : ℤ) = ((AR : ℤ) - C) * pB - ((AI : ℤ) - C) * pA + OX := by
  unfold colX
  simp only [Nat.add_eq, Nat.mul_eq, Nat.sub_eq]
  have hr := sqd_int C AR
  have hi := sqd_int C AI
  have p1 : (0 : ℤ) ≤ ((sqd C AR : ℕ) : ℤ) * pB := by positivity
  have p2 : (0 : ℤ) ≤ ((sqd C AI : ℕ) : ℤ) * pA := by positivity
  cases h1 : Nat.ble C AR <;> cases h2 : Nat.ble C AI <;> simp only [cond_true, cond_false]
  · have a1 : AR < C := Nat.lt_of_not_le fun hc => by rw [Nat.ble_eq_true_of_le hc] at h1; exact Bool.noConfusion h1
    have a2 : AI < C := Nat.lt_of_not_le fun hc => by rw [Nat.ble_eq_true_of_le hc] at h2; exact Bool.noConfusion h2
    rw [abs_of_neg (by omega)] at hr hi
    have e1 : ((sqd C AR : ℕ) : ℤ) * pB = -(((AR : ℤ) - C) * pB) := by rw [hr]; ring
    have e2 : ((sqd C AI : ℕ) : ℤ) * pA = -(((AI : ℤ) - C) * pA) := by rw [hi]; ring
    have : sqd C AR * pB ≤ sqd C AI * pA + OX := by zify; linarith
    rw [Nat.cast_sub this]; push_cast; linarith
  · have a1 : AR < C := Nat.lt_of_not_le fun hc => by rw [Nat.ble_eq_true_of_le hc] at h1; exact Bool.noConfusion h1
    have a2 : C ≤ AI := Nat.le_of_ble_eq_true h2
    rw [abs_of_neg (by omega)] at hr; rw [abs_of_nonneg (by omega)] at hi
    have e1 : ((sqd C AR : ℕ) : ℤ) * pB = -(((AR : ℤ) - C) * pB) := by rw [hr]; ring
    have e2 : ((sqd C AI : ℕ) : ℤ) * pA = ((AI : ℤ) - C) * pA := by rw [hi]
    have h3 : sqd C AR * pB ≤ OX := by zify; linarith
    have h4 : sqd C AI * pA ≤ OX - sqd C AR * pB := by
      rw [Nat.le_sub_iff_add_le h3]; zify; linarith
    rw [Nat.cast_sub h4, Nat.cast_sub h3]; push_cast; linarith
  · have a1 : C ≤ AR := Nat.le_of_ble_eq_true h1
    have a2 : AI < C := Nat.lt_of_not_le fun hc => by rw [Nat.ble_eq_true_of_le hc] at h2; exact Bool.noConfusion h2
    rw [abs_of_nonneg (by omega)] at hr; rw [abs_of_neg (by omega)] at hi
    have e1 : ((sqd C AR : ℕ) : ℤ) * pB = ((AR : ℤ) - C) * pB := by rw [hr]
    have e2 : ((sqd C AI : ℕ) : ℤ) * pA = -(((AI : ℤ) - C) * pA) := by rw [hi]; ring
    push_cast; linarith
  · have a1 : C ≤ AR := Nat.le_of_ble_eq_true h1
    have a2 : C ≤ AI := Nat.le_of_ble_eq_true h2
    rw [abs_of_nonneg (by omega)] at hr hi
    have e1 : ((sqd C AR : ℕ) : ℤ) * pB = ((AR : ℤ) - C) * pB := by rw [hr]
    have e2 : ((sqd C AI : ℕ) : ℤ) * pA = ((AI : ℤ) - C) * pA := by rw [hi]
    have : sqd C AI * pA ≤ sqd C AR * pB + OX := by zify; linarith
    rw [Nat.cast_sub this]; push_cast; linarith

/-! ### Packed numbers -/

/-- `Σ_{m<n} f m R^m`. -/
def pv (R : ℤ) (n : ℕ) (f : ℕ → ℤ) : ℤ := ∑ m ∈ Finset.range n, f m * R ^ m

lemma pv_lt {R : ℤ} (hR : 0 < R) {f : ℕ → ℤ} (hf : ∀ m, 0 ≤ f m ∧ f m < R) :
    ∀ n, 0 ≤ pv R n f ∧ pv R n f < R ^ n := by
  intro n
  induction n with
  | zero => simp [pv]
  | succ n ih =>
    simp only [pv, Finset.sum_range_succ] at ih ⊢
    obtain ⟨h0, h1⟩ := ih
    obtain ⟨f0, f1⟩ := hf n
    have hp : 0 < R ^ n := pow_pos hR n
    constructor
    · positivity
    · rw [pow_succ]; nlinarith

/-- Digit extraction. -/
lemma pv_digit {R : ℤ} (hR : 0 < R) {f : ℕ → ℤ} (hf : ∀ m, 0 ≤ f m ∧ f m < R) {n k : ℕ} (hk : k < n) :
    pv R n f / R ^ k % R = f k := by
  obtain ⟨l, rfl⟩ : ∃ l, n = k + (l + 1) := ⟨n - k - 1, by omega⟩
  have h2 : ∑ i ∈ Finset.range (l + 1), f (k + i) * R ^ (k + i) =
      R ^ k * (f k + R * pv R l (fun m => f (k + 1 + m))) := by
    rw [Finset.sum_range_succ', pv, mul_add, Finset.mul_sum, Finset.mul_sum, Nat.add_zero, add_comm]
    congr 1
    · ring
    · exact Finset.sum_congr rfl fun i _ => by
        rw [show k + (i + 1) = k + 1 + i by omega, pow_add, pow_add, pow_one]; ring
  have hsplit : pv R (k + (l + 1)) f = pv R k f + R ^ k * (f k + R * pv R l (fun m => f (k + 1 + m))) := by
    rw [← h2]; exact Finset.sum_range_add _ _ _
  rw [hsplit]
  have hp : 0 < R ^ k := pow_pos hR k
  obtain ⟨l0, l1⟩ := pv_lt hR hf k
  rw [mul_comm (R ^ k), Int.add_mul_ediv_right _ _ hp.ne', Int.ediv_eq_zero_of_lt l0 l1, zero_add,
    Int.add_mul_emod_self_left]
  exact Int.emod_eq_of_lt (hf k).1 (hf k).2

lemma lane_int {R G : ℕ} (hR : 0 < R) {f : ℕ → ℤ} (hf : ∀ m, 0 ≤ f m ∧ f m < R) {n k : ℕ} (hk : k < n)
    (hG : (G : ℤ) = pv R n f) : ((lane R G k : ℕ) : ℤ) = f k := by
  show (((G / R ^ k) % R : ℕ) : ℤ) = f k
  rw [Int.natCast_mod, Int.natCast_div, Nat.cast_pow, hG]
  exact pv_digit (by exact_mod_cast hR) hf hk

/-! ### The square-root-free comparison -/

lemma sqrtfree {a b C : ℝ} (ha : 0 ≤ a) (hb : 0 ≤ b) (hC : 0 < C) (h1 : b ^ 2 < C ^ 2) (h2 : a ^ 2 < C ^ 2 + b ^ 2)
    (h3 : 4 * C ^ 2 * b ^ 2 < (C ^ 2 + b ^ 2 - a ^ 2) ^ 2) : a + b < C := by
  have hD : 0 < C ^ 2 + b ^ 2 - a ^ 2 := by linarith
  have hD2 : 2 * C * b < C ^ 2 + b ^ 2 - a ^ 2 := by
    by_contra hc; push_neg at hc
    have : (C ^ 2 + b ^ 2 - a ^ 2) ^ 2 ≤ (2 * C * b) ^ 2 := pow_le_pow_left₀ hD.le hc 2
    nlinarith
  have hbC : b < C := by nlinarith
  nlinarith

/-! ### One column -/

/-- The row with index `m` (`idx (rowOf m) = m` for `m < 6`). -/
def rowOf : ℕ → I6
  | 0 => .inl 0 | 1 => .inl 1 | 2 => .inl 2 | 3 => .inr 0 | 4 => .inr 1 | _ => .inr 2

/-- `sr·WI_j − si·WR_j` with `sr = Σ WR − 6B`, `si = Σ WI − 6B` (`= J̃_j + B(sr − si)`). -/
def aJ (B : ℤ) (WR WI : I6 → ℤ) (j : I6) : ℤ :=
  (∑ j', WR j' - 6 * B) * WI j - (∑ j', WI j' - 6 * B) * WR j

/-- The ten lanes of `X_i`. -/
def xlv (tc : TCfg) (i : I6) (B : ℤ) (WR WI : I6 → ℤ) (m : ℕ) : ℤ :=
  if m < 6 then aJ B WR WI (rowOf m) + tc.ox else (∑ j, (tc.Tp (m - 6) j i : ℤ) * aJ B WR WI j) + tc.ox

lemma TP_int (tc : TCfg) (j i : I6) :
    ((tc.TP j i : ℕ) : ℤ) = (tc.R : ℤ) ^ idx j + ∑ k ∈ Finset.range 4, (tc.Tp k j i : ℤ) * (tc.R : ℤ) ^ (6 + k) := by
  simp only [TCfg.TP, Nat.add_eq, Nat.mul_eq, Nat.pow_eq, Finset.sum_range_succ, Finset.sum_range_zero]
  push_cast; ring

lemma sum_I6Z (f : I6 → ℤ) : ∑ j, f j =
    f (Sum.inl 0) + f (Sum.inl 1) + f (Sum.inl 2) + (f (Sum.inr 0) + f (Sum.inr 1) + f (Sum.inr 2)) := by
  rw [Fintype.sum_sum_type, Fin.sum_univ_three, Fin.sum_univ_three]

lemma colX_pv (tc : TCfg) (i : I6) (B AR AI pA pB : ℕ) (WR WI : I6 → ℕ)
    (hAR : (AR : ℤ) = ∑ j, (WR j : ℤ)) (hAI : (AI : ℤ) = ∑ j, (WI j : ℤ))
    (hpA : (pA : ℤ) = ∑ j, (WR j : ℤ) * tc.TP j i) (hpB : (pB : ℤ) = ∑ j, (WI j : ℤ) * tc.TP j i)
    (hOX : (tc.OX : ℤ) = tc.ox * ∑ m ∈ Finset.range 10, (tc.R : ℤ) ^ m)
    (hnn : 0 ≤ pv tc.R 10 (xlv tc i B (fun j => WR j) (fun j => WI j))) :
    ((colX tc.OX (6 * B) AR AI pA pB : ℕ) : ℤ) = pv tc.R 10 (xlv tc i B (fun j => WR j) (fun j => WI j)) := by
  have key : ((AR : ℤ) - ((6 * B : ℕ) : ℤ)) * pB - ((AI : ℤ) - ((6 * B : ℕ) : ℤ)) * pA + tc.OX =
      pv tc.R 10 (xlv tc i B (fun j => WR j) (fun j => WI j)) := by
    rw [hAR, hAI, hpA, hpB, hOX]
    simp only [pv, xlv, aJ, Finset.sum_range_succ, Finset.sum_range_zero, TP_int, sum_I6Z]
    norm_num [rowOf, idx]
    ring
  rw [colX_int _ _ _ _ _ _ (key ▸ hnn), key]

/-! ### The final comparison -/

set_option maxHeartbeats 2000000 in
/-- What `tFin = true` says, in terms of the lanes `ℓ` of `G`. -/
theorem tFin_sound {tc : TCfg} {t : TThr} {SN YY Y1 Yinf Q G : ℕ} {ℓ : ℕ → ℤ} (hR : 0 < tc.R)
    (hG : (G : ℤ) = pv tc.R 10 ℓ) (hℓ : ∀ m, 0 ≤ ℓ m ∧ ℓ m < tc.R)
    (h : tFin tc t SN YY Y1 Yinf Q G = true) :
    (t.kV : ℝ) * (((|6 * ℓ 1 - ∑ m' ∈ Finset.range 6, ℓ m'| + |6 * ℓ 2 - ∑ m' ∈ Finset.range 6, ℓ m'| + |6 * ℓ 3 - ∑ m' ∈ Finset.range 6, ℓ m'| + |6 * ℓ 4 - ∑ m' ∈ Finset.range 6, ℓ m'| + |6 * ℓ 5 - ∑ m' ∈ Finset.range 6, ℓ m'|) : ℤ) : ℝ) +
      t.kU * Real.sqrt (((∑ k ∈ Finset.range 4, (ℓ (6 + k) + tc.c1 * SN + tc.c0 -
        tc.OT * ∑ m' ∈ Finset.range 6, ℓ m') ^ 2 : ℤ) : ℝ)) +
      t.kQ * Real.sqrt ((Q : ℝ) + tc.ke * YY) + min ((t.kA : ℝ) * Yinf) (t.kB * Y1) + t.k1 * Y1 <
      (YY : ℝ) * 2 ^ tc.g := by
  have L : ∀ k, k < 10 → ((lane tc.R G k : ℕ) : ℤ) = ℓ k := fun k hk => lane_int hR hℓ hk hG
  simp only [tFin] at h
  generalize hg0 : lane tc.R G 0 = g0 at h
  generalize hg1 : lane tc.R G 1 = g1 at h
  generalize hg2 : lane tc.R G 2 = g2 at h
  generalize hg3 : lane tc.R G 3 = g3 at h
  generalize hg4 : lane tc.R G 4 = g4 at h
  generalize hg5 : lane tc.R G 5 = g5 at h
  generalize hg6 : lane tc.R G 6 = g6 at h
  generalize hg7 : lane tc.R G 7 = g7 at h
  generalize hg8 : lane tc.R G 8 = g8 at h
  generalize hg9 : lane tc.R G 9 = g9 at h
  have e0 := L 0 (by norm_num); have e1 := L 1 (by norm_num); have e2 := L 2 (by norm_num)
  have e3 := L 3 (by norm_num); have e4 := L 4 (by norm_num); have e5 := L 5 (by norm_num)
  have e6 := L 6 (by norm_num); have e7 := L 7 (by norm_num); have e8 := L 8 (by norm_num)
  have e9 := L 9 (by norm_num)
  rw [hg0] at e0; rw [hg1] at e1; rw [hg2] at e2; rw [hg3] at e3; rw [hg4] at e4; rw [hg5] at e5
  rw [hg6] at e6; rw [hg7] at e7; rw [hg8] at e8; rw [hg9] at e9
  set H : ℕ := Nat.add (Nat.add (Nat.add (Nat.add (Nat.add g0 g1) g2) g3) g4) g5 with hH
  have eH : (H : ℤ) = ∑ m' ∈ Finset.range 6, ℓ m' := by
    simp only [hH, Finset.sum_range_succ, Finset.sum_range_zero, Nat.add_eq]; push_cast
    rw [e0, e1, e2, e3, e4, e5]; ring
  set SV6 : ℕ := Nat.add (Nat.add (Nat.add (Nat.add (sqd H (Nat.mul 6 g1)) (sqd H (Nat.mul 6 g2)))
    (sqd H (Nat.mul 6 g3))) (sqd H (Nat.mul 6 g4))) (sqd H (Nat.mul 6 g5)) with hSV6
  have eSV : (SV6 : ℤ) = |6 * ℓ 1 - ∑ m' ∈ Finset.range 6, ℓ m'| + |6 * ℓ 2 - ∑ m' ∈ Finset.range 6, ℓ m'| + |6 * ℓ 3 - ∑ m' ∈ Finset.range 6, ℓ m'| + |6 * ℓ 4 - ∑ m' ∈ Finset.range 6, ℓ m'| + |6 * ℓ 5 - ∑ m' ∈ Finset.range 6, ℓ m'| := by
    simp only [hSV6, Nat.add_eq, Nat.mul_eq]; push_cast [sqd_int]
    rw [← eH, ← e1, ← e2, ← e3, ← e4, ← e5]
  set cS : ℕ := Nat.add (Nat.mul tc.c1 SN) tc.c0
  set OTH : ℕ := Nat.mul tc.OT H
  set X1 : ℕ := Nat.add (Nat.add (Nat.add (Nat.mul (sqd OTH (Nat.add g6 cS)) (sqd OTH (Nat.add g6 cS)))
    (Nat.mul (sqd OTH (Nat.add g7 cS)) (sqd OTH (Nat.add g7 cS))))
    (Nat.mul (sqd OTH (Nat.add g8 cS)) (sqd OTH (Nat.add g8 cS))))
    (Nat.mul (sqd OTH (Nat.add g9 cS)) (sqd OTH (Nat.add g9 cS))) with hX1
  have eX1 : (X1 : ℤ) = ∑ k ∈ Finset.range 4, (ℓ (6 + k) + tc.c1 * SN + tc.c0 - tc.OT * ∑ m' ∈ Finset.range 6, ℓ m') ^ 2 := by
    simp only [hX1, Nat.add_eq, Nat.mul_eq, cS, OTH]; push_cast [sqd_int]
    rw [← eH]; simp only [abs_mul_abs_self, Finset.sum_range_succ, Finset.sum_range_zero]
    rw [← e6, ← e7, ← e8, ← e9]; ring
  set X2 : ℕ := Nat.add Q (Nat.mul tc.ke YY) with hX2
  set L0 : ℕ := Nat.add (Nat.add (Nat.mul t.kV SV6) (mn (Nat.mul t.kA Yinf) (Nat.mul t.kB Y1))) (Nat.mul t.k1 Y1)
    with hL0
  set W : ℕ := Nat.shiftLeft YY tc.g with hW
  simp only [Bool.and_eq_true, Nat.blt_eq] at h
  obtain ⟨c1, c2, c3, c4⟩ := h
  simp only [Nat.add_eq, Nat.mul_eq, Nat.sub_eq] at c1 c2 c3 c4
  have hWr : (W : ℝ) = YY * 2 ^ tc.g := by
    rw [hW, show Nat.shiftLeft YY tc.g = YY <<< tc.g from rfl, Nat.shiftLeft_eq]; push_cast; ring
  have hL0r : (L0 : ℝ) = t.kV * SV6 + min ((t.kA : ℝ) * Yinf) (t.kB * Y1) + t.k1 * Y1 := by
    rw [hL0, mn_eq]; simp only [Nat.add_eq, Nat.mul_eq]; push_cast; rfl
  -- the square-root-free comparison
  set C : ℝ := (W : ℝ) - L0 with hCdef
  have hC : 0 < C := by
    have : (L0 : ℝ) < W := by exact_mod_cast c1
    rw [hCdef]; linarith
  have hCsq : (((W - L0) * (W - L0) : ℕ) : ℝ) = C ^ 2 := by rw [Nat.cast_mul, Nat.cast_sub c1.le]; ring
  set a : ℝ := t.kU * Real.sqrt X1
  set b : ℝ := t.kQ * Real.sqrt X2
  have ha0 : 0 ≤ a := by positivity
  have hb0 : 0 ≤ b := by positivity
  have ha2 : a ^ 2 = ((t.kU * t.kU * X1 : ℕ) : ℝ) := by
    simp only [a]; rw [mul_pow, Real.sq_sqrt (Nat.cast_nonneg _)]; push_cast; ring
  have hb2 : b ^ 2 = ((t.kQ * t.kQ * X2 : ℕ) : ℝ) := by
    simp only [b]; rw [mul_pow, Real.sq_sqrt (Nat.cast_nonneg _)]; push_cast; ring
  have r2 : b ^ 2 < C ^ 2 := by rw [hb2, ← hCsq]; exact_mod_cast c2
  have r3 : a ^ 2 < C ^ 2 + b ^ 2 := by rw [ha2, hb2, ← hCsq]; exact_mod_cast c3
  have r4 : 4 * C ^ 2 * b ^ 2 < (C ^ 2 + b ^ 2 - a ^ 2) ^ 2 := by
    have c3' : t.kU * t.kU * X1 ≤ (W - L0) * (W - L0) + t.kQ * t.kQ * X2 := c3.le
    have k1 : 4 * C ^ 2 * b ^ 2 = ((4 * ((W - L0) * (W - L0)) * (t.kQ * t.kQ * X2) : ℕ) : ℝ) := by
      rw [hb2, ← hCsq]; push_cast; ring
    have hD : (((W - L0) * (W - L0) + t.kQ * t.kQ * X2 - t.kU * t.kU * X1 : ℕ) : ℝ) =
        C ^ 2 + b ^ 2 - a ^ 2 := by
      rw [Nat.cast_sub c3', Nat.cast_add, hCsq, ← ha2, ← hb2]
    have k2 : (C ^ 2 + b ^ 2 - a ^ 2) ^ 2 = ((((W - L0) * (W - L0) + t.kQ * t.kQ * X2 - t.kU * t.kU * X1) *
        ((W - L0) * (W - L0) + t.kQ * t.kQ * X2 - t.kU * t.kU * X1) : ℕ) : ℝ) := by
      rw [Nat.cast_mul, hD]; ring
    rw [k1, k2]; exact_mod_cast c4
  have key := sqrtfree ha0 hb0 hC r2 r3 r4
  have eSVr : (SV6 : ℝ) = (((|6 * ℓ 1 - ∑ m' ∈ Finset.range 6, ℓ m'| + |6 * ℓ 2 - ∑ m' ∈ Finset.range 6, ℓ m'| + |6 * ℓ 3 - ∑ m' ∈ Finset.range 6, ℓ m'| + |6 * ℓ 4 - ∑ m' ∈ Finset.range 6, ℓ m'| + |6 * ℓ 5 - ∑ m' ∈ Finset.range 6, ℓ m'|) : ℤ) : ℝ) := by
    rw [← eSV]; push_cast; rfl
  have eX1r : (X1 : ℝ) = (((∑ k ∈ Finset.range 4, (ℓ (6 + k) + tc.c1 * SN + tc.c0 -
      tc.OT * ∑ m' ∈ Finset.range 6, ℓ m') ^ 2 : ℤ) : ℝ)) := by rw [← eX1]; push_cast; rfl
  have eX2r : (X2 : ℝ) = (Q : ℝ) + tc.ke * YY := by rw [hX2]; simp only [Nat.add_eq, Nat.mul_eq]; push_cast; rfl
  rw [← eSVr, ← eX1r, ← eX2r, ← hWr]
  simp only [a, b, hCdef] at key
  rw [hL0r] at key
  linarith

/-! ### The multiplier stage -/

lemma pv_lin {R : ℤ} {n : ℕ} (c : I6 → ℤ) (f : I6 → ℕ → ℤ) (o : ℤ) :
    ∑ i, c i * pv R n (f i) + o * ∑ m ∈ Finset.range n, R ^ m = pv R n (fun m => ∑ i, c i * f i m + o) := by
  simp only [pv, Finset.mul_sum, add_mul, Finset.sum_add_distrib, Finset.sum_mul]
  rw [Finset.sum_comm]
  exact congrArg₂ _ (Finset.sum_congr rfl fun m _ => Finset.sum_congr rfl fun i _ => by ring) rfl

set_option maxHeartbeats 2000000 in
/-- What `tY = true` says. -/
theorem tY_sound {six : ℕ} {tc : TCfg} {t : TThr} (N X : I6 → ℕ) (f : I6 → ℕ → ℤ) {Ym : ℤ} (hR : 0 < tc.R)
    (hX : ∀ i, (X i : ℤ) = pv tc.R 10 (f i)) (hf : ∀ i m, 0 ≤ f i m ∧ f i m ≤ 2 * tc.ox)
    (hY : ∀ i, |(N i : ℤ) - six| ≤ Ym) (hog : 12 * Ym * tc.ox ≤ tc.og) (hRog : 2 * (tc.og : ℤ) < tc.R)
    (hOG : (tc.OG : ℤ) = tc.og * ∑ m ∈ Finset.range 10, (tc.R : ℤ) ^ m)
    (h : tY six tc t (N (.inl 0)) (N (.inl 1)) (N (.inl 2)) (N (.inr 0)) (N (.inr 1)) (N (.inr 2))
      (X (.inl 0)) (X (.inl 1)) (X (.inl 2)) (X (.inr 0)) (X (.inr 1)) (X (.inr 2)) = true) :
    ∃ SN YY Y1 Yinf Q : ℕ, ∃ S1 X1 : ℤ, (SN : ℤ) = ∑ i, (N i : ℤ) ∧ (YY : ℤ) = ∑ i, ((N i : ℤ) - six) ^ 2 ∧
      (Y1 : ℤ) = ∑ i, |(N i : ℤ) - six| ∧ (∀ i, |(N i : ℤ) - six| ≤ Yinf) ∧
      (Q : ℤ) = ∑ i, ((N i : ℤ) - six) ^ 2 * N i ∧
      S1 = |6 * (∑ i, ((N i : ℤ) - six) * f i 1 + tc.og) - ∑ m' ∈ Finset.range 6, (∑ i, ((N i : ℤ) - six) * f i m' + tc.og)| +
        |6 * (∑ i, ((N i : ℤ) - six) * f i 2 + tc.og) - ∑ m' ∈ Finset.range 6, (∑ i, ((N i : ℤ) - six) * f i m' + tc.og)| +
        |6 * (∑ i, ((N i : ℤ) - six) * f i 3 + tc.og) - ∑ m' ∈ Finset.range 6, (∑ i, ((N i : ℤ) - six) * f i m' + tc.og)| +
        |6 * (∑ i, ((N i : ℤ) - six) * f i 4 + tc.og) - ∑ m' ∈ Finset.range 6, (∑ i, ((N i : ℤ) - six) * f i m' + tc.og)| +
        |6 * (∑ i, ((N i : ℤ) - six) * f i 5 + tc.og) - ∑ m' ∈ Finset.range 6, (∑ i, ((N i : ℤ) - six) * f i m' + tc.og)| ∧
      X1 = ∑ k ∈ Finset.range 4, ((∑ i, ((N i : ℤ) - six) * f i (6 + k) + tc.og) + tc.c1 * SN + tc.c0 -
          tc.OT * ∑ m' ∈ Finset.range 6, (∑ i, ((N i : ℤ) - six) * f i m' + tc.og)) ^ 2 ∧
      (t.kV : ℝ) * S1 + t.kU * Real.sqrt X1 + t.kQ * Real.sqrt ((Q : ℝ) + tc.ke * YY) +
        min ((t.kA : ℝ) * Yinf) (t.kB * Y1) + t.k1 * Y1 < (YY : ℝ) * 2 ^ tc.g := by
  set ℓ : ℕ → ℤ := fun m => ∑ i, ((N i : ℤ) - six) * f i m + tc.og with hℓdef
  have hℓ : ∀ m, 0 ≤ ℓ m ∧ ℓ m < tc.R := by
    intro m
    have hb : |∑ i, ((N i : ℤ) - six) * f i m| ≤ 12 * Ym * tc.ox := by
      calc |∑ i, ((N i : ℤ) - six) * f i m| ≤ ∑ i, |((N i : ℤ) - six) * f i m| := Finset.abs_sum_le_sum_abs _ _
        _ ≤ ∑ _i : I6, Ym * (2 * tc.ox) := Finset.sum_le_sum fun i _ => by
            rw [abs_mul, abs_of_nonneg (hf i m).1]
            exact mul_le_mul (hY i) (hf i m).2 (hf i m).1 ((abs_nonneg _).trans (hY i))
        _ = 12 * Ym * tc.ox := by rw [Finset.sum_const, Finset.card_univ, card_I6]; simp; ring
    have := abs_le.mp hb
    simp only [hℓdef]; constructor <;> linarith
  have hpv := pv_lt (by exact_mod_cast hR) hℓ 10
  -- unfold the stage
  simp only [tY] at h
  have ey : ∀ i, ((sqd six (N i) : ℕ) : ℤ) = |(N i : ℤ) - six| := fun i => sqd_int six (N i)
  set Pp : ℕ := Nat.add (Nat.add (Nat.add (Nat.add (Nat.add (posP six (N (.inl 0)) (Nat.mul (sqd six (N (.inl 0))) (X (.inl 0))))
    (posP six (N (.inl 1)) (Nat.mul (sqd six (N (.inl 1))) (X (.inl 1))))) (posP six (N (.inl 2)) (Nat.mul (sqd six (N (.inl 2))) (X (.inl 2)))))
    (posP six (N (.inr 0)) (Nat.mul (sqd six (N (.inr 0))) (X (.inr 0))))) (posP six (N (.inr 1)) (Nat.mul (sqd six (N (.inr 1))) (X (.inr 1)))))
    (posP six (N (.inr 2)) (Nat.mul (sqd six (N (.inr 2))) (X (.inr 2)))) with hPp
  set Ma : ℕ := Nat.add (Nat.add (Nat.add (Nat.add (Nat.add (Nat.mul (sqd six (N (.inl 0))) (X (.inl 0))) (Nat.mul (sqd six (N (.inl 1))) (X (.inl 1))))
    (Nat.mul (sqd six (N (.inl 2))) (X (.inl 2)))) (Nat.mul (sqd six (N (.inr 0))) (X (.inr 0)))) (Nat.mul (sqd six (N (.inr 1))) (X (.inr 1))))
    (Nat.mul (sqd six (N (.inr 2))) (X (.inr 2))) with hMa
  have eG : ((Nat.add (Nat.add Pp Pp) tc.OG : ℕ) : ℤ) - Ma = pv tc.R 10 ℓ := by
    rw [hℓdef, ← pv_lin]
    have hpos : ∀ i, 2 * ((posP six (N i) (Nat.mul (sqd six (N i)) (X i)) : ℕ) : ℤ) - ((Nat.mul (sqd six (N i)) (X i) : ℕ) : ℤ) =
        ((N i : ℤ) - six) * pv tc.R 10 (f i) := by
      intro i
      rw [posP_int, ← hX i, ← sgn_sqd six (N i)]
      simp only [Nat.mul_eq]; push_cast; ring
    simp only [hPp, hMa, Nat.add_eq]; push_cast
    rw [hOG, sum_I6Z]
    have := hpos (.inl 0); have := hpos (.inl 1); have := hpos (.inl 2)
    have := hpos (.inr 0); have := hpos (.inr 1); have := hpos (.inr 2)
    simp only [Nat.mul_eq] at *
    linarith
  have hMale : Ma ≤ Nat.add (Nat.add Pp Pp) tc.OG := by
    have : (Ma : ℤ) ≤ ((Nat.add (Nat.add Pp Pp) tc.OG : ℕ) : ℤ) := by linarith [hpv.1]
    exact_mod_cast this
  have hG : ((Nat.sub (Nat.add (Nat.add Pp Pp) tc.OG) Ma : ℕ) : ℤ) = pv tc.R 10 ℓ := by
    rw [Nat.sub_eq, Nat.cast_sub hMale]; exact eG
  have hfin := tFin_sound hR hG hℓ h
  refine ⟨_, _, _, _, _, _, _, ?_, ?_, ?_, ?_, ?_, rfl, rfl, hfin⟩
  · (try simp only [Nat.add_eq]); push_cast; rw [sum_I6Z]; ring
  · (try simp only [Nat.add_eq, Nat.mul_eq]); push_cast [ey]; rw [sum_I6Z]; (try simp only [sq_abs, abs_mul_abs_self]); ring
  · (try simp only [Nat.add_eq]); push_cast [ey]; rw [sum_I6Z]; ring
  · intro i
    have m1 := mx_ge (mx (mx (mx (mx (sqd six (N (.inl 0))) (sqd six (N (.inl 1)))) (sqd six (N (.inl 2)))) (sqd six (N (.inr 0)))) (sqd six (N (.inr 1)))) (sqd six (N (.inr 2)))
    have m2 := mx_ge (mx (mx (mx (sqd six (N (.inl 0))) (sqd six (N (.inl 1)))) (sqd six (N (.inl 2)))) (sqd six (N (.inr 0)))) (sqd six (N (.inr 1)))
    have m3 := mx_ge (mx (mx (sqd six (N (.inl 0))) (sqd six (N (.inl 1)))) (sqd six (N (.inl 2)))) (sqd six (N (.inr 0)))
    have m4 := mx_ge (mx (sqd six (N (.inl 0))) (sqd six (N (.inl 1)))) (sqd six (N (.inl 2)))
    have m5 := mx_ge (sqd six (N (.inl 0))) (sqd six (N (.inl 1)))
    rw [← ey i]
    have : sqd six (N i) ≤ mx (mx (mx (mx (mx (sqd six (N (.inl 0))) (sqd six (N (.inl 1)))) (sqd six (N (.inl 2)))) (sqd six (N (.inr 0)))) (sqd six (N (.inr 1)))) (sqd six (N (.inr 2))) := by
      rcases i with i | i <;> fin_cases i <;> simp only [Fin.zero_eta, Fin.mk_one, Fin.reduceFinMk] <;> omega
    exact_mod_cast this
  · (try simp only [Nat.add_eq, Nat.mul_eq]); push_cast [ey]; rw [sum_I6Z]; (try simp only [sq_abs, abs_mul_abs_self]); ring

/-! ### Reading the lanes -/

lemma Tp_zero {tc : TCfg} (hlen : tc.TpL.length = 144) {k : ℕ} (hk : 4 ≤ k) (j i : I6) : tc.Tp k j i = 0 := by
  unfold TCfg.Tp; rw [List.getD_eq_default]; rw [hlen]; omega

lemma sum_rowOf (g : I6 → ℤ) : ∑ m ∈ Finset.range 6, g (rowOf m) = ∑ j, g j := by
  simp only [Finset.sum_range_succ, Finset.sum_range_zero, rowOf, sum_I6Z]; ring

lemma sum_erase_j0 (g : I6 → ℤ) : ∑ j ∈ Finset.univ.erase j0, g j =
    g (.inl 1) + g (.inl 2) + g (.inr 0) + g (.inr 1) + g (.inr 2) := by
  rw [Finset.sum_erase_eq_sub (Finset.mem_univ _), sum_I6Z]; simp only [j0]; ring

/-- The lanes of `G` in terms of `V_j = Σ_i Ỹ_i J̃_{ij}` and `B̃_k = Σ_i Ỹ_i Σ_j T̂_{kji} J̃_{ij}`. -/
theorem lanes_interp (tc : TCfg) (B six : ℤ) (WR WI : I6 → I6 → ℤ) (N : I6 → ℤ)
    (hTp : ∀ k < 4, ∀ i, ∑ j, (tc.Tp k j i : ℤ) = 6 * tc.OT) :
    let sr : I6 → ℤ := fun i => ∑ j, WR j i - 6 * B
    let si : I6 → ℤ := fun i => ∑ j, WI j i - 6 * B
    let Jt : I6 → I6 → ℤ := fun i j => sr i * (WI j i - B) - si i * (WR j i - B)
    let ℓ : ℕ → ℤ := fun m => ∑ i, (N i - six) * xlv tc i B (fun j => WR j i) (fun j => WI j i) m + tc.og
    (|6 * ℓ 1 - ∑ m' ∈ Finset.range 6, ℓ m'| + |6 * ℓ 2 - ∑ m' ∈ Finset.range 6, ℓ m'| + |6 * ℓ 3 - ∑ m' ∈ Finset.range 6, ℓ m'| + |6 * ℓ 4 - ∑ m' ∈ Finset.range 6, ℓ m'| + |6 * ℓ 5 - ∑ m' ∈ Finset.range 6, ℓ m'| = 6 * ∑ j ∈ Finset.univ.erase j0, |∑ i, (N i - six) * Jt i j|) ∧
    ∀ c1 c0 SN : ℤ, c1 = (6 * tc.OT - 1) * tc.ox → c0 = (6 * tc.OT - 1) * (tc.og - 6 * tc.ox * six) →
      SN = ∑ i, N i → ∀ k < 4, ℓ (6 + k) + c1 * SN + c0 -
      tc.OT * ∑ m' ∈ Finset.range 6, ℓ m' = ∑ i, (N i - six) * ∑ j, ((tc.Tp k j i : ℤ) - tc.OT) * Jt i j := by
  intro sr si Jt ℓ
  set β : I6 → ℤ := fun i => B * (sr i - si i) with hβ
  have hzero : ∀ i, ∑ j, Jt i j = 0 := by
    intro i; simp only [Jt, sr, si, sum_I6Z]; ring
  have haJ : ∀ i j, aJ B (fun j => WR j i) (fun j => WI j i) j = Jt i j + β i := by
    intro i j; simp only [aJ, Jt, sr, si, hβ]; ring
  have hrow : ∀ m < 6, ℓ m = ∑ i, (N i - six) * (Jt i (rowOf m) + β i + tc.ox) + tc.og := by
    intro m hm
    simp only [ℓ]; congr 1
    exact Finset.sum_congr rfl fun i _ => by simp only [xlv, if_pos hm, haJ]
  have hk : ∀ k < 4, ℓ (6 + k) = ∑ i, (N i - six) * (∑ j, ((tc.Tp k j i : ℤ) - tc.OT) * Jt i j +
      6 * tc.OT * β i + tc.ox) + tc.og := by
    intro k hk4
    simp only [ℓ]; congr 1
    refine Finset.sum_congr rfl fun i _ => ?_
    simp only [xlv, if_neg (by omega : ¬ 6 + k < 6), Nat.add_sub_cancel_left, haJ]
    congr 1
    have e : ∑ j, (tc.Tp k j i : ℤ) * (Jt i j + β i) =
        ∑ j, ((tc.Tp k j i : ℤ) - tc.OT) * Jt i j + tc.OT * ∑ j, Jt i j + (∑ j, (tc.Tp k j i : ℤ)) * β i := by
      rw [Finset.mul_sum, Finset.sum_mul, ← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
      exact Finset.sum_congr rfl fun j _ => by ring
    rw [e, hzero, hTp k hk4 i]; ring
  -- sums over the columns
  set Sy := ∑ i, (N i - six) with hSy
  set Sb := ∑ i, (N i - six) * β i with hSb
  have hSyN : Sy = ∑ i, N i - 6 * six := by
    rw [hSy, Finset.sum_sub_distrib]; simp [Finset.sum_const, Finset.card_univ, card_I6]
  have hH : ∑ m' ∈ Finset.range 6, ℓ m' = 6 * Sb + 6 * tc.ox * Sy + 6 * tc.og := by
    have e0 : ∑ m' ∈ Finset.range 6, ℓ m' =
        ∑ m' ∈ Finset.range 6, (∑ i, (N i - six) * (Jt i (rowOf m') + β i + tc.ox) + tc.og) :=
      Finset.sum_congr rfl fun m' hm' => hrow m' (Finset.mem_range.mp hm')
    have e1 : ∀ i, ∑ m' ∈ Finset.range 6, (N i - six) * (Jt i (rowOf m') + β i + tc.ox) =
        6 * ((N i - six) * β i) + 6 * tc.ox * (N i - six) := by
      intro i
      rw [← Finset.mul_sum, Finset.sum_add_distrib, Finset.sum_add_distrib, sum_rowOf (fun j => Jt i j), hzero]
      simp only [Finset.sum_const, Finset.card_range, nsmul_eq_mul]; push_cast; ring
    rw [e0, Finset.sum_add_distrib, Finset.sum_comm, Finset.sum_congr rfl fun i _ => e1 i]
    simp only [Finset.sum_add_distrib, ← Finset.mul_sum, Finset.sum_const, Finset.card_range, nsmul_eq_mul]
    rw [hSb, hSy]; push_cast; ring
  have hmm : ∀ m, m < 6 → 6 * ℓ m - ∑ m' ∈ Finset.range 6, ℓ m' = 6 * ∑ i, (N i - six) * Jt i (rowOf m) := by
    intro m hm6
    rw [hH, hrow m hm6]
    have e : ∑ i, (N i - six) * (Jt i (rowOf m) + β i + tc.ox) =
        ∑ i, (N i - six) * Jt i (rowOf m) + Sb + tc.ox * Sy := by
      rw [hSb, hSy, Finset.mul_sum, ← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
      exact Finset.sum_congr rfl fun i _ => by ring
    rw [e]; ring
  constructor
  · rw [hmm 1 (by norm_num), hmm 2 (by norm_num), hmm 3 (by norm_num), hmm 4 (by norm_num), hmm 5 (by norm_num),
      sum_erase_j0 (fun j => |∑ i, (N i - six) * Jt i j|)]
    simp only [rowOf, abs_mul]; norm_num; ring
  · intro c1 c0 SN hc1 hc0 hSN k hk4
    subst hc1 hc0 hSN
    have e : ∑ i, (N i - six) * (∑ j, ((tc.Tp k j i : ℤ) - tc.OT) * Jt i j + 6 * tc.OT * β i + tc.ox) =
        ∑ i, (N i - six) * ∑ j, ((tc.Tp k j i : ℤ) - tc.OT) * Jt i j + 6 * tc.OT * Sb + tc.ox * Sy := by
      rw [hSb, hSy, Finset.mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
      exact Finset.sum_congr rfl fun i _ => by ring
    rw [hk k hk4, e, hH, hSyN]; ring

/-! ### Real-number layer -/

/-- Minkowski for finite sums. -/
lemma sqrt_sum_add_le {ι : Type*} [Fintype ι] (f g : ι → ℝ) :
    Real.sqrt (∑ k, (f k + g k) ^ 2) ≤ Real.sqrt (∑ k, f k ^ 2) + Real.sqrt (∑ k, g k ^ 2) := by
  have hf := Real.sqrt_nonneg (∑ k, f k ^ 2)
  have hg := Real.sqrt_nonneg (∑ k, g k ^ 2)
  rw [Real.sqrt_le_left (by positivity)]
  have h1 : Real.sqrt (∑ k, f k ^ 2) ^ 2 = ∑ k, f k ^ 2 := Real.sq_sqrt (Finset.sum_nonneg fun _ _ => sq_nonneg _)
  have h2 : Real.sqrt (∑ k, g k ^ 2) ^ 2 = ∑ k, g k ^ 2 := Real.sq_sqrt (Finset.sum_nonneg fun _ _ => sq_nonneg _)
  have hcs := (le_abs_self _).trans (abs_sum_mul_le f g)
  have e : ∑ k, (f k + g k) ^ 2 = ∑ k, f k ^ 2 + 2 * ∑ k, f k * g k + ∑ k, g k ^ 2 := by
    rw [Finset.mul_sum, ← Finset.sum_add_distrib, ← Finset.sum_add_distrib]
    exact Finset.sum_congr rfl fun k _ => by ring
  rw [e]; nlinarith

/-- `w_{ji} = e(u_j) exp(−i P_{ji})`. -/
def wexp (P : RMat6) (u : I6 → ℝ) (j i : I6) : ℂ := e (u j) * Complex.exp (((-P j i : ℝ) : ℂ) * I)

lemma norm_wexp (P : RMat6) (u : I6 → ℝ) (j i : I6) : ‖wexp P u j i‖ = 1 := by
  rw [wexp, norm_mul, norm_e, Complex.norm_exp_ofReal_mul_I, one_mul]

lemma q_cyc (P : RMat6) (u : I6 → ℝ) (j i : I6) :
    q ((1 / (2 * Real.pi)) • P) u j i = wexp P u j i / ((Real.sqrt 6 : ℝ) : ℂ) := by
  simp only [q, wexp, Matrix.smul_apply, smul_eq_mul]; rw [e_sub_cyc]

lemma sigma_eq (P : RMat6) (u : I6 → ℝ) (i : I6) : sigma P u i = ∑ j, wexp P u j i := rfl

lemma norm_sigma_le (P : RMat6) (u : I6 → ℝ) (i : I6) : ‖sigma P u i‖ ≤ 6 := by
  rw [sigma_eq]
  refine (norm_sum_le _ _).trans (le_of_eq ?_)
  simp only [norm_wexp, Finset.sum_const, Finset.card_univ, card_I6]; norm_num

lemma six_ne : ((Real.sqrt 6 : ℝ) : ℂ) ≠ 0 := by exact_mod_cast sqrt6_pos.ne'

lemma sqrt6_mul_self_C : ((Real.sqrt 6 : ℝ) : ℂ) * ((Real.sqrt 6 : ℝ) : ℂ) = 6 := by
  rw [← Complex.ofReal_mul, Real.mul_self_sqrt (by norm_num)]; norm_num

lemma Jm_cyc (P : RMat6) (u : I6 → ℝ) (i j : I6) :
    Jm ((1 / (2 * Real.pi)) • P) u i j = -(star (sigma P u i) * wexp P u j i).im / 6 := by
  rw [Jm, S_eq_sigma, q_cyc]
  have h : star (sigma P u i / ((Real.sqrt 6 : ℝ) : ℂ)) * (wexp P u j i / ((Real.sqrt 6 : ℝ) : ℂ)) =
      (star (sigma P u i) * wexp P u j i) / 6 := by
    rw [star_div₀, Complex.star_def, Complex.conj_ofReal, div_mul_div_comm, sqrt6_mul_self_C]
  rw [h, Complex.div_ofNat_im]; ring

lemma normSq_S_cyc (P : RMat6) (u : I6 → ℝ) (i : I6) :
    ‖S ((1 / (2 * Real.pi)) • P) u i‖ ^ 2 = ‖sigma P u i‖ ^ 2 / 6 := by
  rw [norm_S_eq, div_pow, Real.sq_sqrt (by norm_num)]

lemma cc_cyc (P : RMat6) (u : I6 → ℝ) (i : I6) :
    cc ((1 / (2 * Real.pi)) • P) u i = (‖sigma P u i‖ ^ 2 - 6) / (24 * Real.pi) := by
  rw [cc, normSq_S_cyc]; field_simp; try ring

/-- The pointwise error of the integer `J̃`. -/
lemma J_err {P : RMat6} {u : I6 → ℝ} {Z ε1 E : ℝ} (hZ : 0 < Z) {wt : I6 → I6 → ℂ} {s : I6 → ℂ}
    (hw : ∀ j i, ‖wt j i / (Z : ℂ) - wexp P u j i‖ ≤ ε1) (hs : ∀ i, ‖s i / (Z : ℂ) - sigma P u i‖ ≤ E)
    (hε : 0 ≤ ε1) (i j : I6) :
    |6 * Jm ((1 / (2 * Real.pi)) • P) u i j + (star (s i) * wt j i).im / Z ^ 2| ≤ (6 + E) * ε1 + E := by
  rw [Jm_cyc]
  have hZ' : (Z : ℂ) ≠ 0 := by exact_mod_cast hZ.ne'
  have e1 : (star (s i) * wt j i).im / Z ^ 2 = (star (s i / (Z : ℂ)) * (wt j i / (Z : ℂ))).im := by
    have hz : star (Z : ℂ) = (Z : ℂ) := Complex.conj_ofReal Z
    rw [star_div₀, hz, div_mul_div_comm, ← Complex.ofReal_mul, Complex.div_ofReal_im, sq]
  rw [e1]
  have e2 : 6 * (-(star (sigma P u i) * wexp P u j i).im / 6) +
      (star (s i / (Z : ℂ)) * (wt j i / (Z : ℂ))).im =
      (star (s i / (Z : ℂ) - sigma P u i) * wexp P u j i +
        star (s i / (Z : ℂ)) * (wt j i / (Z : ℂ) - wexp P u j i)).im := by
    simp only [star_sub, sub_mul, mul_sub, Complex.add_im, Complex.sub_im]; ring
  rw [e2]
  refine (Complex.abs_im_le_norm _).trans ((norm_add_le _ _).trans ?_)
  rw [norm_mul, norm_mul, norm_star, norm_star, norm_wexp, mul_one]
  have hsn : ‖s i / (Z : ℂ)‖ ≤ 6 + E := by
    calc ‖s i / (Z : ℂ)‖ = ‖(s i / (Z : ℂ) - sigma P u i) + sigma P u i‖ := by ring_nf
      _ ≤ ‖s i / (Z : ℂ) - sigma P u i‖ + ‖sigma P u i‖ := norm_add_le _ _
      _ ≤ E + 6 := add_le_add (hs i) (norm_sigma_le P u i)
      _ = 6 + E := by ring
  have := mul_le_mul hsn (hw j i) (norm_nonneg _) (by linarith [(norm_nonneg _).trans (hs i)])
  linarith [hs i]

/-- `|‖σ‖² − ‖s/Z‖²| ≤ E(12 + E)`. -/
lemma N_err {P : RMat6} {u : I6 → ℝ} {Z E : ℝ} (hZ : 0 < Z) {s : I6 → ℂ}
    (hs : ∀ i, ‖s i / (Z : ℂ) - sigma P u i‖ ≤ E) (i : I6) :
    |‖sigma P u i‖ ^ 2 - ‖s i‖ ^ 2 / Z ^ 2| ≤ E * (12 + E) := by
  have hn : ‖s i / (Z : ℂ)‖ = ‖s i‖ / Z := by rw [norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hZ]
  have hd : |‖sigma P u i‖ - ‖s i‖ / Z| ≤ E := by
    rw [← hn, abs_sub_comm]; exact (abs_norm_sub_norm_le _ _).trans (hs i)
  have hE : 0 ≤ E := (abs_nonneg _).trans hd
  have h6 := norm_sigma_le P u i
  have hσ0 := norm_nonneg (sigma P u i)
  have hs0 : 0 ≤ ‖s i‖ / Z := by positivity
  have e : ‖sigma P u i‖ ^ 2 - ‖s i‖ ^ 2 / Z ^ 2 = (‖sigma P u i‖ - ‖s i‖ / Z) * (‖sigma P u i‖ + ‖s i‖ / Z) := by
    ring
  rw [e, abs_mul]
  have hsum : |‖sigma P u i‖ + ‖s i‖ / Z| ≤ 12 + E := by
    rw [abs_of_nonneg (by positivity)]
    have := (abs_le.mp hd).1
    linarith
  exact mul_le_mul hd hsum (abs_nonneg _) hE

lemma sum_erase_card (f : I6 → ℝ) (c : ℝ) : ∑ j ∈ Finset.univ.erase j0, (f j + c) = ∑ j ∈ Finset.univ.erase j0, f j + 5 * c := by
  rw [Finset.sum_add_distrib, Finset.sum_const, Finset.card_erase_of_mem (Finset.mem_univ _), Finset.card_univ,
    card_I6, nsmul_eq_mul]; norm_num

lemma abs_Jm_le (P : RMat6) (u : I6 → ℝ) (i j : I6) : |Jm P u i j| ≤ ‖S P u i‖ / Real.sqrt 6 := by
  rw [Jm, abs_neg]
  refine (Complex.abs_im_le_norm _).trans (le_of_eq ?_)
  rw [norm_mul, norm_star, norm_q]; ring

lemma sum_Jm_sq_le (P : RMat6) (u : I6 → ℝ) (i : I6) : ∑ j, Jm P u i j ^ 2 ≤ ‖S P u i‖ ^ 2 := by
  have h : ∀ j, Jm P u i j ^ 2 ≤ ‖S P u i‖ ^ 2 / 6 := by
    intro j
    have h1 := abs_Jm_le P u i j
    have h2 : (‖S P u i‖ / Real.sqrt 6) ^ 2 = ‖S P u i‖ ^ 2 / 6 := by rw [div_pow, Real.sq_sqrt (by norm_num)]
    rw [← h2, ← sq_abs]; exact pow_le_pow_left₀ (abs_nonneg _) h1 2
  calc ∑ j, Jm P u i j ^ 2 ≤ ∑ _j : I6, ‖S P u i‖ ^ 2 / 6 := Finset.sum_le_sum fun j _ => h j
    _ = _ := by rw [Finset.sum_const, Finset.card_univ, card_I6]; simp; ring


set_option maxHeartbeats 1000000 in
/-- The final arithmetic of the tangent test, with every quantity abstracted. -/
lemma tang_final {a pihi i6hi x29hi Kbar rbar rFbar rHbar nbar kV kU kQ kA kB k1 G2 Z DT E ε1 tcol : ℝ}
    {SV6 Ub SQ Yinf Y1 YY : ℝ} {K r rF rH n SVJ Bn SY2 SY1 Gs Lc : ℝ}
    (ha : 0 ≤ a) (hG2 : 0 < G2)
    (hpi : Real.pi ≤ pihi) (hi6 : 1 / Real.sqrt 6 ≤ i6hi) (hx29 : Real.sqrt (29 / 6) ≤ x29hi)
    (hkV : 2 / 3 * pihi * a * G2 ≤ kV) (hkU : 4 * pihi * rHbar * G2 / DT ≤ kU)
    (hkQ : 24 * pihi * Z * i6hi * (nbar + pihi * (Kbar * (3 / 2 * a) * (x29hi * a) + 2 * i6hi * (x29hi * a) * rFbar +
      i6hi * rFbar ^ 2)) * G2 ≤ kQ)
    (hkA : 24 * pihi ^ 2 * Z ^ 2 * (Kbar * (x29hi * a) + rFbar) ^ 2 * G2 ≤ kA)
    (hkB : 24 * pihi ^ 2 * Z ^ 2 * (Kbar * (x29hi * a) + rbar) ^ 2 * G2 ≤ kB)
    (hk1 : (20 * pihi * a * ((6 + E) * ε1 + E) + 8 * pihi * rHbar * ((6 + E) * ε1 + E) * tcol + E * (12 + E)) *
      Z ^ 2 * G2 ≤ k1)
    (hcheck : kV * SV6 + kU * Ub + kQ * SQ + min (kA * Yinf) (kB * Y1) + k1 * Y1 < YY * G2)
    (hK0 : 0 ≤ K) (hKb : K ≤ Kbar) (hr0 : 0 ≤ r) (hr : r ≤ rbar) (hrF0 : 0 ≤ rF) (hrF : rF ≤ rFbar)
    (hrH0 : 0 ≤ rH) (hrH : rH ≤ rHbar) (hn0 : 0 ≤ n) (hn : n ≤ nbar)
    (hZ : 0 < Z) (hDT : 0 < DT) (hE : 0 ≤ E) (hε : 0 ≤ ε1) (hY10 : 0 ≤ Y1) (hYinf0 : 0 ≤ Yinf) (hYY0 : 0 ≤ YY)
    (hUb0 : 0 ≤ Ub) (hSQ0 : 0 ≤ SQ) (hSV0 : 0 ≤ SV6) (hBn0 : 0 ≤ Bn) (hSY20 : 0 ≤ SY2) (hSY10 : 0 ≤ SY1)
    (hGs0 : 0 ≤ Gs) (htcol0 : 0 ≤ tcol)
    (hSVJ : SVJ ≤ SV6 / (36 * Z ^ 2) + 5 * (Y1 * ((6 + E) * ε1 + E) / 6))
    (hBn : Bn ≤ Ub / (6 * DT * Z ^ 2) + 2 * (Y1 * ((6 + E) * ε1 + E) * tcol / 6))
    (hSY2 : SY2 ≤ i6hi * SQ / Z)
    (hL : (YY / Z ^ 2 - Y1 * (E * (12 + E))) / (24 * Real.pi) ≤ Lc) :
    a * SVJ + rH * Bn + n * SY2 +
      Real.pi * (min (Yinf * (K * (Real.sqrt (29 / 6) * a) + rF) ^ 2) (Y1 * (K * (Real.sqrt (29 / 6) * a) + r) ^ 2) +
        min (Gs * (Real.sqrt (29 / 6) * a) ^ 2) (K * SY2 * (3 / 2 * a) * (Real.sqrt (29 / 6) * a)) +
        2 / Real.sqrt 6 * (Real.sqrt (29 / 6) * a) * min (SY2 * rF) (SY1 * r) +
        1 / Real.sqrt 6 * min (SY2 * rF ^ 2) (SY1 * r ^ 2)) < Lc := by
  have hpi0 := Real.pi_pos
  have h6 := sqrt6_pos
  set eW := (6 + E) * ε1 + E with heW
  set eN := E * (12 + E) with heN
  have heW0 : 0 ≤ eW := by positivity
  have heN0 : 0 ≤ eN := by positivity
  have hpihi0 : 0 ≤ pihi := by linarith
  have hi60 : 0 ≤ i6hi := (by positivity : (0:ℝ) ≤ 1 / Real.sqrt 6).trans hi6
  set X := Real.sqrt (29 / 6) * a with hXdef
  set Xb := x29hi * a with hXb
  have hX0 : 0 ≤ X := by positivity
  have hXX : X ≤ Xb := mul_le_mul_of_nonneg_right hx29 ha
  have hKb0 : 0 ≤ Kbar := hK0.trans hKb
  have hrb0 : 0 ≤ rbar := hr0.trans hr
  have hrFb0 : 0 ≤ rFbar := hrF0.trans hrF
  have hrHb0 : 0 ≤ rHbar := hrH0.trans hrH
  have hnb0 : 0 ≤ nbar := hn0.trans hn
  have hxb0 : 0 ≤ Xb := hX0.trans hXX
  set c3 := Kbar * (3 / 2 * a) * Xb + 2 * i6hi * Xb * rFbar + i6hi * rFbar ^ 2 with hc3
  have hc30 : 0 ≤ c3 := by positivity
  set minb := min (Yinf * (Kbar * Xb + rFbar) ^ 2) (Y1 * (Kbar * Xb + rbar) ^ 2) with hminb
  have hKX : K * X ≤ Kbar * Xb := mul_le_mul hKb hXX hX0 hKb0
  have hm1 : min (Yinf * (K * X + rF) ^ 2) (Y1 * (K * X + r) ^ 2) ≤ minb :=
    min_le_min (mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (by positivity) (add_le_add hKX hrF) 2) hYinf0)
      (mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (by positivity) (add_le_add hKX hr) 2) hY10)
  have hm2 : min (Gs * X ^ 2) (K * SY2 * (3 / 2 * a) * X) ≤ SY2 * (Kbar * (3 / 2 * a) * Xb) := by
    refine (min_le_right _ _).trans ?_
    have := mul_le_mul_of_nonneg_left hKX (by positivity : (0:ℝ) ≤ SY2 * (3 / 2 * a))
    linarith only [this]
  have hm3 : 2 / Real.sqrt 6 * X * min (SY2 * rF) (SY1 * r) ≤ SY2 * (2 * i6hi * Xb * rFbar) := by
    have h1 : min (SY2 * rF) (SY1 * r) ≤ SY2 * rFbar :=
      (min_le_left _ _).trans (mul_le_mul_of_nonneg_left hrF hSY20)
    have h2 : 2 / Real.sqrt 6 * X ≤ 2 * i6hi * Xb := by
      rw [show 2 / Real.sqrt 6 * X = 2 * (1 / Real.sqrt 6) * X by ring]
      exact mul_le_mul (by linarith) hXX hX0 (by positivity)
    have h3 : 0 ≤ min (SY2 * rF) (SY1 * r) := le_min (by positivity) (by positivity)
    calc _ ≤ 2 * i6hi * Xb * (SY2 * rFbar) := mul_le_mul h2 h1 h3 (by positivity)
      _ = _ := by ring
  have hm4 : 1 / Real.sqrt 6 * min (SY2 * rF ^ 2) (SY1 * r ^ 2) ≤ SY2 * (i6hi * rFbar ^ 2) := by
    have h1 : min (SY2 * rF ^ 2) (SY1 * r ^ 2) ≤ SY2 * rFbar ^ 2 :=
      (min_le_left _ _).trans (mul_le_mul_of_nonneg_left (pow_le_pow_left₀ hrF0 hrF 2) hSY20)
    have h3 : 0 ≤ min (SY2 * rF ^ 2) (SY1 * r ^ 2) := le_min (by positivity) (by positivity)
    calc _ ≤ i6hi * (SY2 * rFbar ^ 2) := mul_le_mul hi6 h1 h3 hi60
      _ = _ := by ring
  set brk := min (Yinf * (K * X + rF) ^ 2) (Y1 * (K * X + r) ^ 2) + min (Gs * X ^ 2) (K * SY2 * (3 / 2 * a) * X) +
    2 / Real.sqrt 6 * X * min (SY2 * rF) (SY1 * r) + 1 / Real.sqrt 6 * min (SY2 * rF ^ 2) (SY1 * r ^ 2) with hbrkdef
  have hbrk : brk ≤ minb + SY2 * c3 := by rw [hbrkdef, hc3]; linarith only [hm1, hm2, hm3, hm4]
  have hbrk0 : 0 ≤ brk := by
    have : 0 ≤ min (Gs * X ^ 2) (K * SY2 * (3 / 2 * a) * X) := le_min (by positivity) (by positivity)
    have : 0 ≤ min (SY2 * rF) (SY1 * r) := le_min (by positivity) (by positivity)
    have : 0 ≤ min (SY2 * rF ^ 2) (SY1 * r ^ 2) := le_min (by positivity) (by positivity)
    have : 0 ≤ min (Yinf * (K * X + rF) ^ 2) (Y1 * (K * X + r) ^ 2) := le_min (by positivity) (by positivity)
    rw [hbrkdef]; positivity
  set SYb := i6hi * SQ / Z with hSYb
  have hSYb0 : 0 ≤ SYb := by positivity
  set m := Y1 * eW * tcol / 6 with hm
  have hm0 : 0 ≤ m := by rw [hm]; positivity
  set RB := a * (SV6 / (36 * Z ^ 2) + 5 * (Y1 * eW / 6)) + rHbar * (Ub / (6 * DT * Z ^ 2) + 2 * m) + nbar * SYb +
    pihi * (minb + SYb * c3) with hRB
  have hminb0 : 0 ≤ minb := le_min (by positivity) (by positivity)
  have hRHS : a * SVJ + rH * Bn + n * SY2 + Real.pi * brk ≤ RB := by
    have t1 : a * SVJ ≤ a * (SV6 / (36 * Z ^ 2) + 5 * (Y1 * eW / 6)) := mul_le_mul_of_nonneg_left hSVJ ha
    have t2 : rH * Bn ≤ rHbar * (Ub / (6 * DT * Z ^ 2) + 2 * m) := mul_le_mul hrH hBn hBn0 hrHb0
    have t3 : n * SY2 ≤ nbar * SYb := mul_le_mul hn hSY2 hSY20 hnb0
    have t4 : Real.pi * brk ≤ pihi * (minb + SYb * c3) := by
      have : minb + SY2 * c3 ≤ minb + SYb * c3 := by
        have := mul_le_mul_of_nonneg_right hSY2 hc30; linarith only [this]
      exact mul_le_mul hpi (hbrk.trans this) hbrk0 hpihi0
    rw [hRB]; linarith only [t1, t2, t3, t4]
  have hkey : 24 * pihi * Z ^ 2 * G2 * RB + Y1 * eN * Z ^ 2 * G2 ≤
      kV * SV6 + kU * Ub + kQ * SQ + min (kA * Yinf) (kB * Y1) + k1 * Y1 := by
    have T1 : 24 * pihi * Z ^ 2 * G2 * (a * (SV6 / (36 * Z ^ 2))) ≤ kV * SV6 := by
      have : 24 * pihi * Z ^ 2 * G2 * (a * (SV6 / (36 * Z ^ 2))) = 2 / 3 * pihi * a * G2 * SV6 := by
        field_simp; try ring
      rw [this]; exact mul_le_mul_of_nonneg_right hkV hSV0
    have T3 : 24 * pihi * Z ^ 2 * G2 * (rHbar * (Ub / (6 * DT * Z ^ 2))) ≤ kU * Ub := by
      have : 24 * pihi * Z ^ 2 * G2 * (rHbar * (Ub / (6 * DT * Z ^ 2))) = 4 * pihi * rHbar * G2 / DT * Ub := by
        field_simp; try ring
      rw [this]; exact mul_le_mul_of_nonneg_right hkU hUb0
    have T5 : 24 * pihi * Z ^ 2 * G2 * (nbar * SYb + pihi * (SYb * c3)) ≤ kQ * SQ := by
      have : 24 * pihi * Z ^ 2 * G2 * (nbar * SYb + pihi * (SYb * c3)) =
          24 * pihi * Z * i6hi * (nbar + pihi * c3) * G2 * SQ := by
        rw [hSYb]; field_simp; try ring
      rw [this]; exact mul_le_mul_of_nonneg_right hkQ hSQ0
    have T6 : 24 * pihi * Z ^ 2 * G2 * (pihi * minb) ≤ min (kA * Yinf) (kB * Y1) := by
      have hc : 0 ≤ 24 * pihi ^ 2 * Z ^ 2 * G2 := by positivity
      have : 24 * pihi * Z ^ 2 * G2 * (pihi * minb) = 24 * pihi ^ 2 * Z ^ 2 * G2 * minb := by ring
      rw [this, hminb, mul_min_of_nonneg _ _ hc]
      apply min_le_min
      · calc _ = 24 * pihi ^ 2 * Z ^ 2 * (Kbar * Xb + rFbar) ^ 2 * G2 * Yinf := by ring
          _ ≤ _ := mul_le_mul_of_nonneg_right hkA hYinf0
      · calc _ = 24 * pihi ^ 2 * Z ^ 2 * (Kbar * Xb + rbar) ^ 2 * G2 * Y1 := by ring
          _ ≤ _ := mul_le_mul_of_nonneg_right hkB hY10
    have T7 : 24 * pihi * Z ^ 2 * G2 * (a * (5 * (Y1 * eW / 6)) + rHbar * (2 * m)) + Y1 * eN * Z ^ 2 * G2 ≤
        k1 * Y1 := by
      have : 24 * pihi * Z ^ 2 * G2 * (a * (5 * (Y1 * eW / 6)) + rHbar * (2 * m)) + Y1 * eN * Z ^ 2 * G2 =
          (20 * pihi * a * eW + 8 * pihi * rHbar * eW * tcol + eN) * Z ^ 2 * G2 * Y1 := by
        rw [hm]; ring
      rw [this]; exact mul_le_mul_of_nonneg_right hk1 hY10
    have e : 24 * pihi * Z ^ 2 * G2 * RB + Y1 * eN * Z ^ 2 * G2 =
        24 * pihi * Z ^ 2 * G2 * (a * (SV6 / (36 * Z ^ 2))) +
        24 * pihi * Z ^ 2 * G2 * (rHbar * (Ub / (6 * DT * Z ^ 2))) +
        24 * pihi * Z ^ 2 * G2 * (nbar * SYb + pihi * (SYb * c3)) + 24 * pihi * Z ^ 2 * G2 * (pihi * minb) +
        (24 * pihi * Z ^ 2 * G2 * (a * (5 * (Y1 * eW / 6)) + rHbar * (2 * m)) + Y1 * eN * Z ^ 2 * G2) := by
      rw [hRB]; ring
    rw [e]; linarith only [T1, T3, T5, T6, T7]
  have hRB0 : 0 ≤ RB := by rw [hRB]; positivity
  have hZ2 : 0 < Z ^ 2 := by positivity
  have hfin : 24 * pihi * RB < YY / Z ^ 2 - Y1 * eN := by
    have h1 : (24 * pihi * RB + Y1 * eN) * (Z ^ 2 * G2) < YY / Z ^ 2 * (Z ^ 2 * G2) := by
      have : YY / Z ^ 2 * (Z ^ 2 * G2) = YY * G2 := by field_simp
      rw [this]; linarith only [hkey, hcheck]
    have h2 := lt_of_mul_lt_mul_right h1 (by positivity)
    linarith only [h2]
  have h24 : RB * (24 * Real.pi) ≤ 24 * pihi * RB := by nlinarith only [hpi, hRB0]
  have hlt : a * SVJ + rH * Bn + n * SY2 + Real.pi * brk < (YY / Z ^ 2 - Y1 * eN) / (24 * Real.pi) := by
    rw [lt_div_iff₀ (by positivity)]
    have := mul_le_mul_of_nonneg_right hRHS (by positivity : (0:ℝ) ≤ 24 * Real.pi)
    linarith only [this, h24, hfin]
  exact hlt.trans_le hL

set_option maxHeartbeats 4000000 in
/-- **The real-number core of the tangent test.**  Integer data enter as reals: `wt`, `s` the Gaussian-integer node
values and column sums (scale `Z`), `y = ‖s‖² − 6Z²` the multiplier, `Th = DT·T` the frame. -/
theorem tang_real {P : RMat6} {u : I6 → ℝ} {Z ε1 E : ℝ} (hZ : 0 < Z) (hε : 0 ≤ ε1)
    {wt : I6 → I6 → ℂ} {s : I6 → ℂ}
    (hw : ∀ j i, ‖wt j i / (Z : ℂ) - wexp P u j i‖ ≤ ε1) (hs : ∀ i, ‖s i / (Z : ℂ) - sigma P u i‖ ≤ E)
    {y : I6 → ℝ} (hy : ∀ i, y i = ‖s i‖ ^ 2 - 6 * Z ^ 2)
    {T : Fin 4 → RMat6} {Th : Fin 4 → I6 → I6 → ℝ} {DT tcol : ℝ} (hDT : 0 < DT)
    (hT : ∀ k j i, T k j i = Th k j i / DT) (htcol : ∀ k i, ∑ j, |Th k j i| ≤ tcol * DT)
    {SV6 Ub SQ Yinf Y1 YY ke : ℝ}
    (hSV : SV6 = 6 * ∑ j ∈ Finset.univ.erase j0, |∑ i, y i * (star (s i) * wt j i).im|)
    (hUb0 : 0 ≤ Ub) (hUb : ∑ k, (∑ i, y i * ∑ j, Th k j i * (star (s i) * wt j i).im) ^ 2 ≤ Ub ^ 2)
    (hSQ0 : 0 ≤ SQ) (hke : E * (12 + E) * Z ^ 2 ≤ ke) (hSQ : ∑ i, y i ^ 2 * ‖s i‖ ^ 2 + ke * YY ≤ SQ ^ 2)
    (hYinf : ∀ i, |y i| ≤ Yinf) (hY1 : Y1 = ∑ i, |y i|) (hYY : YY = ∑ i, y i ^ 2)
    {a pihi i6hi x29hi Kbar rbar rFbar rHbar nbar kV kU kQ kA kB k1 G2 : ℝ} (ha : 0 ≤ a) (hG2 : 0 < G2)
    (hpi : Real.pi ≤ pihi) (hi6 : 1 / Real.sqrt 6 ≤ i6hi) (hx29 : Real.sqrt (29 / 6) ≤ x29hi)
    (hkV : 2 / 3 * pihi * a * G2 ≤ kV) (hkU : 4 * pihi * rHbar * G2 / DT ≤ kU)
    (hkQ : 24 * pihi * Z * i6hi * (nbar + pihi * (Kbar * (3 / 2 * a) * (x29hi * a) + 2 * i6hi * (x29hi * a) * rFbar +
      i6hi * rFbar ^ 2)) * G2 ≤ kQ)
    (hkA : 24 * pihi ^ 2 * Z ^ 2 * (Kbar * (x29hi * a) + rFbar) ^ 2 * G2 ≤ kA)
    (hkB : 24 * pihi ^ 2 * Z ^ 2 * (Kbar * (x29hi * a) + rbar) ^ 2 * G2 ≤ kB)
    (hk1 : (20 * pihi * a * ((6 + E) * ε1 + E) + 8 * pihi * rHbar * ((6 + E) * ε1 + E) * tcol + E * (12 + E)) *
      Z ^ 2 * G2 ≤ k1)
    (hcheck : kV * SV6 + kU * Ub + kQ * SQ + min (kA * Yinf) (kB * Y1) + k1 * Y1 < YY * G2)
    {K r rF rH n : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ Kbar) (hr : r ≤ rbar) (hrF : rF ≤ rFbar) (hrH : rH ≤ rHbar) (hn : n ≤ nbar) :
    ∀ δ, Admissible T rH n r rF δ → LeafRej ((1 / (2 * Real.pi)) • P) δ u a := by
  intro δ ⟨⟨η, ν, hδ, hη, hν⟩, hrc, hrFc⟩
  set P' := (1 / (2 * Real.pi)) • P with hP'
  have hpi0 := Real.pi_pos
  have h6 := sqrt6_pos
  have hE : 0 ≤ E := (norm_nonneg _).trans (hs j0)
  set eW := (6 + E) * ε1 + E with heW
  set eN := E * (12 + E) with heN
  have heW0 : 0 ≤ eW := by positivity
  have heN0 : 0 ≤ eN := by positivity
  have hrH0 : 0 ≤ rH := (Real.sqrt_nonneg _).trans hη
  have hn0 : 0 ≤ n := (frob_nonneg _).trans hν
  have hr0 : 0 ≤ r := (vnorm_nonneg _).trans (hrc j0)
  have hrF0 : 0 ≤ rF := (frob_nonneg _).trans hrFc
  have hY10 : 0 ≤ Y1 := by rw [hY1]; positivity
  have hYinf0 : 0 ≤ Yinf := (abs_nonneg _).trans (hYinf j0)
  have hYY0 : 0 ≤ YY := by rw [hYY]; positivity
  have hpihi0 : 0 ≤ pihi := by linarith
  have hi60 : 0 ≤ i6hi := (by positivity : (0:ℝ) ≤ 1 / Real.sqrt 6).trans hi6
  have hx0 : 0 ≤ x29hi := (Real.sqrt_nonneg _).trans hx29
  have hZ2 : 0 < Z ^ 2 := by positivity
  have htcol0 : 0 ≤ tcol := by
    have := htcol 0 j0
    have h0 : 0 ≤ ∑ j, |Th 0 j j0| := Finset.sum_nonneg fun j _ => abs_nonneg _
    by_contra hc; push_neg at hc; nlinarith
  set Jt : I6 → I6 → ℝ := fun i j => (star (s i) * wt j i).im with hJt
  have hJ : ∀ i j, |6 * Jm P' u i j + Jt i j / Z ^ 2| ≤ eW := fun i j => J_err hZ hw hs hε i j
  -- (B) the x-term
  have hB1 : ∀ j, |Jty P' u y j| ≤ |∑ i, y i * Jt i j| / (6 * Z ^ 2) + Y1 * eW / 6 := by
    intro j
    have e : 6 * Jty P' u y j + (∑ i, y i * Jt i j) / Z ^ 2 = ∑ i, y i * (6 * Jm P' u i j + Jt i j / Z ^ 2) := by
      simp only [Jty, Finset.mul_sum, Finset.sum_div, ← Finset.sum_add_distrib]
      exact Finset.sum_congr rfl fun i _ => by ring
    have hb : |6 * Jty P' u y j + (∑ i, y i * Jt i j) / Z ^ 2| ≤ Y1 * eW := by
      rw [e, hY1, Finset.sum_mul]
      refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i _ => ?_)
      rw [abs_mul]; exact mul_le_mul_of_nonneg_left (hJ i j) (abs_nonneg _)
    have h2 : |(∑ i, y i * Jt i j) / Z ^ 2| = |∑ i, y i * Jt i j| / Z ^ 2 := by rw [abs_div, abs_of_pos hZ2]
    have h5 : 6 * |Jty P' u y j| ≤ Y1 * eW + |∑ i, y i * Jt i j| / Z ^ 2 := by
      have h6 : |6 * Jty P' u y j| = 6 * |Jty P' u y j| := by rw [abs_mul]; norm_num
      have h7 := abs_sub (6 * Jty P' u y j + (∑ i, y i * Jt i j) / Z ^ 2) ((∑ i, y i * Jt i j) / Z ^ 2)
      rw [add_sub_cancel_right, h6, h2] at h7
      linarith
    have h8 : |∑ i, y i * Jt i j| / (6 * Z ^ 2) = |∑ i, y i * Jt i j| / Z ^ 2 / 6 := by rw [div_div, mul_comm]
    rw [h8]; linarith
  have hB2 : ∑ j ∈ Finset.univ.erase j0, |Jty P' u y j| ≤ SV6 / (36 * Z ^ 2) + 5 * (Y1 * eW / 6) := by
    calc ∑ j ∈ Finset.univ.erase j0, |Jty P' u y j|
        ≤ ∑ j ∈ Finset.univ.erase j0, (|∑ i, y i * Jt i j| / (6 * Z ^ 2) + Y1 * eW / 6) :=
          Finset.sum_le_sum fun j _ => hB1 j
      _ = _ := by
          rw [sum_erase_card, hSV, ← Finset.sum_div]; field_simp; try ring
  -- (C) the δ-term
  set m := Y1 * eW * tcol / 6 with hm
  have hC1 : ∀ k, |Bty P' u y T k + (∑ i, y i * ∑ j, Th k j i * Jt i j) / (6 * DT * Z ^ 2)| ≤ m := by
    intro k
    have e1 : 6 * DT * Bty P' u y T k = ∑ i, y i * ∑ j, Th k j i * (6 * Jm P' u i j) := by
      simp only [Bty, hT, Finset.mul_sum]
      refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
      field_simp
    have e2 : 6 * DT * ((∑ i, y i * ∑ j, Th k j i * Jt i j) / (6 * DT * Z ^ 2)) =
        ∑ i, y i * ∑ j, Th k j i * (Jt i j / Z ^ 2) := by
      rw [mul_div_assoc', mul_comm (6 * DT), ← div_div, mul_div_cancel_right₀ _ (by positivity), Finset.sum_div]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [mul_div_assoc, Finset.sum_div]
      exact congrArg _ (Finset.sum_congr rfl fun j _ => by ring)
    have e : 6 * DT * (Bty P' u y T k + (∑ i, y i * ∑ j, Th k j i * Jt i j) / (6 * DT * Z ^ 2)) =
        ∑ i, y i * ∑ j, Th k j i * (6 * Jm P' u i j + Jt i j / Z ^ 2) := by
      rw [mul_add, e1, e2, ← Finset.sum_add_distrib]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [← mul_add, ← Finset.sum_add_distrib]
      exact congrArg _ (Finset.sum_congr rfl fun j _ => by ring)
    have hb : |∑ i, y i * ∑ j, Th k j i * (6 * Jm P' u i j + Jt i j / Z ^ 2)| ≤ Y1 * (tcol * DT) * eW := by
      rw [hY1, Finset.sum_mul, Finset.sum_mul]
      refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i _ => ?_)
      rw [abs_mul, mul_assoc]
      refine mul_le_mul_of_nonneg_left ?_ (abs_nonneg _)
      refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
      calc ∑ j, |Th k j i * (6 * Jm P' u i j + Jt i j / Z ^ 2)| ≤ ∑ j, |Th k j i| * eW :=
            Finset.sum_le_sum fun j _ => by rw [abs_mul]; exact mul_le_mul_of_nonneg_left (hJ i j) (abs_nonneg _)
        _ = (∑ j, |Th k j i|) * eW := by rw [Finset.sum_mul]
        _ ≤ tcol * DT * eW := mul_le_mul_of_nonneg_right (htcol k i) heW0
    rw [← e, abs_mul, abs_of_pos (by positivity : (0:ℝ) < 6 * DT)] at hb
    rw [hm, le_div_iff₀ (by norm_num : (0:ℝ) < 6)]
    nlinarith
  have hm0 : 0 ≤ m := (abs_nonneg _).trans (hC1 0)
  have hC2 : Real.sqrt (∑ k, Bty P' u y T k ^ 2) ≤ Ub / (6 * DT * Z ^ 2) + 2 * m := by
    set f : Fin 4 → ℝ := fun k => -((∑ i, y i * ∑ j, Th k j i * Jt i j) / (6 * DT * Z ^ 2))
    set g : Fin 4 → ℝ := fun k => Bty P' u y T k + (∑ i, y i * ∑ j, Th k j i * Jt i j) / (6 * DT * Z ^ 2)
    have hfg : ∀ k, Bty P' u y T k = f k + g k := fun k => by simp only [f, g]; ring
    simp only [hfg]
    refine (sqrt_sum_add_le f g).trans (add_le_add ?_ ?_)
    · have hD : (0 : ℝ) < 6 * DT * Z ^ 2 := by positivity
      have e : ∑ k, f k ^ 2 = (∑ k, (∑ i, y i * ∑ j, Th k j i * Jt i j) ^ 2) / (6 * DT * Z ^ 2) ^ 2 := by
        rw [Finset.sum_div]; exact Finset.sum_congr rfl fun k _ => by simp only [f]; rw [neg_sq, div_pow]
      rw [e, Real.sqrt_div' _ (by positivity), Real.sqrt_sq hD.le]
      apply div_le_div_of_nonneg_right _ hD.le
      calc Real.sqrt _ ≤ Real.sqrt (Ub ^ 2) := Real.sqrt_le_sqrt hUb
        _ = Ub := Real.sqrt_sq hUb0
    · have e : ∑ k, g k ^ 2 ≤ ∑ _k : Fin 4, m ^ 2 := Finset.sum_le_sum fun k _ => by
        rw [← sq_abs]; exact pow_le_pow_left₀ (abs_nonneg _) (hC1 k) 2
      rw [Finset.sum_const, Finset.card_univ, Fintype.card_fin] at e
      calc Real.sqrt (∑ k, g k ^ 2) ≤ Real.sqrt ((2 * m) ^ 2) := Real.sqrt_le_sqrt (by simp at e; nlinarith)
        _ = 2 * m := Real.sqrt_sq (by positivity)
  -- (D) the left side
  have hD : (YY / Z ^ 2 - Y1 * eN) / (24 * Real.pi) ≤ |∑ i, y i * cc P' u i| := by
    refine le_trans ?_ (le_abs_self _)
    have e : ∑ i, y i * cc P' u i = (∑ i, y i * (‖sigma P u i‖ ^ 2 - 6)) / (24 * Real.pi) := by
      rw [Finset.sum_div]; exact Finset.sum_congr rfl fun i _ => by rw [cc_cyc]; ring
    rw [e]
    apply div_le_div_of_nonneg_right _ (by positivity)
    have e2 : ∑ i, y i * (‖sigma P u i‖ ^ 2 - 6) =
        YY / Z ^ 2 + ∑ i, y i * (‖sigma P u i‖ ^ 2 - ‖s i‖ ^ 2 / Z ^ 2) := by
      rw [hYY, Finset.sum_div, ← Finset.sum_add_distrib]
      refine Finset.sum_congr rfl fun i _ => ?_
      have := hy i
      field_simp
      rw [this]; ring
    have e3 : -(Y1 * eN) ≤ ∑ i, y i * (‖sigma P u i‖ ^ 2 - ‖s i‖ ^ 2 / Z ^ 2) := by
      have : |∑ i, y i * (‖sigma P u i‖ ^ 2 - ‖s i‖ ^ 2 / Z ^ 2)| ≤ Y1 * eN := by
        rw [hY1, Finset.sum_mul]
        refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun i _ => ?_)
        rw [abs_mul]; exact mul_le_mul_of_nonneg_left (N_err hZ hs i) (abs_nonneg _)
      linarith [neg_abs_le (∑ i, y i * (‖sigma P u i‖ ^ 2 - ‖s i‖ ^ 2 / Z ^ 2))]
    linarith
  -- (E) the `S∘y` norm
  set SY2 := vnorm (fun i => |y i| * ‖S P' u i‖) with hSY2def
  have hSY20 : 0 ≤ SY2 := vnorm_nonneg _
  have hE1 : SY2 ≤ i6hi * SQ / Z := by
    have hsq : ∑ i, (|y i| * ‖S P' u i‖) ^ 2 ≤ (SQ / (Real.sqrt 6 * Z)) ^ 2 := by
      have h1 : ∀ i, (|y i| * ‖S P' u i‖) ^ 2 ≤ y i ^ 2 * (‖s i‖ ^ 2 / Z ^ 2 + eN) / 6 := by
        intro i
        rw [mul_pow, sq_abs, normSq_S_cyc]
        have := (abs_le.mp (N_err hZ hs i)).2
        have hy2 := sq_nonneg (y i)
        rw [mul_div_assoc]
        exact mul_le_mul_of_nonneg_left (by linarith) hy2
      refine (Finset.sum_le_sum fun i _ => h1 i).trans ?_
      rw [div_pow, mul_pow, Real.sq_sqrt (by norm_num)]
      have e : ∑ i, y i ^ 2 * (‖s i‖ ^ 2 / Z ^ 2 + eN) / 6 = (∑ i, y i ^ 2 * ‖s i‖ ^ 2 + eN * Z ^ 2 * YY) / (6 * Z ^ 2) := by
        rw [hYY, Finset.mul_sum, ← Finset.sum_add_distrib, Finset.sum_div]
        exact Finset.sum_congr rfl fun i _ => by field_simp; try ring
      rw [e]
      apply div_le_div_of_nonneg_right _ (by positivity)
      nlinarith [mul_le_mul_of_nonneg_right hke hYY0]
    have h2 : SY2 ≤ SQ / (Real.sqrt 6 * Z) := by
      rw [hSY2def, vnorm]
      calc Real.sqrt _ ≤ Real.sqrt ((SQ / (Real.sqrt 6 * Z)) ^ 2) := Real.sqrt_le_sqrt hsq
        _ = _ := Real.sqrt_sq (by positivity)
    calc SY2 ≤ SQ / (Real.sqrt 6 * Z) := h2
      _ = 1 / Real.sqrt 6 * SQ / Z := by field_simp
      _ ≤ i6hi * SQ / Z := by gcongr
  -- (F) `N_y ≤ SY2`
  have hF : Real.sqrt (∑ i, ∑ j, (y i * Jm P' u i j) ^ 2) ≤ SY2 := by
    rw [hSY2def, vnorm]
    apply Real.sqrt_le_sqrt
    refine Finset.sum_le_sum fun i _ => ?_
    simp only [mul_pow, ← Finset.mul_sum, sq_abs]
    exact mul_le_mul_of_nonneg_left (sum_Jm_sq_le P' u i) (sq_nonneg _)
  -- apply the linear test
  refine leafRej_of_linear (Yinf := Yinf) (Y1 := Y1) (G := ∑ i, |y i| * ‖S P' u i‖ * (1 / Real.sqrt 6))
    (SY2 := SY2) (SY1 := ∑ i, |y i| * ‖S P' u i‖) (SYinf := SY2) (Bn := Real.sqrt (∑ k, Bty P' u y T k ^ 2))
    (N := SY2) ha hδ hη hν hrc hrFc hK0 hK hYinf (le_of_eq hY1.symm) ?_ le_rfl le_rfl
    (fun i => abs_le_vnorm (fun i => |y i| * ‖S P' u i‖) i |>.trans' (le_of_eq (abs_of_nonneg (by positivity)).symm))
    le_rfl hF ?_
  · intro j
    refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun i _ => le_of_eq ?_)
    rw [norm_mul, norm_mul, norm_star, Complex.norm_real, Real.norm_eq_abs, norm_q]
  · exact tang_final ha hG2 hpi hi6 hx29 hkV hkU hkQ hkA hkB hk1 hcheck hK0 hKb hr0 hr hrF0 hrF hrH0 hrH hn0 hn
      hZ hDT hE hε hY10 hYinf0 hYY0 hUb0 hSQ0 (by rw [hSV]; positivity) (Real.sqrt_nonneg _) hSY20
      (by positivity) (by positivity) htcol0 hB2 hC2 hE1 hD

/-! ### Assembly: one bin -/

lemma pkN_re (tc : TCfg) (j : I6) (v : V12) (i : I6) : (pkN tc j v).re i = v.re i * tc.TP j i := by
  rcases i with i | i <;> fin_cases i <;> rfl

lemma pkN_im (tc : TCfg) (j : I6) (v : V12) (i : I6) : (pkN tc j v).im i = v.im i * tc.TP j i := by
  rcases i with i | i <;> fin_cases i <;> rfl

/-- The six rows of a bin. -/
def rowv (W0 : V12) (t1 t2 t3 t4 t5 : CT) : I6 → V12
  | .inl 0 => W0 | .inl 1 => t1.v | .inl 2 => t2.v | .inr 0 => t3.v | .inr 1 => t4.v | .inr 2 => t5.v

def rowk (t1 t2 t3 t4 t5 : CT) : I6 → ℕ
  | .inl 0 => 0 | .inl 1 => t1.k | .inl 2 => t2.k | .inr 0 => t3.k | .inr 1 => t4.k | .inr 2 => t5.k

lemma acc_rows (W0 : V12) (t1 t2 t3 t4 t5 : CT) (i : I6) :
    ((sumAcc W0 t1 t2 t3 t4 t5).re i : ℤ) = ∑ j, ((rowv W0 t1 t2 t3 t4 t5 j).re i : ℤ) ∧
    ((sumAcc W0 t1 t2 t3 t4 t5).im i : ℤ) = ∑ j, ((rowv W0 t1 t2 t3 t4 t5 j).im i : ℤ) := by
  simp only [sumAcc, V12.add_re, V12.add_im, sum_I6Z, rowv]; push_cast; constructor <;> ring

lemma pk_rows (c : Cfg) (tc : TCfg) (t1 t2 t3 t4 t5 : CT) (i : I6) :
    ((pkAcc c tc t1 t2 t3 t4 t5).re i : ℤ) = ∑ j, ((rowv c.W0 t1 t2 t3 t4 t5 j).re i : ℤ) * tc.TP j i ∧
    ((pkAcc c tc t1 t2 t3 t4 t5).im i : ℤ) = ∑ j, ((rowv c.W0 t1 t2 t3 t4 t5 j).im i : ℤ) * tc.TP j i := by
  simp only [pkAcc, P0, V12.addN_eq, V12.add_re, V12.add_im, pkN_re, pkN_im, sum_I6Z, rowv, j0, m1, m2, m3, m4, m5]
  push_cast; constructor <;> ring

lemma node_le {P : RMat6} {Z boff : ℕ} {ε1 : ℝ} {m : I6} {k : ℕ} {v : V12} (h : NodeOK P Z boff ε1 m k v)
    (hε : ε1 ≤ 1) (hB : boff = 2 * Z) (hZ0 : 0 < Z) (i : I6) : v.re i ≤ 2 * boff ∧ v.im i ≤ 2 * boff := by
  have hi := h i
  set w := e ((k : ℝ) / 192) * Complex.exp (((-P m i : ℝ) : ℂ) * Complex.I)
  have hw : ‖w‖ = 1 := by rw [norm_mul, norm_e, Complex.norm_exp_ofReal_mul_I, one_mul]
  have hn : ‖cval boff v i / (Z : ℂ)‖ ≤ 2 := by
    calc ‖cval boff v i / (Z : ℂ)‖ = ‖(cval boff v i / (Z : ℂ) - w) + w‖ := by ring_nf
      _ ≤ ‖cval boff v i / (Z : ℂ) - w‖ + ‖w‖ := norm_add_le _ _
      _ ≤ 2 := by rw [hw]; linarith
  have hZ : (0 : ℝ) < Z := by exact_mod_cast hZ0
  have hc : ‖cval boff v i‖ ≤ 2 * Z := by
    rw [norm_div, Complex.norm_natCast, div_le_iff₀ hZ] at hn; linarith
  have hre : |((v.re i : ℝ) - boff)| ≤ 2 * Z := by
    refine le_trans (le_of_eq ?_) ((Complex.abs_re_le_norm _).trans hc)
    simp [cval]
  have him : |((v.im i : ℝ) - boff)| ≤ 2 * Z := by
    refine le_trans (le_of_eq ?_) ((Complex.abs_im_le_norm _).trans hc)
    simp [cval]
  have hB' : (boff : ℝ) = 2 * Z := by exact_mod_cast hB
  constructor
  · have := (abs_le.mp hre).2; have : (v.re i : ℝ) ≤ 2 * boff := by linarith
    exact_mod_cast this
  · have := (abs_le.mp him).2; have : (v.im i : ℝ) ≤ 2 * boff := by linarith
    exact_mod_cast this

lemma xlv_bounds (tc : TCfg) (i : I6) {B : ℤ} {WR WI : I6 → ℤ} (hB0 : 0 ≤ B)
    (hb : ∀ j, 0 ≤ WR j ∧ WR j ≤ 2 * B ∧ 0 ≤ WI j ∧ WI j ≤ 2 * B)
    (hTp : ∀ k j, (tc.Tp k j i : ℤ) ≤ 2 * tc.OT) (hox : 288 * (tc.OT : ℤ) * B ^ 2 ≤ tc.ox) (hOT : 1 ≤ (tc.OT : ℤ)) :
    ∀ m, 0 ≤ xlv tc i B WR WI m ∧ xlv tc i B WR WI m ≤ 2 * tc.ox := by
  have hs : |∑ j, WR j - 6 * B| ≤ 6 * B ∧ |∑ j, WI j - 6 * B| ≤ 6 * B := by
    rw [sum_I6Z, sum_I6Z]
    have := hb (.inl 0); have := hb (.inl 1); have := hb (.inl 2)
    have := hb (.inr 0); have := hb (.inr 1); have := hb (.inr 2)
    constructor <;> rw [abs_le] <;> constructor <;> linarith
  have ha : ∀ j, |aJ B WR WI j| ≤ 24 * B ^ 2 := by
    intro j
    obtain ⟨h1, h2, h3, h4⟩ := hb j
    obtain ⟨s1, s2⟩ := abs_le.mp hs.1
    obtain ⟨u1, u2⟩ := abs_le.mp hs.2
    unfold aJ
    set sr := ∑ j', WR j' - 6 * B
    set si := ∑ j', WI j' - 6 * B
    rw [abs_le]; constructor <;> nlinarith [mul_nonneg (by linarith : (0:ℤ) ≤ sr + 6 * B) h3,
      mul_nonneg (by linarith : (0:ℤ) ≤ 6 * B - sr) h3, mul_nonneg (by linarith : (0:ℤ) ≤ si + 6 * B) h1,
      mul_nonneg (by linarith : (0:ℤ) ≤ 6 * B - si) h1, mul_nonneg (by linarith : (0:ℤ) ≤ 6 * B - sr) (by linarith : (0:ℤ) ≤ 2 * B - WI j),
      mul_nonneg (by linarith : (0:ℤ) ≤ sr + 6 * B) (by linarith : (0:ℤ) ≤ 2 * B - WI j),
      mul_nonneg (by linarith : (0:ℤ) ≤ 6 * B - si) (by linarith : (0:ℤ) ≤ 2 * B - WR j),
      mul_nonneg (by linarith : (0:ℤ) ≤ si + 6 * B) (by linarith : (0:ℤ) ≤ 2 * B - WR j)]
  have h24 : 24 * B ^ 2 ≤ tc.ox := by nlinarith [sq_nonneg B]
  intro m
  unfold xlv
  split_ifs with hm
  · have := abs_le.mp (ha (rowOf m)); constructor <;> linarith
  · have hsum : |∑ j, (tc.Tp (m - 6) j i : ℤ) * aJ B WR WI j| ≤ 288 * tc.OT * B ^ 2 := by
      calc |∑ j, (tc.Tp (m - 6) j i : ℤ) * aJ B WR WI j| ≤ ∑ j, |(tc.Tp (m - 6) j i : ℤ) * aJ B WR WI j| :=
            Finset.abs_sum_le_sum_abs _ _
        _ ≤ ∑ _j : I6, 2 * (tc.OT : ℤ) * (24 * B ^ 2) := Finset.sum_le_sum fun j _ => by
            rw [abs_mul, abs_of_nonneg (by positivity)]
            exact mul_le_mul (hTp _ j) (ha j) (abs_nonneg _) (by positivity)
        _ = 288 * tc.OT * B ^ 2 := by rw [Finset.sum_const, Finset.card_univ, card_I6]; simp; ring
    have := abs_le.mp hsum; constructor <;> linarith

lemma im_star_mul (a b c d : ℝ) :
    (star ((a : ℂ) + (b : ℂ) * Complex.I) * ((c : ℂ) + (d : ℂ) * Complex.I)).im = a * d - b * c := by
  simp [Complex.mul_im]; ring

set_option maxHeartbeats 4000000 in
/-- **Soundness of the tangent test**: a bin accepted by `tangB` is rejected (`LeafRej`) for every admissible `δ`
of the exact frame `Tmat`. -/
theorem tangB_sound {P : RMat6} {c : Cfg} {pq : ParQ} {tc : TCfg} {tq : TParQ} (hp : ParOK c pq)
    (ht : TParOK c pq tc tq) {d : ℕ} (hd : d ≤ 3)
    (hW : NodeOK P c.Z c.boff pq.eps1 j0 0 c.W0) {t1 t2 t3 t4 t5 : CT}
    (h1 : NodeOK P c.Z c.boff pq.eps1 m1 t1.k t1.v) (h2 : NodeOK P c.Z c.boff pq.eps1 m2 t2.k t2.v)
    (h3 : NodeOK P c.Z c.boff pq.eps1 m3 t3.k t3.v) (h4 : NodeOK P c.Z c.boff pq.eps1 m4 t4.k t4.v)
    (h5 : NodeOK P c.Z c.boff pq.eps1 m5 t5.k t5.v)
    (h : tangB c tc d (sumAcc c.W0 t1 t2 t3 t4 t5) (pkAcc c tc t1 t2 t3 t4 t5) = true)
    {rH n r rF K : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq.rHbar) (hn : n ≤ tq.nbar) :
    ∀ δ, Admissible (Tmat tc tq) rH n r rF δ →
      LeafRej ((1 / (2 * Real.pi)) • P) δ (uvec t1.k t2.k t3.k t4.k t5.k) ((2 : ℝ) ^ d / 192) := by
  have F := realFacts hp
  obtain ⟨hR, hOT, hlen, hBZ, he1, hTpB, hTpS, hox, hog, hRog, hsix, h6og, hOX, hOG, hc1, hc0, hDT, hrH0, hn0, hke,
    htcolB, hL0, hL1, hL2, hL3⟩ := ht
  have hpar := hp
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, -, -, hZpos, hsixZ, -⟩ := hpar
  set B := c.boff with hBdef
  set acc := sumAcc c.W0 t1 t2 t3 t4 t5 with hacc
  set pk := pkAcc c tc t1 t2 t3 t4 t5 with hpk
  set row := rowv c.W0 t1 t2 t3 t4 t5 with hrow
  have hrowOK : ∀ j, NodeOK P c.Z B pq.eps1 j (rowk t1 t2 t3 t4 t5 j) (row j) := by
    intro j; rcases j with j | j <;> fin_cases j
    exacts [hW, h1, h2, h3, h4, h5]
  have he1r : (pq.eps1 : ℝ) ≤ 1 := by exact_mod_cast he1
  have hbnd : ∀ j i, (row j).re i ≤ 2 * B ∧ (row j).im i ≤ 2 * B := fun j i => node_le (hrowOK j) he1r hBZ hZpos i
  -- the Nat side conditions as integer facts
  have hTpZ : ∀ k j i, (tc.Tp k j i : ℤ) ≤ 2 * tc.OT := by
    intro k j i
    rcases lt_or_ge k 4 with hk | hk
    · have := allI6_spec (allI6_spec (allNat_spec hTpB k hk) j) i
      exact_mod_cast Nat.le_of_ble_eq_true this
    · rw [Tp_zero hlen hk]; push_cast; omega
  have hTpS' : ∀ k < 4, ∀ i, ∑ j, (tc.Tp k j i : ℤ) = 6 * tc.OT := by
    intro k hk i
    have := Nat.eq_of_beq_eq_true (allI6_spec (allNat_spec hTpS k hk) i)
    unfold sum6 at this; zify at this; rw [sum_I6Z]; linarith
  have hBZ0 : (0 : ℤ) ≤ B := by positivity
  have hRz : 0 < tc.R := hR
  -- the six columns
  set N : I6 → ℕ := fun i => nsq (6 * B) (acc.re i) (acc.im i) with hNdef
  set X : I6 → ℕ := fun i => colX tc.OX (6 * B) (acc.re i) (acc.im i) (pk.re i) (pk.im i) with hXdef
  set f : I6 → ℕ → ℤ := fun i => xlv tc i B (fun j => ((row j).re i : ℤ)) (fun j => ((row j).im i : ℤ)) with hfdef
  have hf : ∀ i m, 0 ≤ f i m ∧ f i m ≤ 2 * tc.ox := by
    intro i
    refine xlv_bounds tc i hBZ0 (fun j => ⟨by positivity, by exact_mod_cast (hbnd j i).1, by positivity,
      by exact_mod_cast (hbnd j i).2⟩) (fun k j => hTpZ k j i) (by exact_mod_cast hox) (by exact_mod_cast hOT)
  have hB1 : 1 ≤ B := by omega
  have hoxog : tc.ox ≤ tc.og := le_trans (Nat.le_mul_of_pos_left _ (by positivity)) hog
  have hox2 : 2 * (tc.ox : ℤ) < tc.R := by
    have : 2 * tc.ox < tc.R := by omega
    exact_mod_cast this
  have hXpv : ∀ i, (X i : ℤ) = pv tc.R 10 (f i) := by
    intro i
    have hfb : ∀ m, 0 ≤ f i m ∧ f i m < tc.R := fun m => ⟨(hf i m).1, by linarith [(hf i m).2]⟩
    exact colX_pv tc i B (acc.re i) (acc.im i) (pk.re i) (pk.im i) (fun j => (row j).re i) (fun j => (row j).im i)
      (acc_rows c.W0 t1 t2 t3 t4 t5 i).1 (acc_rows c.W0 t1 t2 t3 t4 t5 i).2
      (pk_rows c tc t1 t2 t3 t4 t5 i).1 (pk_rows c tc t1 t2 t3 t4 t5 i).2
      (by rw [hOX, geo10]; simp only [Finset.sum_range_succ, Finset.sum_range_zero]; push_cast; ring)
      (pv_lt (by exact_mod_cast hRz) hfb 10).1
  have hsr : ∀ i, (acc.re i : ℤ) - 6 * B = ∑ j, (((row j).re i : ℤ) - B) ∧
      (acc.im i : ℤ) - 6 * B = ∑ j, (((row j).im i : ℤ) - B) := by
    intro i; rw [(acc_rows c.W0 t1 t2 t3 t4 t5 i).1, (acc_rows c.W0 t1 t2 t3 t4 t5 i).2, sum_I6Z, sum_I6Z,
      sum_I6Z, sum_I6Z]; constructor <;> ring
  have hNz : ∀ i, (N i : ℤ) = ((acc.re i : ℤ) - 6 * B) ^ 2 + ((acc.im i : ℤ) - 6 * B) ^ 2 := by
    intro i; rw [hNdef]; simp only; rw [nsq_int]; push_cast; ring
  have hNY : ∀ i, |(N i : ℤ) - c.six| ≤ 72 * (B : ℤ) ^ 2 := by
    intro i
    have b6 : ∀ (g : I6 → ℤ), (∀ j, |g j| ≤ B) → |∑ j, g j| ≤ 6 * B := by
      intro g hg
      calc |∑ j, g j| ≤ ∑ j, |g j| := Finset.abs_sum_le_sum_abs _ _
        _ ≤ ∑ _j : I6, (B : ℤ) := Finset.sum_le_sum fun j _ => hg j
        _ = 6 * B := by rw [Finset.sum_const, Finset.card_univ, card_I6]; simp
    have e1 := b6 (fun j => ((row j).re i : ℤ) - B) (fun j => by
      rw [abs_le]; have := (hbnd j i).1; constructor <;> push_cast <;> omega)
    have e2 := b6 (fun j => ((row j).im i : ℤ) - B) (fun j => by
      rw [abs_le]; have := (hbnd j i).2; constructor <;> push_cast <;> omega)
    rw [← (hsr i).1] at e1; rw [← (hsr i).2] at e2
    have hs6 : (c.six : ℤ) ≤ 72 * B ^ 2 := by exact_mod_cast hsix
    rw [hNz, abs_le]
    have q1 := sq_abs ((acc.re i : ℤ) - 6 * B); have q2 := sq_abs ((acc.im i : ℤ) - 6 * B)
    have a1 := abs_nonneg ((acc.re i : ℤ) - 6 * B); have a2 := abs_nonneg ((acc.im i : ℤ) - 6 * B)
    constructor <;> nlinarith
  have hX' : tangB c tc d acc pk = tY c.six tc (tc.lv d) (N (.inl 0)) (N (.inl 1)) (N (.inl 2)) (N (.inr 0))
      (N (.inr 1)) (N (.inr 2)) (X (.inl 0)) (X (.inl 1)) (X (.inl 2)) (X (.inr 0)) (X (.inr 1)) (X (.inr 2)) := rfl
  rw [hX'] at h
  obtain ⟨SN, YY, Y1, Yinf, Q, S1, X1, hSN, hYY, hY1, hYinf, hQ, hS1, hX1, hfin⟩ := tY_sound N X f hRz hXpv hf hNY
    (by push_cast; exact_mod_cast hog) (by exact_mod_cast hRog)
    (by rw [hOG, geo10]; simp only [Finset.sum_range_succ, Finset.sum_range_zero]; push_cast; ring) h
  obtain ⟨I1, I2⟩ := lanes_interp tc B c.six (fun j i => ((row j).re i : ℤ)) (fun j i => ((row j).im i : ℤ))
    (fun i => (N i : ℤ)) hTpS'
  have hc1' : (tc.c1 : ℤ) = (6 * tc.OT - 1) * tc.ox := by
    rw [hc1]; push_cast [Nat.cast_sub (by omega : 1 ≤ 6 * tc.OT)]; ring
  have hc0' : (tc.c0 : ℤ) = (6 * tc.OT - 1) * (tc.og - 6 * tc.ox * c.six) := by
    rw [hc0]; push_cast [Nat.cast_sub (by omega : 1 ≤ 6 * tc.OT), Nat.cast_sub h6og]; ring
  set Jt : I6 → I6 → ℤ := fun i j => (∑ j', ((row j').re i : ℤ) - 6 * B) * (((row j).im i : ℤ) - B) -
    (∑ j', ((row j').im i : ℤ) - 6 * B) * (((row j).re i : ℤ) - B) with hJtdef
  have hS1' : S1 = 6 * ∑ j ∈ Finset.univ.erase j0, |∑ i, ((N i : ℤ) - c.six) * Jt i j| := hS1.trans I1
  have hX1' : X1 = ∑ k ∈ Finset.range 4, (∑ i, ((N i : ℤ) - c.six) * ∑ j, ((tc.Tp k j i : ℤ) - tc.OT) * Jt i j) ^ 2 :=
    hX1.trans (Finset.sum_congr rfl fun k hk =>
      congrArg (· ^ 2) (I2 _ _ _ hc1' hc0' hSN k (Finset.mem_range.mp hk)))
  -- the real-number data
  set wt : I6 → I6 → ℂ := fun j i => cval B (row j) i with hwt
  set s : I6 → ℂ := fun i => cval (6 * B) acc i with hs
  set y : I6 → ℝ := fun i => (((N i : ℤ) - c.six : ℤ) : ℝ) with hy
  have hJ : ∀ i j, (star (s i) * wt j i).im = ((Jt i j : ℤ) : ℝ) := by
    intro i j
    simp only [hs, hwt, cval, hJtdef]
    rw [im_star_mul]
    have e1 := (acc_rows c.W0 t1 t2 t3 t4 t5 i).1
    have e2 := (acc_rows c.W0 t1 t2 t3 t4 t5 i).2
    have e1' : ((acc.re i : ℕ) : ℝ) = ((∑ j', ((row j').re i : ℤ) : ℤ) : ℝ) := by exact_mod_cast e1
    have e2' : ((acc.im i : ℕ) : ℝ) = ((∑ j', ((row j').im i : ℤ) : ℤ) : ℝ) := by exact_mod_cast e2
    rw [e1', e2']; push_cast; ring
  have hZr : (0 : ℝ) < c.Z := by exact_mod_cast hZpos
  have hZc : ((c.Z : ℝ) : ℂ) = ((c.Z : ℕ) : ℂ) := Complex.ofReal_natCast c.Z
  have hw : ∀ j i, ‖wt j i / ((c.Z : ℝ) : ℂ) - wexp P (uvec t1.k t2.k t3.k t4.k t5.k) j i‖ ≤ pq.eps1 := by
    intro j i
    rw [hZc]
    have := hrowOK j i
    rcases j with j | j <;> fin_cases j <;> simpa [wexp, uvec, rowk, hwt] using this
  have hsE : ∀ i, ‖s i / ((c.Z : ℝ) : ℂ) - sigma P (uvec t1.k t2.k t3.k t4.k t5.k) i‖ ≤ pq.E := by
    intro i; rw [hZc]; exact acc_err hp hW h1 h2 h3 h4 h5 i
  have hyv : ∀ i, y i = ‖s i‖ ^ 2 - 6 * (c.Z : ℝ) ^ 2 := by
    intro i
    simp only [hy, hs, hNdef]
    rw [norm_sq_cval]
    have : (c.six : ℝ) = 6 * (c.Z : ℝ) ^ 2 := by exact_mod_cast hsixZ
    push_cast; rw [← this]
  have hDTr : (0 : ℝ) < tq.DT := by exact_mod_cast hDT
  have htcol : ∀ (k : Fin 4) i, ∑ j, |(((tc.Tp k j i : ℤ) - tc.OT : ℤ) : ℝ)| ≤ (tq.tcol : ℝ) * tq.DT := by
    intro k i
    have := of_decide_eq_true (allI6_spec (allNat_spec htcolB k.val k.isLt) i)
    unfold sum6Q at this
    have h' := (Rat.cast_le (K := ℝ)).mpr this
    push_cast at h'
    rw [sum_I6]; push_cast; linarith
  have hX1r : (0 : ℤ) ≤ X1 := by rw [hX1']; positivity
  -- the level coefficients
  have hlev : TLevelOK c pq tc tq d := by interval_cases d <;> assumption
  obtain ⟨lV, lU, lQ, lA, lB, l1⟩ := hlev
  have ahr : ((ahalf d : ℚ) : ℝ) = (2 : ℝ) ^ d / 192 := by unfold ahalf; push_cast; ring
  have cq : ∀ {x y : ℚ}, x ≤ y → (x : ℝ) ≤ y := fun h => by exact_mod_cast h
  refine tang_real (Z := (c.Z : ℝ)) (wt := wt) (s := s) (y := y) (Th := fun k j i => (((tc.Tp k j i : ℤ) - tc.OT : ℤ) : ℝ))
    (DT := (tq.DT : ℝ)) (tcol := (tq.tcol : ℝ)) (SV6 := (S1 : ℝ)) (Ub := Real.sqrt (X1 : ℝ))
    (SQ := Real.sqrt ((Q : ℝ) + tc.ke * YY)) (Yinf := (Yinf : ℝ)) (Y1 := (Y1 : ℝ)) (YY := (YY : ℝ)) (ke := (tc.ke : ℝ))
    (pihi := pq.pihi) (i6hi := pq.i6hi) (x29hi := pq.x29hi) (Kbar := pq.Kbar) (rbar := pq.rbar) (rFbar := pq.rFbar)
    (rHbar := tq.rHbar) (nbar := tq.nbar) (G2 := (2 : ℝ) ^ tc.g) hZr ?_ hw hsE hyv hDTr (fun k j i => rfl) htcol
    ?_ (Real.sqrt_nonneg _) ?_ (Real.sqrt_nonneg _) ?_ ?_ ?_ ?_ ?_ (by positivity) (by positivity) F.pi F.i6 F.x29
    ?_ ?_ ?_ ?_ ?_ ?_ hfin hK0 hK hKb hr hrF hrH hn
  · exact (norm_nonneg _).trans (hW (.inl 0))
  · -- SV6
    rw [hS1']; push_cast
    congr 1; refine Finset.sum_congr rfl fun j _ => ?_
    congr 1; refine Finset.sum_congr rfl fun i _ => ?_
    rw [hJ]; simp only [hy]; push_cast; ring
  · -- Ub
    rw [Real.sq_sqrt (by exact_mod_cast hX1r)]
    refine le_of_eq ((Fin.sum_univ_eq_sum_range (fun k => (∑ i, y i * ∑ j, (((tc.Tp k j i : ℤ) - tc.OT : ℤ) : ℝ) *
      (star (s i) * wt j i).im) ^ 2) 4).trans ?_)
    rw [hX1']; push_cast
    refine Finset.sum_congr rfl fun k _ => ?_
    congr 1; refine Finset.sum_congr rfl fun i _ => ?_
    simp only [hy, hJ]; push_cast; ring
  · have := (Rat.cast_le (K := ℝ)).mpr hke; push_cast at this; linarith
  · -- SQ
    rw [Real.sq_sqrt (by positivity)]
    have : ∑ i, y i ^ 2 * ‖s i‖ ^ 2 = (Q : ℝ) := by
      have hQr : (Q : ℝ) = ((∑ i, ((N i : ℤ) - c.six) ^ 2 * N i : ℤ) : ℝ) := by exact_mod_cast hQ
      rw [hQr]; push_cast
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [show ‖s i‖ ^ 2 = (N i : ℝ) by simp only [hs, hNdef]; rw [norm_sq_cval]]
      simp only [hy]; push_cast; ring
    linarith [this]
  · intro i; have := hYinf i; simp only [hy]; exact_mod_cast this
  · have : (Y1 : ℝ) = ((∑ i, |(N i : ℤ) - c.six| : ℤ) : ℝ) := by exact_mod_cast hY1
    rw [this]; simp only [hy]; push_cast; (try rfl)
  · have : (YY : ℝ) = ((∑ i, ((N i : ℤ) - c.six) ^ 2 : ℤ) : ℝ) := by exact_mod_cast hYY
    rw [this]; simp only [hy]; push_cast; (try rfl)
  · have := cq lV; push_cast [ahr] at this; linarith
  · have := cq lU; push_cast at this; linarith
  · have := cq lQ; push_cast [ahr] at this; linarith
  · have := cq lA; push_cast [ahr] at this; linarith
  · have := cq lB; push_cast [ahr] at this; linarith
  · have := cq l1; push_cast [ahr] at this; linarith

/-! ### The traversal -/

lemma tl5_mem {tc : TCfg} {ih : BinFnT} {a4 p4 : V12} {c1 c2 c3 c4 t5 c5 : CT}
    (h : tl5 tc ih a4 p4 c1 c2 c3 c4 t5 = true) (h5 : c5 = t5.l ∨ c5 = t5.r) :
    ih (a4.addN c5.v) (p4.addN (pkN tc m5 c5.v)) c1 c2 c3 c4 c5 = true := by
  unfold tl5 at h; rw [Bool.and_eq_true] at h; rcases h5 with rfl | rfl; exacts [h.1, h.2]

lemma tl4_mem {tc : TCfg} {ih : BinFnT} {a3 p3 : V12} {c1 c2 c3 t4 t5 c4 : CT}
    (h : tl4 tc ih a3 p3 c1 c2 c3 t4 t5 = true) (h4 : c4 = t4.l ∨ c4 = t4.r) :
    tl5 tc ih (a3.addN c4.v) (p3.addN (pkN tc m4 c4.v)) c1 c2 c3 c4 t5 = true := by
  unfold tl4 at h; rw [Bool.and_eq_true] at h; rcases h4 with rfl | rfl; exacts [h.1, h.2]

lemma tl3_mem {tc : TCfg} {ih : BinFnT} {a2 p2 : V12} {c1 c2 t3 t4 t5 c3 : CT}
    (h : tl3 tc ih a2 p2 c1 c2 t3 t4 t5 = true) (h3 : c3 = t3.l ∨ c3 = t3.r) :
    tl4 tc ih (a2.addN c3.v) (p2.addN (pkN tc m3 c3.v)) c1 c2 c3 t4 t5 = true := by
  unfold tl3 at h; rw [Bool.and_eq_true] at h; rcases h3 with rfl | rfl; exacts [h.1, h.2]

lemma tl2_mem {tc : TCfg} {ih : BinFnT} {a1 p1 : V12} {c1 t2 t3 t4 t5 c2 : CT}
    (h : tl2 tc ih a1 p1 c1 t2 t3 t4 t5 = true) (h2 : c2 = t2.l ∨ c2 = t2.r) :
    tl3 tc ih (a1.addN c2.v) (p1.addN (pkN tc m2 c2.v)) c1 c2 t3 t4 t5 = true := by
  unfold tl2 at h; rw [Bool.and_eq_true] at h; rcases h2 with rfl | rfl; exacts [h.1, h.2]

lemma kidsT_mem {c : Cfg} {tc : TCfg} {ih : BinFnT} {t1 t2 t3 t4 t5 c1 c2 c3 c4 c5 : CT}
    (h : kidsT c tc ih t1 t2 t3 t4 t5 = true) (h1 : c1 = t1.l ∨ c1 = t1.r) (h2 : c2 = t2.l ∨ c2 = t2.r)
    (h3 : c3 = t3.l ∨ c3 = t3.r) (h4 : c4 = t4.l ∨ c4 = t4.r) (h5 : c5 = t5.l ∨ c5 = t5.r) :
    ih (sumAcc c.W0 c1 c2 c3 c4 c5) (pkAcc c tc c1 c2 c3 c4 c5) c1 c2 c3 c4 c5 = true := by
  have hk : tl2 tc ih (c.W0.addN c1.v) ((P0 c tc).addN (pkN tc m1 c1.v)) c1 t2 t3 t4 t5 = true := by
    unfold kidsT at h; rw [Bool.and_eq_true] at h; rcases h1 with rfl | rfl; exacts [h.1, h.2]
  exact tl5_mem (tl4_mem (tl3_mem (tl2_mem hk h2) h3) h4) h5

lemma tStage_true {c : Cfg} {tc : TCfg} {on use : Bool} {d : ℕ} {acc pk : V12}
    (h : tStage c tc on use d acc pk = true) : tangB c tc d acc pk = true := by
  unfold tStage at h; simp only [Bool.and_eq_true] at h; exact h.2.1

/-- **Soundness of the recursive check with the tangent test.** -/
theorem binT_sound {P : RMat6} {c : Cfg} {pq : ParQ} {tc : TCfg} {tq : TParQ} (hp : ParOK c pq)
    (ht : TParOK c pq tc tq) (hW : NodeOK P c.Z c.boff pq.eps1 j0 0 c.W0)
    {rH n r rF K : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq.rHbar) (hn : n ≤ tq.nbar)
    (on use : Bool) (leafOK : LeafFn) :
    ∀ d, d ≤ 3 → ∀ t1 t2 t3 t4 t5 : CT,
      TreeOK P c.Z c.boff pq.eps1 m1 d t1 → TreeOK P c.Z c.boff pq.eps1 m2 d t2 →
      TreeOK P c.Z c.boff pq.eps1 m3 d t3 → TreeOK P c.Z c.boff pq.eps1 m4 d t4 →
      TreeOK P c.Z c.boff pq.eps1 m5 d t5 →
      binT c tc on use leafOK d (sumAcc c.W0 t1 t2 t3 t4 t5) (pkAcc c tc t1 t2 t3 t4 t5) t1 t2 t3 t4 t5 = true →
      ∀ β, InBox β d t1 t2 t3 t4 t5 → Covered P (Tmat tc tq) rH n r rF c.W0 leafOK β := by
  intro d
  induction d with
  | zero =>
    intro hd t1 t2 t3 t4 t5 h1 h2 h3 h4 h5 h β hβ
    have h0 : baseT c tc on use leafOK (sumAcc c.W0 t1 t2 t3 t4 t5) (pkAcc c tc t1 t2 t3 t4 t5) t1 t2 t3 t4 t5 = true := h
    unfold baseT at h0
    simp only [Bool.or_eq_true] at h0
    refine ⟨uvec t1.k t2.k t3.k t4.k t5.k, (2 : ℝ) ^ 0 / 192, rfl, by positivity, inBox_dist hβ, ?_⟩
    rcases h0 with (hrej | htan) | hleaf
    · exact Or.inl (rejectB_sound hp hd (acc_err hp hW h1.node h2.node h3.node h4.node h5.node) hrej hK0 hK hKb
        hr hrF)
    · exact Or.inl (tangB_sound hp ht hd hW h1.node h2.node h3.node h4.node h5.node (tStage_true htan) hK0 hK hKb
        hr hrF hrH hn)
    · exact Or.inr ⟨t1, t2, t3, t4, t5, rfl, by norm_num, hleaf⟩
  | succ d ih =>
    intro hd t1 t2 t3 t4 t5 h1 h2 h3 h4 h5 h β hβ
    have h0 : stepT c tc on use d (binT c tc on use leafOK d) (sumAcc c.W0 t1 t2 t3 t4 t5)
        (pkAcc c tc t1 t2 t3 t4 t5) t1 t2 t3 t4 t5 = true := h
    unfold stepT at h0
    simp only [Bool.or_eq_true] at h0
    rcases h0 with (hrej | htan) | hk
    · exact ⟨uvec t1.k t2.k t3.k t4.k t5.k, (2 : ℝ) ^ (d + 1) / 192, rfl, by positivity, inBox_dist hβ,
        Or.inl (rejectB_sound hp hd (acc_err hp hW h1.node h2.node h3.node h4.node h5.node) hrej hK0 hK hKb hr hrF)⟩
    · exact ⟨uvec t1.k t2.k t3.k t4.k t5.k, (2 : ℝ) ^ (d + 1) / 192, rfl, by positivity, inBox_dist hβ,
        Or.inl (tangB_sound hp ht hd hW h1.node h2.node h3.node h4.node h5.node (tStage_true htan) hK0 hK hKb hr
          hrF hrH hn)⟩
    · obtain ⟨hb0, hb1, hb2, hb3, hb4, hb5⟩ := hβ
      obtain ⟨c1, hc1, hT1, hd1⟩ := child h1 hb1
      obtain ⟨c2, hc2, hT2, hd2⟩ := child h2 hb2
      obtain ⟨c3, hc3, hT3, hd3⟩ := child h3 hb3
      obtain ⟨c4, hc4, hT4, hd4⟩ := child h4 hb4
      obtain ⟨c5, hc5, hT5, hd5⟩ := child h5 hb5
      exact ih (by omega) c1 c2 c3 c4 c5 hT1 hT2 hT3 hT4 hT5 (kidsT_mem hk hc1 hc2 hc3 hc4 hc5) β
        ⟨hb0, hd1, hd2, hd3, hd4, hd5⟩

/-- **One slab with the tangent test.** -/
theorem slabT_sound {P : RMat6} {c : Cfg} {pq : ParQ} {tc : TCfg} {tq : TParQ} (hp : ParOK c pq)
    (ht : TParOK c pq tc tq) (hW : NodeOK P c.Z c.boff pq.eps1 j0 0 c.W0)
    {rH n r rF K : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq.rHbar) (hn : n ≤ tq.nbar)
    (on use : Bool) (leafOK : LeafFn)
    {c1 : CT} {L2 L3 L4 L5 : List CT} (hT1 : TreeOK P c.Z c.boff pq.eps1 m1 3 c1)
    (hT2 : ∀ t ∈ L2, TreeOK P c.Z c.boff pq.eps1 m2 3 t) (hT3 : ∀ t ∈ L3, TreeOK P c.Z c.boff pq.eps1 m3 3 t)
    (hT4 : ∀ t ∈ L4, TreeOK P c.Z c.boff pq.eps1 m4 3 t) (hT5 : ∀ t ∈ L5, TreeOK P c.Z c.boff pq.eps1 m5 3 t)
    (hR2 : RootsK L2) (hR3 : RootsK L3) (hR4 : RootsK L4) (hR5 : RootsK L5)
    (h : slabT c tc on use leafOK c1 L2 L3 L4 L5 = true) :
    ∀ β : I6 → ℝ, β j0 = 0 → |β m1 - c1.k / 192| ≤ 2 ^ 3 / 192 → (∀ j, 0 ≤ β j ∧ β j ≤ 1) →
      Covered P (Tmat tc tq) rH n r rF c.W0 leafOK β := by
  intro β hβ0 hβ1 hβ
  obtain ⟨c2, hc2, hd2⟩ := roots_cover hR2 (hβ m2).1 (hβ m2).2
  obtain ⟨c3, hc3, hd3⟩ := roots_cover hR3 (hβ m3).1 (hβ m3).2
  obtain ⟨c4, hc4, hd4⟩ := roots_cover hR4 (hβ m4).1 (hβ m4).2
  obtain ⟨c5, hc5, hd5⟩ := roots_cover hR5 (hβ m5).1 (hβ m5).2
  have g2 := allL_mem h c2 hc2
  have g3 := allL_mem g2 c3 hc3
  have g4 := allL_mem g3 c4 hc4
  have g5 := allL_mem g4 c5 hc5
  exact binT_sound hp ht hW hK0 hK hKb hr hrF hrH hn on use leafOK 3 le_rfl c1 c2 c3 c4 c5 hT1 (hT2 c2 hc2)
    (hT3 c3 hc3) (hT4 c4 hc4) (hT5 c5 hc5) g5 β ⟨hβ0, hβ1, hd2, hd3, hd4, hd5⟩

/-- A slab from its sub-slabs (one declaration each). -/
lemma slabT_of_sub {c : Cfg} {tc : TCfg} {on use : Bool} {leafOK : LeafFn} {c1 : CT} {L2 L3 L4 L5 : List CT}
    (h : ∀ c2 ∈ L2, slabT c tc on use leafOK c1 [c2] L3 L4 L5 = true) :
    slabT c tc on use leafOK c1 L2 L3 L4 L5 = true := by
  apply allL_of_forall
  intro c2 hc2
  have h' : (topT3 c tc on use leafOK ((c.W0.addN c1.v).addN c2.v)
      (((P0 c tc).addN (pkN tc m1 c1.v)).addN (pkN tc m2 c2.v)) c1 c2 L3 L4 L5 && true) = true := h c2 hc2
  simpa using h'

/-- **The whole bin tree with the direct and tangent tests**: every phase vector `β ∈ [0,1]⁵` lies in a bin that
is rejected for all admissible `δ` (frame `Tmat`), or in a depth-0 bin accepted by `leafOK`. -/
theorem topT_sound {P : RMat6} {c : Cfg} {pq : ParQ} {tc : TCfg} {tq : TParQ} (hp : ParOK c pq)
    (ht : TParOK c pq tc tq) (hW : NodeOK P c.Z c.boff pq.eps1 j0 0 c.W0)
    {rH n r rF K : ℝ} (hK0 : 0 ≤ K) (hK : ∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • P) z) ≤ K * cnorm z)
    (hKb : K ≤ pq.Kbar) (hr : r ≤ pq.rbar) (hrF : rF ≤ pq.rFbar) (hrH : rH ≤ tq.rHbar) (hn : n ≤ tq.nbar)
    (on use : Bool) (leafOK : LeafFn) {L1 L2 L3 L4 L5 : List CT}
    (hT1 : ∀ t ∈ L1, TreeOK P c.Z c.boff pq.eps1 m1 3 t)
    (hT2 : ∀ t ∈ L2, TreeOK P c.Z c.boff pq.eps1 m2 3 t) (hT3 : ∀ t ∈ L3, TreeOK P c.Z c.boff pq.eps1 m3 3 t)
    (hT4 : ∀ t ∈ L4, TreeOK P c.Z c.boff pq.eps1 m4 3 t) (hT5 : ∀ t ∈ L5, TreeOK P c.Z c.boff pq.eps1 m5 3 t)
    (hR1 : RootsK L1) (hR2 : RootsK L2) (hR3 : RootsK L3) (hR4 : RootsK L4) (hR5 : RootsK L5)
    (h : ∀ c1 ∈ L1, slabT c tc on use leafOK c1 L2 L3 L4 L5 = true) :
    ∀ β : I6 → ℝ, β j0 = 0 → (∀ j, 0 ≤ β j ∧ β j ≤ 1) → Covered P (Tmat tc tq) rH n r rF c.W0 leafOK β := by
  intro β hβ0 hβ
  obtain ⟨c1, hc1, hd1⟩ := roots_cover hR1 (hβ m1).1 (hβ m1).2
  exact slabT_sound hp ht hW hK0 hK hKb hr hrF hrH hn on use leafOK (hT1 c1 hc1) hT2 hT3 hT4 hT5 hR2 hR3 hR4 hR5
    (h c1 hc1) β hβ0 hd1 hβ

end

end NoFourMUBs.KernelAtlas
