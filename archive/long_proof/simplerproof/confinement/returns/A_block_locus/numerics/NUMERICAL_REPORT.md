# Numerical exploration: evidence only

These files record a bounded exploratory test of the proposed
local-minimum route. They do not certify minima, exclude regions, or
prove global confinement.

## Supplied self-test

`selftest.log` contains the output of the unmodified supplied
`inputs/toolkit/selftest.py`. It prints `SELFTEST PASS`. The script
checks a few floating-point square-identity evaluations and extremal
curve values. Its example chart output is not included in its
accumulated pass/fail flag and is not an interval certificate.

## Minimax-descent pilot

The two calls used:

| Random seed | Requested starts | Maximum iterations |
|---:|---:|---:|
| 1837 | 24 | 250 |
| 830611 | 160 | 250 |

One starting-matrix attempt failed, leaving 183 completed descents.
The original JSON records include every returned phase vector,
starting maximum, stopping maximum, row-orthogonality residual,
singular values, trust radius, iteration history, and runtime.

The algorithm differentiates the permanent/determinant expression
analytically, computes a numerical nullspace of the Hadamard
Jacobian, and solves a linear minimax problem inside that tangent
space. It then retracts using the supplied Newton projection and
accepts a step only after checking the full 400-corner maximum.
Complementary-corner equality reduces the linear subproblem to 200
corner functions. None of these floating-point operations certifies
the existence of a differentiable local chart.

## Recorded stopping values

| Class | Runs |
|---|---:|
| Near zero | 80 |
| 205.421319, approximately | 45 |
| 243, approximately | 38 |
| 250.739728, approximately | 8 |
| 256, approximately | 10 |
| 260.616435, approximately | 2 |

The final orthogonality residuals are at most approximately
9.97e-14. The 80 near-zero points have numerical Fourier alignments
of norm at most approximately 6.13e-7. Reported total descent time
is about 30.38 seconds, excluding starting-matrix generation and the
later alignment checks.

The exact saved floating-point statistics are in `summary.json`.
They are measurements of this run, with no rigorously certified
error intervals.

## Interpretation

No positive stopping point below 26 was observed. This agrees with
the proposed low-sublevel picture, but provides no coverage of all
Hadamards. Positive stopping points may be nonsmooth stationary
points, saddle points, or numerical stalls. They have not been
certified as local minima. Failure of the linearized subproblem to
find descent is not a proof of local minimality.

The main proof uses none of these records. See `../README.md` for
replay commands; numerical trajectories may vary with dependency
versions and linear algebra implementations.
