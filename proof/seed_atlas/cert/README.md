# Seed atlas: the Arb certifier

This folder checks a seed-atlas certificate (`../FORMAT.md`, `seed-atlas-v1`) against `../SPEC.md`. Every
inequality that decides a verdict is evaluated in Arb ball arithmetic (python-flint) on the exact binary64 data.
Floats are used only for predictors: side solutions and their derivatives, the forced block, the Krawczyk
preconditioner Y and the approximate inverse A0. A bad predictor can make a check fail, but it can never make one
pass.

```bash
python3 proof/seed_atlas/cert/certify_seed_atlas.py proof/seed_atlas/results/seed_atlas_certificate.json.gz -j 16 --receipt receipt.json
```

`--only 'seeds:0-99,records:all,fourier,tao'` checks a subset. A subset run never reports PASS. For each item, the
JSON receipt lists the verdict and the reason for any failure, n and n_cert, the Stage C and transfer-box counts,
and the timings.

The tests take about a minute:

```bash
python3 proof/seed_atlas/cert/tests/run_tests.py
```

## Files

| File | Contents |
|---|---|
| `wholeball.py` | The whole-ball enclosure C1 of theorem Z (`proof/theorems/Z_completion_hessian/`, `THEOREM.md`): the matched branch, both orientations and the enclosure from one computation at the centre. `wholeball_basis.json` is its fixed normal basis |
| `tmarb.py` | Second-order Taylor models in 4 variables, batched over boxes, as NumPy object arrays of `arb` and `acb` (+, −, ·, @, e^{i·} and sup norms) |
| `seedcert.py` | C1, the Stage C arguments, the transfers T0, T1 and T2, the record-boundary kinds `rec` and `T1prime`, and the coverage traversals |
| `edgecert.py` | Edge balls (SPEC §10): C1e, T3 into edge balls, and the edge ball's own T1 transfers and sphere cover |
| `certify_seed_atlas.py` | The whole certificate: one format adapter (`read_certificate`), multiprocessing and the receipt. The receipt binds the code by the SHA-256 of the certificate and of every source here and in `proof/atlas/` |
| `check_binding.py` | Checks a receipt's binding against this checkout and the certificate (`python3 check_binding.py`, by default on the committed receipt) |
| `caps.py`, `cap_weighted.py`, `cap_coverage.py` | Spherical caps (theorem ZC): the 5 × 5 witness and remainders of one cap, and the exact coverage of S³ (both schemas, with the exact support tree) |
| `cap_t3.py` | T3 caps (theorem ZC2b): the parameter and phase-distance witnesses |
| `edgecaps.py` | The sphere of the X-ball by caps (theorem ZC2a) |
| `tests/` | The test balls (`data/`), fixtures, and `run_tests.py` with positive, sampling and negative tests |

## What is checked

### Seed ball j

#### C1 (`certify_c1`)

The whole-ball certificate of theorem Z (`wholeball.py`) is tried first. It is accepted when its bound, plus the
distance of the stored P and U from the exact ones, is at most the stored n. It needs no subdivision and takes about
0.5 s per ball. Where it does not close, the box method below decides.

1. Mth is certified invertible (Arb inverse).
2. Of the k⁴ boxes of [−r, r]⁴, those meeting the open ball are kept (exact rational test). They cover the closed
   ball, since every point of it is a limit of interior points and the finitely many boxes are closed. For k = 4 this
   drops the 16 corner boxes, which touch the ball at one vertex.
3. On each kept box, the certifier computes:
   - θ, E, G_h and G_v as Taylor models,
   - a tube for each side, by a parametric Krawczyk test with scalar ρ as in the SPEC (b + qρ < ρ, certified),
   - the orientation and matching, sign Im Ψ(B) = o and sign Im Ψ(Cᵀ) = −o, over the tube Taylor models. Ψ is
     perm·det²·conj(∏), since the entries are unimodular. Together with SM Prop. S.1 this also gives θ ∈ Ω,
   - D = X_p + remainder, by residual correction with an entrywise Neumann bound on |(B*)⁻¹|,
   - arg D, with the cubic remainder |v|³/(3(1 − |v|)) and |v| < 1/2 required.
4. The residual Q − P − U(w_c + u) is bounded by the 16-vertex maximum of the linear part, plus Σ‖q_m‖h_jh_l, plus
   ‖ρ‖.
5. n_cert is the maximum over the boxes, rounded up. The ball passes if and only if n_cert ≤ n.

