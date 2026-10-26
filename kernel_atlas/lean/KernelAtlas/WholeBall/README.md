# Whole-ball C1 components (return Z)

**Status: partial implementation. There is no end-to-end whole-ball C1 checker
or real seed-ball kernel certificate here yet.** In particular, `scalarCheck`
checks supplied rational bounds; it does not compute or certify those bounds
from a centre. Its soundness theorem cannot be used as `SeedBallCert.hC1`.

The reference is
`explorations/returns/Z_completion_hessian/Z_completion_hessian_return/THEOREM.md`.
Both `proof/seed_atlas/cert/wholeball.py` and
`proof/independent_seed/src/wholeball.jl` were read against it.

## Implemented and kernel checked

The semantic files live in `lean/NoFourMUBs/SeedAtlas/Method/`; their namespace is
`NoFourMUBs.SeedAtlas.Method.WholeBall`.

| File / lemmas | Z section | What is proved |
|---|---|---|
| `WholeBallCentre`: `gramLeftInverse_mul`, `centreProjection_identity` | §2 (0) | The specified Gram inverse satisfies `W J X = I`, given Gram nonsingularity. |
| `WholeBallCentre`: `projected_tangent`, `seed_tangent` | §2 (1) | Exact `W J U = 0` and `L U = M`. |
| `WholeBallCentre`: `seed_secondJet`, `projected_secondJet` | §2 (1) | Exact `L H₂ = 0` and cancellation of the projected quadratic jet. The derivative interpretation of the input tensor is still required. |
| `WholeBallBounds`: `Bounds.b0/b1/b2/base/qbase/q/ndirect/nrecord`, `SideBounds.eps/variation/margin` | §§4–6 (7), (8), (12), (14), (15) | Shared rational/real definitions of the refined scalar formulas. |
| `WholeBallGerm`: `local_phase_germ`, `local_normal_coordinates` | §1 / §4 | Analytic phase lift through the prescribed centre, horizontal increments, exact real seed coordinates, and a normal-coordinate lift given a linear retraction. |
| `Germ.lean`: `sideResidual_partial_invertible`, `analytic_matched_germ`, `local_matched_phase_germ` | §1 | The concrete local matched phase germ follows from the two nonsingular side Jacobians, strict centre, and centre signs. It is no longer an assumed analytic family. |
| `WholeBallTaylor`: `norm_sub_taylorJet_le`, `predictor_residual_bound`, `norm_sub_le_cubic` | §§3–4 | Integral Taylor estimates with the factorials 120, 24, 6, and 2 used by Z. |
| `WholeBallFourier`, `WholeBallFourierBounds` | §3 (3)–(7) | Exact quadratic-phase derivatives through order five; summed centre jets and the finite sums for L₅ and L₃a imply the predictor and normal-base estimates. |
| `WholeBallTensor`: `norm_tensorVector`, `tensor_power_bound` | §3 | Flattened Euclidean operator bounds imply bounds on tensor evaluations, preserving the summed-tensor cancellation. |
| `WholeBallFourierModel`: `normalDerivative_eq`, `normal_parameter_ray`, `normal_tube_bound` | §§2–4 | The finite quadratic-phase model's actual Fréchet normal derivative, parameter rays, and normal-tube estimates. |
| `WholeBallFiniteBounds`: `residual_bound`, `normal_bound` | §§3–4 | Explicit finite centre coefficient/jet bounds imply actual uniform b₀ and q estimates. The model still needs to be identified with WΦ and its tensors certified numerically. |
| `WholeBallJetBounds`: `analytic_projected_family_of_jets` | §4 | The derivative-jet version of the Taylor-to-contraction bridge. |
| `WholeBallContraction`: `projected_zero_of_contraction`, `contraction_difference_of_derivative`, `projected_zero` | §4 (8) | Banach existence and uniqueness in the normal tube, with a strictly interior zero; the derivative-to-difference bound. |
| `WholeBallImplicit`: `invertible_of_near_id`, `analytic_implicit_root` | §4 | Neumann invertibility and a real-analytic local implicit root. Uses `ContDiff ℝ ω`, not just smoothness. |
| `WholeBallFamily`: `analytic_projected_family` | §4 | A unique projected root at every parameter in the closed ball, analytic on its interior and continuous on its boundary. Requires actual residual and derivative bounds. |
| `WholeBallContinuation`: `residual_zero_on_closedBall` | §4, final proof paragraph | The analytic identity theorem and continuity extend vanishing from a centre neighbourhood to the closed ball. |
| `WholeBallFamily`: `full_residual_of_local_germ` | §4, final proof paragraph | Identifies the local full-residual germ with the projected root by uniqueness, then proves the full residual vanishes throughout the ball. The local germ is an explicit input, now supplied separately by `Germ.lean`. |
| `WholeBallBounds`: `orientation_of_margin`, `strictness_of_margin` | §6 | Signed variation preserves orientation; the signature-square identity gives the strict lower bound. |
| `WholeBallOrientation`: `rowColEquiv_trans`, `rowColEquiv_from_dephase` | §6 / gauge | Row/column phase equivalences compose; dephasing is reversible by such phases. |
| `WholeBallOrientation`: `horizontal_rep_of_signs`, `horizontal_rep_of_margins` | §6 | A full Hadamard phase family with the seed and side signs gives `R > 0` and the horizontal `RepO` representative. |
| `WholeBallRecord`: `direct_remainder`, `recorded_remainder`, `hC1_of_representatives` | §5 (12) | The quadratic-plus-normal remainder, the correction `εP + r εU`, and the final `hC1` form with winding zero for a continuous centre-based lift. |
| `MatrixBounds.lean`: `psdCheck_sound`, `spectralCheck_sound`, `spectralCheck_transpose_sound` | §2 / numerical checks | Arbitrary-size exact rational LDLᵀ witnesses imply Euclidean operator bounds, including the smaller output-Gram check. |
| `MatrixEnclosure.lean`: `MatrixBox.spectral_bound`, `inverse_enclosure` | §2 (0) | Midpoint spectral bounds plus Frobenius interval errors; nonsingularity and an error bound for the exact inverse from a Neumann residual. |
| `MatrixArithmetic.lean`: `MatrixBox.Has.mul`, `inverseCheck_sound`, `gramProjection_enclosure` | §2 (0) | Exact rational interval matrix operations and a Boolean inverse check enclose the specified Gram projection (AᵀA)⁻¹Aᵀ. |
| `Scalar.lean`: `scalarCheck_sound` | §§4–6 | Exact rational scalar acceptance implies the identical inequalities over the reals. **No centre-to-bound soundness is claimed.** |

