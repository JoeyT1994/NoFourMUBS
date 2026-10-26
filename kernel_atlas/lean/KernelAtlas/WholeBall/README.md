# Whole-ball C1 from one matched centre

The semantic and Boolean soundness chain is complete. `wholeBallCheck_sound`
proves the exact `SeedBallCert.hC1` proposition, including strict seed validity,
orientation, horizontal gauge, and the recorded centre/frame correction.
The generated `Ball2299.hC1` has kernel-checked successfully, and
`Ball2299.radius_positive` proves that its radius is positive. Both the generic
soundness audit and the concrete instance audit use standard axioms only.

Reference: `proof/theorems/Z_completion_hessian/Z_completion_hessian_return/THEOREM.md`.
The Python and independent Julia implementations in `proof/seed_atlas/cert/wholeball.py`
and `proof/independent_seed/src/wholeball.jl` supply the arithmetic conventions.
No mathematical variant of Z is used.

## Theorem map

Semantic `WholeBall*.lean` files are under `lean/NoFourMUBs/SeedAtlas/Method/`.
The other files in this table are in this directory.

| Z section | Lean interface | Verified connection |
|---|---|---|
| §1, local matched branch | `CertifiedCentre.phase_germ`, `CertifiedCentre.normal_germ` | The same certified side roots supply the entry enclosures and analytic phase lift. The frozen normal basis has an exact retraction. No full-residual germ is assumed. |
| §2 (0), Gram projection | `centreGramCheck_sound`, `centreProjection_identity` | Exact interval Jacobian and Gram calculations, Neumann-certified invertibility, and an enclosure of the specified `(AᵀA)⁻¹Aᵀ`. The proposed inverse is only a witness. |
| §2 (1), predictors | `centreJetCheck_sound`, `BasisIdentities`, `centreFourier_cancel` | Exact tangent/second-jet formulas, horizontal gauge, seed coordinates, and exact zero/first/second-jet cancellations. |
| §§2–3, actual residual | `centreFourier_equation`, `centreFourierCheck_sound` | The finite Fourier equation is the actual projected thirty-component row-Gram residual at the quadratic predictor. |
| §3 (3)–(6), tensor constants | `TensorEnclosure`, `FiniteData.sound`, `MatrixBox.certifyNorm_sound` | Signed tensor sums precede norm bounds. Exact LDLᵀ spectral witnesses are used for U and H₂; Frobenius is a valid conservative fallback for higher tensors and side derivatives. |
| §3–4 (7), Taylor bounds | `WholeBallTaylor`, `WholeBallFourierBounds`, `FiniteCentreBounds.residual_bound` | Actual finite exponential derivatives yield the fifth-order residual estimate with the prescribed factorials. |
| §4 (8), normal derivative | `FourierModel.normalDerivative_eq`, `FiniteCentreBounds.normal_bound` | The derivative is identified analytically and bounded throughout the full predictor tube. |
| §4, contraction and continuation | `WholeBallContraction`, `WholeBallImplicit`, `WholeBallContinuation`, `CertifiedCentre.full_family` | Banach uniqueness and an analytic implicit root continue the local full Hadamard germ to the entire closed ball. |
| §5 (12), direct and record errors | `direct_remainder`, `recordErrorCheck_sound`, `CertifiedCentre.hC1` | The error is βr²/2 + xτ + εP + rεU. Exact stored rational P and U are retained, including bits below the centre arithmetic's 2⁻⁶⁰ grid. |
| §6 (14)–(15), orientations | `WholeBallSignature`, `SideFiniteBounds.variation`, `sideCentreCheck_sound`, `sideNormCheck_sound` | The actual 24-frequency signature identity and frequency Gram bound 72 give the quadratic error 36ε². Both signed margins are checked. |
| §§4–6, scalar acceptance | `scalarCheck_sound` | Strict contraction, both positive margins, and the non-strict recorded-radius inequality are checked over ℚ and transferred to ℝ. |
| Off-grid input | `shiftedWholeBallCheck_sound`, `ShiftRegression` | An exact finite-dimensional identity and norm bound certify containment and the recorded-centre translation, using the same whole-ball theorem. |
| Complete C1 | `wholeBallCheck_sound` | Every input above is discharged by the Boolean gate; its conclusion has the representative form consumed by `SeedBallCert.hC1` and `Seed.ballCertH`. |

`Axioms.lean` audits the complete soundness chain; `Ball2299Axioms.lean` audits
the generated instance. The successful audit contains
only `propext`, `Classical.choice`, and `Quot.sound`. There are no `sorry` terms,
custom axioms, or native-evaluation certificates.

## Generator and checks

From the repository root, with NumPy available:

```sh
PYTHONDONTWRITEBYTECODE=1 python3 -B kernel_atlas/generators/wholeball_regression.py
PYTHONDONTWRITEBYTECODE=1 python3 -B kernel_atlas/generators/wholeball_kball.py \
  proof/seed_atlas/results/dev_certificate_xball0115.json.gz 2299 --check
```

The generator emits `Centre2299`, `Gram2299`, `Jets2299`, the `Fourier2299*`
leaves, and `Ball2299*`. `Ball2299.hC1` is the final stored-data proposition.
Off-grid inputs additionally emit a `Core` module and a translation wrapper.
Other indices select other input balls. There are **2,328 seeds** in this input;
this is not a claim that every seed has been generated or kernel checked.
The three input centres below the 2⁻⁶⁰ grid use `ShiftedBall`: an exact seed-space
translation embeds the requested ball in a slightly larger certified ball and
translates the recorded centre by the stored frame. The final theorem retains
the original angles and radius. All three translated centres pass exact replay;
their radius increases are at most 1.74 × 10⁻¹⁸.
`Ball2299ShiftRegression.hC1` kernel-checks the generated wrapper on a translated
subball of the real certificate; its axiom audit is also standard-only.

