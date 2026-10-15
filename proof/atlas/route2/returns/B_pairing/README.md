# Route 2B output

Start with **REPORT.md**. The report contains full proofs, an explicit exact MUB triple, the distinction between the H₂ pairing locus and the unclassified full orthogonal-pair locus, and a conditional regional no-third-MUB theorem.

## Most important conclusions

Every order-six H₂-reducible Hadamard admits a shared skew monomial antiunitary, giving an orthogonal partner to every common-unbiased ray. The shared-skew property characterizes H₂-reducibility; the full orthogonal-pair locus is not classified here.

An exactly verified Diţă triple disproves the forced-3×3-block condition and every global positive-power lower bound on the triple defect in terms of distance to the Fourier families alone. It also demonstrates failure of automatic preservation of a selected pairing by a third basis.

Five orthogonal common-unbiased rays automatically complete to six. A regional exclusion can therefore use a no-five-clique graph, provided full ray coverage, intra-cluster exclusion and uniform phase tubes have all been proved.

**No new whole Record ball is certified by this package.** The radius screen is numerical and conditional; it is not a replacement atlas.

## Exact checks

Requires Python 3 and SymPy:

```bash
python verify_exact.py
python check_region_algebra.py
```

These print PASS/FAIL for their assertions. The first checks exact radicals, the full Diţă triple, all 400 3×3 blocks, strict seed invariants, sheet signs, corner identities, and antiunitary statements. The second checks rational quadratic-ball witnesses and finite graph logic, including rejection tests. It does not certify ray coverage or phase tubes.

## Numerical reproduction

Requires numpy, sympy, mpmath and networkx. The input toolkit and all 12,021 centre matrices are vendored under `_toolkit/`.

```bash
OPENBLAS_NUM_THREADS=1 python numerical_checks.py
OPENBLAS_NUM_THREADS=1 python sample_regions.py
OPENBLAS_NUM_THREADS=1 python random_baseline.py
```

The saved roots are sufficient for the first script's matched-seed and Record tests. To regenerate those cached searches as well:

```bash
OPENBLAS_NUM_THREADS=1 python regenerate_seeds.py
OPENBLAS_NUM_THREADS=1 python numerics.py
```

`sample_regions.py` uses two independent 2,048-start searches at each of 48 fixed-seed centres. It stores a complete CSV/JSON of the *found-set* diagnostics and the phase Taylor coefficients in NPZ files. It is not an exhaustive algebraic root finder. Its hypothetical tube sizes must not be interpreted as validated worst-case bounds.

`random_baseline.py` compares the small-overlap phenomenon with 10,000 independent ensembles of 48 random dephased flat vectors. It is not a model of the constrained MUB-ray distribution.

`append_report.py` rebuilds the report's numerical appendix from the JSON outputs. Read its qualifications before using the resulting tables as performance estimates.

## Data and provenance

`INPUT_PROVENANCE.json` gives SHA-256 hashes of the original handoff and copied inputs, plus runtime package versions. `MANIFEST.sha256` hashes the delivered files. The supplied atlas assertion is not independently replayed here.

All `*.npz`, `region_sample.*`, and `numerical_checks.*` values are floating point. Exact objects are defined in `verify_exact.py` and reproduced as expressions in `EXACT_TRIPLE.json`. The exact proof of the triple does not rely on its rounded NPZ representation.
