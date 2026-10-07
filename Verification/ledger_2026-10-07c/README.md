# Full post-E ledger, 7 Oct 2026 (evening): every row closed by our own certificates

`full_ledger.py` was run over all **45,713,468** post-E rows. It adds the source `seed0024` to [ledger 07b](../ledger_2026-10-07b/README.md).

| State | Rows |
|---|---:|
| Open | **0** |
| Delegated (ring) | **0** |
| Delegated (export2) | **0** |
| Stage-C leaves | 1,018 of 1,018 closed |

**Error count 1.** This is the known truncated v3 file from 5 Oct; its complete records are counted.

## New source: `seed0024`, 36 rows

These are the boxes within about 10⁻³ of the (0,0,2,4)-class seeds ±(0, 0, 2π/3, −2π/3). At these seeds the corner chart is degenerate: g = 0, and the completions form a continuum through F6.

They are closed by [`RouteC/band/seed0024/PROOF.md`](../../RouteC/band/seed0024/PROOF.md):
- **Structure lemma.** Every completion lies, with linear error bounds, near an explicit 2-torus family S of exact Hadamards.
- **Certified (α, β) cover of S.** Each cell either puts every nearby completion in the 1/30 F6 tube (via the local theorem `PRACTICAL_LOCAL`), or exhibits a pairing-free corner with R greater than the box cap.

Receipt status is PASS. The ledger rechecks the input hashes and checks each box against the inventory.

## Rows by source

| Source | Rows |
|---|---:|
| frontier_p1, p2, p3 | 42,393,228 · 281,366 · 7,966 |
| signed_mean | 1,951,490 |
| ball40 / ball40_seed | 438,110 / 2 |
| sidecover | 291,691 |
| v2 | 170,489 |
| v3 | 164,469 |
| band | 6,370 |
| hybrid_psd | 3,682 |
| hard_frontier, h0024_frontier, hard2/hard3, hard_F | 2,219 · 2,179 · 168/1 · 2 |
| seed0024 | 36 |

**Trust inputs added by this ledger.**
- The identity R(A) = (2·Im q(B))² (exact).
- The local theorem `simplerproof/averaging_lemma/PRACTICAL_LOCAL.tex`. Its exact verifier passes; the written proof is awaiting independent review.
