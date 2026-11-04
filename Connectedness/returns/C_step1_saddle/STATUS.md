# Status of the Step 1 return

## 1. Proved on paper

**Primary result:** every connected component of the positive seed set
\(S=\{R>0\}\subset\mathbb T^4\) contains a point in the stated seed-map
orbit \(O\). The proof is global and includes repeated roots and cusps.

The proof uses the deltoid route, with a new direct ambient saddle theorem:

\[
H>0,\quad H_x=H_y=H_v=0
\implies x>0,\quad y=0,\quad C<0,\quad H_{yy}>0.
\]

This removes the entire interior sextic, its resultant, Gröbner basis,
Sturm root census and interval candidate evaluation. The other changes are
positive Bernstein certificates for the needed univariate exclusions,
explicit small boundary elimination cofactors, and continuous/open-quotient
transfer in place of seed-cover differential arguments.

The paper proof is given in `ROUTE.md`, `INTERIOR_NOTES.md`,
`BOUNDARY_NOTES.md` and the numbered `STEP1_BLUEPRINT.md`. The independent
mathematical audit found no missing nonunit-root multiplicity case, cusp
case, lift, or component-topology hypothesis. It explicitly checks that
positive components are open by local connectedness of the torus.

**Optional stronger corollary:** the positive local maxima are exactly the
18 stated algebraic seed points, all with negative-definite Hessian and
value \(1594323/4096=3^{13}/2^{12}\). This follows from the necessary
census plus the exact endpoint evaluations and standard Hessian calculus.
The primary (W) proof does not need this endpoint Hessian layer.

## 2. Compiled in Lean

**None of the new Lean source has been compiled.**

The supplied files contain **216 theorem declarations**: 200 generated
certificate statements, four common support lemmas, three assembled
interior algebraic consequences, and nine finite-orbit statements.
This number counts source declarations, not kernel-checked theorems.

The stock requested Lean 4.33.0-rc2 release was downloaded and launched.
It failed before checking source with:

```text
error: failed to locate application
```

The environment permits reading `/proc/self/exe` but denies
`/proc/<numeric-pid>/exe`, the path used by this stock Lean runtime.
The stock Lake executable reports the expected version. The diagnostics
are recorded in `lean/build_attempt.log`. The runtime was not patched and
the access denial was not bypassed.

The files are therefore clearly labeled **UNCOMPILED**. They contain no
`sorry`, new `axiom`, `native_decide`, or `polyrith`. `Audit.lean` lists
`#print axioms` commands to run after a successful build elsewhere.
Source inspection and Python generation are not presented as compilation.

## 3. Certified by exact computation

**PASS: 12 JSON certificate bundles; 651 declared exact checks.** The
certificate files total **366,204 bytes** before the manifest. Numbers in
certificate JSON are strings. The replay uses Python integers and
`fractions.Fraction`, no floating point and no CAS.

| Certificate | Checks | Content |
|---|---:|---|
| `interior_core.json` | 40 | New ambient saddle algebra, derivatives, substitutions and positive coefficients |
| `interior_boundary.json` | 26 | Smooth-boundary geometry and inward curvature |
| `interior_cusp.json` | 14 | Cusp factorization and exact cubic positivity |
| `interior_geometry.json` | 16 | Circle invariance, cubic/Vandermonde and deltoid discriminant identities |
| `boundary_core.json` | 36 | Explicit elimination and all branch memberships |
| `boundary_curvature.json` | 8 | Actual transverse split and its positive curvature |
| `boundary_edges.json` | 11 | Edge factors, Bernstein positivity and complete interval unions |
| `boundary_trace.json` | 3 | Trace-to-polynomial identities with explicit unit-constraint cofactors |
| `coordinate_bridges.json` | 11 | Secant capture, cosine/cusp factorization and unit-root identities |
| `algebraic_numbers.json` | 11 | Five exact isolations and rational inequalities |
| `endpoint_identities.json` | 11 | Hessian sum of squares and quadratic-coordinate identities |
| `endpoints.json` | 464 | Original structural bridge, all seed maps, algebraic orbit/lifts, values, gradients and Hessians |
| **Total** | **651** | |

The default checker also verifies the complete manifest, file hashes and
claim counts. Successful logs are retained for isolated standard-library
execution both with and without Python `-O`.

The checker audit independently compared 13 cross-bundle source formulas
and rejected altered cofactors, derivatives, substitutions, Bernstein
data, interval coverage, root signs, field data, endpoint coordinates and
lift data. See `AUDIT.md` for the precise mutation count and test scope.
These are targeted robustness checks, not a proof of correctness of the
Python interpreter or of every possible malformed input.

The largest expanded definition/identity side in the small polynomial
layer has 93 monomials. Maximum degree 24 occurs in a sparse boundary
identity; the new interior core has maximum degree 8 and 40 terms.
The full Laurent endpoint polynomial has 2,083 terms and is independently
regenerated by the exact checker.

## 4. Numerical, exploratory or conjectural

There is **no numerical or conjectural input** to the primary paper proof
or to acceptance of these certificates. No floating-point optimization,
sampling, extrapolation or unchecked root approximation is used.

CAS operations in generation are untrusted construction aids; all emitted
claims are independently replayed with rational arithmetic. Lean cost
estimates are qualitative and unmeasured. They are not performance
certificates.

## Remaining formalization work

1. Compile and repair the supplied source in a working Lean/Mathlib
   environment. No successful build has been inferred from apparent
   syntactic correctness.
2. Formalize the seed/triple spaces, deltoid root characterization and
   open finite quotient, then connect the algebraic statements to actual
   coordinate derivatives and local maxima.
3. Add the ordinary second-order/Taylor sign lemmas, boundary-stratum
   analysis, and the compact-component maximum theorem to obtain an
   end-to-end Lean theorem for (W). The blueprint gives their full paper
   arguments and source-verified Mathlib building blocks.
4. If the stronger Hessian theorem is wanted in Lean, port the optional
   2,083-term Laurent moment evaluator or replace it with a smaller
   symbolic endpoint calculation. This layer is exact Python only in
   this return and is not needed for the primary (W) route.

No error was found in the Step 1 reference calculations actually audited.
This return does not audit all of `MINIMAL_PROOF.md`, certify the later
atlas, or establish an unconditional Lean theorem that four MUBs do not
exist in dimension six.
