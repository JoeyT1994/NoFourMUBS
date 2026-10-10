# Lean certificate layer

## Status: uncompiled

**None of the Lean files in this delivery has been compiled.** The complete
finite JSON certificate suite is checked separately by `verify_certificates.py`;
that exact Python verification must not be described as Lean verification.

The official Linux Lean **4.33.0-rc2** release was downloaded successfully.
The stock `lake --version` reported Lean version `4.33.0-rc2`, but the stock
`lean --version` failed before reading any Lean source:

```text
error: failed to locate application
```

The cause was identified in the official Lean runtime: `lean_io_app_path`
calls `readlink("/proc/<getpid()>/exe", ...)`. In this execution environment,
reading `/proc/self/exe` succeeds, while reading the numeric process path
raises `PermissionError(13, 'Permission denied')`. `LEAN_SYSROOT` did not
resolve this failure: it configures installation discovery in Lake and
`findSysroot`, not this mandatory runtime call. No runtime patch, process-path
spoof, access-control modification, or alternative oracle was used. Mathlib
source was inspected, but the Mathlib compiled cache and a successful Lean
build were not obtained.

The target Mathlib commit is exactly the handoff's pin:

```text
51e6992efd06126df61a496bebf8f49482a4e129
```

Consequently the generated proofs and the hand-written support proofs still
require ordinary elaboration and tactic checking on a working Lean setup.
Source inspection is not a substitute for that check.

## What is included

`lean/Step1/Common.lean` provides four small general or specialized proofs:

1. `localMax_iff_openQuotient`: local maxima lift and descend through an
   open continuous surjection, using its equality of neighborhood filters.
2. `quadratic_strictMonoOn`: positive derivatives at both endpoints imply
   strict monotonicity of a quadratic on the interval. The proof uses its
   exact divided difference and separates the signs of the leading
   coefficient.
3. `quadratic_unique_root`: continuity, opposite endpoint signs, and the
   preceding monotonicity give existence and uniqueness of a root in a
   closed interval. Linear polynomials are included.
4. `physical_transverse_capture`: every real `y ≥ -1` satisfying
   `4*y^2 + 6*y + 1 = 0` obeys
   `-49/256 < y < -3/16` and
   `660*(46*y+9) > 4125/32`.

The fourth theorem is deliberately stronger than an isolating-interval
statement: interval uniqueness alone does not show that a physically
admissible root belongs to the interval.

`lean/Step1/InteriorConsequences.lean` assembles the small polynomial identities
into the ordered-algebra obstruction, beyond merely restating identities:

- `interior_W_positive` proves the required strict positive-coefficient sum.
- `interior_scalar_stationary` proves that `v > 2*x^2` and `fx=fv=0` imply
  `x>0`, `c<0`, and `fyy>0`.
- `interior_positive_stationary` proves that `H>0` and
  `Hx=Hy=Hv=0` imply `x>0`, `y=0`, `C<0`, and `Hyy>0`.
  The hypothesis `v≥0` is unnecessary; positivity of `H` already forces
  `v>0`.

The `Generated_*.lean` modules check the corresponding JSON sections as
ordinary theorem statements. There is one theorem for each identity,
substitution, or evaluation; one `HasDerivAt` theorem for each derivative
step; lower-bound and positivity theorems for each Bernstein interval; and
one nonnegativity theorem for each positive orthant record. Algebraic-number
records produce actual unique-root statements and exact endpoint evaluations.

All plain polynomial definitions, identities, substitutions, and evaluations
are generalized to an arbitrary field of characteristic zero. Thus the same
statements can be instantiated over **both `ℝ` and `ℂ`**, which is needed for
the complex trace and Vandermonde identities. Differential and order
statements are specialized to `ℝ`.

`lean/Step1/FiniteOrbit.lean` checks the finite 144-action/18-lift bookkeeping
and rational quadratic-pair coordinate distinctness by ordinary `decide`.
The full 2,083-term structural Laurent polynomial, its 144 invariances, and
all 18 full Hessian evaluations remain covered by the independent exact
Python endpoint checker, not by a generated Lean replay of that endpoint
bundle. The finite Lean module itself states this boundary explicitly.

The files contain no `sorry`, new `axiom` declaration, `native_decide`,
`polyrith`, external CAS tactic, or runtime invocation of Python.
`lean/Step1/Audit.lean` contains `#print axioms` commands for all the emitted
theorems and all the hand-written support theorems. Its output has not yet
been produced.

## How Bernstein positivity is checked

For each rational interval `[a,b]`, degree `n`, and coefficient list `B_i`,
the JSON supplies a rational lower bound `m>0`. The Lean proof uses the
polynomial identity

\[
 p(x)-m=\sum_{i=0}^{n}(B_i-m)\binom ni
 \left(\frac{x-a}{b-a}\right)^i
 \left(\frac{b-x}{b-a}\right)^{n-i}.
\]

All coefficients and binomial coefficients are emitted as exact rational
literals. `ring` checks this complete identity; `positivity` proves the
right-hand side nonnegative from `a≤x≤b`; `linarith` concludes `p(x)≥m>0`.
Thus no unformalized Sturm theorem is hidden behind the root exclusions.

## Reproduction and integration

From the delivered `output` folder:

```bash
python3 verify_certificates.py
python3 generation/generate_lean.py
cd lean
lake update
lake exe cache get
lake build
lake env lean Step1/Audit.lean
```

`lean/lakefile.toml` is an independent small project pinned directly to the
same Mathlib commit as the handoff. No Hadamard classification theorem is
required for this pure algebra layer. To integrate into the original
`nofourmubs` project, copy the `Step1/` sources and `Step1.lean`, add a `Step1`
Lean library target, and use the already pinned Mathlib dependency there.

