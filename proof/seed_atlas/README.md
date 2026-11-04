# The seed atlas

The atlas is a finite set of seed balls, which are ellipsoids in the four seed phases of a corner, together with one
ball at F₆ (the X-ball in the code). Their images cover every Hadamard class except Tao's, and none contains a pair that extends to
four MUBs (Steps 3–5 of [`PROOF.md`](../../PROOF.md)).

| Path | What it contains |
|---|---|
| [`SPEC.md`](SPEC.md) | What is certified: the enclosure of each ball (C1), the local tests (Stage C), the boundary transfers (C2), openness, the chart at F₆ and the ball at F₆ (§10), and the horizontal gauge (§11) |
| [`FORMAT.md`](FORMAT.md) | The certificate format `seed-atlas-v1`: the seed balls, the transfer groups (same-corner, corner-change and into the chart at F₆, called T0, T1 and T3), the ball at F₆ and Tao's record, with every number stored as exact binary64 in hex |
| [`cert/`](cert/README.md) | The Arb certifier, which checks a certificate from its data alone |
| [`driver/`](driver/README.md) | The driver, which grows the atlas and writes the certificate. Nothing in it needs to be trusted |
| [`prototype/`](prototype/README.md) | A floating-point prototype, which the checkers' test suites compare against |
| `results/` | The certificate `seed_atlas_certificate.json.gz` and the records of both checks |

The second, independent checker is [`../independent_seed/`](../independent_seed/README.md). It is written in Julia
from `SPEC.md` and `FORMAT.md` alone.

## Checking the certificate

```bash
python3 proof/seed_atlas/cert/certify_seed_atlas.py proof/seed_atlas/results/seed_atlas_certificate.json.gz -j N --receipt receipt.json
```

The same check runs as `python3 verify.py --atlas -j N` from the repository root. For every seed ball, it checks:
- the enclosure of the ball (Lemma 3.1), from a single centre computation, with a box method as a fallback,
- the local tests on that enclosure (Lemma 3.2),
- and the transfers of the ball's boundary sphere (Lemma 5.1): every cap, and the exact coverage of the sphere by
  the caps.

For the ball at F₆ it checks its enclosure, that its image lies within phase distance 7/40 of F₆ (Theorem 4.1), and the
transfers of its sphere. It also checks Tao's record. A run over a subset of balls (`--only`) never reports PASS.

## The certificate

`results/seed_atlas_certificate.json.gz` is 17 MB, with SHA-256
`33ad9798eb7a5585c486f2427a6b223867a43b308b7f184467b4cd5956bd8baf`. It holds:
- 2,775 seed balls, with radii from 0.015 to 0.125,
- caps covering every sphere: 97,780 seed caps (13,519 same-corner, 83,979 corner-change and 282 into the chart at F₆)
  and 19,611 caps on the sphere of the ball at F₆, with 550,347 exact coverage facets,
- and the ball at F₆, with radius r_H ≈ 0.13 and image within phase distance 0.142 of F₆.

| Check | Result |
|---|---|
| Arb (`results/arb_receipt.json`) | PASS, with no failures in 2,778 items. It takes 33 minutes on one 128-core node, of which the seed balls take 25 core-hours |
| Julia (`results/julia/`) | PASS on every check. It takes 1 hour 7 minutes on one 64-core node, with the caps checked in 256-bit intervals |

A cap {‖x‖ = 1, v·x ≥ h} is certified for a transfer by 5 × 5 positive-definite witnesses on the source ball's
enclosure. The caps of a sphere are shown to cover it by an exact polar-facet certificate (FORMAT.md §§4a and 8a, and
the theorems in `PhaseCover/theorems/`). A cap that transfers into the chart at F₆ needs only the two conditions of
Theorem 4.3.
