# Whole-ball enclosure from one centre computation

This folder checks, in the Lean kernel, the enclosure of the Hadamard matrices over a seed ball (Lemma 3.1 of
`PROOF.md`) from one computation at the ball's centre. The method is the whole-ball enclosure theorem,
`proof/theorems/Z_completion_hessian/Z_completion_hessian_return/THEOREM.md`. The formalisation follows that theorem
as stated, with no mathematical variant. The Python and independent Julia implementations,
`proof/seed_atlas/cert/wholeball.py` and `proof/independent_seed/src/wholeball.jl`, fix the arithmetic conventions.

## Status

The soundness chain is complete, from the semantic statements to the Boolean checks. `wholeBallCheck_sound` proves
the exact proposition `SeedBallCert.hC1`. This includes strict seed validity, the orientation, the horizontal gauge
and the correction from the recorded centre and frame. For one ball, seed 2299, the generated `Ball2299.hC1` is
kernel-checked, and `Ball2299.radius_positive` proves that its radius is positive. The generic soundness chain and
this instance both use only the standard axioms. The other 2,327 balls of the input have not been generated or
kernel-checked.

## Theorem map

The semantic `WholeBall*.lean` files are in `lean/NoFourMUBs/SeedAtlas/Method/`. The other files in this table are
in this folder. The first column gives section and equation numbers of `THEOREM.md`.

| Section | Lean interface | What is proved |
|---|---|---|
| §1, local matched branch | `CertifiedCentre.phase_germ`, `CertifiedCentre.normal_germ` | The same certified side roots supply the entry enclosures and the analytic phase lift. The frozen normal basis has an exact retraction. No full-residual germ is assumed. |
| §2 (0), Gram projection | `centreGramCheck_sound`, `centreProjection_identity` | Exact interval Jacobian and Gram calculations, invertibility certified by a Neumann series, and an enclosure of the specified `(AᵀA)⁻¹Aᵀ`. The proposed inverse is only a witness. |
| §2 (1), predictors | `centreJetCheck_sound`, `BasisIdentities`, `centreFourier_cancel` | Exact formulas for the tangent and second jet, the horizontal gauge, the seed coordinates, and exact cancellations of the zeroth, first and second jets. |
| §§2–3, actual residual | `centreFourier_equation`, `centreFourierCheck_sound` | The finite Fourier equation is the actual projected thirty-component row-Gram residual at the quadratic predictor. |
| §3 (3)–(6), tensor constants | `TensorEnclosure`, `FiniteData.sound`, `MatrixBox.certifyNorm_sound` | Signed tensor sums come before norm bounds. Exact LDLᵀ spectral witnesses are used for U and H₂. The Frobenius norm is a valid conservative fallback for higher tensors and side derivatives. |
| §3–4 (7), Taylor bounds | `WholeBallTaylor`, `WholeBallFourierBounds`, `FiniteCentreBounds.residual_bound` | The actual finite exponential derivatives give the fifth-order residual estimate with the prescribed factorials. |
| §4 (8), normal derivative | `FourierModel.normalDerivative_eq`, `FiniteCentreBounds.normal_bound` | The derivative is identified analytically and bounded throughout the full predictor tube. |
| §4, contraction and continuation | `WholeBallContraction`, `WholeBallImplicit`, `WholeBallContinuation`, `CertifiedCentre.full_family` | Banach uniqueness and an analytic implicit root continue the local full Hadamard germ to the entire closed ball. |
| §5 (12), direct and record errors | `direct_remainder`, `recordErrorCheck_sound`, `CertifiedCentre.hC1` | The error is βr²/2 + xτ + εP + rεU. The exact stored rational P and U are kept, including bits below the 2⁻⁶⁰ grid of the centre arithmetic. |
| §6 (14)–(15), orientations | `WholeBallSignature`, `SideFiniteBounds.variation`, `sideCentreCheck_sound`, `sideNormCheck_sound` | The actual 24-frequency signature identity and the frequency Gram bound 72 give the quadratic error 36ε². Both signed margins are checked. |
| §§4–6, scalar acceptance | `scalarCheck_sound` | Strict contraction, both positive margins and the non-strict recorded-radius inequality are checked over ℚ and transferred to ℝ. |
| Off-grid input | `shiftedWholeBallCheck_sound`, `ShiftRegression` | An exact finite-dimensional identity and a norm bound certify containment and the translation of the recorded centre, using the same whole-ball theorem. |
| Complete enclosure | `wholeBallCheck_sound` | The Boolean check discharges every input above. Its conclusion has the form used by `SeedBallCert.hC1` and `Seed.ballCertH`. |

`Axioms.lean` audits the axioms of the complete soundness chain, and `Ball2299Axioms.lean` audits those of the
generated instance. Both report only `propext`, `Classical.choice` and `Quot.sound`. There are no `sorry` terms,
custom axioms or native-evaluation certificates.

## Generating and checking a ball

From the repository root, with NumPy available:

```sh
PYTHONDONTWRITEBYTECODE=1 python3 -B kernel_atlas/generators/wholeball_regression.py
PYTHONDONTWRITEBYTECODE=1 python3 -B kernel_atlas/generators/wholeball_kball.py \
  proof/seed_atlas/results/dev_certificate_xball0115.json.gz 2299 --check
```