The Krawczyk residual F(predictor) and the forced-block residual C E* + X_p B* are computed in third-order Taylor
models (`tmarb.TM3`). Their cubic terms cancel exactly, and a second-order truncation would lose that cancellation.
This makes the remainder of D about ten times smaller.

#### The horizontal gauge (SPEC §11, `"gauge": "hor"`)

The stored P and U are horizontal. P_g = gauge(P) and U_g = gauge(U) are recovered by exact cross ratios in Arb,
where gauge(X)_ab = X_ab − X_a0 − X_0b + X_00. The predictors and the representative use the dephased gauge (the
nearest P_g + U_g w). The residual is hor(Q_g) − P − Uw. Since hor is an orthogonal projector, it is applied to the
polynomial part only and ‖ρ‖₂ is kept as it is. Certificates without this field are checked in the dephased gauge.

#### Adaptive boxes (SPEC §11)

The check starts from the k-grid boxes that meet the open ball. A box whose bound exceeds the stored n, or whose
Taylor models fail, is replaced by its 16 children that meet the open ball, up to depth 4. The check stops with a
certified rejection when a box centre inside the ball has residual greater than n. It also stops when two
consecutive levels accept no box, or past a budget of 100,000 boxes.

The linear part of the bound on a box is maximised only over the part of the box inside the ball. The box is cut by
the half-space tangent to the ball in the direction of the box, and the maximum is taken over the vertices of the
cut polytope.

#### Stage C (`run_stage_c`)

Stage C is `stagec.stage_c`, called with these arguments:
- P_c = fl(P/2π), with the rounding d = ‖P − 2πP_c‖ added to n,
- rcol = (maxᵢ ‖U_(block i)‖₂ r + n + d)/2π,
- rF = (‖U‖₂ r + n + d)/2π,
- the tangent part r/2π and (n + d)/2π.

Every value is rounded up. Operator norms are certified by an Arb Cholesky factorisation of μ²I − MᵀM.

#### C2 (`check_seed_transfers`)

- **T0.** The 16 vertices are tested in the target's ellipsoid coordinates (Arb inverse of Mth_l), and o_l = o_j.
- **T1 at a reordering of the seed corner** (rows and columns both orderings of (0, 1, 2)). θ′ is integer-linear in
  θ on the representative nearest P + Uw, so the 16-vertex test applies. The orientation is o_j for
  g ∈ {id, conjT} and −o_j for g ∈ {conj, T}, and the corner is matched. Both facts follow from C1 at the sphere
  points, so no Taylor models are needed.
- **T1 at any other corner.** The C1 Taylor models are computed over the whole box β. Then θ′ = L g Q, the supremum
  of ‖Mth_l⁻¹(θ′ + 2πN − θ0_l)‖ is bounded as in C1, and the signs of Im Ψ of the dephased blocks K[I, Jᶜ] and
  K[Iᶜ, J]ᵀ are checked.
- **T2.** ‖hor(π g Q + 2πN − P_t)‖ < R_t over β, on the C1 Taylor models.
- **Coverage.** The traversal of FORMAT §4 from the level-0 box, with an exact integer sphere test.

### Record s

`seedcert.RecordData` runs the record checks of `proof/atlas/certify.py` (`certify_record`). These are
`BallRecord(phi, Tint)`, with σ from an Arb Cholesky factorisation, `normal_bound(R)`, which gives (r_H, n0), and
Stage C at the stored R and label radius.

For the boundary it keeps the exact frame Tb and an exact basis Nb of N. Nb is P_N times a rational matrix, which is
`Nint` if the certificate has it and the certifier's own otherwise. A bound cN ≥ 1/σ_min(Nb) is certified by
Cholesky. `check_record_boundary` then checks the following.
- eta_scale ≥ r_H.
- **`rec`.** The 16-vertex maximum of ‖hor(π g(P + Tb η) + 2πN − P_t)‖ is below R_t − n0.
- **`T1prime`.** The refined test below (`nu_enclosure`).
- **Shell coverage.** The shell of FORMAT §6 is {‖η‖ ≤ r_H, R² − n0² ≤ ‖Tb η‖² ≤ R²}. A box is discarded if it is
  certified in Arb to miss it, with the maximum of ‖Tb η‖² taken over the 16 vertices and the minimum bounded by the
  centre minus ‖Tb‖ times the half-diagonal.

#### The refined T1′ (`nu_enclosure`, `check_T1prime_group`)

Every Hadamard matrix of the record is e^{i(P + Tb η + Nb x)}, with ‖Nb x‖ ≤ n0. On each η-box:
1. **Predictor.** x̃(η) is a second-order Taylor model in η, from floating-point Gauss–Newton and finite
   differences. Any choice is sound. Y = (J Nb)⁺ is a fixed real 21 × 30 matrix, and F_η(x) = YΦ(Tb η + Nb x).
