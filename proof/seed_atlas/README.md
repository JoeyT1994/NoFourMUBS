# The seed atlas (Steps 3–5)

A finite atlas of **seed balls**, ellipsoids in the four seed phases of a corner, plus one ball at F6 (the
**X-ball**). Their images cover every non-Tao Hadamard class, and none contains a quartet edge (`PROOF.md`
Steps 3–5).

| Path | Content |
|---|---|
| [`SPEC.md`](SPEC.md) | What is certified: the claims C1 (enclosure), Stage C and C2 (boundary transfers), openness, the edge chart and the X-ball (§10), the horizontal gauge (§11) |
| [`FORMAT.md`](FORMAT.md) | The certificate file `seed-atlas-v1`: seed balls, transfer groups (T0, T1, T3), the X-ball, Tao; exact binary64 in hex; dyadic sphere boxes |
| [`cert/`](cert/README.md) | **The Arb certifier** (trusted): checks a certificate from its data alone |
| [`driver/`](driver/README.md) | The driver (untrusted): grows the atlas and writes the certificate |
| [`prototype/`](prototype/README.md) | The float prototype: the reference the checkers' test suites compare against |
| `results/` | The certificate `seed_atlas_certificate.json.gz` and the receipts of both certifications |

The second, independent checker is [`../independent_seed/`](../independent_seed/README.md) (Julia, written from
`SPEC.md` and `FORMAT.md` only).

## Certify

```bash
python3 proof/seed_atlas/cert/certify_seed_atlas.py proof/seed_atlas/results/seed_atlas_certificate.json.gz -j N --receipt receipt.json
```

or `python3 verify.py --atlas -j N` from the repository root. A run checks, for every seed ball:
- **C1:** return Z's whole-ball enclosure (Lemma 3.1), from cheap rank-0 or rank-4 constants (ZK2), with the box method
  as fallback;
- **Stage C** on that enclosure (Lemma 3.2);
- its sphere's transfers (Lemma 5.1): every cap (theorems ZC, and ZC2b for T3) and their exact coverage of the sphere,
  or, for a sphere given by boxes, every box and their coverage.

For the X-ball it checks:
- its C1 (the edge chart's whole-ball model; Krawczyk tubes as fallback);
- its image within 7/40 of F6 (Theorem 4.1);
- its sphere's transfers: every cap (theorem ZC2a) and their coverage.

It also checks Tao's record. A run over a subset (`--only`) never reports PASS.

## The certificate

`results/seed_atlas_certificate.json.gz`: 17 MB, SHA-256 `33ad9798eb7a5585c486f2427a6b223867a43b308b7f184467b4cd5956bd8baf`.
- 2,775 seed balls (radii 0.015–0.125), every one with cheap C1 constants;
- every sphere covered by caps, with no boxes: 97,780 seed caps (T0 13,519; T1 83,979; T3 282) and 19,611 X-ball
  caps, with 550,347 exact coverage facets (index-only schema, FORMAT.md §8a);
- the X-ball (tangent radius 0.13; image within 0.142 of F6).

| Check | Result |
|---|---|
| Arb (`results/arb_receipt.json`, with its code binding: `python3 cert/check_binding.py`) | **PASS**, 0 failures in 2,778 items; 33 min on one 128-core node; seed-ball work 25 core-hours (C1 0.5, Stage C 23, transfers 1.2) |
| Julia (`results/julia/`: `RESULT.txt`, `BINDING.txt` with the certificate's SHA-256, per-ball `seeds.tsv.gz`) | **PASS**, every check; 1 h 07 min on one 64-core node (8 shards of 8 threads, balls started longest first; the X-ball's caps checked in the shards, their coverage in the final run); caps in 256-bit intervals; Stage C's clique-search budget `SEED_CLIQUE_CAP` = 2·10¹¹ steps |

A cap {‖x‖ = 1, v·x ≥ h} is certified for a transfer by 5 × 5 positive-definite witnesses on the source ball's
whole-ball model, and the caps of a sphere cover it by an exact polar-facet certificate (FORMAT.md §§4a, 8a;
PhaseCover/theorems/ZC_cap_transfers, ZC2a_xball_sphere_caps, ZC2b_t3_caps). A T3 cap certifies Theorem 4.3's two
conditions (return XS: no side data). Julia checks caps in 256-bit intervals.
