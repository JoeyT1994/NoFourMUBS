# Everything still delegated to you that a 0.03 ball does not cover

**1,864,163 boxes**, in 8 shards `outside_r003_NNNN.jsonl.gz`. This list is self-contained: you need no earlier export to use it.

## What is in it

- **Which boxes:** every box still delegated to you, from three earlier lists:
  - the ring: 1,061,824 boxes;
  - export 2: 799,160 boxes;
  - the addendum: 3,179 boxes.
- **What is left out:**
  - every box lying wholly inside a punctured ball of radius 0.03 rad around either seed;
  - the 6,442 export-2 boxes we have already certified.
- **The seeds:** (2,4,4,2)π/3 and (4,2,2,4)π/3, distance measured in the sup circular norm.
- **The rule:** `ball_radius_needed_rad` is the smallest such ball radius that contains the whole box, including its half-width. A box is listed when that number exceeds 0.03 − 1e-6, so boundary boxes are listed, never dropped.
- **Classes:**
  - 1,859,367 boxes are class (2,4,4,2) and need a radius between 0.0302 and 0.1851.
  - 4,796 boxes are class (0,0,2,4). They sit about 2.09 rad from these seeds, and no ball at these seeds reaches them.

## Order and ids

- **Order:** records are sorted by `ball_radius_needed_rad`, smallest first, so `id` 0 is the box nearest the seed.
- **Ids:** `id` runs 0..1,864,162. Each record also carries its earlier id:
  - `ring_id` for ring boxes (release ring-2026-10-04);
  - `export2_id` for export-2 and addendum boxes;
  - `inventory_row`, the global post-E row, for every box.
- **Working from both ends:** please work outward from id 0. We will work inward from the far end, starting with the highest ids, and send you the ids we close so neither side repeats work.

## Distribution of the radius each box needs

| Needed radius (rad) | Boxes |
|---|---|
| 0.03-0.04 | 225,710 |
| 0.04-0.05 | 271,136 |
| 0.05-0.06 | 287,156 |
| 0.06-0.07 | 259,966 |
| 0.07-0.08 | 185,780 |
| 0.08-0.09 | 175,563 |
| 0.09-0.10 | 137,581 |
| 0.10-0.11 | 112,861 |
| 0.11-0.12 | 81,594 |
| 0.12-0.13 | 53,257 |
| 0.13-0.14 | 33,344 |
| 0.14-0.15 | 20,457 |
| 0.15-0.16 | 10,340 |
| 0.16-0.17 | 3,927 |
| 0.17-0.18 | 655 |
| 0.18-0.19 | 40 |
| (0,0,2,4) at about 2.09 | 4,796 |

`MANIFEST.json` gives each shard's id range, needed-radius range and SHA-256.

## Schema

Each record has these fields:

- `id`, and `source` (ring | export2 | addendum);
- `ring_id` or `export2_id`, and `inventory_row`;
- `centers` and `radii`: four exact rational strings each, in radians, under the same conventions as the earlier exports. Centres are exact binary64 values in [−π, π]. Radii are outward bounds of π/2^13 + 2^-40.
- `level`, `cls` (seed class), `seed` (nearest seed), and `ball_radius_needed_rad` (rounded to 1e-6, for ordering only).

## Already closed on our side, and why it is excluded here

**The 1/40 ball.** Patch2442Local `Radius025Complete` proves a punctured ball of radius 1/40 at both seeds. It was replayed fresh on our cluster with gcc 13: `PASS_UNIFORM_BALL`, 140,104 terminals, 0 unresolved. Its exact box check accepted 438,110 ring boxes. All of those lie inside 0.03, so none of them is in this list.

`outside03.py` is the script that produced this list.
