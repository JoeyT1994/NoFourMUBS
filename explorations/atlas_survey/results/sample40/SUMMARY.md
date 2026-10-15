# Atlas survey summary

301 Records surveyed (0 with errors) of 12021.

## Edge tests needed for "no two cliques" (kernel labels)

| tests | Records | share |
|---|---|---|
| direct | 173 | 57.5% |
| support | 51 | 16.9% |
| joint | 58 | 19.3% |
| fail | 19 | 6.3% |

## Tier 1 (no third MUB anywhere in the ball)

no third MUB: 26, third MUB not excluded: 256, undecided: 19.

## Normal bound

exact sigma certificate passes: 301, fails: 0, not run: 0.

## Estimated kernel cost per Record (model calibrated on Record 100)

| mean | median | p90 | p99 | max | extrapolated total |
|---|---|---|---|---|---|
| 1354 s | 1240 s | 1804 s | 3067 s | 3722 s | 4520 CPU-hours |

## Workload

| quantity | median | p90 | max |
|---|---|---|---|
| direct_tests | 1017312 | 1246848 | 1797120 |
| tangent_tests | 213260 | 296475 | 538632 |
| survivors | 14825 | 23524 | 43520 |
| labels | 184 | 266 | 584 |
| label_tests | 1341341 | 3010914 | 10031162 |

## By radius R

| R | Records | median est. s | direct-only share | no third MUB share |
|---|---|---|---|---|
| 0.04 | 2 | 746 | 0% | 0% |
| 0.05 | 11 | 821 | 0% | 0% |
| 0.063 | 25 | 971 | 12% | 0% |
| 0.08 | 263 | 1364 | 65% | 10% |

## Structure: distance to H2-reducibility (d2) and to a 3x3 Hadamard block (d3)

| d2 bin | Records | median est. s | needs more than direct | third MUB not excluded |
|---|---|---|---|---|
| [0, 0.001) | 88 | 1170 | 53% | 84% |
| [0.001, 0.01) | 127 | 1273 | 43% | 90% |
| [0.01, 0.03) | 73 | 1257 | 30% | 75% |
| [0.03, 0.1) | 13 | 1201 | 31% | 100% |

| d3 bin | Records | median est. s | needs more than direct | third MUB not excluded |
|---|---|---|---|---|
| [0, 0.01) | 2 | 916 | 100% | 100% |
| [0.01, 0.03) | 3 | 898 | 33% | 67% |
| [0.03, 0.1) | 39 | 922 | 72% | 72% |
| [0.1, 0.3) | 102 | 1066 | 68% | 75% |
| [0.3, 2) | 155 | 1582 | 18% | 95% |

## Torus roots at the centre (Newton from labels)

count distribution: 48: 171, 50: 4, 52: 39, 54: 12, 56: 63, 58: 2, 60: 7, 68: 1, 72: 1, 76: 1

smallest Jacobian singular value: median 4.19, p10 1.41, min 0.285.

## Distance of the centre to a MUB triple (delta3: best 6 unbiased vectors, worst pairwise |<x,y>|/6)

| delta3 bin | Records | median est. s | needs more than direct | kernel graph fails |
|---|---|---|---|---|
| [1e-06, 0.05) | 39 | 919 | 74% | 31% |
| [0.05, 0.1) | 49 | 970 | 65% | 14% |
| [0.1, 0.2) | 153 | 1252 | 42% | 0% |
| [0.2, 0.4) | 60 | 1506 | 5% | 0% |
