import KernelAtlas.Seed.Poly

/-!
# The per-box C1 check (computation; `KERNEL_SEED.md` §3)

`c1Box B D : Bool` evaluates, for one box of one seed ball, the C1 method of `proof/seed_atlas/SPEC.md` §2 in the
fixed-point Taylor-model arithmetic of `Seed/Poly.lean`; every float of the generator enters only as data that the
check uses as a predictor.  The soundness theorem is in `Seed/C1Sound.lean`.

Layout of the data (all grid integers, `2^{-pp}`): the ball `BallD` (`θ₀`, `M_θ` row-major, `P` and `U` row-major,
`n`, `o`) and the box `BoxD` (centre `w_c`, half-widths `h`, the side predictors and preconditioners `Y`, the tube
radii, the predictor `X_p` of `D` and the approximate inverse `A₀`, the `arg` branches and the windings `N`).
-/

namespace NoFourMUBs.KernelAtlas.Seed

/-- Taylor order of `cisRound`. -/
def nT : ℕ := 40

/-! ### Small helpers -/

/-- Explicit lists (the kernel walks a literal list faster than `List.range n |>.map f`). -/
def l3 {α : Type} (f : ℕ → α) : List α := [f 0, f 1, f 2]
def l4 {α : Type} (f : ℕ → α) : List α := [f 0, f 1, f 2, f 3]
def l6 {α : Type} (f : ℕ → α) : List α := [f 0, f 1, f 2, f 3, f 4, f 5]
def l9 {α : Type} (f : ℕ → α) : List α := [f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7, f 8]
def l10 {α : Type} (f : ℕ → α) : List α := [f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7, f 8, f 9]
def l16 {α : Type} (f : ℕ → α) : List α :=
  [f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7, f 8, f 9, f 10, f 11, f 12, f 13, f 14, f 15]
def l36 {α : Type} (f : ℕ → α) : List α :=
  [f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7, f 8, f 9, f 10, f 11, f 12, f 13, f 14, f 15, f 16, f 17,
    f 18, f 19, f 20, f 21, f 22, f 23, f 24, f 25, f 26, f 27, f 28, f 29, f 30, f 31, f 32, f 33, f 34, f 35]

def gi (l : List ℤ) (i : ℕ) : ℤ := l.getD i 0
def gn (l : List ℕ) (i : ℕ) : ℕ := l.getD i 0
def gz (l : List (ℤ × ℤ)) (i : ℕ) : ℤ × ℤ := l.getD i (0, 0)
def gT (l : List CT) (i : ℕ) : CT := l.getD i (const (0, 0))

/-- The sum of a list of models. -/
def sumT (l : List CT) : CT := l.foldr add (const (0, 0))

/-- A real grid constant `x` as a complex one. -/
def rz (x : ℤ) : ℤ × ℤ := (x, 0)

/-- `i` on the grid. -/
def iZ : ℤ × ℤ := (0, 2 ^ pp)

/-! ### The data -/

structure BallD where
  th0 : List ℤ
  Mth : List ℤ
  P : List ℤ
  U : List ℤ
  n : ℕ
  o : ℤ

structure BoxD where
  wc : List ℤ
  hb : List ℕ
  phH : List CT
  phV : List CT
  YH : List ℤ
  YV : List ℤ
  tubeH : ℕ
  tubeV : ℕ
  Xp : List CT
  A0 : List (ℤ × ℤ)
  argA : List ℤ
  wind : List ℤ

/-! ### θ and the corner -/

/-- `θ_k(u) = θ₀_k + Σ_l M_kl (w_c,l + u_l)`. -/
def thetaT (B : BallD) (D : BoxD) (k : ℕ) : CT :=
  mk (fun m =>
      if m = 0 then rz (gi B.th0 k + fdivZ ((l4 fun l => gi B.Mth (4 * k + l) * gi D.wc l).sum) pp)
      else if m ≤ 4 then rz (gi B.Mth (4 * k + (m - 1))) else (0, 0)) 1

/-- The corner entries `a, b, c, d = e^{iθ}`. -/
def cornerT (B : BallD) (D : BoxD) : List CT := l4 fun k => expI D.hb nT (thetaT B D k)

/-- `1 + p + q` and `1 + p·q̄ + r·s̄`. -/
def one3 (h : List ℕ) (p q : CT) : CT := add (add (const oneZ) p) q
def oneMix (h : List ℕ) (p q r s : CT) : CT := add (add (const oneZ) (mul h p (conj q))) (mul h r (conj s))

