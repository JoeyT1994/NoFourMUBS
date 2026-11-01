# Matched flatness: completed proof package

**Outcome:** both requested L-id identities are exactly zero in
`Q(a,b,c,d)`. An independent smaller proof uses four weighted third moments.
With the supplied side-existence theorem, these results prove matched
existence at every strict seed `R > 0`, for either matched sheet, without the
classification theorem.

Start with [FLATNESS.md](FLATNESS.md) for the complete statement and proof,
and [STATUS.md](STATUS.md) for the distinction between paper proof, exact
certification, numerical evidence and remaining formal work.

## Reproduce

Python 3.12 and `python-flint==0.9.0` were used. FLINT is the only external
Python dependency of the delivered verifiers.

```bash
python -m pip install -r requirements.txt
python verify_all.py
```

The default command verifies both universal proofs, the coefficient data,
the moment translations, and the exact anchor. Every required failure exits
nonzero. The wrapper refuses `python -O` and records detailed measurements in
`reports/verification.json`.

For the complete smaller proof without the redundant large L-id replay:

```bash
python verify_all.py --quick
```

This is still a universal exact proof. It is not a sampling or numerical
mode. It verifies the four rational weighted defects, their exported
cofactors, all coefficient cancellations, and the structural identities.

## Files

| Path | Purpose |
|---|---|
| `FLATNESS.md` | Full theorem, two proofs, exact scope and formal integration |
| `STATUS.md` | Results, limitations and measured replay |
| `verify_all.py` | One-command acceptance wrapper |
| `verify_structural.py` | Independent integer Laurent checks of invariants and moments |
| `direct/DERIVATION.md` | Detailed third-moment derivation |
| `direct/verify_third_moments.py` | Reconstruct all eight rational identities and bind certificate data |
| `direct/third_moment_certificates.json.gz` | Full integer coefficients and explicit cofactors, sliced in one variable |
| `direct/verify_certificate_slices.py` | Independent standard-library integer cofactor and coefficient replay |
| `direct/verify_universal_third.py` | Universal third moments and weighted-defect contraction |
| `direct/README.md` | Certificate schema and Lean-oriented decomposition |
| `certificate_agent/verify_factored_rational.py` | Exact proof of both original L-id identities |
| `certificate_agent/factor_certificate.json` | Small-factor and complementary-cofactor records for L-id |
| `certificate_agent/verify_source_translation.py` | Exact checks of optimized side formulas |
| `certificate_agent/CERTIFICATE_METHOD.md` | Denominator argument and successful run measurements |
| `audit/AUDIT.md` | Independent mathematical and convention audit |
| `audit/verify_universal_moments.py` | Independent Laurent checks of both moment orders and symmetric square |
| `audit/verify_anchor.py` | Exact replay over `Q(i,sqrt(3),sqrt(5),sqrt(7))` |
| `audit/base_anchor_H0.json` | Supplied anchor input, copied for self-contained replay |
| `reports/` | Combined replay logs and measurements |
| `PROVENANCE.json` | Hashes of the supplied task and mathematical source inputs |

The audit's three rational seed evaluations are included as exact diagnostic
checks only. They are not used for universal acceptance.

## Scope

The output proves the missing matched-flatness assertion. The side-existence
theorem is the supplied paper input, whose separate Lean formalization is
outside this task. Neither the new proof nor that separate formalization is
represented here as a compiled Lean theorem. `MatchedDensityReach` and the
finite atlas certificate remain separate inputs to the no-four-MUB theorem.
