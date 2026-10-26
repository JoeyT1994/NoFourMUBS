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
- **C1:** return Z's whole-ball enclosure (Lemma 3.1), with the box method as fallback;
- **Stage C** on that enclosure (Lemma 3.2);
- every transfer box (Lemma 5.1) and the coverage of its sphere.

For the X-ball it checks:
- its C1 (Krawczyk tubes of the edge chart);
- its image within 7/40 of F6 (Theorem 4.1);
- its sphere's transfers.

It also checks Tao's record. A run over a subset (`--only`) never reports PASS.

## The certificate

⟨filled from the final certificate: seed balls, boxes, sha256, Arb and Julia receipts with wall time and core-hours⟩
