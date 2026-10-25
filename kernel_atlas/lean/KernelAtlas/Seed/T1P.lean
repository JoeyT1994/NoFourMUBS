import KernelAtlas.Seed.Full

/-!
# The transfer T1′ (record boundary → seed ball): the kernel check (`KERNEL_T1PRIME.md`, FORMAT §6)

For a full-matrix record `(P, T, n)` and an `η`-box ("tube box", centre `η_c`, half-widths `h`), the kernel encloses
every normal component `ν ∈ N` of the record's Hadamards `e^{i(P + Tη + ν)}` (`‖ν‖ ≤ n`) by the normal-tube iteration
of `Method.normal_tube` (pieces A and C), builds Taylor models of the phases `P + Tη + ν` and of the entries
`e^{i(P + Tη + ν)}` over the tube box, checks the two `Ψ` signs of the T1 test (FORMAT §4) on the whole tube box, and
the ellipsoid part of the T1 test on sub-boxes (re-centred models, `shiftL`).  Soundness: `Seed/T1PSound.lean`
(`t1p_holds`).

**Data** (grid integers `2^{-pp}` unless said otherwise):
* `RecP` (per record): the grid centre `Pg` (`|P − Pg| ≤ pe` entrywise), the integer frame `T_k = Tn_k / DT`
  (`Tn : 4 × 36`, index `6a + c`), a basis `B_j = Zb_j / 2^pp` of `N` (`Zb : 21 × 36`, exactly in `N`), Gershgorin
  constants (`lamT`, `cT`: `T` injective; `lamB`, `cn` = `c_N`, `nn` = `n_N`), row bounds `ρ_e` (`rho`), the normal
  bound `n0`, and the constants `KP_pc ≈ e^{i(Pg_ac − Pg_bc)}`, `KQ_e ≈ e^{i Pg_e}` (`cisRound`, errors `kpe`, `kqe`).
* `LinD` (shared by many tube boxes): the linearisation point `c`, `Y` (`21 × 30`: entry `2p` the coefficient of
  `Re`, `2p + 1` of `Im` of the pair `p = (a < b)`), `y_N ≥ ‖Y‖₂`, `ε₀ ≥ ‖I − Y J_{Pg+c} N_b‖_F`.
* `TubeD` (per tube box): centre `ec`, half-widths `hb`, the predictor `ν̃(u)` (36 real models; each of its 15
  coefficient vectors is exactly in `N`, so `ν̃(u) = N_b x̃(u)` for a unique `x̃(u)`), bounds `‖Φ‖ ≤ bphi`,
  `s_u`, `‖ν̃‖ ≤ snu`, and the radii `r₀ … r_K`.
