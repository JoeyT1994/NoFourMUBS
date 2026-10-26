# U: fold at the edge — proof and exact certificates

Read **REPORT.md** for the complete answers to Q1–Q5.

Main result: the signed-root construction is real analytic through every regular seed edge and, at one explicit F6 corner, parametrizes the entire dephased Hadamard germ. The equivalence quotient has a faithful group of order 72 but is still locally homeomorphic to R4.

An exact contraction certifies the full cube
`|delta theta1|,|delta theta2|,|delta theta3|,|y| <= 0.05`.
Uniform augmented-Jacobian and side derivative bounds are included.

The proposed universal regular-edge-corner statement is false. An explicit Fourier-family matrix and its complete 400-corner exact census are included.

## Replay

Requires Python 3 only. From the package root:

```sh
python3 scripts/verify_all.py
```

The runner stops on failure and writes complete results in `receipts/`.

| File | Purpose |
|---|---|
| REPORT.md | Written proofs, explicit chart, quotient, quantitative bounds, limitations |
| scripts/verify_fold_f6.py | Side rank, fold transversality, all 400 F6 corners |
| scripts/verify_f6_chart.py | Rank-21 orthogonality Jacobian, rank-four chart, metric and 72 symmetries |
| scripts/verify_fold_bounds.py | Independent side-angle inverse and Hessian bounds |
| scripts/verify_parameter_cube.py | Parameter-dependent exact contraction on the radius-0.05 cube |
| scripts/verify_R_monotone_box.py | Unique normal seed phase; horizontal/vertical agreement |
| scripts/verify_fourier_no_regular_edge.py | Exact global counterexample and corner census |
| receipts/ | Outputs from the delivered successful replay |
| input_context/ | Supplied mathematical inputs, kept separate from the new results |
| MANIFEST.sha256 | Integrity hashes for the delivered files |

All numerical constants labeled CERTIFIED are verified with integer/rational arithmetic or exact quadratic fields. PROVED statements use the supplied side and matched-flatness identities as explicitly recorded in REPORT.md. This package does not claim Lean formalization of the new results.
