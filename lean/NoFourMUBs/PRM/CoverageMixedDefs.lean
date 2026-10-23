import NoFourMUBs.PRM.CoverageStripIdHalf

/-!
# The zero-`J` product (return O): mixed-corner sums and the circuits of the two mixed identities

`proof/coverage/returns/O_zeroj_unsquared/REPORT.md` §§2–4, 7.

* `MT`, `mixedPoly`: a sum `Σ c · M_A(p) M_A(q) M_B(r)` of products of two moments of a half `A` and one
  moment of the complementary half `B`; the two sums of the return over the nine mixed corners are
  `mixedPoly txTerms` and `mixedPoly tpTerms` (generated, `CoverageMixedData`; their derivation from the
  corner signatures is `CoverageMixedSums`).  `mixedPoly_scale`: a sum of row weight `w` is multiplied by
  `aʷ¹ bʷ²` under the row scaling of `CoverageStripIdFormal`; `mixedPolyQ`: the same sum over `QF`.
* The generic context `CG` (identity (12)): variables `z, X, Y`, `Z = 9 − z² − X − Y`, the quadratic element
  `h = s r t̄` with `h² = −XYZ` (zero `J`), the halves in the gauge `s = t = 1, s̄ = X, t̄ = Y`,
  `r = h/Y`, `r̄ = −h/X` (`gA`, `gB`), and the denominators `X, Y, z` and `e_U = 3(z + 3) − U`
  (`L_j = z e_U`); the multiplier `X(X − 1) e_X e_Y² e_Z²`, the target `c (X τ P_X − h Q_X)` and `G_W`.
* The repeated context `CR` (identity (27a)): variables `z, v` (`X = Y = v`, `Z = 9 − z² − 2v`),
  `h² = −v²Z`, `r = h/v`, `r̄ = −h/v`, denominators `v, z, e_Z, e_v, τ, 2`; `C₂`, `C`, `D`.
-/

noncomputable section

namespace NoFourMUBs.PRM.Coverage.Mixed

open NoFourMUBs.Kronecker StripMoments StripId

/-! ### Mixed moment sums -/

/-- A term `c · M_A(p) M_A(q) M_B(r)`. -/
structure MT where
  c : ℤ
  p : ℤ × ℤ
  q : ℤ × ℤ
  r : ℤ × ℤ

/-- The value of a term. -/
def MT.val (A B : ℤ × ℤ → ℂ) (t : MT) : ℂ := t.c * A t.p * A t.q * B t.r

/-- `Σ c · M_A(p) M_A(q) M_B(r)`. -/
def mixedPoly (L : List MT) (A B : ℤ × ℤ → ℂ) : ℂ := (L.map (MT.val A B)).sum

/-- The row weight of every term is `w`. -/
def MT.hasWeight (w : ℤ × ℤ) (t : MT) : Bool :=
  t.p.1 + t.q.1 + t.r.1 == w.1 && t.p.2 + t.q.2 + t.r.2 == w.2

/-- **Row scaling of a mixed sum of weight `w`.** -/
theorem mixedPoly_scale (L : List MT) (w : ℤ × ℤ) (hw : L.all (MT.hasWeight w) = true) (A B : ℤ × ℤ → ℂ)
    {a b : ℂ} (ha : a ≠ 0) (hb : b ≠ 0) :
    mixedPoly L (fun p => a ^ p.1 * b ^ p.2 * A p) (fun p => a ^ p.1 * b ^ p.2 * B p) =
      a ^ w.1 * b ^ w.2 * mixedPoly L A B := by
  induction L with
  | nil => simp [mixedPoly]
  | cons t L ih =>
    simp only [List.all_cons, Bool.and_eq_true] at hw
    simp only [mixedPoly, List.map_cons, List.sum_cons] at ih ⊢
    rw [ih hw.2, mul_add]
    congr 1
    simp only [MT.hasWeight, Bool.and_eq_true, beq_iff_eq] at hw
    obtain ⟨⟨h1, h2⟩, -⟩ := hw
    simp only [MT.val]
    rw [← h1, ← h2, zpow_add₀ ha, zpow_add₀ ha, zpow_add₀ hb, zpow_add₀ hb]
    ring

