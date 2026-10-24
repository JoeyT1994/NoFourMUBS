# Seed atlas: the Arb certifier (piece A)

This checks a seed-atlas certificate (`../FORMAT.md`, `seed-atlas-v1`) against `../SPEC.md`. Every inequality that
decides a verdict is evaluated in Arb ball arithmetic (python-flint) on the exact binary64 data. Floats are used only
for predictors: side solutions and their derivatives, the forced block, the Krawczyk preconditioner Y, and the
approximate inverse A0. A bad predictor can make a check fail; it can never make one pass.

```bash
python3 proof/seed_atlas/cert/certify_seed_atlas.py proof/seed_atlas/results/seed_atlas_certificate.json.gz -j 16 --receipt receipt.json
```

`--only 'seeds:0-99,records:all,fourier,tao'` checks a subset. A subset run never reports PASS. The JSON receipt lists,
per item:
- the verdict and the reason for any failure;
- n and n_cert;
- Stage C counts and the transfer-box counts;
- timings.

Tests (about a minute):

```bash
python3 proof/seed_atlas/cert/tests/run_tests.py
```

## Files

| file | contents |
|---|---|
| `tmarb.py` | second-order Taylor models in 4 variables, batched over boxes, as numpy object arrays of `arb`/`acb` (+, −, ·, @, e^{i·}, sup norms) |
| `seedcert.py` | C1, the Stage C arguments, T0 / T1 / T2, the record-boundary kinds `rec` and `T1prime`, and the coverage traversals |
| `edgecert.py` | edge balls (SPEC §10): C1e, T3 into edge balls, and the edge ball's own T1 transfers and sphere cover |
| `certify_seed_atlas.py` | the whole certificate: one format adapter (`read_certificate`), multiprocessing, receipt |
| `tests/` | the prototype-built test balls (`data/`), fixtures, and `run_tests.py` (positive, sampling and negative tests) |

## What is checked

### Seed ball j

**C1** (`certify_c1`):
- Mth is certified invertible (Arb inverse).
- Of the k⁴ boxes of [−r, r]⁴, those meeting the open ball are kept (exact rational test). They cover the closed
  ball, since every point of it is a limit of interior points and the finitely many boxes are closed. For k = 4 this
  drops the 16 corner boxes that touch the ball at one vertex; they lie furthest out, and keeping them cost about 7%
  on n_cert.
- On each kept box:
  - **θ, E, G_h, G_v** as Taylor models.
  - **Side tubes.** For each side, a parametric Krawczyk test with scalar ρ, as in the SPEC: b + qρ < ρ, certified.
  - **Orientation and matching.** sign Im Ψ(B) = o and sign Im Ψ(Cᵀ) = −o, over the tube Taylor models. Ψ is
    perm·det²·conj(∏), since the entries are unimodular. Together with SM Prop. S.1, this also gives θ ∈ Ω.
  - **D.** D = X_p + remainder, by residual correction with an entrywise Neumann bound on |(B*)⁻¹|.
  - **arg D**, using the cubic remainder |v|³/(3(1 − |v|)), with |v| < 1/2 required.
- The residual Q − P − U(w_c + u) is bounded by the 16-vertex maximum of the linear part, plus Σ‖q_m‖h_jh_l, plus
  ‖ρ‖.
- n_cert is the maximum over the boxes, rounded up. The ball passes iff n_cert ≤ n.

**Stage C** (`run_stage_c`) is `stagec.stage_c` with the following arguments:
- **P.** P_c = fl(P/2π); the rounding d = ‖P − 2πP_c‖ is added to n.
- **rcol.** rcol = (maxᵢ ‖U_(block i)‖₂ r + n + d)/2π.
- **rF.** rF = (‖U‖₂ r + n + d)/2π.
- **The tangent part.** r/2π and (n + d)/2π.
- **Rounding.** Every value is rounded up. Operator norms are certified by an Arb Cholesky factorisation of μ²I − MᵀM.

**C2** (`check_seed_transfers`):
- **T0.** The 16 vertices are tested in the target's ellipsoid coordinates (Arb inverse of Mth_l), and o_l = o_j.
- **T1 at a reordering of the seed corner** (rows and cols both orderings of (0, 1, 2)). θ′ is integer-linear in θ, on
  the representative nearest P + Uw, so the 16-vertex test applies. The orientation is o_j for g ∈ {id, conjT} and −o_j
  for g ∈ {conj, T}, and the corner is matched; both follow from C1 at the sphere points. No Taylor models are needed.
