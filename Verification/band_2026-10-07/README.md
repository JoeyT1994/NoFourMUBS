# Band certificate production, 7 Oct 2026

Approach A of [`RouteC/band`](../../RouteC/band/REPORT.md), run on the 6,408 post-E boxes left open after hybrid round 2.

| File | Contents |
|---|---|
| `boxes.jsonl.gz` | The input boxes: inventory row id, exact rational centres, and radii π/2¹³ + 2⁻⁴⁰ |
| `results.jsonl.gz` | One record per box: search statistics; Arb verification (M, leaf counts); exact split/root coverage count; `accepted`; `tape_sha256` |

**Result.** 6,370 boxes accepted; 38 reached the minimum radius. All 38 sit at exact seeds: see the [report](../../RouteC/band/REPORT.md).

**Tapes.** The tapes (16 GB) are on the Flatiron cluster at `/mnt/ceph/users/jtindall/nofour_psd/band/prod/out/c*/tapes/<id>.npz`. The ledger checks each tape against its sha256 before crediting the row.

**Reproduce a box.** Run `python3 RouteC/band/band_prod.py BOXES.jsonl OUTDIR`. This reruns the float search, the Arb replay and the coverage check from the box alone. A regenerated tape may differ byte-for-byte across numpy builds; acceptance is decided by the Arb replay of whatever tape the search produces.
