# Shoulder brief, addendum 2: local diagnostics (1 October 2026)

These are measurements and proposals only. None of them is an acceptance.

## 1. The shoulder lies near the Fourier-family seed surface

Use the 72 leading-corner frames (row/column permutations of the 3x3 corner, optional transpose,
re-dephasing; `scripts/frames.py`) together with complex conjugation. Every sampled shoulder box then has an
image close to the reference surface used by `SeedLifting/moving_reference_lift.py`:

    seed = (2pi/3, -pi/3 + 2 pi a, -2pi/3, -2pi/3 + 2 pi b),  rows (0..5), columns (0,2,5,1,3,4).

- Over 400 random boxes from `shoulder_boxes_pilot_full.txt.gz`, the sup distance of (theta11, theta21) from
  (2pi/3, -2pi/3) is: min 0.0003, median 0.011, 95th percentile 0.046, max 0.086 rad
  (`results/frame_distances.txt`).
- The free coordinates give projected parameters a ~ 0.30-0.35 and b ~ 0.66 turns.
- `reference_certificate(a, b)` places these references in WideFamilyTube regional boxes with a proved
  direct radius of **1/96** (projector distance).
- The frame maps are integer matrices. The ones selected have row l1 norms (2,1,4,2), so a transported seed
  box must be enlarged accordingly. A signed-permutation frame would avoid this, if one exists for the target.

## 2. Why the existing moving-reference lift fails here

`certify_projected_box` fails even on tiny boxes lying exactly on the surface (`results/onsurface_lift.txt`).
At half-width 1e-6 pi, the column distance is 0.29-0.43, against the 1/96 = 0.0104 allowed. With default
budgets, real boxes stop at `label_limit`. With budgets raised, they give L = 0.77-1.08.

Splitting the bound by side triple (`scripts/pairs.py`) gives:

- 364 horizontal and 183 vertical retained triples;
- for each single (B triple, C triple) pair, L = 0.030-0.048.

So the loss has two sources:

- **(a)** The label-box resolution of the side cover limits the side enclosure. Shrinking the seed box does
  not help, so the side enclosure itself is too coarse.
- **(b)** Hulling all retained triples together mixes in the other side orbit or pairing, which is far from
  the single Fourier reference.

A workable lift therefore needs:

- tight side enclosures, such as the Rouché-validated cubic-root enclosure of ActiveF6ProductionClosure §4-5,
  with no label cover;
- the four pairings treated **separately**, each disposed of by non-unimodularity, a strictly larger corner,
  or entry into a tube about its own reference. The atlas-rigidity theorem
  (`SeedLifting/ATLAS_RIGIDITY.md`: on Fourier-surface seeds with 0 < R <= 20, every D0 completion is Fourier
  or transposed Fourier) suggests a transposed-Fourier reference for the second matched pairing.
- moving references, per leaf, following the two free parameters.

## 3. Side-chart plus production cover on shoulder boxes (fallback measurement)

This is `ProvenResults/SideChartCover` `certify_cell_sidechart` with the production accelerated cover, local
Julia 1.12.1, 400 s per box (`results/sidechart_pilot.tsv`, `scripts/scpilot.jl`, `scripts/boxes.txt`).

| Level | Certified | Failures | Mean CPU per certified box |
|---|---:|---|---:|
| 13 (48 boxes, stratified by distance) | 41 | side_contraction 5, cover_budget 2 | 56 s |
| 12 (24 whole parents, all 16 children P) | 0 | side_contraction 13, cover_budget 11 | — |

At level 13, the full population (about 5 x 10^7 boxes) would cost about 780k CPU-h. That is not acceptable,
so a region certificate based on §2 is the intended route.

## 4. Scripts

`scripts/` contains the exact diagnostic drivers used: frames.py, try_lift.py, tiny.py, pairs.py and
scpilot.jl. They reference absolute paths on the integrator's machine; adjust `sys.path` and the include paths
to your checkout.
