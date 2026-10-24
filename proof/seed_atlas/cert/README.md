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
| `certify_seed_atlas.py` | the whole certificate: one format adapter (`read_certificate`), multiprocessing, receipt |
| `tests/` | the prototype-built test balls (`data/`), fixtures, and `run_tests.py` (positive, sampling and negative tests) |

## What is checked

### Seed ball j

**C1** (`certify_c1`):
- Mth is certified invertible (Arb inverse).
- The k⁴ boxes of [−r, r]⁴ are taken, dropping a box only if it is exactly certified to miss the ball.
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

- `proof/atlas/certify.certify_record`, unchanged: σ, the normal bound n (including dT·r_H), and Stage C.
- Then `check_record_boundary`:
  - eta_scale ≥ r_H;
  - **`rec`:** the 16-vertex maximum of ‖hor(π g(P + Tη) + 2πN − P_t)‖ is below R_t − n;
  - **`T1prime`:** the corner seed is affine in η plus Mth_l⁻¹ L g ν, with ‖Mth_l⁻¹ L g‖₂ bounded in Arb. The signs
    of Ψ are checked over Taylor models in η, with |dephased ν| ≤ 2‖ν‖;
  - **shell coverage:** boxes are discarded by `atlas.offshell`'s test, in Arb.

### Global

- F6 lies in record `fourier_record`, by `nonempty.check` on that record.
- Tao: `tao.exact_spectrum`, isolation and Stage C at the certificate's R.

## Measured cost (M-series laptop, one core)

| check | cost |
|---|---|
| C1, k = 3 | about 0.25 s per ball (81 boxes) |
| C1, k = 4 | about 0.85 s per ball (256 boxes, 3.3 ms per box) |
| Stage C on the test balls (r = 0.02 to 0.08) | 0.1 to 0.3 s |
| T0 and corner-symmetry T1 | about 40 µs per box |
| general T1 and T2 | about 5 ms per box (one C1 box each) |
| `T1prime` | about 0.7 ms per box |
| record certification | about 0.5 s |

For comparison, the float prototype takes 2.5 to 13 s per ball for C1 alone, mostly in per-box continuation.
