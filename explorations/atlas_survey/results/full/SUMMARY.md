# Atlas survey summary

12021 Records surveyed (0 with errors) of 12021.

## Edge tests needed for "no two cliques" (kernel labels)

| tests | Records | share |
|---|---|---|
| direct | 6447 | 53.6% |
| support | 2314 | 19.2% |
| joint | 2587 | 21.5% |
| fail | 673 | 5.6% |

## Tier 1 (no third MUB anywhere in the ball)

no third MUB: 1040, third MUB not excluded: 10308, undecided: 673.

## Normal bound

exact sigma certificate passes: 12021, fails: 0, not run: 0.

## Estimated kernel cost per Record (model calibrated on Record 100)

| mean | median | p90 | p99 | max | extrapolated total |
|---|---|---|---|---|---|
| 1346 s | 1248 s | 1783 s | 3063 s | 6268 s | 4493 CPU-hours |

## Workload

| quantity | median | p90 | max |
|---|---|---|---|
| direct_tests | 1021376 | 1248544 | 2048128 |
| tangent_tests | 216038 | 296610 | 650507 |
| survivors | 15032 | 22975 | 54494 |
| labels | 185 | 263 | 756 |
| label_tests | 1352041 | 2915186 | 19365071 |

## By radius R

| R | Records | median est. s | direct-only share | no third MUB share |
|---|---|---|---|---|
| 0.04 | 76 | 735 | 0% | 0% |
| 0.05 | 419 | 801 | 0% | 0% |
| 0.063 | 1029 | 990 | 12% | 0% |
| 0.08 | 10497 | 1336 | 60% | 10% |

## Structure: distance to H2-reducibility (d2) and to a 3x3 Hadamard block (d3)

| d2 bin | Records | median est. s | needs more than direct | third MUB not excluded |
|---|---|---|---|---|
| [0, 0.001) | 3878 | 1215 | 57% | 85% |
| [0.001, 0.01) | 4810 | 1310 | 46% | 87% |
| [0.01, 0.03) | 2688 | 1240 | 37% | 84% |
| [0.03, 0.1) | 645 | 1152 | 24% | 84% |

| d3 bin | Records | median est. s | needs more than direct | third MUB not excluded |
|---|---|---|---|---|
| [0, 0.01) | 127 | 903 | 64% | 76% |
| [0.01, 0.03) | 241 | 908 | 71% | 76% |
| [0.03, 0.1) | 1172 | 931 | 72% | 73% |
| [0.1, 0.3) | 4091 | 1055 | 74% | 78% |
| [0.3, 2) | 6390 | 1552 | 23% | 94% |

## Torus roots at the centre (Newton from labels)

count distribution: 48: 6739, 50: 266, 51: 1, 52: 1732, 53: 1, 54: 430, 55: 7, 56: 2414, 58: 121, 59: 3, 60: 190, 62: 16, 64: 19, 66: 4, 68: 8, 70: 10, 72: 14, 74: 3, 76: 5, 78: 3, 80: 2, 82: 2, 84: 8, 86: 1, 88: 2, 92: 2, 94: 1, 96: 1, 98: 1, 100: 3, 106: 1, 108: 2, 118: 1, 120: 8

smallest Jacobian singular value: median 3.97, p10 1.34, min 0.0447.

## Distance of the centre to a MUB triple (delta3: best 6 unbiased vectors, worst pairwise |<x,y>|/6)

| delta3 bin | Records | median est. s | needs more than direct | kernel graph fails |
|---|---|---|---|---|
| [1e-06, 0.05) | 1338 | 922 | 73% | 26% |
| [0.05, 0.1) | 2010 | 971 | 70% | 16% |
| [0.1, 0.2) | 6015 | 1254 | 49% | 0% |
| [0.2, 0.4) | 2658 | 1524 | 8% | 0% |
