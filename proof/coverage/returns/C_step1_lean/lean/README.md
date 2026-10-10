# Step 1 algebra certificates in Lean

**Status: all source is uncompiled. No theorem here is reported as kernel
checked.** The stock Lean binary failed to discover its executable path under
the current environment's numeric `/proc` access restriction. See
`build_attempt.log` and `../LEAN_NOTES.md` for the exact evidence and scope.

## Standalone build

The project uses Lean `leanprover/lean4:v4.33.0-rc2` and exactly the handoff's
Mathlib commit `51e6992efd06126df61a496bebf8f49482a4e129`.

From the parent `output` folder:

```bash
python3 verify_certificates.py
python3 generation/generate_lean.py
cd lean
lake update
lake exe cache get
lake build
lake env lean Step1/Audit.lean
```

No Python or CAS is invoked during Lean checking. The JSON-to-Lean generator
is untrusted: the kernel must check the emitted ordinary theorem proofs.
The checker for JSON acceptance uses Python integers and `fractions.Fraction`.

## Integration into the supplied `nofourmubs` project

1. Copy this folder's `Step1/` and `Step1.lean` into the supplied
   `lean/nofourmubs/` directory.
2. In that project's `lakefile.toml`, use the bundled upstream requirement
   from its own README:

   ```toml
   [[require]]
   name = "hadamard6_formal"
   path = "../upstream_hadamard6_formal"
   ```

3. Add a library entry for the copied sources:

   ```toml
   [[lean_lib]]
   name = "Step1"
   ```

4. Run `lake update`, `lake exe cache get`, and `lake build Step1`. Then run
   `lake env lean Step1/Audit.lean` for the axiom audit. Other project modules
   can import `Step1` or individual modules.

The independent standalone project supplied here instead requires Mathlib
directly. Its algebra layer does not need the upstream Hadamard classification
library, and it does not alter or discharge that project's substantial
`Inputs` hypotheses.

## Modules and scope

| Module | Content |
|---|---|
| `Common` | Open-quotient local maxima, quadratic monotonicity and unique roots, physical root capture and curvature bound |
| `Generated_interior_*` | Exact interior algebra, calculus certificates, positive orthant coefficients, and geometry identities |
| `InteriorConsequences` | Full ordered-algebra saddle obstruction assembled from the interior identities |
| `Generated_boundary_*` | Double-boundary elimination, branch and curvature identities, derivative formulas, and Bernstein positivity |
| `Generated_coordinate_bridges` | Unit-circle and exact coordinate identities, physical-root secants |
| `Generated_algebraic_numbers` | Five unique-root isolation statements, endpoint evaluations, rational inequalities |
| `Generated_endpoint_identities` | Exact maximum value, Hessian sum-of-squares identity, and quadratic-field arithmetic |
| `FiniteOrbit` | Finite 144-action/18-lift computation with ordinary `decide` |
| `Audit` | `#print axioms` for every theorem in the delivered Lean layer |

Polynomial equalities work over every field of characteristic zero, including
both `ℝ` and `ℂ`. Derivative and inequality theorems work over `ℝ`.

The complete topology/coordinate-stratum bridge and the full 2,083-term
Laurent endpoint replay are not formalized in these files. Their precise
status, the verified Mathlib declaration names, the expected proof split, and
the exact source-size data are documented in `../LEAN_NOTES.md`,
`GENERATED_SIZES.json`, and `COST_ESTIMATE.json`.