/-- The Gram data `(s, t, r)`: horizontal `(−(1+a+b), −(1+c+d), −(1+c ā+d b̄))`,
vertical `(−(1+a+c), −(1+b+d), −(1+b ā+d c̄))` (`L1.FlatCircuits.sh` … `rv`). -/
def gramH (h : List ℕ) (e : List CT) : List CT :=
  [neg (one3 h (gT e 0) (gT e 1)), neg (one3 h (gT e 2) (gT e 3)),
    neg (oneMix h (gT e 2) (gT e 0) (gT e 3) (gT e 1))]
def gramV (h : List ℕ) (e : List CT) : List CT :=
  [neg (one3 h (gT e 0) (gT e 2)), neg (one3 h (gT e 1) (gT e 3)),
    neg (oneMix h (gT e 1) (gT e 0) (gT e 3) (gT e 2))]

/-! ### A side: residual, Krawczyk, tube -/

/-- The side rows `x_j = e^{iφ_j}`, `y_j = e^{iφ_{3+j}}`. -/
def rowsT (h : List ℕ) (φ : List CT) : List CT := l6 fun j => expI h nT (gT φ j)

/-- The three complex residuals `Σx − s`, `Σy − t`, `Σ y x̄ − r`. -/
def resT (h : List ℕ) (G : List CT) (xy : List CT) : List CT :=
  [sub (sumT [gT xy 0, gT xy 1, gT xy 2]) (gT G 0), sub (sumT [gT xy 3, gT xy 4, gT xy 5]) (gT G 1),
    sub (sumT [mul h (gT xy 3) (conj (gT xy 0)), mul h (gT xy 4) (conj (gT xy 1)),
      mul h (gT xy 5) (conj (gT xy 2))]) (gT G 2)]

/-- The real residual `F` (real parts, then imaginary parts). -/
def FT (h : List ℕ) (G : List CT) (xy : List CT) : List CT :=
  let c := resT h G xy
  [re (gT c 0), re (gT c 1), re (gT c 2), im (gT c 0), im (gT c 1), im (gT c 2)]

/-- `Y v` for a `6 × 6` grid matrix `Y` (row-major). -/
def matT (h : List ℕ) (Y : List ℤ) (v : List CT) : List CT :=
  l6 fun i => lin h (l6 fun k => (rz (gi Y (6 * i + k)), gT v k))

/-- The complex Jacobian rows (`sideJc`), as models on the tube. -/
def jcT (h : List ℕ) (xy : List CT) (k m : ℕ) : CT :=
  if k = 0 then (if m < 3 then mulI (gT xy m) else const (0, 0))
  else if k = 1 then (if m < 3 then const (0, 0) else mulI (gT xy m))
  else if m < 3 then neg (mulI (mul h (gT xy (m + 3)) (conj (gT xy m))))
  else mulI (mul h (gT xy m) (conj (gT xy (m - 3))))

/-- The real Jacobian (`sideJ`): entry `(i, m)` at index `6 i + m`. -/
def JT (h : List ℕ) (xy : List CT) : List CT :=
  l36 fun q =>
    let i := q / 6
    let m := q % 6
    if i < 3 then re (jcT h xy i m) else im (jcT h xy (i - 3) m)

/-- Row sums of `sup |I − Y J|`. -/
def qRows (h : List ℕ) (Y : List ℤ) (J : List CT) : List ℕ :=
  l6 fun i => (l6 fun m =>
    bnd h (sub (const (if i = m then oneZ else (0, 0))) (lin h (l6 fun l => (rz (gi Y (6 * i + l)), gT J (6 * l + m)))))).sum

/-- The side check: Krawczyk `b + qρ < ρ`, and the tube radii `b + qρ`. -/
structure SideOut where
  ok : Bool
  e : List ℕ

def sideK (h : List ℕ) (G : List CT) (φ : List CT) (Y : List ℤ) (ρt : ℕ) : SideOut :=
  let φr := φ.map re
  let b := (matT h Y (FT h G (rowsT h φr))).map (bnd h)
  let q := qRows h Y (JT h (rowsT h (φr.map fun A => addRho A ρt)))
  let num := l6 fun i => gn b i * 2 ^ pp + gn q i * ρt
  ⟨(l6 fun i => decide (gn num i < ρt * 2 ^ pp)).all id && (l6 fun i => expOK (gT φr i) nT).all id,
    num.map fun x => cdivN x pp⟩

