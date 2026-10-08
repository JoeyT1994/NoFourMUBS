# Confinement research return

**The full global confinement theorem is not proved.** This archive contains
the strongest exact partial results obtained, their complete supporting
proofs, independently replayable certificates, and separately labeled
numerical experiments.

Start with `CONFINEMENT.md` for the mathematical statements and proof,
and `STATUS.md` for the exact boundary between proved results, assumed
inputs, finite computation, numerical evidence and the remaining gap.

## Run every exact certificate

Python 3.10 or later is required. From this `output/` directory:

```sh
python3 -m pip install -r requirements.txt
python3 verify_all.py
```

There are fourteen exact certificates. The runner records versions,
individual script output and exit status in `verification.log` and returns
a nonzero exit code if any certificate fails. It does not run the
floating-point experiments. Do not use Python's `-O` option, which disables
assertions. The runner rejects that option.

Every certificate can also be invoked independently, for example:

```sh
python3 global/verify_cayley_smooth.py
python3 mc1/complement_minimax/verify_complement_minimax.py
```

The exact suite requires only SymPy and its mpmath dependency; the other
listed dependencies support the optional supplied toolkit and numerical
experiments. Exact scripts never use floating-point tolerances to accept
a claim. No network access is needed once the dependencies are installed.

## File map

| Location | Contents |
|---|---|
| `CONFINEMENT.md` | Integrated theorem statements, proofs, remaining problem, and complete F1–F8 input ledger. |
| `STATUS.md` | Plain-language status, certificate table, assumptions and numerical results. |
| `fourier/` | Sharp confinement on the entire Fourier family and its transpose; full corner spectrum and optimal phase distance. |
| `global/` | The uniform family tube, global derivative bounds, regular Gram critical classification, and smooth Cayley intersection. |
| `critical/` | Correct compactness reduction, improved gauge, actual analytic providers, chirality and double-zero exclusions, and the combined one-partition theorem. |
| `critical_exceptions/` | Complete q-zero critical exclusion when chirality is positive, including rank-two and rank-three cases. |
| `mc1/` | Global determinant/permanent and contraction identities, maximum-volume bounds, complementary minimax barrier, and the exact cross-partition example. |
| `exploration_fourier_agent/` | Clearly nonrigorous numerical pilot and pattern analysis, raw data and logs, plus independent mathematical review notes. |
| `inputs/` | Unmodified supplied prompt, four toolkit files, and the reference TeX document. These are data and assumed source material, not new certificates. |
| `INPUTS.md` | Input provenance, dependency versions, and SHA-256 hashes. |
| `verification.log` | Recorded complete exact-suite replay. |
| `SHA256SUMS` | SHA-256 inventory of all archived files except this inventory itself. |

## Optional numerical experiments

The unmodified supplied self-test is numerical:

```sh
python3 inputs/toolkit/selftest.py
```

To repeat the recorded 30-start exploratory pilot:

```sh
OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 python3 exploration_fourier_agent/explore_minimax.py --starts 30 --seconds 120 --seed 2026100801
python3 exploration_fourier_agent/explore_active_patterns.py
```

The second command uses the pilot's saved trajectories. These scripts locate
their bundled dependencies relative to this directory. Rerunning experiments
overwrites their output data/logs, and results may vary with numerical-library
versions. Their results are not inputs to the exact certificate suite.

## Interpretation of a successful replay

`ALL 14 EXACT CERTIFICATES PASS` means that the specified finite polynomial,
integer, root-counting and rational-interval checks pass. The human arguments
explain how those checks establish the stated partial theorems. It does
**not** mean that global confinement, a full critical-point classification,
or the four-MUB consequence has been proved.
