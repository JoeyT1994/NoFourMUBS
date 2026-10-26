# Numerical reconstruction and benchmark notes

Exploratory floating-point scripts and tables in this directory are **NUMERICAL**. The explicitly named Arb witness replays and their final joined comparison are **CERTIFIED**, as described in the final section below. No unvalidated binary64 evaluation is an interval certificate. The `n_cert` column of the supplied CSV is an input claim, not a certificate replayed here.

## Input and frame recovery

The 300-row CSV supplies rounded centers, radius, orientation and only the largest and smallest frame singular values. It does not supply the original exact 4x4 `Mth`, side phases, phase center, tangent frame, or rounding errors. Consequently its original ellipsoids and exact anchors cannot be recovered as exact data from the CSV alone.

The documented canonical horizontal frame is, however, numerically reconstructible. If `T=h DQ(theta0)=U S V^T`, choose `M=V S^-1`. Its ellipsoid depends only on `M M^T=(T^T T)^-1`, so the right orthogonal freedom is irrelevant. All 300 reconstructed largest and smallest singular values agree with the supplied CSV values to their displayed six decimal places (maximum absolute deviation less than 5e-7). This is strong evidence for the convention; all computations here concern the explicit reconstructed frame at the displayed seed center, rather than an unprovided original binary64 frame.

The 300 supplied center R values range from 14.923695 to 382.107853. Radii range from .063 to .125. Every supplied orientation is +1.

## Core

`core.py` implements deterministic multistart side solves and analytic implicit first, second and third derivatives. It evaluates the completion using the forced block. Sides have opposite signs of Im Psi. Differentiating the identity `D B* = -C E*` avoids differentiating a matrix inverse circuit. The reported phase jets use

- Q1=Im(H1/H),
- Q2=Im(H2/H - H1 H1/H^2),
- the corresponding third logarithmic derivative,

followed by horizontal projection on output indices. Products and quotients in these identities are entrywise. Seed inputs remain in radians.

`completion(theta,o=1,previous=None)` returns H, theta, phih, phiv, o. `jet` adds Q0, Q1, Q2 and intermediate side/complex jets. `third_jet` also adds Q3 and H3. `previous` fixes the nearby side labeling when sampling a ball.

`check_derivatives.py` compares analytic derivatives to finite differences on seven centers, including the strongly anisotropic j=235, and checks differentiated unitarity. Worst relative errors in the recorded run were 1.28e-9, 5.34e-9, 7.97e-9 for orders one to three. Differentiated unitarity residuals were below 3.4e-13. These checks are independent numerical diagnostics, not proofs.

## Center and ball sampling

`audit_centres.py` solves all centers, constructs the canonical frame and computes multistart lower estimates of the symmetric bilinear Hessian norm. `centres.npz` retains all matrices, jets and witness directions. All 300 center completions succeeded; maximum flatness error was 4.42e-14 and maximum unitarity entry residual was 2.26e-13.

`sample_balls.py` evaluates 28 directions at both radius r and r/2, hence 56 points per ball and 16,800 total. The directions include coordinate axes, random directions, the center's maximizing contracted Hessian direction and the raw seed Hessian direction mapped back to the w coordinates. At each point it obtains additional Hessian lower estimates by directional search and local maximization. Every side solve succeeded. The smallest sampled R was 5.87509. Largest sampled flatness defect was 2.67e-14.

The actual Taylor remainder is evaluated as

`h(arg(H(theta) * conj(H0))) - T M w`,

with the phases on the branch near the center. This computes the horizontal phase difference before subtracting the tangent. It does not subtract unrelated principal horizontal phase matrices. Output `sample_witnesses.npz` retains input points and directional witnesses.

| Quantity | Min | Median | Max |
|---|---:|---:|---:|
| Center raw seed Hessian lower estimate | 2.52087 | 4.27449 | 79.77729 |
| Sampled raw seed Hessian lower estimate | 2.58933 | 4.67706 | 189.10221 |
| Center contracted w Hessian lower estimate | .50006 | .85426 | 4.34223 |
| Sampled contracted w Hessian lower estimate | .50145 | .97117 | 11.93342 |
| Sampled Taylor remainder | .00099247 | .00511661 | .02813500 |
| Supplied n_cert / sampled remainder | 1.15134 | 1.22808 | 1.31906 |

None of the newly sampled remainders exceeds the supplied n_cert column. The new samples exceed the supplied n_sampled in many rows: the new/old ratio has median 1.07220 and maximum 1.56426. This is expected when adding optimizing directions; an input sample is not a true maximum.

## Important obstruction to the scalar recipe

Even using a lower estimate for the raw seed Hessian at the center, the proposed scalar enclosure

`n_scalar = .5 * ||D2_theta Q(theta0)|| * ||M||^2 * r^2`

is too loose. Its ratio to the supplied n_cert is 3.27756–77.20246, with median 7.98250; every one of the 300 rows exceeds 3. Its ratio to the supplied n_sampled is 4.30174–114.32785, with median 10.61543.

This numerical effect is due to losing the alignment of the anisotropic seed frame. It occurs before any Lipschitz-extension or interval overestimate. One must instead bound the already contracted tensor `D2_theta Q[M .,M .]`.

For j=235, center raw seed Hessian lower estimate is 70.5033, Mmax=1.638144 and r=.125, giving n_scalar approximately 1.478. The supplied n_cert is .01914575. Even the rational axis direction e1 has Hessian norm 27.5911, so an optimized irrational direction is unnecessary to demonstrate the scale of this loss.