`ScalarRegression.lean` kernel-decides 12 synthetic boundary cases, including
rejection at `q = 1`, `b₀ + q τ = τ`, and zero orientation margins, and acceptance
at `n_record = n`. `ScalarExample.lean` exercises the scalar witness exporter
and its real-inequality conclusion; it is also synthetic.

`Axioms.lean` audits all public theorems above and the synthetic checks. The audit
returns only `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`, custom
axioms, or native-evaluation axiom is used.

## Integration still required

1. **Identify the finite model with the actual phase residual.** Connect the
   frozen horizontal basis and its normal retraction, the exact Gram projection,
   tangent and quadratic predictor, and the summed flattened tensors to
   `FourierModel` and `FiniteCentreBounds`. The latter's low-jet equalities and
   bounds are proved hypotheses, not trusted numerical values.
2. **Connect the orientation formula.** The linear-phase Fourier variation
   estimate is proved, including the factor one half in its Taylor remainder.
   The 24-frequency identity for the actual signature and its Gram bound 72
   still have to be connected to it.
3. **Finish the numerical centre computation and its generator.** The side
   Krawczyk results must feed the centre matrix enclosures, Gram/tensor checks,
   continuous phase-lift error, and recorded-frame error. The scalar and matrix
   utilities do not yet emit `hC1` or `ballCertH` for a certificate seed.
4. **Kernel-check a real ball's C1.** No whole-ball C1 timing is available yet.
   The supplied `dev_certificate_xball0115.json.gz` contains **2,328 seeds**.
   No work was run on rusty (0 remote core-hours).

No mathematical variant of Z has been shown necessary. `WholeBallFiniteBounds`
uses conservative sufficient finite-term bounds for the normal-tube constant;
these permit a larger `L3` in Z's unchanged scalar formula. A reference replay
of seed 2299 with this larger constant still has `q = 0.06584693388404433` and
`n_record = 0.0012356764988739792 < n = 0.00129210667715422`. This replay is a
selection aid, **not a Lean C1 certificate**.

## Measured kernel leaf

`BasisNorm.lean` is generated from the exact dyadic frozen basis and proves
`‖X‖ ≤ 1.000001` using `decide +kernel`. It certifies the embedded 36×21 matrix's
norm; its identification with the semantic normal basis is part of the remaining
integration. The command

```sh
cd lean
/usr/bin/time -l env LEAN_NUM_THREADS=8 lake build KernelAtlas.WholeBall.BasisNorm
```

reported 16 seconds for the module, 21.82 seconds wall time for the command,
15.08 seconds user time, 3.12 seconds system time, and maximum resident set size
**6,623,772,672 bytes**. These are leaf-check measurements, not ball-level C1
measurements. `MatrixRegression.lean` additionally checks exact acceptance and
rejection at inverse-error, Neumann, PSD-factor, and spectral-bound boundaries.

## Reproduce the completed checks

From the repository root:

```sh
python3 -B kernel_atlas/generators/wholeball_scalar.py --self-test
python3 -B kernel_atlas/generators/wholeball_matrix.py --self-test
cd lean
LEAN_NUM_THREADS=8 lake build KernelAtlas.WholeBall.Axioms
```

`wholeball_scalar.py WITNESS.json --output PATH.lean` exports an already-supplied
scalar witness using `decide +kernel`. Output must be under this `WholeBall/`
directory, and differing existing files are not overwritten. Its JSON schema is
the `bounds`, `horizontal`, and `vertical` records of `ScalarData`, with rational
strings or exact binary64 hex values. It is a scalar utility, **not** the requested
seed-ball generator or a full exact mirror of `wholeball_c1`.

The frozen-basis norm module is reproducible with:

```sh
python3 -B kernel_atlas/generators/wholeball_matrix.py \
  --basis proof/seed_atlas/cert/wholeball_basis.json \
  --bound 1000001/1000000 \
  --output kernel_atlas/lean/KernelAtlas/WholeBall/BasisNorm.lean
```

`wholeball_matrix.py` mirrors exact rational LDLᵀ, spectral, interval-matrix,
and inverse checks. It independently reconstructs each proposed factorization
before exporting it. Differing existing output is never overwritten.