Generation is untrusted and reproducible. It reads the JSON and emits every
expression and rational constant into the Lean theorem statement or proof.
Changing the generator cannot make Lean accept a false statement: the
resulting source still has to pass the kernel. Conversely, successful JSON
verification alone cannot certify an accidentally mistranslated Lean
statement, which is why both artifacts and their regeneration code are
included.

## Size and expected checking cost

`lean/GENERATED_SIZES.json` gives exact generated-source byte counts and
theorem counts. `lean/COST_ESTIMATE.json` gives exact expanded polynomial
sizes, independently computed with the rational sparse-polynomial engine.

The largest expanded definition and largest identity side have **93
monomials**. The largest total degree is **24**, in a two-variable boundary
identity with only **29 monomials**. The high-degree identities are therefore
sparse. The original interior sextic resultant and all its Sturm records
have been removed by the new positive-coefficient argument.

The natural checking split is already implemented: one file per polynomial
bundle and one theorem per certificate. It avoids one enormous unfolded
goal. The largest generated module is about 56 KB. These sizes suggest
ordinary `ring` checking should be practical; **no Lean runtime estimate is
reported as a measurement**. After the first successful build, measure each
module, and only split a module further if a concrete slow theorem remains.
The finite `decide` checks are isolated in `FiniteOrbit.lean` for this reason.

## Source-verified Mathlib declarations for the remaining blueprint

The names below were read in the exact pinned Mathlib source snapshot.
They are not guessed API names. The table records imports, not compilation.

| Purpose | Existing declaration | Import |
|---|---|---|
| Unit circle and compactness | `Circle`, `Circle.norm_coe`, instance `CompactSpace Circle` | `Mathlib.Analysis.Complex.Circle` |
| Compact product | `Pi.compactSpace`, `Function.compactSpace` | `Mathlib.Topology.Compactness.Compact` |
| Open positive components | `IsOpen.connectedComponentIn`, `IsOpen.locallyConnectedSpace` | `Mathlib.Topology.Connected.LocallyConnected` |
| Relative closedness | `isClosed_connectedComponent`, applied to the open-positive subtype | `Mathlib.Topology.Connected.Basic` |
| Connected image | `IsConnected.image` | `Mathlib.Topology.Connected.Basic` |
| Component image control | `Continuous.image_connectedComponentIn_subset`, `connectedComponentIn_mono` | `Mathlib.Topology.Connected.Basic` |
| Extreme value theorem | `IsCompact.exists_isMaxOn` | `Mathlib.Topology.Order.Compact` |
| Pull back a local maximum | `IsLocalMax.comp_continuous` | `Mathlib.Topology.Order.LocalExtr` |
| Compact-to-Hausdorff quotient | `Topology.IsQuotientMap.of_surjective_continuous` | `Mathlib.Topology.Separation.Hausdorff` |
| Quotient by continuous group action is open | `isOpenMap_quotient_mk'_mul`, `MulAction.isOpenQuotientMap_quotientMk` | `Mathlib.Topology.Algebra.ConstMulAction` |
| Local-max descent | `IsOpenQuotientMap.map_nhds_eq` | `Mathlib.Topology.Maps.OpenQuotient` |
| Product of open quotients | `IsOpenQuotientMap.piMap` | `Mathlib.Topology.Constructions` |
| Quotients preserve local path connectedness | `Topology.IsQuotientMap.locallyPathConnectedSpace` | `Mathlib.Topology.Connected.LocallyPathConnected` |
| Angle parametrization | `Circle.exp_surjective`, `Circle.isCoveringMap_exp`, `isLocalHomeomorph_circleExp` | `Mathlib.Analysis.SpecialFunctions.Complex.Circle` |
| Additive-circle identification | `AddCircle.homeomorphCircle'`, `AddCircle.homeomorphCircle` | `Mathlib.Analysis.SpecialFunctions.Complex.Circle` |
| Alternative local connectedness via charts | `piChartedSpace`, `ChartedSpace.locallyConnectedSpace` | `Mathlib.Geometry.Manifold.ChartedSpace` |
| Circle chart instance | instance `ChartedSpace (EuclideanSpace ℝ (Fin 1)) Circle` | `Mathlib.Geometry.Manifold.Instances.Sphere` |
| Complex cube root | `IsAlgClosed.exists_pow_nat_eq` | `Mathlib.FieldTheory.IsAlgClosed.Basic` |
| Algebraic closedness of `ℂ` | supplied with the complex polynomial development | `Mathlib.Analysis.Complex.Polynomial.Basic` |
| First derivative at a local maximum | `IsLocalMax.deriv_eq_zero`, `IsLocalMax.fderiv_eq_zero` | `Mathlib.Analysis.Calculus.LocalExtr.Basic` |
| One-variable Taylor bridge | `taylor_isLittleO`, `taylor_isLittleO_univ` | `Mathlib.Analysis.Calculus.Taylor` |
| Root existence from signs | `intermediate_value_Icc` | `Mathlib.Topology.Order.IntermediateValue` |

A ready-made second-derivative-nonpositivity theorem at a local maximum was
not located in this snapshot. The one-dimensional positive-curvature
contradiction should be implemented from the displayed Taylor lemmas or a
separate elementary derivative argument. It remains a named analysis bridge,
not an assumed Lean theorem. The trace quotient/fiber identification and the
application of the finite algebra to its smooth strata likewise remain
blueprint obligations, rather than implicit assumptions of a claimed complete
formal proof.
