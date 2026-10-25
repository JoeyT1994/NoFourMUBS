# Edge kernel

The edge chart uses the augmented seven-variable side systems in `Sys.lean`. The horizontal and
vertical sides retain their own fourth-angle unknown. A positive discriminant derivative on the
common interval identifies those angles away from the fold. The fixed-point precision is 60 bits.

## Verified components

- `C1eSide`: augmented Krawczyk existence, uniqueness and coordinate error bounds.
- `R4Model`, `R4Deriv`, `R4`: enclosure of the derivative circuit, its derivative identity, and
  strict monotonicity of the actual seed discriminant. `edge_r4.py` emits the two circuit proofs.
- `SideModels`: root-coordinate and side-row enclosures and the common fourth-angle interval.
- `CoreRegular`: a passing core box at nonzero label gives a Hadamard completion, phase models and
  entry models. A passing C1e box additionally bounds the horizontal phase distance to F6.
- `SideContinuity`: the selected augmented root is continuous on a checked closed box.
- `Forced`: the forced-block Boolean proves invertibility even at the fold; the forced completion
  is continuous wherever the side block is invertible.
- `Fold`: affine-label density on convex domains and Hadamard extension of continuous root
  completions across the fold.
- `Angle`: the integer argument-window check provides a compact window of radius strictly less
  than pi, and a phase lift in this window is unique and continuous.
- `Glue`: the shifted predictor overlap check puts a root in a neighbouring uniqueness tube;
  compatible continuous functions glue over a finite closed cover.
- `Image`: soundness of the exact integer horizontal projection and the X image bound.
- `Frame`: inverse-Gram frame coordinates, the normal-space identity, and the strict graph-radius
  inequality for sigma = 17/10 and R_G = 9/20. The numerical normal bound is a separate obligation.
- `Transfer`: sound T1 transfers on shifted edge models, reusing the seed transfer kernel.
- `SeedAtlas/EdgeX`, `EdgeXAtlas`, `EdgeXFinal`: the statement variant using `XExclusion` and the
  conditional atlas conclusion. The legacy Stage C route is preserved.

`Axioms.lean` audits the main edge theorems. `SeedAtlas/EdgeXAxioms.lean` audits the statement route.
All audited theorems depend only on `propext`, `Classical.choice`, and `Quot.sound`.

## Generator and benchmarks

From the repository root, use the repository virtualenv, with bytecode writes disabled:

```sh
PYTHONDONTWRITEBYTECODE=1 OPENBLAS_NUM_THREADS=1 .venv/bin/python kernel_atlas/generators/edge_c1e.py --r .115 --rho 1/4 --k 16 --boxes 0 --emit kernel_atlas/lean/KernelAtlas/Edge/Baseline
PYTHONDONTWRITEBYTECODE=1 OPENBLAS_NUM_THREADS=1 .venv/bin/python kernel_atlas/generators/edge_transfer.py
```

The first command selects grid index `(0,4,5,6)` among 29,792 retained C1e boxes. The exact mirror
passes with image bound about 0.145 and derivative centre/error 1958.903 / 11.472. It takes about
2.3 seconds to construct and check this box in Python. Emission stops on any failed mirror check.

The transfer uses the existing radius-0.1 edge fixture and its radius-0.01 sphere seed fixture.
Its source centre is `(0,0,0,0.1)` and its half-width is 0.0004. The target radius, frame and
orientation are preserved. The kernel chart has a different bottom-row ordering from the floating
fixture, so the matching corner is selected and checked. The T1 bound is 0.00093300551, with inverse
residual about 1.14e-14. The mirror includes the rounding remainders introduced by `shiftL`, even
for a zero shift. This benchmark does not assert that the target fixture has a complete SeedBallCert.

Measured locally on 2026-10-25, with `LEAN_NUM_THREADS=8`, cached imports, and `/usr/bin/time -l
lake env lean <check-file>`:

| Check | Wall seconds | User + system CPU seconds | Maximum RSS |
| --- | ---: | ---: | ---: |
| Baseline C1e box | 33.86 | 15.99 | 8.40 GB |
| Transfer core and T1 in one module | 39.52 | 16.64 | 8.06 GB |
| T1 alone, including evaluation of its edge models | 24.69 | 7.25 | 6.44 GB |

The wall times include Lake environment startup and contention with a small number of other local
builds. They are not isolated throughput measurements. CPU times include import and startup costs;
batching and sharing core models may reduce the amortized cost substantially.

A direct multiplication gives about 132 core-hours for 29,792 C1e boxes, and 806–2,417 core-hours
for 0.4–1.2 million standalone T1 checks. If every transfer also needs an independently checked
edge core, the combined measurement gives 1,849–5,547 core-hours for that portion. These are
planning estimates from one box each, not full-atlas measurements. Overlap, derivative, graph,
coverage and assembly checks are additional. No Rusty jobs were run; remote core-hours: 0.

## Remaining integration obligations

The components above do not yet constitute a complete edge-ball certificate. The selected box
roots and phase lifts must be assembled into a chart with full model soundness at the fold; the
finite cover and overlap checks must be generated and connected to that chart. The numerical F6
normal bound, derivative/slope enclosures proving openness, complete sphere coverage, and a
certificate-format emitter assembling every field remain separate obligations. The X exclusion
itself is supplied by the independent X theorem. No hypothesis-free final theorem is claimed here.

This note lives under `Edge/` because the task's explicit writable-path restriction excludes
`kernel_atlas/docs/KERNEL_EDGE.md`.