All proposals are validated by rational interval arithmetic; floating-point
Newton and inverse calculations only propose witnesses. Lean uses `decide +kernel`.
The generator rejects insufficient bounds and never silently overwrites differing
existing modules. A basis override must equal the frozen basis exactly.
Side phase proposals preserve the lift near the stored phase record.

`--check` runs `LEAN_NUM_THREADS=8 lake build <Module>` from `lean/` in dependency
order. The arithmetic row modules form chains: the second normal derivative has
three chains, and the other tensors each have one, so at most three row leaves run;
`--check` also sequences the polynomial prerequisites. Small blocks bound
kernel memory; exact equality certificates cache polynomial tensors so output
rows reuse the same arithmetic. `MatrixColumns` checks proposed repeated columns
and transfers their enclosures to the full tensor; for seed 2299 this reduces
the quartic products from 256 columns to 35 and the second normal derivative
from 336 to 210. Both midpoints and radii must agree. No symmetry assumption is
trusted. Array-backed literals reduced the measured cost compared with nested
Fin vectors; kernel evaluation still uses their logical list representation.
The larger second-derivative cache uses balanced finite lookups instead; its
full reconstruction is checked entry by entry before any product uses it.
These are implementation choices, not trusted numerical shortcuts.
Large polynomial checks elaborate their proofs sequentially to bound retained
memory. Frobenius bounds use separately kernel-checked exact row-square sums
(`MatrixRowNorms`), followed by a scalar sum check. Per-frequency norms are
also separate proof declarations, keeping the entire norm calculation out of
a single kernel reduction. Measurements used at most three independent groups,
each with eight Lean threads. `--check` sequences groups, with the three
second-derivative chains sharing a group. Per-stage wall/CPU times and peak RSS
are saved in `Ball2299Timings.json`; generated logs identify rebuilt versus
cached stages. Peak RSS is the maximum reported for a
process, not the sum over concurrent workers; on macOS it also excludes some
compressed memory. It must not be read as the total machine memory required.
Cached build time must not be reported as fresh kernel arithmetic time.

The exact regressions independently compare the cubic/quartic tensors with an
exponential power-series recurrence, exercise interval matrix products and
spectral/inverse bounds, and reject boundary failures and corrupted witnesses.

## Measurements

One real input ball, seed **2299 of 2,328**, has been kernel checked. All runs
were local; **0 remote Lean core-hours** were used. A read-only check of rusty
found no configured Lean runtime. The machine was an Apple M5 Max (18 cores,
64 GiB RAM), macOS 26.6, using Lean 4.33.0-rc2 and `LEAN_NUM_THREADS=8`.

The certified radius is approximately 0.063, n ≈ 0.00129210667715422, and
n_record ≈ 0.0012781436681019334. Both orientation margins exceed 7.91.
`Ball2299Input.json` records the exact input hash and radius.

`Ball2299Timings.json` contains 44 stage records, with source hashes, fresh/cached
status, wall/CPU time and peak RSS where measured. `Ball2299Measurements.json`
records the machine, audit result, concurrency and memory-measurement scope.
Selected successful fresh stages are below. Tensor-product stages use already
checked polynomial inputs; their prerequisite times are separate JSON entries.

| Stage | Command wall time | Peak process RSS |
|---|---:|---:|
| Frozen basis norm | 21.82 s | 6.17 GiB |
| Matched regular centre | 35.19 s | 6.35 GiB |
| Centre Gram/inverse | 98.82 s | 23.85 GiB |
| Predictor jets and spectral norms | 1,253.04 s | 44.66 GiB |
| Centre-to-Fourier links | 365.79 s | 27.60 GiB |
| Cubic products | 1,669.42 s | 6.50 GiB |
| Quartic products | 1,722.42 s | 10.81 GiB |
| Mixed derivative products | 1,144.28 s | 5.22 GiB |
| Second derivative reconstruction | 1,391.02 s | 6.23 GiB |
| Second derivative products, three chains | 2,974.53 s | 5.98 GiB |
| Normal tensor products | 4,891.30 s | 8.51 GiB |
| Final C1 assembly after arithmetic leaves | 50.46 s | 9.11 GiB |
| Concrete axiom audit | 19.69 s | 5.49 GiB |

The eight norm/sum stages total 402.25 seconds of stage wall time. The largest
measured process RSS was 44.66 GiB in the predictor stage, which experienced
memory contention. A five-second sampler during the second-derivative products
and final assembly observed a maximum combined Lean-process physical footprint
of 10.15 GiB; this sample does not cover earlier stages or include Lake.

These are incremental component measurements. Some independent stages overlapped,
so their wall times must not be added and reported as a cold end-to-end elapsed
benchmark. Four second-derivative polynomial prerequisite times come from Lake's
rounded successful-module times, with no separate CPU/RSS measurement. Cached
stages and stopped optimization attempts are explicitly excluded from fresh
arithmetic measurements. The complete Boolean gate and final hC1 were checked;
no claim is made that the other 2,327 input balls have been kernel checked.
