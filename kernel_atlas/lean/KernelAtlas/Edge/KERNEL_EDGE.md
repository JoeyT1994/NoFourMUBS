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
- `SideContinuity`, `BoxRoots`: continuous selected augmented roots on a checked closed box.
- `Label`: a finite integer check proves density of the nonzero-label part of the actual box.
- `PhaseModels`, `Chart`: full local phase-chart soundness, including Hadamard at the fold,
  continuity of the selected real argument lifts, and both phase and entry model enclosures.
- `Enclosure`: the affine residual `Q - P - U w - 2 pi N` uses the existing seed vertex bound.
- `Forced`: the forced-block Boolean proves invertibility even at the fold; the forced completion
  is continuous wherever the side block is invertible.
- `Fold`: affine-label density on convex domains and Hadamard extension of continuous root
  completions across the fold.
- `Angle`: the integer argument-window check provides a compact window of radius strictly less
  than pi, and a phase lift in this window is unique and continuous.
- `Glue`, `Overlap`: shifted predictor checks identify the selected augmented roots. The shared
  argument anchors identify the real phases as well, so the charts agree on overlaps.
- `GlobalChart`: compatible checked charts glue over a finite closed cover. `coverMatch` connects
  enlarged edge boxes to the existing exact ball and sphere coverage traversals.
- `Image`: soundness of the exact integer horizontal projection and the X image bound.
- `Frame`: inverse-Gram frame coordinates, the normal-space identity, and the strict graph-radius
  inequality for sigma = 17/10 and R_G = 9/20.
- `Normal`, `Fourier`: a kernel-checked rational frame and normal bound 171/100 at the rounded
  Fourier centre, transported to 17/10 at exact F6 using the proved Jacobian Lipschitz bound.
  `Graph` turns the checked X-image bound into the required strict graph-radius bound.
- `Transfer`: sound T1 transfers on shifted edge models, reusing the seed transfer kernel.
- `Smooth`, `SideJacobian`, `RootDerivative`, `ParameterDerivative`: the checked augmented
  Jacobian is invertible throughout its tube, and the selected root is strictly differentiable
  at interior box points with its actual implicit differential.
- `JacobianModels`, `ParameterModels`, `LinearResidual`, `SolveModels`, `RootModels`: exact
  Jacobian models and a residual-based Boolean check enclosing all four columns of that
  differential. `BlockDerivative`, `MatrixDerivative`, `ForcedDerivative`, `PhaseDerivative`,
  `CompletionModels` supply the entry calculus, differentiated forced-block equation, and
  model operations needed for phase derivatives.
- `Slope`: a Boolean row-contraction check and a soundness theorem applying `SlopeOpen` to
  maps whose actual differentials have the checked models. `ChartDerivative`, `ColumnModels`,
  `ColumnSound`, `ChartColumn`, `EtaModels`, `EtaJacModels`, and `ChartSlope` connect the
  implicit root and forced-block differentials to the actual continuous phase chart. The
  proof uses interior derivatives and a smaller closed ball, avoiding any differentiability
  claim at a box boundary. `GlobalOpen` transports this local openness to a compatible chart.
- `CoverChecks`: finite overlap tables discard disjoint box pairs and certify the remaining
  root identifications; a strict integer cover margin gives interior box neighbourhoods.
- `FullBox`: the complete local Boolean bundles chart, affine enclosure, both root
  differential checks, and the frame-coordinate slope check.
- `Assembly`: builds every field of `EdgeX.EdgeBallCert` from a finite checked cover. Its
  public `BallChart` retains equality to each local chart, including on the sphere.
- `CoverTable`: connects indexed cover cells to the checked boxes and their strict margins.
- `Boundary`, `ChartLink`, `Source`: check dyadic transfer coordinates, containment in a parent
  chart, root/phase identification, T1 bounds, row/column permutations, and sphere coverage.
  Target links identify the checked target data with actual `SeedBallCert` values.
- `Final`: combines one edge certificate and its boundary with the existing seed/record atlas;
  the independent X theorem, seed and record boundaries, Tao coverage, and Fourier anchor
  remain explicit inputs. No analytic edge fields are left as separate hypotheses.
- `SeedAtlas/EdgeX`, `EdgeXAtlas`, `EdgeXFinal`: the statement variant using `XExclusion` and the
  conditional atlas conclusion. The legacy Stage C route is preserved.

`Axioms.lean` audits the main edge theorems. `SeedAtlas/EdgeXAxioms.lean` audits the statement route.
All audited theorems depend only on `propext`, `Classical.choice`, and `Quot.sound`.

## Generator and benchmarks

`edge_kball.py` reads one edge entry from a FORMAT JSON or gzipped JSON certificate. It checks
exact mirrors before writing separate data/check modules, a checked cover and overlap table,
and `Cert.lean`. For T1 sphere groups, `edge_ktransfers.py` refines failing sources up to the
requested depth, checks their links to the containing (possibly refined) parent charts,
verifies the entire sphere traversal, and emits `Boundary.lean` and `Final.lean`. Missing coverage or a failed check is an error.
`Final.lean` uses actual seed certificates through explicit `TargetLink` hypotheses; it does
not invent seed certificates from target numbers.