/-- The side phase models `φ_pred ± e`. -/
def tubeT (φ : List CT) (e : List ℕ) : List CT := l6 fun j => addRho (re (gT φ j)) (gn e j)

/-! ### `Ψ` and the signs -/

/-- `Ψ` of the side `(1; x; y)`: `perm · det² · conj(Π x_j y_j)`. -/
def psiT (h : List ℕ) (xy : List CT) : CT :=
  let x := fun j => gT xy j
  let y := fun j => gT xy (j + 3)
  let pr := fun a b => mul h (x a) (y b)
  let perm := sumT [pr 0 1, pr 0 2, pr 1 0, pr 1 2, pr 2 0, pr 2 1]
  let det := sumT [pr 1 2, neg (pr 2 1), neg (pr 0 2), pr 2 0, pr 0 1, neg (pr 1 0)]
  let p3 := mul h (mul h (mul h (x 0) (y 0)) (mul h (x 1) (y 1))) (mul h (x 2) (y 2))
  mul h (mul h perm (mul h det det)) (conj p3)

/-- `o · Im T > 0` on the box: `o · c₀ > L + ρ`. -/
def signOK (h : List ℕ) (o : ℤ) (T : CT) : Bool :=
  let t := im T
  decide (((Lsum h t + t.ρ : ℕ) : ℤ) < o * (t.cg 0).1)

/-! ### The forced block -/

/-- The corner `E` as a `3 × 3` list (row-major). -/
def ET (e : List CT) : List CT :=
  [const oneZ, const oneZ, const oneZ, const oneZ, gT e 0, gT e 1, const oneZ, gT e 2, gT e 3]

/-- The side `B = (1; x; y)` (row-major). -/
def BT (xy : List CT) : List CT := [const oneZ, const oneZ, const oneZ] ++ xy

/-- `C = Vᵀ`: `C_ij = V_ji`. -/
def CT3 (xyV : List CT) : List CT :=
  let V := BT xyV
  l9 fun q => gT V (3 * (q % 3) + q / 3)

/-- `(X Y*)_ij = Σ_k X_ik conj(Y_jk)`. -/
def mulH (h : List ℕ) (X Y : List CT) : List CT :=
  l9 fun q =>
    sumT (l3 fun k => mul h (gT X (3 * (q / 3) + k)) (conj (gT Y (3 * (q % 3) + k))))

/-- `I − A₀ B*`: entry `(i, l)` is `δ_il − Σ_k A₀_ik conj(B_lk)`. -/
def neuT (h : List ℕ) (A0 : List (ℤ × ℤ)) (Bm : List CT) : List CT :=
  l9 fun q => sub (const (if q / 3 = q % 3 then oneZ else (0, 0)))
    (lin h (l3 fun k => (gz A0 (3 * (q / 3) + k), conj (gT Bm (3 * (q % 3) + k)))))

/-- The forced block: `D = X_p + δD`, `δD_ij = Σ_l sup|R_il| N_lj`, `N_lj = |A₀_lj| + q a_j/(1 − q)`. -/
structure DOut where
  ok : Bool
  D : List CT