The first command runs the exact regressions. These compare the cubic and quartic tensors with an independent
exponential power-series recurrence and exercise the interval matrix products and the spectral and inverse bounds.
They also check that boundary failures and corrupted witnesses are rejected.

The second command generates the modules for seed 2299 and kernel-checks them. Its input is a development
certificate with 2,328 seed balls. This is not the 2,775-ball certificate described in `PROOF.md`, and it is not
included in the repository. Other indices select other balls. The generator writes `Centre2299`, `Gram2299`,
`Jets2299`, the `Fourier2299*` leaves and `Ball2299*`. `Ball2299.hC1` is the final proposition about the stored
data.

Three centres in the input have bits below the 2⁻⁶⁰ grid. For these the generator also writes a `Core` module and a
translation wrapper, which use `ShiftedBall`. An exact translation in seed space embeds the requested ball in a
slightly larger certified ball and translates the recorded centre by the stored frame. The final theorem keeps the
original angles and radius. All three translated centres pass an exact re-check, and their radii grow by at most
1.74 × 10⁻¹⁸. `Ball2299ShiftRegression.hC1` kernel-checks the generated wrapper on a translated subball of the real
certificate. Its axiom audit also shows only the standard axioms.

### How the check is organised

Floating-point Newton and inverse calculations only propose witnesses. Every proposal is validated in rational
interval arithmetic, and Lean checks it with `decide +kernel`. The generator stops when a bound is insufficient, and
it does not silently overwrite an existing module that differs. A basis override must equal the frozen basis exactly.
Proposed side phases keep the lift near the stored phase record.

`--check` runs `LEAN_NUM_THREADS=8 lake build <Module>` from `lean/` in dependency order. The arithmetic is split
into row modules that form chains. The second normal derivative has three chains and each other tensor has one, so
at most three row leaves run at once. `--check` also orders the polynomial prerequisites. The measurements used at
most three independent groups, each with eight Lean threads. `--check` runs the groups in sequence, and the three
second-derivative chains share a group.

Several choices keep the kernel's time and memory down. None of them is a trusted numerical shortcut.

- Small blocks bound the kernel's memory. Exact equality certificates cache the polynomial tensors, so output rows
  reuse the same arithmetic.
- `MatrixColumns` checks proposed repeated columns and transfers their enclosures to the full tensor. Both midpoints
  and radii must agree, and no symmetry is assumed. For seed 2299 this reduces the quartic products from 256 columns
  to 35, and the second normal derivative from 336 columns to 210.
- Array-backed literals measured cheaper than nested `Fin` vectors. Kernel evaluation still uses their logical list
  representation. The larger second-derivative cache uses balanced finite lookups instead, and its full
  reconstruction is checked entry by entry before any product uses it.
- Large polynomial checks elaborate their proofs one at a time to bound retained memory.
- Frobenius bounds use exact row-square sums, kernel-checked separately (`MatrixRowNorms`), followed by a check of
  the scalar sum. The norm at each frequency is also a separate declaration, so the whole norm calculation is never a
  single kernel reduction.

## Measurements

One ball of the input, seed 2299 of 2,328, has been kernel-checked. All runs were on one machine, an Apple M5 Max
(18 cores, 64 GiB RAM) with macOS 26.6, Lean 4.33.0-rc2 and `LEAN_NUM_THREADS=8`.

The certified radius is about 0.063, with n ≈ 0.00129210667715422 and n_record ≈ 0.0012781436681019334. Both
orientation margins exceed 7.91. `Ball2299Input.json` records the input ball and its exact radius.

`Ball2299Timings.json` has 44 stage records. Each gives the wall time, CPU time and peak RSS where measured, and
whether the stage was rebuilt or cached. `Ball2299Measurements.json` records the machine, the axiom audit, the
concurrency and the scope of the memory measurements. The table below lists selected fresh stages that succeeded.
The tensor-product stages start from polynomial inputs that were already checked, and the times of those
prerequisites are separate entries in the JSON file.

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
| Final `hC1` assembly after the arithmetic leaves | 50.46 s | 9.11 GiB |
| Concrete axiom audit | 19.69 s | 5.49 GiB |

The eight norm and sum stages take 402.25 s of stage wall time in total. The largest process RSS, 44.66 GiB, was in
the predictor stage, which ran under memory contention. A sampler running every five seconds during the
second-derivative products and the final assembly saw at most 10.15 GiB of combined physical footprint of the Lean
processes. This sample does not cover the earlier stages or include Lake.

Peak RSS is the maximum for one process, not the sum over concurrent workers. On macOS it also leaves out some
compressed memory. So it is not the total memory the machine needs. These are measurements of individual
components, built incrementally. Some independent stages overlapped, so their wall times do not add up to a cold
end-to-end time. A cached build time is not a fresh kernel arithmetic time. Four second-derivative polynomial
prerequisite times are Lake's rounded times for successful modules, with no separate CPU or RSS measurement. Cached
stages and stopped optimisation attempts are excluded from the fresh arithmetic measurements.