/-- Pointwise agreement on the moments of the list gives the same mixed sum. -/
theorem mixedPoly_congr (L : List MT) (S : List (ℤ × ℤ)) (hL : ∀ t ∈ L, t.p ∈ S ∧ t.q ∈ S ∧ t.r ∈ S)
    {A A' B B' : ℤ × ℤ → ℂ} (hA : ∀ p ∈ S, A p = A' p) (hB : ∀ p ∈ S, B p = B' p) :
    mixedPoly L A B = mixedPoly L A' B' := by
  induction L with
  | nil => rfl
  | cons t L ih =>
    simp only [mixedPoly, List.map_cons, List.sum_cons] at ih ⊢
    obtain ⟨h1, h2, h3⟩ := hL t (by simp)
    rw [ih (fun t' ht' => hL t' (by simp [ht'])), MT.val, MT.val, hA _ h1, hA _ h2, hB _ h3]

/-! ### Over `QF` -/

variable {n m : ℕ} {C : Ctx n m}

/-- `mixedPoly` over `QF C`. -/
def mixedPolyQ (L : List MT) (A B : ℤ × ℤ → QF C) : QF C :=
  L.foldr (fun t acc => QF.ofFrac (Frac.ofCirc (Circ.const t.c)) * A t.p * A t.q * B t.r + acc) 0

theorem val_mixedPolyQ {ρ : Fin n → ℂ} {ζ : ℂ} (h : QF.Good C ρ ζ) (L : List MT) (A B : ℤ × ℤ → QF C) :
    (mixedPolyQ L A B).val ρ ζ = mixedPoly L (fun p => (A p).val ρ ζ) (fun p => (B p).val ρ ζ) := by
  induction L with
  | nil =>
    simp only [mixedPolyQ, List.foldr_nil, mixedPoly, List.map_nil, List.sum_nil]
    rw [QF.val_ofNat]; simp
  | cons t L ih =>
    simp only [mixedPolyQ, List.foldr_cons, mixedPoly, List.map_cons, List.sum_cons] at ih ⊢
    rw [QF.val_add h, ih, QF.val_mul h, QF.val_mul h, QF.val_mul h, QF.val_ofFrac, Frac.val_ofCirc]
    simp [MT.val]

/-! ### The generic context (identity (12)) -/

abbrev V := Circ 3

def vz : V := Circ.var 0
def vX : V := Circ.var 1
def vY : V := Circ.var 2
def cZ : V := 9 - vz ^ 2 - vX - vY
/-- `e_Z = 3(z + 3) − Z`, `e_Y`, `e_X`. -/
def ceZ : V := vX + vY + vz ^ 2 + 3 * vz
def ceY : V := 3 * vz + 9 - vY
def ceX : V := 3 * vz + 9 - vX

/-- The denominators `X, Y, z, e_Z, e_Y, e_X` and the relation `h² = −XYZ`. -/
def CG : Ctx 3 6 := ⟨![vX, vY, vz, ceZ, ceY, ceX], (0, fun _ => 0), (-(vX * vY * cZ), fun _ => 0)⟩

abbrev QG := QF CG

def qc (k : ℤ) : QG := QF.ofFrac (Frac.ofCirc (Circ.const k))
def fq (c : V) : QG := QF.ofFrac (Frac.ofCirc c)
def qX : QG := fq vX
def qY : QG := fq vY
def qZ : QG := fq cZ
def qz : QG := fq vz
/-- `r = h/Y`. -/
def qr : QG := ⟨0, ⟨1, ![0, 1, 0, 0, 0, 0]⟩⟩
/-- `r̄ = −h/X`. -/
def qR : QG := ⟨0, ⟨-1, ![1, 0, 0, 0, 0, 0]⟩⟩
/-- `1/L_j = 1/(z e_j)`. -/
def iL : Fin 3 → QG := ![QF.ofFrac (Frac.inv CG 2 * Frac.inv CG 3), QF.ofFrac (Frac.inv CG 2 * Frac.inv CG 4),
  QF.ofFrac (Frac.inv CG 2 * Frac.inv CG 5)]

/-- The two halves in the gauge. -/
def gA : HalfQ CG := halfQ 1 qX 1 qY qr qR qX qY qZ (iL 0) (iL 1) (iL 2) qz
def gB : HalfQ CG := halfQ (-1) (-qX) (-1) (-qY) (-qr) (-qR) qX qY qZ (iL 0) (iL 1) (iL 2) qz

def cτ : V := vz + 3
/-- `P_X` of (11). -/
def cP : V := vz ^ 4 + 3 * vz ^ 3 * vX + 3 * vz ^ 3 + 19 * vz ^ 2 * vX - 9 * vz ^ 2 + 3 * vz * vX ^ 2 +
  24 * vz * vX - 27 * vz + 10 * vX ^ 2 - 18 * vX
