# Step 2 return

This folder contains an audit and a smaller **conditional direct-coverage
route** for the bundled no-four-MUBs project. It does not claim an
unconditional proof of Step 2 or of the final MUB theorem. Read `STATUS.md`
first for the precise proof and build boundary.

## Contents

| File | Purpose |
|---|---|
| `GAP_MAP.md` | A1: every MC statement, permitted paper import, sheet parity, continuity, and Fourier joining, compared with exact upstream declarations. |
| `MINIMAL_ROUTE.md` | A2: why the retained atlas does not supply connectedness; the weaker direct-coverage route and its dependency diagram. |
| `STEP2_BLUEPRINT.md` | A3: complete topology and actual-side uniqueness proofs, plus explicit existence/density gaps and their certificate targets. |
| `lean/Step2Statements.lean` | A4: concrete missing predicates and the conditional theorem with exactly the `Inputs.covered` conclusion. |
| `lean/TopologyCore.lean` | General compact closed-relation continuity and compact-superlevel propagation. |
| `lean/QuotientTopology.lean` | Compactness and quotient topology for the actual upstream Hadamard types. |
| `certificates/` | Exact verifiers and machine-readable receipts. |
| `logs/` | Build and replay evidence, including failures distinguished from successful runs. |
| `work/` | Detailed audit notes and the uncompleted universal-flatness attempts. |

The archive contains only this `output/` folder. It is an overlay for the
original handoff: place it alongside the original `reference/` and `lean/`
directories inside `Step2LeanHandoff/`. The original sources and downloaded
toolchains/dependency caches are not duplicated in this return.

## Build the Lean files

Use the toolchain pinned in `lean/lean-toolchain`:
`leanprover/lean4:v4.33.0-rc2`. The delivered Lake project explicitly requires
both bundled source projects by relative path. Its manifest pins Mathlib to
`51e6992efd06126df61a496bebf8f49482a4e129`.

As specified by the handoff, configure the original
`lean/nofourmubs/lakefile.toml` dependency as:

```toml
[[require]]
name = "hadamard6_formal"
path = "../upstream_hadamard6_formal"
```

From the handoff root, run:

```bash
bash output/build.sh
```

The script updates Lake dependencies, obtains Mathlib's cache, builds the
large upstream resultant certificates one at a time, builds
`Step2Statements`, and runs the abstract-topology axiom audit. Once
dependencies are installed, the proof build itself is local. On a machine
with a complete dependency cache the essential command is:

```bash
cd output/lean
LEAN_NUM_THREADS=1 lake build Step2Statements
```

The build uses the bundled upstream copy at commit `57b0302`; no upstream
Lean source file was edited. The local dependency-path change is the build
configuration change requested in the prompt. `STATUS.md` documents the
environment-specific process-path compatibility shim used during this run;
it is not needed on an ordinary Lean installation and is not part of the
mathematical proof.

## Replay exact certificates

From the handoff root:

```bash
python3 output/certificates/verify_topology.py
python3 output/certificates/verify_l2_identities.py
python3 output/certificates/verify_l2_polynomial_certificates.py
python3 reference/MinimalConstruction/Proofs/verify_dossier.py
```

The first three commands require only Python's standard library. They exit
nonzero if any full identity, finite enumeration, or rational projector
check fails. They use integers and exact rational coefficients, without
floating-point acceptance. The fourth command is the original dossier's
runner and uses that dossier's dependencies, including SymPy.

`topology_receipt.json` records the signature symmetries, the exact
18-point maximum orbit, the indeterminate Fourier family and the literal
upstream Fourier ordering, and the horizontal projector.
`l2_identities_receipt.json` records the three Laurent and nine Fourier
identities used in the new uniqueness proof, together with six inversion
convention checks. `l2_polynomial_certificates.json` supplies the full
integer coefficients and explicit cofactors after clearing denominators
and negative exponents. Its companion verifier reads the saved certificate,
reconstructs each unreduced expression, and checks coefficientwise that
`cleared(lhs-rhs) = (ω²+ω+1)Q`; its receipt is
`l2_polynomial_receipt.json`. The original 15-check replay is recorded in
`reconstruction_replay_receipt.json` and its full log.

These successful checks have their stated algebraic scope. They do not
certify the global maximum census, automatic matched flatness, global
density, actual Record coverage, or the final MUB theorem.

## Uncompleted symbolic attempts

The three `work/verify_matched_residual_*.py` programs seek the universal
fourth-moment identities specified in `work/geometry_obligations.md`.
They require `python-flint`. Every run in this return hit its explicit
240-second limit. Their receipts say `UNRESOLVED`; no zero identity was
accepted from those runs. They are retained so the exact target and the
failed approaches can be reproduced or improved, and are not run by
`build.sh` or by the successful standalone verifiers.

## Reading the source citations

References beginning with `reference/` or `lean/upstream_hadamard6_formal/`
are paths in the original handoff. Lean citations give exact declaration
names; classification-paper citations use the supplied LaTeX labels and,
where useful, line numbers from the bundled source. A theorem stated as
`def ... : Prop` is an explicit outstanding obligation, not an axiom and
not an established theorem.
