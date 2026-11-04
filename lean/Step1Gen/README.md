# Step 1 certificates and their Lean library

This folder holds the finite algebra of the sextic-free saddle proof of Step 1. The proof documents are in
[`Connectedness/returns/C_step1_saddle/`](../../Connectedness/returns/C_step1_saddle/README.md).

| Path | Role |
|---|---|
| `certificates/` | 12 JSON bundles with 651 exact claims: polynomial identities with cofactors, Bernstein positivity, quadratic isolation and the finite orbit |
| `verify_certificates.py` | the exact acceptance checker, using the Python standard library only. Run it with `python3 verify_certificates.py` (about 7 s). `verify.py` also runs it |
| `audit_checks.py` | a supplementary audit with 14 rejected mutations and 13 cross-file source comparisons |
| `generation/` | the JSON-to-Lean generator. It is not trusted, because the Lean kernel checks its output |
| `lean/Step1/` | the library `Step1`. It contains the generated modules for the three certificates the proof uses (`boundary_core`, `boundary_edges`, `interior_core`), together with `Common` and `InteriorConsequences`. It has 96 theorems, uses the standard axioms only, and has no `sorry` or `native_decide`. The other certificates are checked by `verify_certificates.py` only |

The analytic argument that turns this algebra into Step 1 (`Step1Geo.maximumCensus`) is in `../NoFourMUBs/Step1/`.

To regenerate the Lean files, run `python3 generation/generate_lean.py`, then run `lake build Step1` from `lean/`.

## Notes on the generator

- Identity proofs use `(try simp only [defs]) <;> ring`.
- Derivative proofs use `congr_deriv` and `congr_of_eventuallyEq` in place of `convert`.
- The generator does not write a nested lakefile.