* `SgnD` (per tube box): a corner `(g, rows, cols)` and orientation `o` whose two `Ψ` signs hold on the tube box.
* `EllG` (per tube box, FORMAT's group): a sign corner and a target ball (`G ≈ M_l⁻¹`, `q`, `BallD`, `r_l`);
  `v⁰ = G (θ′ − θ₀)` is computed once per group on the tube box.
* `SubP` (per sub-box): offset, half-widths, group, winding `N`, and `m ≥ ‖v⁰ + 2π G N‖` on the sub-box.

**Checks.** `recOK` (exact integers, once per record), `linOK` (once per `LinD`: `‖Y‖₂` by Gershgorin on `Y Yᵀ`, and
A2 with `J_{Pg+c} B_j` from 90 `cisRound`s), `tubeOK` (`ν̃` in `N`; `δ̃ = (P − Pg) + Tη + ν̃` (36 models);
`e^{iθ_pc} = KP_pc · e^{i(δ̃_ac − δ̃_bc)}` (90 small-angle `expI`); `‖Φ_Pg(δ̃)‖ ≤ bphi` (`b_F = y_N bphi`);
`‖δ̃ − c‖ ≤ s_u`; `‖ν̃‖ ≤ snu`; `r₀ ≥ c_N (n0 + snu)` and `r_{k+1} ≥ b_F + q(r_k) r_k`), and `tubeFull` (the signs of
the `SgnD`s on the entry models, the group checks, and the ellipsoid bound on every sub-box).
-/

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### Lists and pairs -/

def l15 {α : Type} (f : ℕ → α) : List α :=
  [f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7, f 8, f 9, f 10, f 11, f 12, f 13, f 14]
def l21 {α : Type} (f : ℕ → α) : List α :=
  [f 0, f 1, f 2, f 3, f 4, f 5, f 6, f 7, f 8, f 9, f 10, f 11, f 12, f 13, f 14, f 15, f 16, f 17, f 18, f 19, f 20]

def gL (l : List (List ℤ)) (i : ℕ) : List ℤ := l.getD i []
def gLT (l : List (List CT)) (i : ℕ) : List CT := l.getD i []
def gLZ (l : List (List (ℤ × ℤ))) (i : ℕ) : List (ℤ × ℤ) := l.getD i []

/-- The pairs `a < b` of `0..5`, lexicographic: `p ↦ (pa p, pb p)`, `(a, b) ↦ pidx15 a b`. -/
def pa (p : ℕ) : ℕ := gn [0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 3, 3, 4] p
def pb (p : ℕ) : ℕ := gn [1, 2, 3, 4, 5, 2, 3, 4, 5, 3, 4, 5, 4, 5, 5] p
def pidx15 (a b : ℕ) : ℕ := a * (11 - a) / 2 + (b - a - 1)

/-- `Σ_{e < n} x_e y_e`, walking both lists. -/
def dotN : ℕ → List ℤ → List ℤ → ℤ
  | 0, _, _ => 0
  | n + 1, x :: xs, y :: ys => x * y + dotN n xs ys
  | _ + 1, _, _ => 0

def dot36 (x y : List ℤ) : ℤ := dotN 36 x y

/-- The Taylor order of the small-angle exponentials. -/
def nTs : ℕ := 20

/-- The error of `cisRound x nT pp`, on the grid. -/
def cisEps (x : ℚ) (n : ℕ) : ℕ := ratCeilN ((cisRem x n + 1 / 2 ^ pp) * 2 ^ pp)

/-! ### The record -/

structure RecP where
  Pg : List ℤ
  pe : ℕ
  Tn : List (List ℤ)
  DT : ℕ
  Zb : List (List ℤ)
  lamT : ℕ
  cT : ℕ
  lamB : ℕ
  cn : ℕ
  nn : ℕ
  rho : List ℕ
  n0 : ℕ
  KP : List (List (ℤ × ℤ))
  kpe : ℕ
  KQ : List (ℤ × ℤ)
  kqe : ℕ

/-- Row and column sums of a `6 × 6` integer matrix (row-major) vanish. -/
def horZ (z : List ℤ) : Bool :=
  (l6 fun a => decide ((l6 fun c => gi z (6 * a + c)).sum = 0)).all id &&
    (l6 fun c => decide ((l6 fun a => gi z (6 * a + c)).sum = 0)).all id

/-- The integer Gram matrix of the rows of `Z`. -/
def gramZ (Z : List (List ℤ)) (j k : ℕ) : ℤ := dot36 (gL Z j) (gL Z k)

/-- Gershgorin from below for `G = Z Zᵀ / D²` (4 rows): `λ ≤ 2 G_jj − Σ_k |G_jk|`, `λ = lam / 2^pp`. -/
def gLo4 (Z : List (List ℤ)) (D lam : ℕ) : Bool :=
  (l4 fun j => decide ((lam : ℤ) * (D : ℤ) ^ 2 ≤ 2 ^ pp * (2 * gramZ Z j j - (l4 fun k => |gramZ Z j k|).sum))).all id

/-- Gershgorin from below for `G = Z Zᵀ / 2^{2pp}` (21 rows). -/
def gLo21 (Z : List (List ℤ)) (lam : ℕ) : Bool :=
  (l21 fun j => decide ((lam : ℤ) * 2 ^ (2 * pp) ≤ 2 ^ pp * (2 * gramZ Z j j - (l21 fun k => |gramZ Z j k|).sum))).all id

/-- Gershgorin from above (21 rows): `Σ_k |G_jk| ≤ n²`, `n = nn / 2^pp`. -/
def gUp21 (Z : List (List ℤ)) (nn : ℕ) : Bool :=
  (l21 fun j => decide ((l21 fun k => |gramZ Z j k|).sum ≤ (nn : ℤ) ^ 2)).all id

/-- `Pg_ac − Pg_bc`, `(a, b)` the pair `p`. -/
def thP (Pg : List ℤ) (p c : ℕ) : ℤ := gi Pg (6 * pa p + c) - gi Pg (6 * pb p + c)

/-- A grid constant `z ≈ e^{ix}` with error `≤ eps` (`x = a / 2^pp`, by `cisRound`). -/
def cisOK (a : ℤ) (z : ℤ × ℤ) (eps : ℕ) : Bool :=
  decide (|((a : ℚ) / 2 ^ pp)| / ((nT : ℚ) + 1) ≤ 1 / 2) && decide (z = cisRound ((a : ℚ) / 2 ^ pp) nT pp) &&
    decide (cisEps ((a : ℚ) / 2 ^ pp) nT ≤ eps)

/-- **The per-record check.** -/
def recOK (R : RecP) : Bool :=
  (l4 fun k => horZ (gL R.Tn k)).all id && gLo4 R.Tn R.DT R.lamT && decide (2 ^ (3 * pp) ≤ R.cT ^ 2 * R.lamT) &&
    (l21 fun j => horZ (gL R.Zb j) && (l4 fun k => decide (dot36 (gL R.Tn k) (gL R.Zb j) = 0)).all id).all id &&
    gLo21 R.Zb R.lamB && decide (2 ^ (3 * pp) ≤ R.cn ^ 2 * R.lamB) && gUp21 R.Zb R.nn &&
    (l36 fun e => decide ((l21 fun j => gi (gL R.Zb j) e ^ 2).sum ≤ (gn R.rho e : ℤ) ^ 2)).all id &&
    (l15 fun p => (l6 fun c => cisOK (thP R.Pg p c) (gz (gLZ R.KP p) c) R.kpe).all id).all id &&
    (l36 fun e => cisOK (gi R.Pg e) (gz R.KQ e) R.kqe).all id &&
    decide (0 < R.DT)

/-! ### A2 and `‖Y‖₂` (`LinD`) -/

structure LinD where
  c : List ℤ
  Y : List (List ℤ)
  yn : ℕ
  eps0 : ℕ

/-- `θ⁰_pc = (Pg + c)_ac − (Pg + c)_bc`. -/
def th0Z (Pg c : List ℤ) (p e6 : ℕ) : ℤ :=
  gi Pg (6 * pa p + e6) + gi c (6 * pa p + e6) - gi Pg (6 * pb p + e6) - gi c (6 * pb p + e6)

/-- `e^{iθ⁰_pc}` on the grid. -/
def e0Z (Pg c : List ℤ) (p e6 : ℕ) : ℤ × ℤ := cisRound ((th0Z Pg c p e6 : ℚ) / 2 ^ pp) nT pp

/-- `W_{k,p,c} = −Yre_kp sin θ⁰_pc + Yim_kp cos θ⁰_pc` (grid `2^{-2pp}`). -/
def wJZ (Pg c Yk : List ℤ) (p e6 : ℕ) : ℤ :=
  -(gi Yk (2 * p)) * (e0Z Pg c p e6).2 + gi Yk (2 * p + 1) * (e0Z Pg c p e6).1

/-- `(Y J)_{k,(a,c)} = Σ_{b > a} W_{k,ab,c} − Σ_{b < a} W_{k,ba,c}`. -/
def yjZ (Pg c Yk : List ℤ) (e : ℕ) : ℤ :=
  (l6 fun b => if e / 6 < b then wJZ Pg c Yk (pidx15 (e / 6) b) (e % 6)
    else if b < e / 6 then -wJZ Pg c Yk (pidx15 b (e / 6)) (e % 6) else 0).sum

def yaZ (Yk : List ℤ) (a : ℕ) : ℕ :=
  (l6 fun b => if a < b then (gi Yk (2 * pidx15 a b)).natAbs + (gi Yk (2 * pidx15 a b + 1)).natAbs
    else if b < a then (gi Yk (2 * pidx15 b a)).natAbs + (gi Yk (2 * pidx15 b a + 1)).natAbs else 0).sum

def babZ (Bj : List ℤ) (a : ℕ) : ℕ := (l6 fun c => (gi Bj (6 * a + c)).natAbs).sum

/-- The largest error of the 90 constants `e^{iθ⁰}`. -/
def eps0Max (Pg c : List ℤ) : ℕ :=
  (l15 fun p => (l6 fun e6 => cisEps ((th0Z Pg c p e6 : ℚ) / 2 ^ pp) nT).foldr max 0).foldr max 0

/-- `Ā_kj` on the grid `2^{-3pp}`. -/
def abarZ (Zb YJ Y : List (List ℤ)) (eE k j : ℕ) : ℕ :=
  ((if k = j then (2 : ℤ) ^ (3 * pp) else 0) - dot36 (gL YJ k) (gL Zb j)).natAbs +
    eE * (l6 fun a => yaZ (gL Y k) a * babZ (gL Zb j) a).sum

/-- `‖Y‖₂ ≤ y_N`: Gershgorin on `Y Yᵀ`. -/
def yOK (Y : List (List ℤ)) (yn : ℕ) : Bool :=
  (l21 fun k => decide ((l21 fun l => |dotN 30 (gL Y k) (gL Y l)|).sum ≤ (yn : ℤ) ^ 2)).all id

/-- The rows `(Y J)_k` (grid `2^{-2pp}`). -/
def yjL (R : RecP) (L : LinD) : List (List ℤ) := l21 fun k => l36 fun e => yjZ R.Pg L.c (gL L.Y k) e

/-- **The check of a linearisation point** (A2 and `‖Y‖₂`). -/
def linOK (R : RecP) (L : LinD) : Bool :=
  (l15 fun p => (l6 fun e6 => decide (|((th0Z R.Pg L.c p e6 : ℤ) : ℚ) / 2 ^ pp| / ((nT : ℚ) + 1) ≤ 1 / 2)).all id).all id &&
    yOK L.Y L.yn &&
    decide ((l21 fun k => (l21 fun j => abarZ R.Zb (yjL R L) L.Y (eps0Max R.Pg L.c) k j ^ 2).sum).sum ≤
      (L.eps0 * 2 ^ (2 * pp)) ^ 2)

/-! ### The tube box -/

structure TubeD where
  ec : List ℤ
  hb : List ℕ
  nu : List CT
  bphi : ℕ
  su : ℕ
  snu : ℕ
  rs : List ℕ

/-- `(Tη)_e` over the box `η = η_c + u`: constant `⌊Σ_k η_c,k Tn_ke / DT⌋`, slopes `⌊Tn_ke 2^pp / DT⌋`. -/
def tauT (R : RecP) (ec : List ℤ) (h : List ℕ) (e : ℕ) : CT :=
  mk (fun m => if m = 0 then rz ((l4 fun k => gi ec k * gi (gL R.Tn k) e).sum / (R.DT : ℤ))
      else if m ≤ 4 then rz (gi (gL R.Tn (m - 1)) e * 2 ^ pp / (R.DT : ℤ)) else (0, 0))
    (1 + (l4 fun k => cdivN (gn h k) pp).sum)

/-- The 36-vector of the `m`-th coefficients of the predictor. -/
def nuCoef (nu : List CT) (m : ℕ) : List ℤ := l36 fun e => ((gT nu e).cg m).1

/-- Every coefficient vector of the predictor lies in `N`. -/
def nuOK (R : RecP) (nu : List CT) : Bool :=
  (l15 fun m => horZ (nuCoef nu m) && (l4 fun k => decide (dot36 (gL R.Tn k) (nuCoef nu m) = 0)).all id).all id

/-- `δ̃_e`, enclosing `((P − Pg) + Tη + ν̃)_e`. -/
def dlT (R : RecP) (D : TubeD) : List CT :=
  l36 fun e => addRho (add (tauT R D.ec D.hb e) (re (gT D.nu e))) R.pe

/-- `δ̃_ac − δ̃_bc`, `(a, b)` the pair `p`. -/
def dT (dl : List CT) (p c : ℕ) : CT := sub (gT dl (6 * pa p + c)) (gT dl (6 * pb p + c))

def dL (dl : List CT) : List (List CT) := l15 fun p => l6 fun c => dT dl p c

/-- `e^{iθ_pc} = e^{i(Pg_ac − Pg_bc)} e^{i(δ̃_ac − δ̃_bc)}`. -/
def EL (R : RecP) (h : List ℕ) (d : List (List CT)) : List (List CT) :=
  l15 fun p => l6 fun c => addRho (smul h (gz (gLZ R.KP p) c) (expI h nTs (gT (gLT d p) c))) R.kpe

def FL (E : List (List CT)) : List CT := l15 fun p => sumT (gLT E p)

/-- `Φ` as a real `6 × 6` list: `Re Φ_ab` above the diagonal, `Im Φ_ba` below. -/
def phiR (F : List CT) : List CT :=
  l36 fun e => if e / 6 < e % 6 then re (gT F (pidx15 (e / 6) (e % 6)))
    else if e % 6 < e / 6 then im (gT F (pidx15 (e % 6) (e / 6))) else const (0, 0)

def suL (dl : List CT) (c : List ℤ) : List CT := l36 fun e => sub (gT dl e) (const (gi c e, 0))
def nuL (nu : List CT) : List CT := l36 fun e => re (gT nu e)

/-- `L = Lnum / Lden ≥ 2√3`. -/
def Lnum : ℕ := 34642
def Lden : ℕ := 10000

/-- `r' ≥ b_F + q(r) r`, `b_F = y_N bphi`, `q(r) = ε₀ + y_N L n_N (s_u + n_N r)` (on the grid, times `2^{5pp} Lden`). -/
def stepOK (yn bphi eps0 nn su r r' : ℕ) : Bool :=
  decide (yn * bphi * 2 ^ (3 * pp) * Lden + eps0 * r * 2 ^ (3 * pp) * Lden + yn * Lnum * nn * su * r * 2 ^ pp +
    yn * Lnum * nn * nn * r * r ≤ r' * 2 ^ (4 * pp) * Lden)

def stepsOK (yn bphi eps0 nn su : ℕ) : List ℕ → Bool
  | r :: r' :: l => stepOK yn bphi eps0 nn su r r' && stepsOK yn bphi eps0 nn su (r' :: l)
  | _ => true

def iterOK (R : RecP) (L : LinD) (D : TubeD) : Bool :=
  decide (R.cn * R.n0 + R.cn * D.snu ≤ gn D.rs 0 * 2 ^ pp) && stepsOK L.yn D.bphi L.eps0 R.nn D.su D.rs

/-- The final radius `r_K`. -/
def rK (D : TubeD) : ℕ := gn D.rs (D.rs.length - 1)

/-- **The per-tube-box check.** -/
def tubeOK (R : RecP) (L : LinD) (D : TubeD) : Bool :=
  let h := D.hb
  let dl := dlT R D
  let d := dL dl
  nuOK R D.nu && (l15 fun p => (l6 fun c => expOK (gT (gLT d p) c) nTs).all id).all id &&
    boundOK h D.bphi (phiR (FL (EL R h d))) && boundOK h D.su (suL dl L.c) && boundOK h D.snu (nuL D.nu) &&
    iterOK R L D

/-- `δ̃_e ± ρ_e r_K`, enclosing `(Q − Pg)_e` for the record's Hadamards `e^{iQ}`. -/
def wqT (R : RecP) (D : TubeD) : List CT :=
  l36 fun e => addRho (gT (dlT R D) e) (cdivN (gn R.rho e * rK D) pp)

/-- The phase models `Pg_e + δ̃_e ± ρ_e r_K`. -/
def qmT (R : RecP) (D : TubeD) : List CT := l36 fun e => add (const (gi R.Pg e, 0)) (gT (wqT R D) e)

/-- The entry models `e^{i Pg_e} e^{i(δ̃_e ± ρ_e r_K)}`. -/
def kmT (R : RecP) (D : TubeD) : List CT :=
  l36 fun e => addRho (smul D.hb (gz R.KQ e) (expI D.hb nTs (gT (wqT R D) e))) R.kqe

/-! ### Signs on the tube box, the ellipsoid test on sub-boxes -/

/-- A corner `(g, rows, cols)` with orientation `o`. -/
structure SgnD where
  g : ℕ
  rows : List ℕ
  cols : List ℕ
  o : ℤ

def sgnOK (h : List ℕ) (km : List CT) (S : SgnD) : Bool :=
  sign3Any h S.o (blockT km S.g S.rows S.cols 0 3) &&
    sign3Any h (-S.o) (blockT km S.g S.rows S.cols 3 0)

def gS (l : List SgnD) (i : ℕ) : SgnD := l.getD i ⟨0, [], [], 0⟩

/-- The corner-seed models `θ′_k` of a sign corner (`thpT` on the tube box's phase models; shared by every sub-box
with this corner). -/
def thG (h : List ℕ) (qm : List CT) (S : SgnD) : List CT := l4 fun k => thpT h qm ⟨S.g, S.rows, S.cols, [], [], 0, 0⟩ k

/-- `boundOK` for four entries: `‖v‖ ≤ n` by the 16 vertices of the affine part, the quadratic part and `‖ρ‖`. -/
def bound4OK (h : List ℕ) (n : ℕ) (res : List CT) : Bool :=
  let Hn := (l10 fun k =>
    cdivN (isqrtUp ((l4 fun e => ((gT res e).cg (k + 5)).1.natAbs ^ 2).sum) * monoW h (k + 5)) (pp * 2)).sum
  let ρn := isqrtUp ((l4 fun e => (gT res e).ρ ^ 2).sum)
  let M := n - Hn - ρn
  decide (Hn + ρn ≤ n) &&
    vtx.all fun s =>
      decide (((l4 fun e =>
        let A := gT res e
        ((A.cg 0).1 * 2 ^ pp + (l4 fun l =>
          (A.cg (l + 1)).1 * (if s.getD l false then (gn h l : ℤ) else -(gn h l : ℤ))).sum).natAbs ^ 2).sum) ≤
        (M * 2 ^ pp) ^ 2)

/-- A target group of a tube box (FORMAT §6's group): the sign corner `sg`, `G ≈ M_l⁻¹` (row-major), `q ≥ ‖I − G M_l‖_F`,
the target ball's `θ₀`, `M_θ`, `o` and its radius `r_l`. -/
structure EllG where
  sg : ℕ
  G : List ℤ
  qg : ℕ
  bl : BallD
  rl : ℕ

def gE (l : List EllG) (i : ℕ) : EllG := l.getD i ⟨0, [], 0, ⟨[], [], [], [], 0, 0⟩, 0⟩

/-- `v⁰ = G (θ′ − θ₀)` on the tube box (once per group). -/
def vG (h : List ℕ) (th : List CT) (G : List ℤ) (Bl : BallD) : List CT :=
  let y := l4 fun k => lin h [(wT 1, gT th k), (wT 1, const (-gi Bl.th0 k, 0))]
  l4 fun i => lin h (l4 fun k => ((gi G (4 * i + k), 0), gT y k))

/-- `v = v⁰ + 2π G N` on a sub-box (`v0` re-centred). -/
def vS (h : List ℕ) (v0 : List CT) (G N : List ℤ) : List CT :=
  l4 fun i => lin h [(wT 1, gT v0 i),
    (((l4 fun k => gi G (4 * i + k) * gi N k).sum, 0), addRho (const (1 * twoPiZ - 0, 0)) (2 * (1 : ℤ).natAbs))]

/-- The group checks: the corner, `‖I − G M_l‖_F ≤ q < 1`, the orientation. -/
def egOK (sgns : List SgnD) (E : EllG) : Bool :=
  decide (E.sg < sgns.length) && decide ((gS sgns E.sg).g < 4) && decide (E.qg < 2 ^ pp) && qOK E.G E.bl.Mth E.qg &&
    decide ((gS sgns E.sg).o = E.bl.o)

/-- A sub-box: offset, half-widths, its group, the winding `N` and the bound `m ≥ ‖G(θ′ + 2πN − θ₀)‖`. -/
structure SubP where
  c : List ℤ
  h : List ℕ
  eg : ℕ
  N : List ℤ
  m : ℕ

def subPOK (D : TubeD) (V : List (List CT)) (egs : List EllG) (s : SubP) : Bool :=
  boxIn D.hb s.c s.h && decide (s.eg < egs.length) &&
    decide (s.m * 2 ^ pp < (2 ^ pp - (gE egs s.eg).qg) * (gE egs s.eg).rl) &&
    bound4OK s.h s.m (vS s.h (shiftL s.c s.h (gLT V s.eg)) (gE egs s.eg).G s.N)

/-- The groups' `v⁰` models. -/
def vGL (R : RecP) (D : TubeD) (sgns : List SgnD) (egs : List EllG) : List (List CT) :=
  egs.map fun E => vG D.hb (thG D.hb (qmT R D) (gS sgns E.sg)) E.G E.bl

/-- **The T1′ check of one tube box, its sign corners, its target groups and its sub-boxes.** -/
def tubeFull (R : RecP) (L : LinD) (D : TubeD) (sgns : List SgnD) (egs : List EllG) (subs : List SubP) : Bool :=
  tubeOK R L D && (l36 fun e => expOK (gT (wqT R D) e) nTs).all id &&
    sgns.all (sgnOK D.hb (kmT R D)) && egs.all (egOK sgns) && subs.all (subPOK D (vGL R D sgns egs) egs)

end NoFourMUBs.KernelAtlas.Seed
