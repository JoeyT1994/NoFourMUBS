# Lean simplification handoff

Date: 2026-10-22

## Start here

Give the Lean agent this entire directory and instruct it to **read `PROMPT.md` first**. This is a specification and proof handoff for the eight reductions in the preceding discussion of the no-four-MUBs manuscript.

The package contains:

| File | Purpose |
| --- | --- |
| `PROMPT.md` | Executable work assignment, priorities, acceptance requirements |
| `BRIEF.md` | Mathematical statements, proof plans, formulas, and hypotheses |
| `DEPENDENCIES_AND_STATUS.md` | Dependency graph, corrections, and limits of the present evidence |
| `LEAN_TASKS.md` | Suggested lemma boundaries and integration plan |
| `sources/SOURCE_NOTES.md` | Provenance and the optional external theorem reference |
| `checks/verify_exact_cases.py` | Dependency-free exact arithmetic checks for finite examples |
| `checks/exact_results.json` | Output of those checks in the preparation environment |
| `CHECKS.md` | What was checked and what was not |
| `manifest.json` | Machine-readable handoff metadata |
| `SHA256SUMS` | Checksums of package files other than this checksum file |

## Status

**This is not a Lean-verified proof package.** No Lean executable, project, manuscript source, or certificate data was available in the preparation environment. The mathematical arguments have been reviewed, and the included finite arithmetic checks have been run. Those checks are not substitutes for the proposed Lean proofs.

The user's source discussion refers to `no_four_MUBs-11.pdf`, Propositions S.1–S.6, Eq. (9), and Eq. (A.103). Those numbers are retained only as navigation hints. The downstream agent must match them to its actual manuscript and repository.

The immediate objectives are side-fiber uniqueness, stronger certificate bounds, and exact quartet-completion reductions. The package does **not** assert a new uniform no-four-MUBs obstruction or that any revised certificate has passed.

## Run the finite checks

From this directory:

```bash
python3 checks/verify_exact_cases.py
```

All arithmetic in that script uses rational coefficients in quadratic number fields. No third-party Python package is needed.
