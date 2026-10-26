# Seed-space balls: the float prototype

The float (untrusted) prototype behind `../SPEC.md`. It is the reference both checkers' test suites compare against
(`../cert/tests/`, `../../independent_seed/tests/`): certified bounds must lie above its sampled remainders. The
production code is `../driver/`; the checkers are `../cert/` (Arb) and `../../independent_seed/` (Julia).

| file | what |
|---|---|
| `seedball.py` | matched completion H₊(θ) by Newton continuation on the side Gram equations |
| `tm2.py`, `tmball2.py` | second-order Taylor models, a parametric Krawczyk side tube, and the forced block by residual correction: the C1 remainder bound (SPEC §2) |
| `edgeball.py`, `edge_stagec.py` | the edge chart through F6 (return U's augmented system) and its Stage C test (SPEC §10) |

## What was learned

1. **Seed balls pass Stage C at useful radii,** provided:
   - the C1 remainder is computed with second-order Taylor models;
   - the forced block D comes from a residual correction, not a product with an inverse (that amplifies remainders
     about 100×);
   - the side angles come from a parametric Krawczyk tube on small boxes.
2. **Measure radius in the horizontal gauge** (SPEC §11). In the dephased gauge a ball of radius r covers only about 8%
   of the class volume of a horizontal r-ball (the horizontal frame's singular values are 0.36–0.7). The first full
   build needed 27,636 balls for that reason.
3. **Adaptive boxes** bring the certified remainder to 1.25–1.33× the true one (it was 2.5× with a fixed grid). In the
   horizontal gauge, balls then pass at 0.125 (59%), 0.1 (37%) and 0.08 (5%).
4. **F6.** Seed balls cannot reach F6, which is only a limit of the reconstruction. Return U's edge chart is a
   four-dimensional ball there (Stage C passes at r = 0.125). Openness at its R = 0 points follows from the graph
   property near F6 by the mean value theorem (SPEC §10.1–10.2).
