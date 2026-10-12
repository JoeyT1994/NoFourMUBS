import NoFourMUBs.Step2.SideAlg

/-!
# Side existence: the input data

`proof/coverage/returns/F_side_existence/SIDE_EXISTENCE.md` §§4–8.  Given Gram data `(s, t, r)` and a
sheet value `ζ = g z`, the scalar quantities below are defined exactly as there.  Under the hypotheses
`SideInput.Valid` — which include the Gram identities I, II, III, the determinant identity and the two
third-row identities Y0, Y1, all proved elsewhere by exact computation — we construct a normalised
phase side `(1; x; y)` with Gram data `(s, t, r)` and signature `ζ`.

The construction: a square root `δ² = e` with the sign making `d_F ≥ 0`, `ρ = (n + d_F)/2`, the lower
triangular `M`, a cube root `w³ = σ² / ρ`, and `S = M · diag(1, w̄, w) · F₃`.
-/

open ComplexConjugate NoFourMUBs.Side

noncomputable section

namespace NoFourMUBs.L1

/-- Gram data `(s, t, r)`, a sheet value `ζ`, and the real invariants `g, η, χ`. -/
structure SideInput where
  s : ℂ
  t : ℂ
  r : ℂ
  ζ : ℂ
  g : ℝ
  η : ℝ
  χ : ℝ

namespace SideInput

variable (D : SideInput)

def z : ℂ := D.ζ / D.g
def c0 : ℝ := cR D.r
def c1 : ℝ := cR D.t
def c2 : ℝ := cR D.s
def P0' : ℂ := P0 D.s D.t D.r
def P1' : ℂ := P1 D.s D.t D.r
def P2' : ℂ := P2 D.s D.t D.r

/-- `λⱼ = (g + cⱼ z̄) / P̄ⱼ` (§2, (8)). -/
def lam0 : ℂ := ((D.g : ℂ) + (D.c0 : ℂ) * conj D.z) / conj D.P0'
def lam1 : ℂ := ((D.g : ℂ) + (D.c1 : ℂ) * conj D.z) / conj D.P1'
def lam2 : ℂ := ((D.g : ℂ) + (D.c2 : ℂ) * conj D.z) / conj D.P2'

/-- (9). -/
def u : ℂ := D.lam0 * conj D.lam1
def v : ℂ := D.lam0 * conj D.lam2
def pi : ℂ := D.z * D.lam0
def mu : ℂ := D.s / 3
def nu : ℂ := D.t / 3
def k : ℂ := D.r / 3 - D.nu * conj D.mu
def n : ℂ := 1 - D.mu * conj D.mu
def m : ℂ := 1 - D.nu * conj D.nu
def h : ℂ := (D.g : ℂ) / 27
def alpha : ℂ := D.mu ^ 2 - D.u * conj D.mu
def beta : ℂ := D.nu ^ 2 - D.v * conj D.nu
def gamma : ℂ := 2 * D.mu * D.nu - D.pi / 3
def e : ℂ := D.h * D.lam0 * conj D.lam1 * conj D.lam2

/-- The two third-row polynomials (28), in the auxiliary quantities
`(n, k, K, a, A, c, e, h, u, μ, ν, ν̄) = (n, k, k̄, α, ᾱ, γ, e, h, u, μ, ν, ν̄)`. -/
def Y0Y1 : ℂ × ℂ :=
  let n := D.n; let k := D.k; let K := conj D.k; let a := D.alpha; let A := conj D.alpha
  let c := D.gamma; let e := D.e; let h := D.h; let u := D.u; let mu := D.mu; let nu := D.nu
  let Nu := conj D.nu
  let Dd := n * c - 2 * a * k
  let t3 := n * nu * K
  let t2 := n * Nu * k * a + A * (k * K - h) * u
  let t1 := A * (k * K - h) * mu * a
  let u3 := e * n * Nu + h * k * u
  let u2 := h * a * (k * mu - n * nu)
  let L00 := -u3 * n * a * A - u2 * a * A - e * K * A * A * mu * a
  let L01 := -t3 * n * a * A - t2 * a * A
  let L10 := u3 * (n * n - a * A) + u2 * n - e * K * A * A * u
  let L11 := t3 * (n * n - a * A) + t2 * n + t1
  (2 * L00 + n * L10 + Dd * L11, 2 * e * L01 + Dd * L10 + e * n * L11)

/-- The hypotheses of the construction.  The identities are those of `SIDE_EXISTENCE.md` (6), (10)–(12),
the determinant identity of §3 and (29). -/
structure Valid : Prop where
  g_pos : 0 < D.g
  s_lt : Complex.normSq D.s < 9
  t_lt : Complex.normSq D.t < 9
  P0_ne : D.P0' ≠ 0
  P1_ne : D.P1' ≠ 0
  P2_ne : D.P2' ≠ 0
  P0_norm : Complex.normSq D.P0' = D.g ^ 2 + D.c0 * D.χ + D.c0 ^ 2 * D.η
  P1_norm : Complex.normSq D.P1' = D.g ^ 2 + D.c1 * D.χ + D.c1 ^ 2 * D.η
  P2_norm : Complex.normSq D.P2' = D.g ^ 2 + D.c2 * D.χ + D.c2 ^ 2 * D.η
  z_norm : D.z * conj D.z = D.η
  z_sum : (D.g : ℂ) * (D.z + conj D.z) = D.χ
  det : D.h = D.n * D.m - D.k * conj D.k
  I : D.gamma ^ 2 - 4 * D.alpha * D.beta - D.e = 0
  II : D.e * conj D.alpha - D.n * D.gamma * D.k + D.alpha * D.k ^ 2 + D.n ^ 2 * D.beta = 0
  III : D.e * conj D.gamma - D.gamma * (D.n * D.m + D.k * conj D.k) + 2 * D.alpha * D.k * D.m +
    2 * D.beta * D.n * conj D.k = 0
  Y0 : D.Y0Y1.1 = 0
  Y1 : D.Y0Y1.2 = 0

end SideInput

end NoFourMUBs.L1