- **T1 at any other corner.** The C1 Taylor models are computed over the whole box β, then:
  - θ′ = L g Q;
  - the sup of ‖Mth_l⁻¹(θ′ + 2πN − θ0_l)‖ is bounded as in C1;
  - the signs of Im Ψ of the dephased blocks K[I, Jᶜ] and K[Iᶜ, J]ᵀ are checked.
- **T2.** ‖hor(π g Q + 2πN − P_t)‖ < R_t over β, on the C1 Taylor models.
- **Coverage.** The FORMAT §4 traversal from the level-0 box, with an exact integer sphere test.

### Record s

- **The existing record checks.** `seedcert.RecordData` makes the calls of `proof/atlas/certify.certify_record`:
  - `BallRecord(phi, Tint)`, with σ from an Arb Cholesky factorisation;
  - `normal_bound(R)`, giving (r_H, n0);
  - Stage C at the stored R and label radius.
- **Exact data for the boundary.** It keeps the exact frame Tb and an exact basis Nb of N. Nb is P_N times a rational
  matrix: `Nint` if the certificate has it, else the certifier's own. A bound cN ≥ 1/σ_min(Nb) is certified by
  Cholesky.
- **Then `check_record_boundary`:**
  - eta_scale ≥ r_H.
  - **`rec`:** the 16-vertex maximum of ‖hor(π g(P + Tb η) + 2πN − P_t)‖ is below R_t − n0.
  - **`T1prime`** (refined, `nu_enclosure`): see below.
  - **Shell coverage:** FORMAT §6's shell {‖η‖ ≤ r_H, R² − n0² ≤ ‖Tb η‖² ≤ R²}. A box is discarded if certified off it
    in Arb: max of ‖Tb η‖² by the 16 vertices, min by the centre minus ‖Tb‖·(half-diagonal).

**T1′, refined** (`nu_enclosure`, `check_T1prime_group`). Every Hadamard of the record is e^{i(P + Tb η + Nb x)},
with ‖Nb x‖ ≤ n0. On each η-box:
1. **Predictor.** x̃(η) is a second-order Taylor model in η (float Gauss–Newton and finite differences, any choice).
   Y = (J Nb)⁺ is a fixed real 21×30 matrix, and F_η(x) = YΦ(Tb η + Nb x).
2. **Mean value form.** For any zero x* with ‖x* − x̃(η)‖₂ ≤ r: ‖x* − x̃‖₂ ≤ bF + q(r) r. This is an exclusion
   argument: it encloses the actual Hadamards and never needs existence. The certified conditions, labelled in
   `nu_enclosure`:
   - **(A1)** bF ≥ the supremum of ‖F(x̃)‖₂ over the whole η-box, from Taylor models.
   - **(A2)** eps0 ≥ ‖I − Y J(c) Nb‖_F, computed in Arb with Y as stored. Y J(c) Nb = I is never assumed.
   - **(A3)** q(r) = eps0 + ‖Y‖₂ · 2√3 · ‖Nb‖₂ (s_u + ‖Nb‖₂ r) bounds ‖I − Y J(δ) Nb‖₂ along every segment from x̃(η)
     into the r-ball, for every η in the box. Here c is the constant of the predictor's δ Taylor model, and s_u bounds
     its variation over the box. The 2√3 is RIGOUR.md's bound ‖Φ″[w, w′]‖ ≤ 2√3‖w‖‖w′‖, so
     ‖J(δ) − J(δ′)‖₂ ≤ 2√3‖δ − δ′‖₂.
3. **Iteration.** Start from r₀ = cN·n0 + sup‖x̃‖₂, a ball containing every ν ∈ N with ‖ν‖ ≤ n0. Iterate
   r ← ‖F(x̃)‖ + q(r) r while it shrinks. Every step is sound; no contraction condition is needed.
4. **Phases.** P + Tb η + Nb x̃(η) is then a Taylor model with per-entry remainder ‖Nb[e,:]‖₂ r. The T1 test is run on
   it: the corner seed inside int E_l, sign Im Ψ(K[I, Jᶜ]) = o_l, and sign Im Ψ(K[Iᶜ, J]ᵀ) = −o_l.

Next to F6 (atlas record 877, a corner with ‖Mth⁻¹L‖ ≈ 72):
- the enclosure radius is about 5·10⁻⁷ on level-5 η-boxes and about 3·10⁻⁵ on level-3 boxes, against n0 = 6.6·10⁻³;
- the crude ‖ν‖ ≤ n0 test (`check_T1prime_crude`, kept for comparison) fails there, and the refined one passes.

An entrywise ∞-box Krawczyk version (inclusion box [−cN n0, cN n0]²¹) does not contract on practical boxes: the
row sums of |I − YJ| are 1.1–2.3 on level-2 to level-4 boxes. Hence the 2-norm ball.