2. **Mean value form.** Every zero x* with ‖x* − x̃(η)‖₂ ≤ r satisfies ‖x* − x̃‖₂ ≤ bF + q(r) r. This is an exclusion
   argument. It encloses the actual Hadamard matrices and never needs their existence. The certified conditions, as
   labelled in `nu_enclosure`, are these.
   - **(A1)** bF is at least the supremum of ‖F(x̃)‖₂ over the whole η-box, from Taylor models.
   - **(A2)** eps0 ≥ ‖I − Y J(c) Nb‖_F, computed in Arb with Y as stored. Y J(c) Nb = I is never assumed.
   - **(A3)** q(r) = eps0 + ‖Y‖₂ · 2√3 · ‖Nb‖₂ (s_u + ‖Nb‖₂ r) bounds ‖I − Y J(δ) Nb‖₂ along every segment from
     x̃(η) into the r-ball, for every η in the box. Here c is the constant term of the predictor's Taylor model for δ,
     and s_u bounds its variation over the box. The factor 2√3 is the bound ‖Φ″[w, w′]‖ ≤ 2√3‖w‖‖w′‖ of
     `proof/atlas/RIGOUR.md`, so ‖J(δ) − J(δ′)‖₂ ≤ 2√3‖δ − δ′‖₂.
3. **Iteration.** It starts from r₀ = cN·n0 + sup‖x̃‖₂, a ball that contains every ν ∈ N with ‖ν‖ ≤ n0, and iterates
   r ← ‖F(x̃)‖ + q(r) r while r shrinks. Every step is sound, so no contraction condition is needed.
4. **Phases.** P + Tb η + Nb x̃(η) is then a Taylor model with remainder ‖Nb[e,:]‖₂ r in entry e. The T1 test runs on
   it: the corner seed lies inside int E_l, sign Im Ψ(K[I, Jᶜ]) = o_l, and sign Im Ψ(K[Iᶜ, J]ᵀ) = −o_l.

Record 877 lies next to F6, at a corner with ‖Mth⁻¹L‖ ≈ 72. There the enclosure radius is about 5·10⁻⁷ on level-5
η-boxes and about 3·10⁻⁵ on level-3 boxes, against n0 = 6.6·10⁻³. The cruder test ‖ν‖ ≤ n0
(`check_T1prime_crude`) fails there, and the refined one passes.

The enclosure is a 2-norm ball because an entrywise box version of Krawczyk, with inclusion box
[−cN n0, cN n0]²¹, does not contract on practical boxes. The row sums of |I − YJ| are 1.1 to 2.3 on level-2 to
level-4 boxes.

### Edge ball e (SPEC §10, `edgecert.py`)

#### Exact data

The augmented systems of the edge chart (theorem U, eq. 20) are written exactly as trigonometric polynomials. There
are 70 monomials e^{i(n·z + κ)}, with Ψ expanded as a Laurent polynomial. Each κ is an integer multiple of π/3, from
θ⁰ = (1,2,2,4)π/3 and φ⁰ = (3,4,5,0,2,4)π/3 in Arb. So F and dF/dx are exact combinations of these monomials.

#### C1e (`certify_edge_c1`)

C1e runs on each box of the k-grid, where k is given for each w-axis, for example (4,4,4,8), and p = Mth(w_c + u).
- **Tubes.** There is a parametric Krawczyk tube for each system of 7 unknowns, horizontal at p and vertical at
  (u₁, u₃, u₂, −y). The tube at the smallest working radius gives the C1e enclosure. The largest radius that still
  passes, out of 0.03, 0.01 and so on, is kept as the box's uniqueness radius for T3.
- **t′ = t.** dR/dθ₄ > 0 and g > 0 are checked as Taylor models at θ = θ⁰ + (q₁, q₂, q₃, s), with s on the segment
  between t and t′ (the Taylor model of t, with its remainder enlarged by sup |t′ − t|).
- **As for seed balls,** D by residual correction, arg D, and the bound on each box against P + Uw.
- **Consistency.** On adjacent boxes (all 80 neighbours), each box's enclosure must lie in the neighbour's uniqueness
  box, so that H(p) is one map. The check uses exact polynomial shifts.
- `f6_in_edge` checks that F6 = H(0), that is, that x = 0 lies in the uniqueness box at w = 0.

#### T3 (`check_T3`)