def forcedT (h : List ℕ) (Xp : List CT) (A0 : List (ℤ × ℤ)) (E Bm C : List CT) : DOut :=
  let R := l9 fun q => add (gT (mulH h C E) q) (gT (mulH h Xp Bm) q)
  let Rb := R.map (bnd h)
  let X := neuT h A0 Bm
  let qr := l3 fun i => (l3 fun l => bnd h (gT X (3 * i + l))).sum
  let q := qr.foldr max 0
  let a := l3 fun j => (l3 fun l => mb (gz A0 (3 * l + j))).foldr max 0
  let Nm := l9 fun q' =>
    mb (gz A0 q') + cdivD (q * gn a (q' % 3)) (2 ^ pp - q)
  let δ := l9 fun q' =>
    cdivN ((l3 fun l => gn Rb (3 * (q' / 3) + l) * gn Nm (3 * l + q' % 3)).sum) pp
  ⟨decide (q < 2 ^ pp), l9 fun q' => addRho (gT Xp q') (gn δ q')⟩

/-! ### The phases and the bound -/

/-- `2π` on the grid, from below (`|2π − π2Z/2^pp| ≤ 2/2^pp`). -/
def twoPiZ : ℤ := 7244019458077122842

/-- The 36 phase models `Q` (row-major): first row and column `0`, `θ` in the corner, the side phases, `arg D`. -/
def QT (h : List ℕ) (th : List CT) (sh sv : List CT) (argD : List CT) : List CT :=
  l36 fun q =>
    let j := q / 6
    let k := q % 6
    if j = 0 ∨ k = 0 then const (0, 0)
    else if j < 3 ∧ k < 3 then gT th (2 * (j - 1) + (k - 1))
    else if j < 3 then gT sh (3 * (j - 1) + (k - 3))
    else if k < 3 then gT sv (3 * (k - 1) + (j - 3))
    else gT argD (3 * (j - 3) + (k - 3))

/-- The residual models `Q − P − U(w_c + u) − 2πN`. -/
def resQ (h : List ℕ) (B : BallD) (D : BoxD) (Q : List CT) : List CT :=
  l36 fun e =>
    let A := gT Q e
    let c0 := gi B.P e + fdivZ ((l4 fun l => gi B.U (4 * e + l) * gi D.wc l).sum) pp +
      gi D.wind e * twoPiZ
    let ρ' := A.ρ + 1 + 2 * (gi D.wind e).natAbs
    mk (fun m => if m = 0 then ((A.cg 0).1 - c0, 0) else if m ≤ 4 then ((A.cg m).1 - gi B.U (4 * e + (m - 1)), 0)
      else ((A.cg m).1, 0)) ρ'

/-- `⌈√x⌉` by Newton steps (any result `s` with `s² ≥ x` is fine; the check is exact). -/
def isqrtIter (x : ℕ) : ℕ → ℕ → ℕ
  | 0, s => s
  | k + 1, s => isqrtIter x k ((s + x / s) / 2)

def isqrtUp (x : ℕ) : ℕ :=
  let s := isqrtIter x 200 (2 ^ (Nat.log2 x / 2 + 1))
  if x ≤ s * s then s else if x ≤ (s + 1) * (s + 1) then s + 1 else x

/-- The 16 vertices `±h` as sign patterns. -/
def vtx : List (List Bool) :=
  l16 fun s => l4 fun l => Nat.testBit s l

/-- The per-box bound: `max_v ‖a + b v‖ + Σ_m ‖H_m‖ sup|mono_m| + ‖ρ‖ ≤ n`, compared through squares. -/
def boundOK (h : List ℕ) (n : ℕ) (res : List CT) : Bool :=
  let Hn := (l10 fun k =>
    cdivN (isqrtUp ((l36 fun e => ((gT res e).cg (k + 5)).1.natAbs ^ 2).sum) * monoW h (k + 5))
      (pp * 2)).sum
  let ρn := isqrtUp ((l36 fun e => (gT res e).ρ ^ 2).sum)
  let M := n - Hn - ρn
  decide (Hn + ρn ≤ n) &&
    vtx.all fun s =>
      decide (((l36 fun e =>
        let A := gT res e
        ((A.cg 0).1 * 2 ^ pp + (l4 fun l =>
          (A.cg (l + 1)).1 * (if s.getD l false then (gn h l : ℤ) else -(gn h l : ℤ))).sum).natAbs ^ 2).sum) ≤
        (M * 2 ^ pp) ^ 2)

/-! ### The whole box -/

def c1Box (B : BallD) (D : BoxD) : Bool :=
  let h := D.hb
  let th := l4 (thetaT B D)
  let e := th.map (expI h nT)
  let GH := gramH h e
  let GV := gramV h e
  let kH := sideK h GH D.phH D.YH D.tubeH
  let kV := sideK h GV D.phV D.YV D.tubeV
  let sH := tubeT D.phH kH.e
  let sV := tubeT D.phV kV.e
  let xyH := rowsT h sH
  let xyV := rowsT h sV
  let Bm := BT xyH
  let C := CT3 xyV
  let Dk := forcedT h D.Xp D.A0 (ET e) Bm C
  let argD := l9 fun q => argT h nT (gi D.argA q) (gT Dk.D q)
  let res := resQ h B D (QT h th sH sV argD)
  th.all (fun t => expOK t nT) && kH.ok && kV.ok &&
    signOK h B.o (psiT h xyH) && signOK h (-B.o) (psiT h xyV) && Dk.ok &&
    (l9 fun q => argOK h nT (gi D.argA q) (gT Dk.D q)).all id &&
    boundOK h B.n res

end NoFourMUBs.KernelAtlas.Seed