```sh
PYTHONDONTWRITEBYTECODE=1 OPENBLAS_NUM_THREADS=1 .venv/bin/python kernel_atlas/generators/edge_kball.py CERTIFICATE.json.gz 0 --emit kernel_atlas/lean/KernelAtlas/Edge/Production
PYTHONDONTWRITEBYTECODE=1 OPENBLAS_NUM_THREADS=1 .venv/bin/python kernel_atlas/generators/edge_kball.py --demo --emit kernel_atlas/lean/KernelAtlas/Edge/SmallBall
PYTHONDONTWRITEBYTECODE=1 OPENBLAS_NUM_THREADS=1 .venv/bin/python kernel_atlas/generators/edge_ktransfers.py
```

The route requires the F6-centred chart: FORMAT `q0` is four zero parameter offsets. `P` and `U`
are reordered from the supplied chart gauge and used as the affine enclosure; the exact residual
check validates those predicted gauge and winding choices. `Mth` is rounded to the fixed-point
scale, and the radius is rounded down to a dyadic grid multiple. Consumers must use the emitted
radius and frame, including when supplying target links and transfers back into this ball.
The generator defaults to a uniform dyadic level at least as fine as `max(k)`; `--level` overrides
it. Failed analytic cells are refined adaptively, by at most two additional levels by default
(`--max-box-level` overrides the cap). The X radius is required and never replaced with a
fallback. Sphere refinement defaults to the certificate's `max_level` or the deepest input cell,
whichever is greater; `--max-transfer-level` overrides it. Source witnesses are emitted as they
pass, keeping only their cell/index table in memory. Seed-side T3 groups do not change this
edge emitter's T1 processing; their semantic boundary obligations remain with the seed atlas.

`SmallBall/Cert.lean` is a generated, fully kernel-checked radius-0.001 example with one enlarged
local box. Its sole mathematical input is `XExclusion (1/4)`; its frame, normal, cover,
compatibility, enclosure, continuity, Hadamard and openness fields are assembled. Its numerical
module takes about 72 seconds and the final assembly about 10 seconds with cached imports.
`SourceFixture/SourceCheck0.lean` checks a real dyadic T1 source at level 9 against the existing
radius-0.1 fixture, including the source/parent and coordinate links; its T1 bound is
0.000899115705 and its generated module takes about 20 seconds. This single source is not a
sphere cover. Regeneration preserves the small-ball modules exactly. Mutating transfer coordinates, target
orientation, row permutations or parent containment is rejected by the mirrors. The
boundary/final emitter templates were also type-checked with the sphere check
as an explicit parameter; the complete production analytic dataset has not been kernel-checked.

From the repository root, use the repository virtualenv, with bytecode writes disabled:

```sh
PYTHONDONTWRITEBYTECODE=1 OPENBLAS_NUM_THREADS=1 .venv/bin/python kernel_atlas/generators/edge_c1e.py --r .115 --rho 1/4 --k 16 --boxes 0 --emit kernel_atlas/lean/KernelAtlas/Edge/Baseline
PYTHONDONTWRITEBYTECODE=1 OPENBLAS_NUM_THREADS=1 .venv/bin/python kernel_atlas/generators/edge_transfer.py
```

The first command selects grid index `(0,4,5,6)` among 29,792 retained C1e boxes. The exact mirror
passes with image bound about 0.145 and derivative centre/error 1958.903 / 11.472. It takes about
2.3 seconds to construct and check this box in Python. Emission stops on any failed mirror check.

Additional reproducible generators are `edge_enclosure.py`, `edge_overlap.py`, and
`edge_normal.py`. `edge_cover.py` emits the entire baseline closed-ball geometry traversal:
29,808 dyadic cells, including the 16 cells touching only the sphere omitted by the old
open-ball list. The geometry check passes `decide +kernel` in 32 seconds (54 seconds for
elaborating its data module). This verifies geometry; the associated complete set of
local analytic checks is a separate obligation. `edge_derivative.py` emits the baseline root differential checks. Their
horizontal/vertical contraction bounds are 0.058104 and 0.057686, with coordinate radii
between 0.00154 and 0.00282. Both generated checks pass `decide +kernel` (26 seconds
for their combined Lake module, excluding cached dependencies). `edge_slope.py` emits the
assembled differential check. Its four row bounds are 0.365759, 0.399803, 0.398998, and
0.290960, and the generated check passes `decide +kernel` in 37 seconds. `Baseline/FullCheck`
combines the local checks and applies them to the actual matched chart's neighbourhood
image theorem. The baseline affine residual
is bounded by 0.013377178741; the adjacent
boxes `(0,4,5,6)` and `(0,4,5,7)` pass the overlap check. These checks and the second chart
are kernel-verified. The Fourier frame has Gram error at most 5.45e-9; the normal certificate's
positive-semidefinite residual has smallest diagonal about 0.001. The kernel checks the
actual integers and rationals, independently of these displayed floating summaries.