A T3 entry (FORMAT §8, kind `"T3"`) gives the target, g, rows, cols, hcols, vrows, wind, wind_h and wind_v. From
K = g·(source) the certifier forms the corner seed θ′ at (rows, cols), the horizontal angles φ′_h over the columns
hcols and the vertical angles φ′_v over the rows vrows. Both sets of angles are dephased at (i0, j0) and shifted by
their stored windings. All of these are linear in Q. Then:
- y′ = −2 Im Ψ(K[I, Jᶜ]), and p′ = (θ′₁..₃ − θ⁰₁..₃, y′) must satisfy ‖Mth⁻¹p′‖ < r,
- for every edge box that the image of Mth⁻¹p′ may meet, |x′ − pred_e(w′ − w_e)| < ρ_e must hold over the whole
  source box, for both sides, where x′ = (θ′₄ − θ⁰₄, φ′ − φ⁰). Source boxes are bisected, to depth at most 8, when
  one edge box fails,
- the edge entries must have `"chart": "F6-012"` and k as 4 integers.

This test assumes that the vertical side solves the system for −y_K. That holds if the corner is matched or
y_K = 0, because a strict nonmatched corner would make K Tao's matrix (SPEC §10). The certifier does not check this.
It is the same fact that the openness argument of the SPEC uses.

#### (G) and (D) of SPEC §10.1–10.2 (`GraphData`, `dQ_derivative`)

These use the entry's `"graph"` {R, sigma} (defaults 0.45 and 1.7) and `"sigma_D"` (by default only σ_D > 0 is
required).
- **(G).** σ ≤ σ_min(J(0)|_N) at F6 is certified by the Arb Cholesky factorisation of `BallRecord`, using the phases
  of F6 and the record's own frame. Then R_G · 2√3 < σ is checked, and the edge image must satisfy
  sup ‖hor(Q − P_F + 2πN)‖ < R_G over the C1e Taylor models. The uniqueness of ν then follows from the mean value
  theorem (SPEC §10.2), with no box computation.
- **(D).** A Taylor model of dQ/dw is computed on every C1e box. dx/dw comes from the implicit function theorem,
  with a Neumann series in X = I − Y F_x and a third-order tail. dD = −(dC E* + C dE* + D dB*)(B*)⁻¹, with (B*)⁻¹
  also by Neumann, and d arg D = Im(dD conj D). σ_min(T_F⁺ dQ(u)) is then at least σ_min at the centre minus the
  variation over the box, which is the 16-vertex maximum of the linear part plus the quadratic part and the
  remainder (Weyl). Boxes are bisected if needed.

#### Edge transfers

Edge balls transfer only by T1, into seed balls. The C1e Taylor models are computed over each box, and the T1 test
is run with both signs of Ψ. Boxes that meet y = 0 cannot pass that test.

#### Driver

`certify_seed_atlas.py` runs C1e once in the main process and passes the certified tube data to the workers for
T3. With edge balls and no `fourier_record`, F6 is checked by `f6_in_edge`.

### Global

- F6 lies in the record `fourier_record`, by `nonempty.check` on that record.
- Tao's matrix is checked by `tao.exact_spectrum`, its isolation and Stage C at the certificate's R.

## Measured cost (Apple M-series laptop, one core)

| Check | Cost |
|---|---|
| C1, k = 3 | about 0.25 s per ball (81 boxes) |
| C1, k = 4 | about 0.85–1.3 s per ball (240 boxes, 3.5–5.5 ms per box) |
| Stage C on the test balls (r = 0.02 to 0.08) | 0.1 to 0.3 s |
| T0 and T1 at a reordering of the corner | about 40 µs per box |
| other T1 and T2 | about 5 ms per box (one C1 box each) |
| `T1prime`, refined | about 12 ms per box (level-3 boxes, record 2003) |
| record certification | about 0.5 s |
| edge ball C1e, r = 0.1, k = (4,4,4,8) | 11.5 s (432 boxes, n_cert 1.16e-2, 3.1 times the sampled remainder) |
| edge ball C1e, r = 0.125, k = (5,5,5,12), (6,6,6,16), (8,8,8,16) | 32, 68 and 137 s (n_cert 1.55e-2, 1.40e-2 and 1.12e-2) |
| the same with (G) and (D), k = (5,5,5,12), (6,6,6,16) | 64 and 138 s, with σ_D 0.288 and 0.314 and image max ‖δ‖ 0.144 and 0.134, below R_G = 0.45 |
| T3 | about 10 ms per box |

The floating-point prototype takes 2.5 to 13 s per ball for C1 alone, mostly in continuation on each box.
