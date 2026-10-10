# Step 1 exact certificates and Lean source

The main improvement is a direct sign proof that removes the entire
double-interior sextic/resultant/Sturm computation. The remaining finite
algebra is exported as explicit polynomial, Bernstein, quadratic-isolation,
and finite-orbit certificates.

**Exact verification: PASS, 12 certificate files and 651 declared checks.**

**Lean: 216 theorem declarations supplied; all UNCOMPILED.** The stock
Lean 4.33.0-rc2 executable cannot start in the execution environment because
it cannot read its numeric process executable path. No completed Lean proof
of (W), Step 1, or no-four-MUBs is claimed.

## Read in this order

1. `STATUS.md` — precise division between paper proofs, exact computation,
   uncompiled Lean, and remaining formalization work.
2. `ROUTE.md` — route choice, complete new interior proof, and the argument
   from maxima to (W).
3. `STEP1_BLUEPRINT.md` — numbered definitions and lemmas, all certificate
   links, and a source-verified Mathlib API inventory.
4. `INTERIOR_NOTES.md` and `BOUNDARY_NOTES.md` — full local algebra and
   geometric implications.
5. `AUDIT.md` and `MATHEMATICAL_AUDIT.md` — independent checker and
   mathematical audits, including rejection tests and degeneracies.
6. `LEAN_NOTES.md` and `lean/README.md` — formal source scope and build steps.

## Independent exact acceptance replay

From this `output` directory:

```bash
python3 -I -S verify_certificates.py --report logs/replay.json
```

No pip install is needed. `-I -S` disables user/site package loading; the
checker uses only the standard library and exact integer/Fraction
arithmetic. It does not import a generator or a reference verifier.
The certificate manifest is required by default: missing, altered or extra
certificate files fail before algebraic acceptance.

The expected final line is:

```text
PASS: 12 certificate files; 651 claims
```

The same complete replay was also run with `python3 -I -S -O`: checks are
explicit exceptions and are not disabled by Python optimization. Timing
is recorded as an exact rational number of seconds from an integer clock.
`logs/exact_verification.json` and `logs/exact_verification_optimized.json`
retain these successful runs.

The supplementary audit is also reproducible:

```bash
python3 -I -S audit_checks.py
```

It repeats the 14 recorded mutation rejections and 13 exact source-link
comparisons, using temporary copies and leaving the certificates unchanged.
Its result is in `logs/audit_checks.json`.

`--algebra-only` is a development audit mode for testing selected bundles
without a manifest. It reports `PARTIAL_ALGEBRA_PASS`; it is not the
complete acceptance command above.

## Lean source

`lean/` is a standalone Mathlib project pinned to the same toolchain and
Mathlib revision as the handoff. It contains ordinary `ring`, `norm_num`,
`positivity`, calculus proofs, ordered-algebra proofs and kernel `decide`.
There are no admitted proofs, new axioms, `native_decide`, or `polyrith`.

The files include the assembled algebraic theorem that every positive
stationary point of the ambient trace polynomial has positive transverse
curvature, the physical quadratic-root capture theorem, and independent
finite constructions of the 144-action orbit and the 18 normalized lifts.
See `lean/README.md` for both standalone and bundled-upstream integration.

## Regeneration (not acceptance)

Generation may use SymPy. With SymPy installed, the supplied scripts
regenerate the data and Lean source:

```bash
python3 generation/generate_interior.py
python3 generation/generate_boundary.py
python3 generation/generate_endpoints.py
python3 generation/generate_bridges.py
python3 generation/generate_finite_lean.py
python3 generation/generate_lean.py
python3 generation/generate_manifest.py
python3 -I -S verify_certificates.py
```

`generation/reference_exact_maxima.py` is an unchanged copy of the supplied
endpoint reference, included only so endpoint generation is self-contained.
The independent acceptance checker never imports it. Generation routines,
including CAS calls and assertions in that reference, are outside the
acceptance trust boundary.

`certificates/manifest.json` lists every accepted certificate, its size,
hash, kind and claim count. `INPUTS.json` records the source files used.
`SHA256SUMS` records all return-package files except itself.

## Main files

| File or directory | Purpose |
|---|---|
| `certificates/` | 12 exact-data bundles, with integers and rationals encoded as strings, plus the complete manifest |
| `verify_certificates.py` | Standalone sparse-rational polynomial and finite-data checker |
| `CERTIFICATE_FORMAT.md` | Precise semantics of each certificate record |
| `generation/` | Reproducible, untrusted generation tooling |
| `lean/` | 216 uncompiled theorem scripts, build configuration, axiom audit and startup evidence |
| `logs/` | Successful complete exact replays |

The primary paper result is (W) over the entire seed torus, including the
degenerate trace strata. The optional endpoint calculations recover the
stronger exact 18-maxima theorem. Later reconstruction, connectivity of the
Hadamard quotient, local MUB exclusion and atlas certification are outside
this return's scope.
