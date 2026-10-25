import KernelAtlas.Edge.Sys

/-!
# The per-box C1e check of the edge ball (computation; `kernel_atlas/docs/KERNEL_EDGE.md`)

`c1eBox B D : Bool` evaluates, for one box of the edge ball's `w`-grid, the C1e method of
`proof/seed_atlas/SPEC.md` §10 (the Arb certifier's `edgecert.edge_box_Q`) in the fixed-point Taylor-model
arithmetic of `Seed/Poly.lean`:

1. the chart parameters `a_k(u) = π c_k/3 + Σ_l M_kl (w_c,l + u_l)` (`c = (1, 2, 2)`; `π/3` enters through the grid
   value `pi3Z`, its error in the remainder) and `y(u) = Σ_l M_3l (w_c,l + u_l)`;
2. each augmented side (`Edge/Sys.lean`): the parametric Krawczyk test on seven unknowns, with the generator's
   predictor, preconditioner `Y` and radius `ρ` (uniqueness in the sup-ball of radius `ρ`), the claimed enclosure
   radii `e ≥ b + qρ`; the Jacobian enters only through `q` (Gram rows on intervals, the label row as Taylor models);
3. `∂₄R > 0` on the `θ₄`-range covering both `t` and `t′` (`dRT`), so that `t′ = t` where `y ≠ 0`;
4. the forced block `D = −C E* (B*)⁻¹` (residual correction, as the seed C1), `arg D` on the branch `P_a`, with
   `|arg D − P_a| < π` (`argWin`);
5. the image bound: with `Q` the phases (`0` on the first row and column, `θ` in the corner, the side phases,
   `arg D`), `‖36·h(Q − Φ_F6)‖ ≤ n_X` (`36 h(Y) = 36 Y − 6 R − 6 C + T` with exact integer weights).
-/

namespace NoFourMUBs.KernelAtlas.Edge

open Seed

/-! ### Lists -/

def l7 {α : Type} (f : ℕ → α) : List α := [f 0, f 1, f 2, f 3, f 4, f 5, f 6]

/-! ### Data -/

/-- The edge ball: the frame `M` (row-major, `p = M w`), the `arg` branches of the `D` block (row-major), and the
image bound `n_X` (for `‖36 h(Q − Φ_F6)‖`). -/
structure EBallD where
  Mth : List ℤ
  Pa : List ℤ
  nX : ℕ

/-- One box: centre, half-widths, for both sides the predictor (7 models: `θ₄`, `φ₀₋₅`), preconditioner (`7 × 7`),
Krawczyk radius and claimed enclosure radii, and the forced-block predictor and approximate inverse. -/
structure EBoxD where
  wc : List ℤ
  hb : List ℕ
  phH : List CT
  phV : List CT
  YH : List ℤ
  YV : List ℤ
  rhoH : ℕ
  rhoV : ℕ
  eH : List ℕ
  eV : List ℕ
  Xp : List CT
  A0 : List (ℤ × ℤ)

/-- `π/3` on the grid, rounded to nearest (`|pi3Z/2^p − π/3| ≤ 1/2^p`). -/
def pi3Z : ℤ := 1207336576346187140

/-- The corner multipliers `c = (1, 2, 2)` of `θ⁰ = (1, 2, 2, 4) π/3`. -/
def cth (k : ℕ) : ℤ := if k = 0 then 1 else 2

/-! ### The parameters -/

/-- `a_k(u) = π c_k/3 + Σ_l M_kl (w_c,l + u_l)` (`k = 0, 1, 2`). -/
def aT (B : EBallD) (D : EBoxD) (k : ℕ) : CT :=
  mk (fun m =>
      if m = 0 then rz (cth k * pi3Z + fdivZ ((l4 fun l => gi B.Mth (4 * k + l) * gi D.wc l).sum) pp)
      else if m ≤ 4 then rz (gi B.Mth (4 * k + (m - 1))) else (0, 0)) (cth k).natAbs.succ

/-- `y(u) = Σ_l M_3l (w_c,l + u_l)`. -/
def yT (B : EBallD) (D : EBoxD) : CT :=
  mk (fun m =>
      if m = 0 then rz (fdivZ ((l4 fun l => gi B.Mth (12 + l) * gi D.wc l).sum) pp)
      else if m ≤ 4 then rz (gi B.Mth (12 + (m - 1))) else (0, 0)) 1

/-! ### A side -/

/-- `Y v` for a `7 × 7` grid matrix (row-major). -/
def matT7 (h : List ℕ) (Y : List ℤ) (v : List CT) : List CT :=
  l7 fun i => lin h (l7 fun k => (rz (gi Y (7 * i + k)), gT v k))

/-- `±1/2` on the grid (`+` horizontal). -/
def halfZ (v : Bool) : ℤ × ℤ := if v then (-(2 ^ (pp - 1)), 0) else (2 ^ (pp - 1), 0)

/-- The residual at the predictor: the six Gram residuals, then `Im Ψ ± y/2`. -/
def FE (h : List ℕ) (v : Bool) (e : List CT) (y : CT) (xy : List CT) : List CT :=
  let G := if v then gramV h e else gramH h e
  FT h G xy ++ [add (im (psiT h xy)) (smul h (halfZ v) y)]

/-! The Jacobian enters only through `q ≥ Σ sup |I − Y J|` over the tube: the six Gram rows on complex intervals (as
the seed C1), the label row `Im ∂Ψ` as Taylor models on the tube rows (a degree-10 product, whose interval
evaluation would lose too much). -/

/-- `∂Ψ/∂φ_m` (`dpsi`), `m = 0..5`, from the rows `g` (`x_j = g_j`, `y_j = g_{j+3}`). -/
def dpsiT (h : List ℕ) (g : List CT) : List CT :=
  let x := fun j => gT g j
  let pr := fun a b => mul h (x a) (x b)
  let p := sumT [pr 0 4, pr 0 5, pr 1 3, pr 1 5, pr 2 3, pr 2 4]
  let hs := sumT [pr 1 5, neg (pr 2 4), neg (pr 0 5), pr 2 3, pr 0 4, neg (pr 1 3)]
  let c := conj (mul h (mul h (mul h (x 0) (x 3)) (mul h (x 1) (x 4))) (mul h (x 2) (x 5)))
  let hhc := mul h (mul h hs hs) c
  let phc := mul h (mul h (add p p) hs) c
  let base := mul h p hhc
  let Pm := [mul h (x 0) (add (x 4) (x 5)), mul h (x 1) (add (x 3) (x 5)), mul h (x 2) (add (x 3) (x 4)),
    mul h (x 3) (add (x 1) (x 2)), mul h (x 4) (add (x 0) (x 2)), mul h (x 5) (add (x 0) (x 1))]
  let Dm := [mul h (x 0) (sub (x 4) (x 5)), mul h (x 1) (sub (x 5) (x 3)), mul h (x 2) (sub (x 3) (x 4)),
    mul h (x 3) (sub (x 2) (x 1)), mul h (x 4) (sub (x 0) (x 2)), mul h (x 5) (sub (x 1) (x 0))]
  l6 fun m => mulI (sub (add (mul h (gT Pm m) hhc) (mul h phc (gT Dm m))) base)

/-- The interval of `−∂G_k/∂θ₄` (`dG4`): `g3 ∋ ρ₃`, `g1 ∋ ρ₁`, `g2 ∋ ρ₂`. -/
def dG4I (v : Bool) (g3 g1 g2 : IvC) (k : ℕ) : IvC :=
  if k = 0 then ivZ else if k = 1 then ivI g3 else if v then ivI (ivm g3 (ivConj g2)) else ivI (ivm g3 (ivConj g1))

/-- The Gram rows `i < 6` of the Jacobian (`edgeJ`) as real intervals, from the row intervals `g`. -/
def jGI (v : Bool) (g : ℕ → IvC) (g3 g1 g2 : IvC) (i m : ℕ) : ℤ × ℕ :=
  let c : ℕ → ℕ → IvC := fun k m => if m = 0 then dG4I v g3 g1 g2 k else jcI g k (m - 1)
  if i < 3 then ((c i m).1.1, (c i m).2) else ((c (i - 3) m).1.2, (c (i - 3) m).2)

/-- The label row of the Jacobian as models (`Im ∂Ψ/∂φ_{m−1}`, `0` for `m = 0`); `dps = dpsiT`. -/
def jLT (dps : List CT) (m : ℕ) : CT := if m = 0 then const (0, 0) else im (gT dps (m - 1))

/-- Row sums of `sup |I − Y J|` (`7 × 7`), the Gram rows on intervals `JG`, the label row as models `JL`:
entry `(i, m)` is bounded by `bnd(c − Y_i6 JL_m) + 1 + Σ_{l<6} |Y_il| r_lm` with
`c = ⌊(δ_im 2^{2p} − Σ_{l<6} Y_il c_lm)/2^p⌋`. -/
def qRowsH (h : List ℕ) (Y : List ℤ) (JG : ℕ → ℕ → ℤ × ℕ) (JL : ℕ → CT) : List ℕ :=
  l7 fun i => (l7 fun m =>
    bnd h (sub (const (rz (fdivZ ((if i = m then (2 : ℤ) ^ (2 * pp) else 0) -
        (l6 fun l => gi Y (7 * i + l) * (JG l m).1).sum) pp))) (smul h (rz (gi Y (7 * i + 6))) (JL m))) + 1 +
      cdivN ((l6 fun l => (gi Y (7 * i + l)).natAbs * (JG l m).2).sum) pp).sum

/-- **The side check**: the predictor's residual, Krawczyk `b + qρ < ρ`, the claimed radii `e ≥ ⌈b + qρ⌉`, and the
ranges of the `e^{i·}` steps.  `e012` are the corner models `ρ₀, ρ₁, ρ₂`. -/
def sideE (h : List ℕ) (v : Bool) (e012 : List CT) (y : CT) (ph : List CT) (Y : List ℤ) (ρt : ℕ)
    (ec : List ℕ) : Bool :=
  let t := re (gT ph 0)
  let e3 := expI h nT t
  let φr := l6 fun j => re (gT ph (j + 1))
  let xy := rowsT h φr
  let b := (matT7 h Y (FE h v (e012 ++ [e3]) y xy)).map (bnd h)
  let g := l6 fun j => addRho (gT xy j) ρt
  let q := qRowsH h Y (jGI v (fun j => ivc h (gT g j)) (ivc h (addRho e3 ρt)) (ivc h (gT e012 1)) (ivc h (gT e012 2)))
    (jLT (dpsiT h g))
  let num := l7 fun i => gn b i * 2 ^ pp + gn q i * ρt
  (l7 fun i => decide (gn num i < ρt * 2 ^ pp) && decide (cdivN (gn num i) pp ≤ gn ec i)).all id &&
    expOK t nT && (l6 fun i => expOK (gT φr i) nT).all id

/-- The tube models of the seven unknowns: `pred ± e`. -/
def tubeE (ph : List CT) (e : List ℕ) : List CT := l7 fun j => addRho (re (gT ph j)) (gn e j)

/-- The side rows on the tube (`e^{iφ_pred}` widened by `e`). -/
def rowsE (h : List ℕ) (ph : List CT) (e : List ℕ) : List CT :=
  l6 fun j => addRho (gT (rowsT h (l6 fun j => re (gT ph (j + 1)))) j) (gn e (j + 1))

/-! ### `∂₄R` -/

/-- `∂R/∂θ₄` (`Edge/R4.lean`, the Arb certifier's `dR4_and_g_tm`) from the corner models `a, b, c` and `d = e^{iθ₄}`,
in complex arithmetic: `s = −(1 + a + b)`, `t = −(1 + c + d)`, `r = −(1 + c ā + d b̄)`, `dt = −i d`, `dr = −i d b̄`. -/
def dRT (h : List ℕ) (a b c d : CT) : CT :=
  let one := const oneZ
  let s := neg (add (add one a) b)
  let t := neg (add (add one c) d)
  let r := neg (add (add one (mul h c (conj a))) (mul h d (conj b)))
  let dt := neg (mulI d)
  let dr := neg (mulI (mul h d (conj b)))
  let X := mul h s (conj s)
  let Yv := mul h t (conj t)
  let Z := mul h r (conj r)
  let dY := add (mul h (conj t) dt) (mul h t (conj dt))
  let dZ := add (mul h (conj r) dr) (mul h r (conj dr))
  let p := add (add X Yv) Z
  let dp := add dY dZ
  let srt := mul h (mul h s r) (conj t)
  let J := add srt (conj srt)
  let dsrt := add (mul h (mul h s dr) (conj t)) (mul h (mul h s r) (conj dt))
  let dJ := add dsrt (conj dsrt)
  let XY := mul h X Yv
  let W := sub (add (add XY (mul h X Z)) (mul h Yv Z)) (mul h XY Z)
  let dW := sub (add (add (add (mul h X dY) (mul h X dZ)) (mul h dY Z)) (mul h Yv dZ))
    (mul h X (add (mul h dY Z) (mul h Yv dZ)))
  let c3 := const (3 * 2 ^ pp, 0)
  let g := add (sub (const (27 * 2 ^ pp, 0)) (mul h c3 p)) J
  let dg := sub dJ (mul h c3 dp)
  let eta := add (sub (const (9 * 2 ^ pp, 0)) p) J
  let deta := sub dJ dp
  let p9 := sub p (const (9 * 2 ^ pp, 0))
  let p15 := sub p (const (15 * 2 ^ pp, 0))
  let p18 := sub p (const (18 * 2 ^ pp, 0))
  let chi := add (sub W (mul h p9 p18)) (mul h p15 J)
  let dchi := add (add (sub (sub dW (mul h dp p18)) (mul h p9 dp)) (mul h dp J)) (mul h p15 dJ)
  let gg := mul h g g
  sub (add (mul h (const (8 * 2 ^ pp, 0)) (mul h (mul h g dg) eta)) (mul h (const (4 * 2 ^ pp, 0)) (mul h gg deta)))
    (mul h (const (2 * 2 ^ pp, 0)) (mul h chi dchi))

/-- `Re T > 0` on the box: `c₀ > L + ρ`. -/
def posOK (h : List ℕ) (T : CT) : Bool :=
  let t := re T
  decide (((Lsum h t + t.ρ : ℕ) : ℤ) < (t.cg 0).1)

/-! ### The image bound -/

/-- `F6`'s phase multipliers `a b mod 6` (row-major). -/
def f6k (e : ℕ) : ℕ := (e / 6 * (e % 6)) % 6

/-- The model of `Q_e − Φ_F6,e`. -/
def difF6 (Q : List CT) (e : ℕ) : CT :=
  sub (gT Q e) (mk (fun m => if m = 0 then rz ((f6k e : ℤ) * pi3Z) else (0, 0)) (f6k e))

/-- An exact integer multiple of a model. -/
def zsm (n : ℤ) (A : CT) : CT := mk (fun m => (n * (A.cg m).1, n * (A.cg m).2)) (n.natAbs * A.ρ)

/-- `36 h(Y)` from the 36 models of `Y` (row-major): `36 Y_ab − 6 R_a − 6 C_b + T`. -/
def hor36 (Y : List CT) : List CT :=
  let R := l6 fun a => sumT (l6 fun b => gT Y (6 * a + b))
  let C := l6 fun b => sumT (l6 fun a => gT Y (6 * a + b))
  let T := sumT R
  l36 fun e => add (sub (sub (zsm 36 (gT Y e)) (zsm 6 (gT R (e / 6)))) (zsm 6 (gT C (e % 6)))) T

/-- `|argD − P_a| < π`: `|c₀ − P_a| + L + ρ < 3 pi3Z`. -/
def argWin (h : List ℕ) (a : ℤ) (T : CT) : Bool :=
  decide (((T.cg 0).1 - a).natAbs + Lsum h T + T.ρ + 4 < 3 * pi3Z.natAbs)

/-! ### The whole box -/

def c1eBox (B : EBallD) (D : EBoxD) : Bool :=
  let h := D.hb
  let a := l3 (aT B D)
  let e012 := a.map (expI h nT)
  let y := yT B D
  let okH := sideE h false e012 y D.phH D.YH D.rhoH D.eH
  let okV := sideE h true e012 y D.phV D.YV D.rhoV D.eV
  let xH := tubeE D.phH D.eH
  let xV := tubeE D.phV D.eV
  let e3 := addRho (expI h nT (re (gT D.phH 0))) (gn D.eH 0)
  let xyH := rowsE h D.phH D.eH
  let xyV := rowsE h D.phV D.eV
  -- `∂₄R > 0` between `t` and `t′`
  let S := addRho (gT xH 0) (bnd h (sub (gT xH 0) (gT xV 0)))
  let dR := dRT h (gT e012 0) (gT e012 1) (gT e012 2) (expI h nT S)
  -- the completion
  let e := e012 ++ [e3]
  let Dk := forcedT h D.Xp D.A0 (ET e) (BT xyH) (CT3 xyV)
  let argD := l9 fun q => argT h nT (gi B.Pa q) (gT Dk.D q)
  let th := a ++ [gT xH 0]
  let Q := QT h th (l6 fun j => gT xH (j + 1)) (l6 fun j => gT xV (j + 1)) argD
  a.all (fun t => expOK t nT) && okH && okV && expOK S nT && posOK h dR && Dk.ok &&
    (l9 fun q => argOK h nT (gi B.Pa q) (gT Dk.D q) && argWin h (gi B.Pa q) (gT argD q)).all id &&
    boundOK h B.nX (hor36 (l36 (difF6 Q)))

end NoFourMUBs.KernelAtlas.Edge
