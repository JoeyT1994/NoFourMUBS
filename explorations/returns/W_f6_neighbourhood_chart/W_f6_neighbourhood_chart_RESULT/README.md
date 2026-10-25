# W result: a fixed chart covering the full phase-radius 0.15 Fourier neighbourhood

Read `REPORT.md` for the consolidated theorem, explicit ellipsoid, proofs, and dependency scope.

The same U system (20) and the same corner are used. The new results establish existence and uniqueness on an ellipsoid of tangent radius 0.2, coverage of every class at horizontal phase quotient distance at most 0.15, injectivity modulo the 72 Fourier stabilizers, and boundary distance strictly greater than 0.15.

## Replay

From this directory, run:

```sh
python3 -I scripts/verify_all.py
```

Python 3.9 or later is sufficient. Only its standard library is used. Do not enable `-O`, because assertions are part of the exact verifiers. Every component is launched in isolated mode. The replay takes approximately 14 seconds in the creation environment and regenerates the predictor and receipts.

All decisions use exact integer/rational arithmetic or exact arithmetic in Q(sqrt(3)). Decimal console summaries and timings are informational. `certificates/SUMMARY.json` records the assembled outcome.

## Main interface

For raw U parameters p=(u1,u2,u3,y), the domain is

```text
u1^2 - u1*u2 - u1*u3 + (7/4)*(u2^2+u3^2)
    + (1/2)*u2*u3 + y^2/576 <= 1/25.
```

The exact cubic predictor is in `data/predictor.json`; `proofs/CHART_CERTIFICATE.md` explains its coordinate and coefficient encoding. The unique augmented-system solution differs from the cubic predictor by the componentwise tube

```text
(0.00185, 0.00147, 0.00137, 0.00162, 0.00185, 0.00197, 0.00165).
```

The uniform weighted contraction factor is below 0.815.

## Dependency and limits

The new analytical assembly takes U's accepted local full-Hadamard germ theorem as an input. The supplied U report and review are preserved in `input/`. Earlier verifiers referenced by U were absent from the attachment and are not claimed to have been replayed here.

The coverage radius 0.15 is an actual phase-quotient statement, distinct from the parameter radius 0.2. Coverage at actual radius 0.2 is not established. No MUB atlas or Stage C data is used. The derivative upper bound L=1.5e11 is rigorous but conservative; it is not intended as a practical large-box enclosure constant.
