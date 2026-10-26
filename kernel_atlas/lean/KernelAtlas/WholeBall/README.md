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
| `WholeBallContraction`: `projected_zero_of_contraction`, `contraction_difference_of_derivative`, `projected_zero` | §4 (8) | Banach existence and uniqueness in the normal tube, with a strictly interior zero; the derivative-to-difference bound. |
| `WholeBallImplicit`: `invertible_of_near_id`, `analytic_implicit_root` | §4 | Neumann invertibility and a real-analytic local implicit root. Uses `ContDiff ℝ ω`, not just smoothness. |
| `WholeBallFamily`: `analytic_projected_family` | §4 | A unique projected root at every parameter in the closed ball, analytic on its interior and continuous on its boundary. Requires actual residual and derivative bounds. |
| `WholeBallContinuation`: `residual_zero_on_closedBall` | §4, final proof paragraph | The analytic identity theorem and continuity extend vanishing from a centre neighbourhood to the closed ball. |
| `WholeBallFamily`: `full_residual_of_local_germ` | §4, final proof paragraph | Identifies the local full-residual germ with the projected root by uniqueness, then proves the full residual vanishes throughout the ball. The local germ is an explicit input. |
| `WholeBallBounds`: `orientation_of_margin`, `strictness_of_margin` | §6 | Signed variation preserves orientation; the signature-square identity gives the strict lower bound. |
| `WholeBallOrientation`: `rowColEquiv_trans`, `rowColEquiv_from_dephase` | §6 / gauge | Row/column phase equivalences compose; dephasing is reversible by such phases. |
| `WholeBallOrientation`: `horizontal_rep_of_signs`, `horizontal_rep_of_margins` | §6 | A full Hadamard phase family with the seed and side signs gives `R > 0` and the horizontal `RepO` representative. |
| `WholeBallRecord`: `direct_remainder`, `recorded_remainder`, `hC1_of_representatives` | §5 (12) | The quadratic-plus-normal remainder, the correction `εP + r εU`, and the final `hC1` form with winding zero for a continuous centre-based lift. |
| `Scalar.lean`: `scalarCheck_sound` | §§4–6 | Exact rational scalar acceptance implies the identical inequalities over the reals. **No centre-to-bound soundness is claimed.** |

`ScalarRegression.lean` kernel-decides 12 synthetic boundary cases, including
rejection at `q = 1`, `b₀ + q τ = τ`, and zero orientation margins, and acceptance
at `n_record = n`. `ScalarExample.lean` exercises the scalar witness exporter
and its real-inequality conclusion; it is also synthetic.

`Axioms.lean` audits all public theorems above and the synthetic checks. The audit
returns only `propext`, `Classical.choice`, and `Quot.sound`; no `sorryAx`, custom
axioms, or native-evaluation axiom is used.

## Exact work still required

1. **Instantiate the local matched germ.** The existing
   `Method.Completion.matchedO_of_certified_sides` is pointwise; its own module
   explicitly says that continuity is not needed. The inspected `L1`/`Step2`
   files do not supply the analytic phase germ asserted to be already available
   in the handoff. The required statement is:

   Given an exact strict matched centre `q₀` of orientation `o`,
   `L q₀ = θ₀`, and nonsingular Jacobians of its two dephased side equations,
   there exist an open neighbourhood `V` of `θ₀` and a phase map `q_*` such that
   `q_*` is real analytic on `V`, `q_*(θ₀) = q₀`, and, for every `θ ∈ V`,
   `q_*(θ) - q₀` is horizontal, `L q_*(θ) = θ`, and `phaseMat (q_*(θ))` is
   Hadamard and represents the matched class of orientation `o` at `seedOf θ`.
   Here `L Q = cornerTheta Q 1 1`. Its normal coordinates must then be related
   to `X` to discharge `full_residual_of_local_germ`.

   This is the hypothesis of Z §1, with the row/column gauge made explicit.
   No variant of Z's mathematical theorem has been used or shown necessary.

2. **Prove the centre-formula bounds.** For the actual
   `G(w,z) = W Φ(qₚ(w) + Xz)`, the finite tensor formulas and their norm bounds
   must imply, for `‖w‖ ≤ r`, `‖z‖ ≤ τ`,
   `‖G(w,0)‖ ≤ b₀` and `‖I - G_z(w,z)‖ ≤ q`.
   The 24-frequency signature identity and Taylor bound must likewise imply
   the actual two variations in (14). These are not discharged by scalar
   acceptance. The frozen normal basis, derivative interpretations, and gauge
   identities also need to be connected to the semantic matrices.

3. **Build the complete numerical checker and soundness proof.** Reuse the
   centre side Krawczyk tests, enclose `J`, the exact Gram inverse, `U`, `H₂`,
   predictor tensors and signatures, certify spectral norms, and bound the
   continuous phase-lift and frame recording errors. None of those matrix or
   interval computations has been replaced by trusting Python/Arb output.

4. **Generate and measure a real ball.** A generator consuming the supplied
   seed certificate and producing its `hC1`/`ballCertH` input is not implemented.
   No real-ball C1 kernel time or peak-memory measurement is available.
   The supplied `dev_certificate_xball0115.json.gz` contains **2,328 seeds**.
   No work was run on rusty (0 remote core-hours).

## Reproduce the completed checks

From the repository root:

```sh
python3 -B kernel_atlas/generators/wholeball_scalar.py --self-test
cd lean
LEAN_NUM_THREADS=8 lake build KernelAtlas.WholeBall.Axioms
```

`wholeball_scalar.py WITNESS.json --output PATH.lean` exports an already-supplied
scalar witness using `decide +kernel`. Output must be under this `WholeBall/`
directory, and differing existing files are not overwritten. Its JSON schema is
the `bounds`, `horizontal`, and `vertical` records of `ScalarData`, with rational
strings or exact binary64 hex values. It is a scalar utility, **not** the requested
seed-ball generator or a full exact mirror of `wholeball_c1`.