The transfer uses the existing radius-0.1 edge fixture and its radius-0.01 sphere seed fixture.
Its source centre is `(0,0,0,0.1)` and its half-width is 0.0004. The target radius, frame and
orientation are preserved. The kernel chart has a different bottom-row ordering from the floating
fixture, so the matching corner is selected and checked. The T1 bound is 0.00093300551, with inverse
residual about 1.14e-14. The mirror includes the rounding remainders introduced by `shiftL`, even
for a zero shift. This benchmark does not assert that the target fixture has a complete SeedBallCert.

Measured locally on 2026-10-25, with `LEAN_NUM_THREADS=8`, cached imports, and
`/usr/bin/time -l lake env lean <check-file>`:

| Check | Wall seconds | User + system CPU seconds | Maximum RSS |
| --- | ---: | ---: | ---: |
| Full baseline local box (chart, enclosure, derivatives, slope) | 75.34 | 69.44 | 19.65 GB |
| Baseline C1e box | 33.86 | 15.99 | 8.40 GB |
| Transfer core and T1 in one module | 39.52 | 16.64 | 8.06 GB |
| T1 alone, including evaluation of its edge models | 24.69 | 7.25 | 6.44 GB |

The wall times include Lake environment startup and contention with a small number of other local
builds. They are not isolated throughput measurements. CPU times include import and startup costs;
batching and sharing core models may reduce the amortized cost substantially.

The complete local-box benchmark is `Baseline/FullKernelCheck.lean`. A direct multiplication
gives about **575 core-hours for 29,808 full local checks**. The older C1e-only benchmark gives
about 132 core-hours for 29,792 C1e boxes, and 806–2,417 core-hours
for 0.4–1.2 million standalone T1 checks. If every transfer also needs an independently checked
edge core, the combined measurement gives 1,849–5,547 core-hours for that portion. These are
planning estimates from one box each, not full-atlas measurements. Source-to-parent links,
overlap tables, coverage and final assembly are additional. The current ball overlap table
checks every ordered box pair (pruning disjoint pairs), so its quadratic scaling has not yet been
benchmarked at 29,808 boxes. The full numerical local check can use about 20 GB; keep
`LEAN_NUM_THREADS=8` and at most one or two such checks running together on the shared machine.
No Rusty jobs were run; remote core-hours: **0**.

## Supplied development certificate

`proof/seed_atlas/results/dev_certificate_xball0115.json.gz` contains 2,328 seeds, one edge
ball with `r = 0.115`, **`x_radius = 3/20`**, and `k = [16,16,16,16]`. Its 1,440 T1 groups
contain 1,171,965 cells at levels 5–7. The complete exact Python sphere traversal passes
(2,688,737 traversal nodes). The input file remains outside Git.

```sh
PYTHONDONTWRITEBYTECODE=1 OPENBLAS_NUM_THREADS=1 .venv/bin/python kernel_atlas/generators/edge_preflight.py proof/seed_atlas/results/dev_certificate_xball0115.json.gz --emit kernel_atlas/lean/KernelAtlas/Edge/ProductionSample
```

The preflight checks all sphere geometry and samples analytic/transfer witnesses using the
same functions as the full generator. `ProductionSample/Report.json` records the input SHA256,
actual radii, grid, cells, and bounds. Three analytic and three T1 samples pass their exact
mirrors and `decide +kernel`. The analytic check modules take 65, 62 and 61 seconds;
the T1/source modules take 19, 17 and 18 seconds, excluding cached imports. These are
module build times, not isolated CPU benchmarks. The sample modules contain no full ball
or boundary certificate and do not assert that the unexamined cells or transfers pass.

At the development certificate's tighter X radius, the enlarged initial cell `(4,3,3,3,3)`
has an image bound 0.1536108 and fails the required 0.15. Its only retained child,
`(5,7,7,7,7)`, passes with bound 0.1332643 and slope 0.0908208. The symmetric last cell
also needs refinement. Four adjacent mixed-level chart pairs pass root identification in
both directions. Therefore the earlier 29,808-box CPU estimate is a base-grid estimate;
the full adaptive count and its additional cost have not been measured.

Parameter regression checks also read `r = 0.13`, `x_radius = 7/40`, and a changed `k` from
input data, without substituting baseline constants. This checks parameter handling only:
the pending final certificate at `proof/seed_atlas/results/seed_atlas_certificate.json.gz`
has not been generated or certified by this return.

## Remaining integration obligations

The generic kernel route constructs all fields of the edge ball, and the generated small
ball verifies that assembly end to end. The complete baseline geometry, real local boxes,
and transfer samples are checked. Production emission still requires running the analytic
checks, all overlap checks, and all T1 checks across the supplied dataset, followed by Lean
kernel verification; the full sphere geometry result above is an exact Python mirror result.

The independent X exclusion theorem and the surrounding seed/record atlas (including target
links, its boundaries, Tao coverage and the Fourier anchor) must be instantiated in the
generated final theorem. No hypothesis-free full-atlas theorem is claimed by this return.
The axiom audit remains standard axioms only.

This note lives under `Edge/` because the task's explicit writable-path restriction excludes
`kernel_atlas/docs/KERNEL_EDGE.md`.
