# Verification ledger

This audit examined commit `e4babf8316ba60d90236c1db7c64fc805a4ba61e` on 17 October 2026. All execution, test inputs, proposed code, and build outputs were placed in a separate snapshot under the audit workspace. No proposed patch was applied to `/Users/jtindall/Projects/NoFourMUBS`.

## Environment and input identity

| Item | Audited value |
| --- | --- |
| Lean | `leanprover/lean4:v4.33.0-rc2` |
| Mathlib revision | `51e6992efd06126df61a496bebf8f49482a4e129` |
| Hadamard6 dependency | `57b03025ecbe259e474281f49e201ea7cb474e34` |
| Julia | 1.12.7, repository `proof/independent/jlenv` |
| Python packages | SymPy 1.14.0, NumPy 2.2.6, python-flint 0.9.0 |
| Atlas SHA-256 | `690107dc7682f2d5ccf52e2721799b4a29af97b526c2e62ebe216b3ce17d5d71` |
| Atlas records | 12,021, all marked closed |

The copied Lake dependency/build cache was used. This was a build and elaboration audit against pinned dependencies, not a clean rebuild of every dependency from source. Builds and Python replay ran concurrently; their timings are evidence of completion, not controlled performance measurements.

## Completed checks

| Check | Result | Evidence |
| --- | --- | --- |
| Full Lean build and axiom audit | Passed: 32 + 216 + 16 = 264 audited declarations, standard axioms only | `lean_axioms_full.txt`, `final_theorem_signature.txt` |
| Python `verify.py --atlas -j 8` | All 18 checks passed; all 12,021 records certified, zero failures | `full_atlas_driver.txt`, `full_atlas/` |
| Replay receipt comparison | All 12,021 records identical in every compared mathematical/intermediate column | `atlas_receipt_comparison.txt` |
| Python atlas acceptance/corruption tests | 15/15 expected outcomes | `negative_atlas.txt` |
| Exact-certificate acceptance/corruption tests | 6/6 expected outcomes | `negative_exact.txt` |
| Two-clique search versus reference | 2,000/2,000 agree, including 760 with a pattern | `clique_search.txt` |
| Fresh Julia fixture, sanity, corruption suite | Passed; 22 records in Stage 3, one boundary record, plus sanity checks and 15/15 corruption cases | `julia_tests_driver.txt` |
| New Fourier structural proof replay | Four disjoint orbits cover 400 corners; exact representative identities and explicit monomial equivalence pass | `fourier_orbits.txt` |
| Proposed auxiliary Lean lemmas | Four lemmas elaborate, standard axioms only | `proposal_algebra.txt` |
| Shorter Record exclusion | Same statement proved via decomposition, standard axioms only | `proposal_record.txt` |
| Proposed patches applied to isolated files | Both patched production modules elaborate successfully | `patch_validation.json` |
| Julia stale-cache defect | Invalid changed input reports complete success with unchanged old receipts | `driver_reproductions/` |
| Julia exit-status defect | Fresh boundary failure exits zero | `driver_reproductions/` |
| Fresh invalid-frame checks | Python rejects singular Gram matrix; Julia rejects non-positive-definite Gram matrix | `mutated_fresh_python.txt`, `mutated_fresh_julia.txt` |
| Supplemental result guard | Rejects the fresh incomplete result with exit 1 | `result_guard_test.txt`, `result_guard_exit.txt` |
| Source preservation | 10,525 files unchanged; no additions/removals; clean Git status | `source_preservation.json` |

All evidence paths in this table are relative to `evidence/`. The full Python run took about 1,024 seconds wall time under concurrent load. It included the independent special obligations for Tao, F6, and H0, in addition to the complete record replay. The receipt comparison excludes runtime columns and includes the radii, bounds, bin and label digests, graph digests, leaf counts, and boundary-box counts listed in its log.

The Julia fixture is intentionally partial: it has 21 non-closed targets and does not certify Fourier membership. Its expected partial outcome is not a complete-atlas result. The full 12,021-record Julia interval replay was **not** repeated during this audit. Stored `results_v4` receipts were used to reproduce the cache bug, not counted as fresh independent verification.

## Reproducing the checks

Use a disposable copy of the pinned repository with its dependencies installed. Set `PYTHONDONTWRITEBYTECODE=1` and invoke Python with `-B` when preserving source directories matters. Run the following from that copy's root, using a fresh absolute output directory in place of `/tmp/nofour-audit-replay`:

```sh
python3 -B verify.py --atlas -j 8 --log-dir /tmp/nofour-audit-replay
python3 -B tests/negative_atlas.py
python3 -B tests/negative_exact.py
python3 -B tests/clique_search.py 2000
bash proof/independent/tests/run_tests.sh /tmp/nofour-julia-fixtures
```

From the copy's `lean/` directory:

```sh
python3 -B check_axioms.py --full
lake env lean /absolute/path/to/unpacked-audit/lean/AlgebraicLemmas.lean
lake env lean /absolute/path/to/unpacked-audit/lean/RecordExcludes.lean
```

The patch files are proposed repository-root diffs. The equivalent standalone proofs above were compiled. Both patches were also applied to isolated copies of their complete production modules, and each patched module elaborated successfully. A downstream build with those patched modules installed as replacements was not run; perform that integration check in a disposable checkout before merging.

From the unpacked audit directory:

```sh
python3 -B scripts/fourier_orbits.py
python3 -B scripts/inventory.py /absolute/path/to/repository-copy
python3 -B scripts/reproduce_driver_issues.py /absolute/path/to/repository-copy /tmp/nofour-new-reproduction --julia /absolute/path/to/julia
```

The reproduction script refuses an existing output directory or one inside the source repository, pins the atlas digest, creates both mutations, runs the Julia driver, and checks a fresh normal bound. The two invalid inputs are generated on demand rather than included in this ZIP. Its expected successful result means that both verifier defects were reproduced.

`scripts/check_julia_result.py` is only a supplemental completion/scope check. It **does not authenticate cached receipts** and does not fix the stale-cache problem. Use it only after a genuinely fresh run or a separate provenance-manifest validation.

## Scope of the conclusions

The full conditional Lean theorem, the concrete Python replay, and the exact algebraic proposals are separate pieces of evidence. Neither the axiom audit nor the external replay constructs an unconditional kernel theorem from the entire concrete atlas. The Fourier replacement is a complete paper proof with exact replay; its full Lean port is outstanding. The flatness symmetry reduces the calculation to one universal weighted entry; the retained identity still needs the existing algebra or a new proof. The F6 limit argument is also a proposed Lean integration task. No regenerated smaller atlas, benchmarked large refactor, or atlas-free global theorem is supplied.

The audit prioritized the theorem's assumptions, coverage interfaces, repeated algebra, and verifier orchestration. It does not claim an independent line-by-line mathematical rederivation of every dependency. `source_manifest.json.gz` pins the 10,525 audited source/data files; `.git`, `.lake`, `.venv`, `__pycache__`, and `.DS_Store` were excluded from that manifest. The preservation receipt states precisely what was compared.
