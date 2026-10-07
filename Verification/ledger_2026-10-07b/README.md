# Full post-E ledger, 7 Oct 2026 (afternoon)

`full_ledger.py` (sha256 `53654cee…a942`) run over all **45,713,468** post-E rows. It adds the source `band` to the previous ledger, [`ledger_2026-10-07a`](../ledger_2026-10-07a/README.md).

## Result: 36 rows not closed by our own certificates

| State | Rows |
|---|---:|
| Open | **0** |
| Delegated: ring | **0** (was 7,649) |
| Delegated: export2 | **36** (was 3,155) |
| Stage-C leaves | 1,018 of 1,018 closed |

**Error count 1.** This is the known truncated v3 file from 5 Oct; its complete records are counted.

## Closed since ledger 07a

| Source | Rows | What it is |
|---|---:|---|
| `band` | 6,370 | RouteC band certificate, approach A ([report](../../RouteC/band/REPORT.md)): reconstruction-free proof that every completion of E(θ) has a corner with R > sup R(E). Each box has a float search, Arb replay of every leaf, exact split/root coverage, a tape hash, and its centre and radius checked against the inventory. |
| `hybrid_psd` | 3,682 (was 374) | Signed-mean cover plus PSD leaves, fresh replay. Rounds 1–3; stopped after the band run. |
| `signed_mean` | 1,951,490 | Factored signed-mean producer; fresh replay PASS. |

## The 36 remaining rows

All 36 rows are class (0,0,2,4) and lie within about 10⁻³ of the seeds ±(0, 0, 2π/3, −2π/3). The list is in [`seed_boxes38.jsonl`](../../RouteC/band/seed0024/seed_boxes38.jsonl), which also holds the 2 (2,4,4,2) seed boxes; those are closed by `ball40_seed`.

**The corner chart is fully degenerate at these seeds.**
- E has two equal rows, so g = det(6I − EE†) = 0 in every frame.
- The completions form a continuum through F6.
- R = −1296·q(h)² + O(h⁵) exactly (`seed0024/seed_quartic.py`), with R > 0 on a thin cusp.

**What closes them.** The Arb cap of R(E) on each box is at most 1.6·10⁻⁸. So a completion in which E is the maximal corner has every corner below that bound. The averaging lemma (`simplerproof/`, Step 2), even in a much weaker form than c₀ = 5, then places it inside the 1/30 F6 tube, where ClusterTube excludes quartet edges.

Until that lemma is proved, the ledger keeps these 36 rows in the delegated export2 set. They are the only post-E rows that our own certificates do not close.
