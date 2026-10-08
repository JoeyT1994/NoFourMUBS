# Delivery receipt: FourierTransverseStability_v2

**PASS — substantial partial regional extension, not complete shoulder closure.**

The new result replaces fixed-(p,q) lifting by a signed-square-root R chart,
with an explicit transversely moving Fourier reference. It includes every
physical **R>0** point in an accepted box, including **0<R<=1**. Arbitrary
R=0 fibers remain outside the theorem. All four side pairings are covered;
maximality among the 400 corners is not needed.

## Whole guarded-box applicability

The named `shoulder_transverse_coordinates_sample4000.json` and a new
containing archive were not available in the mounted conversation files or
the searched Library. **No percentage is claimed for that sample.**

Instead, the complete original pilot was measured:

**55,454 / 80,613 whole guarded boxes accepted = 68.7903936089...%.**

Each half-width is an outward rational enlargement of
`pi/8192 + 2^-40` radians. Centres are the original serialized binary64 values,
interpreted exactly. No descendant boxes or centre-only passes are counted.
All **55,454 accepted boxes passed independent 192-bit replay** with the final
predicate, requiring certificates for both signed branches. There are zero
matrix lifts in this acceptance test.

| Group | Accepted | Total |
|---|---:|---:|
| P, nearest (1,5,5,1) | 29,827 | 43,169 |
| P, nearest (5,1,1,5) | 15,700 | 20,877 |
| S, nearest (1,5,5,1) | 139 | 220 |
| S, nearest (5,1,1,5) | 9,788 | 12,871 |
| S, nearest (2,4,4,2) | 0 | 2,354 |
| S, nearest (4,5,0,3) | 0 | 1,122 |

Both secondary neighbourhoods and **25,159 original pilot boxes overall**
remain unaccepted by this module. Rejecting does not establish physical
nonemptiness or impossibility of a better reference.

## The certified domain and three distinct radii

- Family coordinates, in turns: `P in [-1/128,3/64]`,
  `q in [-1/64,3/128]`, with the 144 explicit corner-frame images.
- Seed/normal phases, in radians: `|u|<=1/10`, `|xi|<=5/32`,
  and target `|v|<=1/16`. The definition of xi uses the actual signed sqrt(R),
  not the original v coordinate and not a floating sample proposal.
- Matrix phase corrections and projector distances are bounded separately.
  The maximum correction radius is below 0.001955 radians. The clean moving-
  reference **row and column projector** bound is `|u|/3+|xi|/5`.

The full normal rectangle is a stability-chart domain, **not a claim that
every point of that rectangle enters a tube**. The runtime test requires the
sharper retained polynomial distance bound plus the family-to-cell distance
to be strictly below the existing **1/36 projector radius**. The explicit
reference moves with the transverse coordinates, as well as along the family.
No larger upstream tube is claimed.

## Complete replays

| Precision | Regional tiles | Unresolved | Wall seconds | CPU seconds |
|---|---:|---:|---:|---:|
| 160 bits | 140 | 0 | 160.800 | 244.902 |
| 192 bits | 140 | 0 | 160.351 | 244.735 |

These two replays were run concurrently, with two workers each. The 140
closed family tiles each have four reusable normal subcharts. The auxiliary
scalar certificate has **1,789,745 nodes and
894,873 leaves**, with complete coverage and
`partial R/partial v >128`. This is a reusable regional scalar check, not
frontier-box matrix lifting.

Each theorem replay includes **19 rejection controls and 4 whole-box positive
controls**, exact Laurent/frame identities, exact rational coefficient and
arithmetic checks, and strict outward contraction inequalities. The maximum
weighted self-map ratio is below 0.999060 and the maximum contraction ratio
is below 0.601489. A positive control has its entire R interval in (0,1);
another accepted standard-width control has an enclosure intersecting R=0.

The full pilot scan used 2252.427 CPU-seconds and
589.912 wall-seconds. The all-accepted witness replay used
1078.729 CPU-seconds and 308.651 wall-seconds.
Build, scans and all four recorded theorem replays total
**4484.586 CPU-seconds (1.245718 CPU-hours)**.
Exploratory calculations are not individually itemized in that sum. A
conservative quota-times-window bound puts the entire new task, including
exploration, below **12 CPU-hours**, well below the 100 CPU-hour limit.
All mathematical computation was local.

The five imported 1/36 Fourier tubes are bound by 46
proved-input hashes. Their separate 45,139,727-node common-ray cover was
**not rerun**. This is a new seed-to-tube theorem relative to those proved
inputs, not a fresh proof of their tube radii or a proof-assistant formalization.

## Additive delivery and replay

All **2,441 core files, 27 frontier files and 28 v1 module files** were compared
to their original archive bytes: unchanged. Everything delivered is confined
to `ProvenResults/FourierTransverseStability_v2/`.

From the core repository root:

```sh
python3 -B ProvenResults/FourierTransverseStability_v2/verify.py --workers 4
python3 -B ProvenResults/FourierTransverseStability_v2/verify_measurement.py \
  --input /path/to/shoulder_boxes_pilot_full.txt.gz --workers 4
```

Use a fresh Python process for these commands. For in-process integration,
isolate imports: v1 and v2 use generic helper module names and should not be
loaded into the same bare-import namespace. `README.md` gives the `contains_box`
API and fresh-scan command. The initial replay receipts retain their historical
manifests; the final `REPLAY_160.json` and `REPLAY_192.json` bind all final code,
proof and certificate data.

`receipts/DELIVERY.json` records exact bounds, input pins, compute accounting,
measurement denominators and all remaining limitations.