/-- `Q_X = (τ² − X)(zτ − (z + 2)X)`. -/
def cQ : V := (cτ ^ 2 - vX) * (vz * cτ - (vz + 2) * vX)
/-- `18 z (z + 2) τ (τ − X)(Y − Z)`. -/
def cc : V := 18 * vz * (vz + 2) * cτ * (cτ - vX) * (vY - cZ)
/-- The modulus relation `G_W = W − z²τ²`. -/
def cGW : V := vX * vY + vX * cZ + vY * cZ - vX * vY * cZ - vz ^ 2 * cτ ^ 2
/-- The multiplier `X (X − 1) e_X e_Y² e_Z²`. -/
def cmult : V := vX * (vX - 1) * ceX * ceY ^ 2 * ceZ ^ 2
/-- The target `c (X τ P_X − h Q_X)`. -/
def qtarget : QG := ⟨Frac.ofCirc (cc * vX * cτ * cP), Frac.ofCirc (-(cc * cQ))⟩

/-! ### The repeated context (identity (27a)) -/

abbrev W2 := Circ 2

def wz : W2 := Circ.var 0
def wv : W2 := Circ.var 1
def dZ : W2 := 9 - wz ^ 2 - 2 * wv
/-- `e_Z = 3(z + 3) − Z = z² + 3z + 2v`, `e_v = 3(z + 3) − v`. -/
def deZ : W2 := wz ^ 2 + 3 * wz + 2 * wv
def dev : W2 := 3 * wz + 9 - wv
def dτ : W2 := wz + 3

/-- The denominators `v, z, e_Z, e_v, τ, 2` and the relation `h² = −v²Z`. -/
def CR : Ctx 2 6 := ⟨![wv, wz, deZ, dev, dτ, 2], (0, fun _ => 0), (-(wv ^ 2 * dZ), fun _ => 0)⟩

abbrev QR := QF CR

def rq (c : W2) : QR := QF.ofFrac (Frac.ofCirc c)
def rv : QR := rq wv
def rZ : QR := rq dZ
def rz : QR := rq wz
/-- `r = h/v`. -/
def rr : QR := ⟨0, ⟨1, ![1, 0, 0, 0, 0, 0]⟩⟩
/-- `r̄ = −h/v`. -/
def rR : QR := ⟨0, ⟨-1, ![1, 0, 0, 0, 0, 0]⟩⟩
/-- `1/L₀ = 1/(z e_Z)`, `1/L₁ = 1/L₂ = 1/(z e_v)`. -/
def jL : Fin 3 → QR := ![QF.ofFrac (Frac.inv CR 1 * Frac.inv CR 2), QF.ofFrac (Frac.inv CR 1 * Frac.inv CR 3),
  QF.ofFrac (Frac.inv CR 1 * Frac.inv CR 3)]

/-- The two halves in the gauge, `X = Y = v`. -/
def rA : HalfQ CR := halfQ 1 rv 1 rv rr rR rv rv rZ (jL 0) (jL 1) (jL 2) rz
def rB : HalfQ CR := halfQ (-1) (-rv) (-1) (-rv) (-rr) (-rR) rv rv rZ (jL 0) (jL 1) (jL 2) rz

/-- `C₂ = 2v² + (z² + 2z − 6) v + z² (z + 3)`. -/
def dC2 : W2 := 2 * wv ^ 2 + (wz ^ 2 + 2 * wz - 6) * wv + wz ^ 2 * (wz + 3)
/-- `C`, `D` of (26). -/
def dC : W2 := 6 * wz ^ 8 + 111 * wz ^ 7 + 798 * wz ^ 6 + 2942 * wz ^ 5 + 5568 * wz ^ 4 + 3096 * wz ^ 3 -
  7344 * wz ^ 2 - 14256 * wz - 7776
def dD : W2 := 6 * wz ^ 6 + 63 * wz ^ 5 + 358 * wz ^ 4 + 1266 * wz ^ 3 + 2592 * wz ^ 2 + 2808 * wz + 1296
/-- `3 (C + 2vD) / (8 τ⁵)`. -/
def rtarget : Frac CR := ⟨3 * (dC + 2 * wv * dD), ![0, 0, 0, 0, 5, 3]⟩
/-- The denominator `8 z⁴ e_Z³ e_v⁴ τ⁵` of the cofactor. -/
def rcofDen : Fin 6 → ℕ := ![0, 4, 3, 4, 5, 3]

end NoFourMUBs.PRM.Coverage.Mixed
