# One integrated Lean formalization

The canonical result is `NoFourMUBs.no_four_mubs_main` in
`NoFourMUBs/MainTheorem.lean`. It still takes three explicit inputs:
`AtlasCertificate`, `Step2.MatchedExistence`, and
`Step2.CriticalClassification`. A successful Lean build checks this implication;
it does not prove the missing inputs. The repaired SOS input is discharged.

The selected route reuses the repository's maximum theorem, uniqueness,
atlas interfaces and local exclusions, together with the repaired coverage
argument. Existing E/direct third-moment certificates are reused for matched
existence. There is one active theorem route. Earlier exploratory files are
retained as history and are not default build targets.

See `../FORMALIZATION_STATUS.txt` for the remaining obligations. At migration,
31 reconstruction modules / 77 endpoints and all 34 selected products had
local PASS receipts; actual summand bindings were 7/19. Classification through
checkpoint95 had a complete local audit; through99 was only partly built.
Neither of the two mathematical inputs is claimed complete.

## Verification on GitHub

The workflow `Unified Lean checks (atlas excluded)` installs the pinned Lean
4.33.0 toolchain, fetches the pinned Mathlib cache, builds the selected local
module closure in dependency order, and checks every listed theorem's axioms.
The plans under `../ci/` pin source hashes and specify the audit endpoints.
Only `propext`, `Classical.choice` and `Quot.sound` are allowed; `sorryAx` and
`ofReduceBool` are rejected. Logs and JSON receipts are uploaded per run.

The four jobs are the canonical implication, checked reconstruction results,
staged classification work, and the unfinished ConstantBinding10 attempt.
An unfinished target can fail without invalidating previously checked targets.
Read the job names, theorem types and remaining-input report together.

**No atlas certificates are generated, checked, replayed or certified.**
The abstract atlas interface remains an explicit theorem input.

## Sources and dependencies

`lake-manifest.json` pins Mathlib and its dependencies. Selected Hadamard6 and
OAI Fourier sources are vendored for reproducibility; provenance and original
source hashes are retained under `../audit/` and `vendor/fourier/PROVENANCE.txt`.
These are reused results, with the compatibility changes recorded by the
existing audit, rather than a second proof implementation.

Downloaded dependencies and `.lake` build outputs are regenerable and are not
committed. Historical local receipts document their original checks; the final
verification must come from the GitHub run for the relevant commit.

For source inspection only, from the repository root:

```bash
python3 ci/check_lean.py main --validate-only
```

The same checker supports `main`, `matched`, `critical`, and `open-binding`.
The workflow executes the full build and axiom audit on GitHub.
