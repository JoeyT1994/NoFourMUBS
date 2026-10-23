# Step 1 certificates and their Lean library

The finite algebra of Step 1's sextic-free saddle proof. Its proof documents are in [`../../proof/coverage/returns/C_step1_saddle/`](../../proof/coverage/returns/C_step1_saddle/README.md).

| Path | Role |
|---|---|
| `certificates/` | 12 JSON bundles, 651 exact claims: polynomial identities with cofactors, Bernstein positivity, quadratic isolation, the finite orbit |
| `verify_certificates.py` | Exact acceptance checker, standard library only: `python3 verify_certificates.py` (about 7 s; run by `verify.py`) |
| `audit_checks.py` | Supplementary audit: 14 rejected mutations and 13 cross-file source comparisons |
| `generation/` | The untrusted JSON-to-Lean generator; the Lean kernel checks its output |
| `lean/Step1/` | Library `Step1`: the generated modules for the three certificates the proof uses (`boundary_core`, `boundary_edges`, `interior_core`) plus `Common` and `InteriorConsequences` (96 theorems, standard axioms, no `sorry` or `native_decide`). The other certificates are checked by `verify_certificates.py` only |

The analytic assembly that turns this algebra into Step 1 (`Step1Geo.maximumCensus`) is in `../NoFourMUBs/Step1/`.

Regenerate with `python3 generation/generate_lean.py`, then run `lake build Step1` from `lean/`.

**Repairs made to the returned generator.** The return's author had no working Lean.
- **Identity proofs** use `(try simp only [defs]) <;> ring`.
- **Derivative proofs** use `congr_deriv` and `congr_of_eventuallyEq` in place of `convert`.
- **Build layout:** the generator no longer writes a nested lakefile.