## A general norm observation

**PROVED.** For a real symmetric bilinear map B from R^d x R^d to a Euclidean output space, the bilinear operator norm equals `sup_{||u||=1} ||B(u,u)||`. To see this, dualize the output and use the equality of the spectral and quadratic-form norms of a real symmetric scalar matrix.

Let K be the linear map on symmetric matrices induced by B, with the Frobenius norm on its input. Then

`||B|| <= ||K|| <= sqrt(d) ||B||`.

The first inequality uses `||u u^T||_F=1`. For the second diagonalize an arbitrary symmetric input A and use its nuclear norm bound `||A||_* <= sqrt(d)||A||_F`. In dimension four the flattening loses at most a factor two. No doubling for off-diagonal coordinates is needed when the full 4x4 tensor is flattened with its Frobenius norm.

**NUMERICAL.** For the 300 center contracted tensors, the flattening norm / directional lower estimate ranges 1.17406–1.62874, median 1.35094. For the raw theta Hessian it ranges 1.00019–1.31862, median 1.04254.

## Benchmark comparisons

`compare_bounds.py` joins any supplied bound table by j, with configurable --C and --n column names, against the numerical witness table. It writes per-ball CSV and R-bin summaries. Ratios to a sampled lower estimate are conservatively informative for sharpness, but they become rigorous guarantees only if the numerator is certified and the denominator's directional witness is itself outward evaluated. Neither numerical sampling nor an observed R-bin threshold is a theorem over every seed having that R value.

Replay (numpy and scipy required):

```
OPENBLAS_NUM_THREADS=1 python audit_centres.py
OPENBLAS_NUM_THREADS=1 python sample_balls.py
OPENBLAS_NUM_THREADS=1 python check_derivatives.py
python compare_bounds.py --bounds ../bounds/quadratic_results.csv
```

## Certified lower witnesses and true-supremum comparisons

**CERTIFIED, relative to the supplied matched-flatness and local-germ theorem.** `certify_lower_witnesses.py` independently certifies side roots at interior sample points with Arb, checks the exact seed ellipsoid membership, computes the analytic tangent and directional Hessian by the full orthogonality equations, and rounds the directional norm downward. The point coordinates are exact dyadic witnesses multiplied by 999999999999/10^12 to make their membership strict. Both contracted-w and raw-seed directional witnesses succeed for all 300 points. `lower_witnesses.jsonl` records them.

**CERTIFIED.** `certify_remainder_witnesses.py` proves that each endpoint used for a remainder lower bound is on the actual certified graph: the principal relative phases are away from their cut; their seed difference is the specified input displacement; horizontal projection puts the correction in the exact kernel of the seed map; and the correction lies strictly inside the same contraction tube. The radii inequality is replayed at the stored outward tube radius. This succeeds for all 291 strictly certified whole balls, without assuming that a numerical continuation guessed the correct phase labeling. `remainder_lower_witnesses.jsonl` records the lower norms and branch-identification margins.

`certified_comparison.py` joins these witnesses to `fullphase/FINAL_CERTIFICATES.jsonl`, checks that each saved exact dyadic frame agrees, and computes outward-rounded upper-to-lower ratios. Since a true supremum is at least its certified pointwise lower witness, these ratios rigorously bound the upper bound divided by the true supremum. No exact optimization of a supremum is claimed. The `n_direct` ratio uses the exact-center Taylor residual. The `n_record` ratio uses the rounded-record residual: its certified lower denominator is `remainder_lower - P_rounding - r*U_rounding`, which remains positive. A separate CSV column keeps the ratio of n_record to the exact-center lower witness. The replay uses the frozen exact dyadic basis and exact Gram left inverse from `fullphase/certify.py`.

| Certified supplied rows | Count | Guaranteed sharpness |
|---|---:|---:|
| Strictly certified whole balls | 291 | Rounded-record remainder bound / true rounded-record residual supremum < 1.792879 |
| Supplied centers with R >= 100 | 265 | Contracted-w Hessian bound / true Hessian supremum < 2.349708 |
| Supplied centers with R >= 150 | 259 | Raw-seed Hessian bound / true raw Hessian supremum < 2.277991 |

The R thresholds refer to these supplied centers, not a global theorem for every possible seed above a threshold. The raw-seed Hessian bound holds at points of the same certified ellipsoid, not necessarily on the larger Euclidean seed ball of radius ||M||r. The entire center-based theorem can be replayed with M=I when an isotropic seed ball is wanted.

The nine remaining whole-ball failures are j=1205,1449,1564,1766,1842,1888,1900,1901,1902. Their failure is an inability of this particular radii inequality to close, not a counterexample.

**CERTIFIED obstruction to the scalar recipe.** At j=235 the raw seed direction e1 has Hessian norm at least 27.591095698315275, and ||M|| is at least 1.6381439886245657. Therefore every isotropic-theta Hessian bound inserted into `.5 C ||M||^2 r^2` gives n at least .5784464003474269. The direct certified enclosure has n at most .025341742634383525, so the scalar recipe is at least 22.8258335 times the true remainder supremum. At j=4 an e4 witness proves a loss of at least 3.9491421. This uses our new certified upper enclosures, not the unaudited input n_cert column.

Replay the final exact comparisons:

```
OPENBLAS_NUM_THREADS=1 python certify_lower_witnesses.py
OPENBLAS_NUM_THREADS=1 python certify_remainder_witnesses.py
OPENBLAS_NUM_THREADS=1 python certified_comparison.py
```