### Edge ball e (SPEC §10, `edgecert.py`)

**Exact data.** The augmented systems (return U, eq. 20) are written exactly as trigonometric polynomials. There are
70 monomials e^{i(n·z + κ)}, with Ψ expanded as a Laurent polynomial; κ is an integer multiple of π/3, from
θ⁰ = (1,2,2,4)π/3 and φ⁰ = (3,4,5,0,2,4)π/3 in Arb. So F and dF/dx are exact combinations of these monomials.

**C1e** (`certify_edge_c1`) on each box of the k-grid (k is per w-axis, e.g. (4,4,4,8)), with p = Mth(w_c + u):
- **Tubes.** A parametric Krawczyk tube for each 7-unknown system: horizontal at p, vertical at (u₁, u₃, u₂, −y).
  - The tube from the smallest working radius gives the C1e enclosure.
  - The largest radius that still passes, out of 0.03, 0.01, …, is kept as the box's uniqueness radius for T3.
- **t′ = t.** dR/dθ₄ > 0 and g > 0 are checked as Taylor models at θ = θ⁰ + (q₁, q₂, q₃, s), with s on the
  segment between t and t′ (t's Taylor model, its remainder enlarged by sup |t′ − t|).
- **Then, as for seed balls:** D by residual correction, arg D, and the per-box bound against P + Uw.
- **Consistency.** On adjacent boxes (all 80 neighbours), each box's enclosure must lie in the neighbour's uniqueness
  box, so that H(p) is one map. The check uses exact polynomial shifts.
- `f6_in_edge` checks F6 = H(0): x = 0 lies in the uniqueness box at w = 0.

**T3** (`check_T3`, FORMAT §8: kind `"T3"` with target, g, rows, cols, hcols, vrows, wind, wind_h, wind_v).
K = g·(source) gives:
- the corner seed θ′ at (rows, cols);
- the horizontal angles φ′_h, over columns hcols, and the vertical angles φ′_v, over rows vrows, both dephased at
  (i0, j0). Each is shifted by its stored winding.

All of these are linear in Q. Then:
- y′ = −2 Im Ψ(K[I, Jᶜ]), and p′ = (θ′₁..₃ − θ⁰₁..₃, y′) must satisfy ‖Mth⁻¹p′‖ < r.
- For every edge box the image of Mth⁻¹p′ may meet, |x′ − pred_e(w′ − w_e)| < ρ_e must hold over the whole source
  box, for both sides. Here x′ = (θ′₄ − θ⁰₄, φ′ − φ⁰). Source boxes are bisected (depth ≤ 8) when one edge box fails.
- The edge entries must have `"chart": "F6-012"` and k as 4 ints.

This relies on the vertical side solving the −y_K system. That holds if the corner is matched or y_K = 0; a strict
nonmatched corner would make K Tao (SPEC §10). The certifier does not check this; it is the same fact the SPEC's
openness argument uses.

**Edge transfers.** Kind T1 only, into seed balls: the C1e Taylor models over each box, then the T1 test with both Ψ
signs. Boxes meeting y = 0 cannot pass that test.

**Driver.** `certify_seed_atlas.py` runs C1e once in the main process and gives the certified tube data to the
workers, for T3. With edge balls and no `fourier_record`, the F6 check is `f6_in_edge`.

### Global

- F6 lies in record `fourier_record`, by `nonempty.check` on that record.
- Tao: `tao.exact_spectrum`, isolation and Stage C at the certificate's R.

## Measured cost (M-series laptop, one core)

| check | cost |
|---|---|
| C1, k = 3 | about 0.25 s per ball (81 boxes) |
| C1, k = 4 | about 0.85–1.3 s per ball (240 boxes, 3.5–5.5 ms per box) |
| Stage C on the test balls (r = 0.02 to 0.08) | 0.1 to 0.3 s |
| T0 and corner-symmetry T1 | about 40 µs per box |
| general T1 and T2 | about 5 ms per box (one C1 box each) |
| `T1prime`, refined | about 12 ms per box (level-3 boxes, record 2003) |
| record certification | about 0.5 s |
| edge ball C1e, r = 0.1, k = (4,4,4,8) | 11.5 s (432 boxes; n_cert 1.16e-2, 3.1× the sampled remainder) |
| edge ball C1e, r = 0.125, k = (5,5,5,12) / (6,6,6,16) / (8,8,8,16) | 32 / 68 / 137 s (n_cert 1.55e-2 / 1.40e-2 / 1.12e-2) |
| T3 | about 10 ms per box |

For comparison, the float prototype takes 2.5 to 13 s per ball for C1 alone, mostly in per-box continuation.
