# A floating-point prototype of the seed balls

This is a floating-point prototype of the construction in [`../SPEC.md`](../SPEC.md). The test suites of both checkers
(`../cert/tests/` and `../../independent_seed/tests/`) compare against it: their certified bounds must lie above the
remainders it samples. The production code is in [`../driver/`](../driver/README.md).

| File | What it does |
|---|---|
| `seedball.py` | Computes the matched completion H₊(θ) by Newton continuation on the side Gram equations |
| `tm2.py`, `tmball2.py` | Second-order Taylor models, a parametric Krawczyk tube for the sides, and the forced block by residual correction, which together give the remainder bound of SPEC §2 |
| `edgeball.py`, `edge_stagec.py` | The edge chart through F6 and its local tests (SPEC §10) |

## Design notes

- Seed balls pass the local tests at useful radii only if the remainder is computed with second-order Taylor models,
  the forced block D comes from a residual correction (a product with an inverse amplifies the remainder about a
  hundredfold), and the side angles come from a parametric Krawczyk tube on small boxes.
- Radii are measured in the horizontal gauge (SPEC §11). In the dephased gauge, a ball of radius r covers only about
  8% of the class volume of a horizontal ball of the same radius.
- Adaptive boxes bring the certified remainder to within 1.25–1.33 times the true one.
- Seed balls cannot reach F6, which is only a limit of the reconstruction. The edge chart is a four-dimensional ball
  there, and its local tests pass at radius 0.125.
