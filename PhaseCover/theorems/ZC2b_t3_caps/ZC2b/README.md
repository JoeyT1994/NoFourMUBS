# ZC2b return: spherical caps for transfers into the Fourier X-ball

Start with `REPORT.md` in this directory for the final counts, strict
acceptance results, timings, and scope. The mathematical argument is in
`T3_THEOREM.md`; the record specification is `CAP_FORMAT.md`.

## What is included

| Item | Purpose |
|---|---|
| `T3_THEOREM.md` | Complete cap theorem, all error terms, sharper optional bounds, and coverage justification |
| `CAP_FORMAT.md` | T3 fields, both norm witnesses, fixed alignment/winding convention, and mixed coverage |
| `DEPENDENCIES.md` | New results and inherited reconstruction/chart obligations |
| `../cert/cap_t3.py` | Arb T3 checker and mixed-sphere replay |
| `../cert/seedcert.py` | Production integration retaining the target C1e prerequisite |
| `construction.py` | Floating proposal generation followed by Arb and integer acceptance |
| `results/seed_*.json` | Concrete mixed-sphere certificates against the supplied source extract |
| `receipts/` | Fresh per-source replays and the aggregate receipt |
| `negative_tests.py` | The requested invalid changes, with a passing actual full-sphere baseline |
| `negative_test_fixture.json` | Frozen full-sphere baseline used by the negative-test receipt |
| `verify_modes.py` | Actual-cap tests of the twelve supported anchor/Psi/weighting combinations |
| `verify_signature_identity.py` | Standard-library integer verification of the signature frequencies |
| `verify_input.py` | Exact source/header binding and original box inventory |
| `../data/zc2b_t3.json.gz` | Unchanged input extract from the uploaded brief |

The files outside `ZC2b/`, apart from the checker extension and its production
integration, are inherited context. Their earlier global conclusions are
not newly established by this return.

## Reproduce the finite replay

The retained execution uses Python 3.12, python-flint 0.9.0, NumPy 2.2.6,
SciPy 1.17.0, SymPy 1.14.0 and mpmath 1.3.0. From the bundle root, use an
environment with the dependencies in `requirements_return.txt`.

```bash
python -m pip install -r requirements_return.txt
export OPENBLAS_NUM_THREADS=1
export OMP_NUM_THREADS=1
python ZC2b/verify_input.py
python ZC2b/verify_signature_identity.py
python ZC2b/replay_all.py --workers 4 --out ZC2b/replayed_receipts
python ZC2b/negative_tests.py ZC2b/negative_test_fixture.json --output ZC2b/replayed_negative_tests.json
python ZC2b/verify_modes.py --output ZC2b/replayed_modes.json
```

Run Python normally, without `-O`, because some inherited source assertions
are mathematical gates. No special installation path is needed: the new
entry points add the bundle's `cert/` and `atlas/` directories themselves.

`replay_all.py` ignores constructor status, cached numerical margins, and
numerical hull diagnostics. It rebuilds the source models, checks every cap
in Arb, checks the actual same cap collection's polar facets in exact
integer arithmetic, and accounts for every requested source. Its receipt
hashes the exact input and proposal bytes read, records checker hashes,
and requires the bound files to remain unchanged through replay.

The standalone replay verifies transfer geometry conditional on the
inherited source reconstruction and target-chart theorems. Full production
atlas verification still requires the target seed certificates and accepted
X-ball C1e certificate; `seedcert.check_seed_caps` preserves the latter gate.

## Reconstruct proposals

The retained certificate is the reproducible object. A fresh floating
search can produce a different valid cap collection. Construction is not
part of the trusted proof checker.

```bash
python ZC2b/construction.py --seeds all --out ZC2b/new_results --workers 6 --weighted --psi-remainder local_hessian --max-add 250
python ZC2b/replay_all.py --proposals ZC2b/new_results --out ZC2b/new_receipts --workers 4
```

To continue an interrupted construction and widen retained normals using
weighted bounds:

```bash
python ZC2b/construction.py --seeds all --out ZC2b/new_results --workers 6 --weighted --psi-remainder local_hessian --max-add 250 --resume --upgrade --skip-certified
```

A missing or rejected cap cover leaves that source's original boxes in
place. Only a fresh accepted full-sphere replay justifies replacing an
entire source boundary's box list.

## Negative-test interpretation

The tests reject a sufficiently enlarged cap with its old witnesses, a
deleted active cap with an invalid retained facet enumeration, wrong corner
and distance windings, a wrong existing group index, and either tampered
norm witness. The corner-winding test deliberately refreshes the descriptor
hash, so its rejection must come from the actual norm inequality.

The dropped-cap test proves that the modified retained certificate fails;
it does not assert that the remaining caps could never receive a different
valid coverage certificate. Pure row/column gauge winding changes and
equivalent descriptors may legitimately preserve a mathematical claim.

## Formalization boundary

The deliverable contains mathematical proofs, Arb checks, and exact integer
coverage checks. Lean source and a Lean-kernel replay remain separate work.
The completed cap task does not itself replay the full atlas or the global
no-four-MUB argument. See `DEPENDENCIES.md` for the precise interface.
