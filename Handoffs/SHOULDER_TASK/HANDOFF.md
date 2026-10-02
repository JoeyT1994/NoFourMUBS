# Handoff: region certificate for the active F6 shoulder (1 October 2026)

This folder is self-contained. It supersedes the earlier shoulder brief and both addenda. Repository paths
are relative to the `NoFourMUBS/` root of this ZIP.

## 0. Project, in one paragraph

NoFourMUBS is a computer-assisted proof that C^6 has no four mutually unbiased bases.

- **Reduction** (`NumericalCampaign/REDUCTION.md`). A quartet gives a raw Hadamard H whose maximal dephased
  3x3 corner has seed phases theta = (theta11, theta12, theta21, theta22) in the strict domain D0 (that
  corner's invariant R > 0 and is the largest of the 400 corners) and in an ordering domain F. It suffices to
  show that every seed box of D0 ∩ F is either excluded or quartet-free.
- **Reconstruction inputs.** A1-A4 (`MinimalConstruction/ASSUMPTIONS.md`) are proved in
  `MinimalConstruction/Proofs/` relative to the ClassificationPaper imports listed there.
- **Read first:** `PROOF_OF_RECORD.md`, for the architecture, evidence labels and release gates.

## 1. State of the campaign

| Part | Status |
|---|---|
| Phase-cube expansion | 340,972 level-6 jobs; exact-address audit PASS; deterministic replay of the plan and 1,000 jobs identical |
| Work cells | 8,652,805, certified quartet-free by the accelerated common-ray cover; the last 265 slow cells are in a second pass |
| First layer pass | 14,020,093 cells; exact audit PASS; 623,187 survivors become the branch layer |
| Branch layer | Running on the cluster: refine and prune, SideTriplePrune, certify new work cells, classify open boxes, then `ProvenResults/SignedCornerPSDPrune` (stage E) on every open box |

On a 1,000-survivor pilot, stages A-E leave **0.123% of survivor volume open**. All of it comes from 72 of
20,540 level-11 leaves. **This open set is your task.** The other 99.88% of the campaign either is done or
has a working method.

## 2. The open set (`data/shoulder_boxes_pilot_full.txt.gz`)

- 80,613 closed seed boxes, all level 13: half-width **pi/8192 + 2^-40 rad** in each seed coordinate.
- Centres are exact binary64 values from the driver's child rule.
- Columns: level, theta1..theta4, code, nearest seed (pi/3 units), F6 class, circular sup distance (rad).
- Code P: an outward enclosure gives inf R > 1 on the whole box. Code S: not shown.
- Every box failed SignedCornerPSDPrune. Raising its budget (seed depth 12, 8,191 nodes) closes only 10 of 73
  in an earlier sample (`data/psd_pilot_unresolved.jsonl`). These are very likely genuine strict-D0 maximal
  carriers, so a **quartet exclusion** is needed.

| Code | Class | Nearest seed | Boxes | Seed distance (rad), min / median / max |
|---|---|---|---:|---|
| P | active (1,2,2,4) | (1,5,5,1) | 43,169 | 0.058 / 0.129 / 0.251 (all P) |
| P | active (1,2,2,4) | (5,1,1,5) | 20,877 | (included above) |
| S | active (1,2,2,4) | (5,1,1,5) | 12,871 | 0.058 / 0.067 / 0.128 (all active S) |
| S | active (1,2,2,4) | (1,5,5,1) | 220 | (included above) |
| S | stationary (2,4,4,2) | (2,4,4,2) | 2,354 | 0.041 / 0.044 / 0.047 |
| S | old (4,5,0,3) | (4,5,0,3) | 1,122 | 0.033 / 0.038 / 0.045 |

(1,5,5,1) and (5,1,1,5) are complex conjugates. **Full-run scale:** about 623 times the pilot, so about
5 x 10^7 level-13 boxes. A per-box method costing about a minute is therefore not viable, and you need a
region-level certificate.

## 3. What is known about these carriers (`diagnostics/`)

**Fourier geometry.** Under the 72 leading-corner frames (row/column permutations of the 3x3 corner,
optional transpose, re-dephasing; `diagnostics/scripts/frames.py`) together with complex conjugation,
shoulder boxes map close to the Fourier-family seed surface of
`ProvenResults/FourierNeighbourhood/SeedLifting/moving_reference_lift.py`:

    seed = (2pi/3, -pi/3 + 2 pi a, -2pi/3, -2pi/3 + 2 pi b),  rows (0..5), cols (0,2,5,1,3,4).

- Sup distance of the two pinned coordinates over 400 random boxes: median 0.011, 95th percentile 0.046,
  max 0.086 rad (`diagnostics/results/frame_distances.txt`).
- Projected parameters: a ≈ 0.30-0.35 and b ≈ 0.66 turns.
- `reference_certificate(a, b)` places these references in WideFamilyTube regional boxes with a proved
  **direct radius 1/96** (maximum-column projector distance).
- The selected frames are integer maps with row l1 norms (2,1,4,2), so transported boxes enlarge.

**The existing lift is too loose** (`diagnostics/results/onsurface_lift.txt`).
- `certify_projected_box` (the side label cover, then a fixed-reference completion bound) gives column
  distance **0.29-0.43** even on boxes of half-width 1e-6 pi lying exactly on the surface. The allowed value
  is 0.0104.
- Splitting by single (horizontal triple, vertical triple) pairs, out of 364 x 183, still gives 0.030-0.048
  (`diagnostics/scripts/pairs.py`).
- So the label-cover side enclosure is too coarse, and hulling all pairings against one reference loses
  more. Shrinking the seed box does not help.

**Fallback cost** (`diagnostics/results/sidechart_pilot.tsv`). `ProvenResults/SideChartCover` with the
production cover:

| Level | Certified | Failures | Mean CPU per certified box |
|---|---:|---|---:|
| 13 (48 boxes) | 41 | 5 side_contraction, 2 cover budget | 56 s |
| 12 (24 boxes) | 0 | 13 side_contraction, 11 cover budget | — |

That is about 780k CPU-h for the full population, so it is not viable.

## 4. Task

Prove an additive whole-region certificate.

1. **Region.** Define an explicit closed shoulder region S, testable by exact containment. Examples: a
   finite union of rational-faced boxes, or frame/conjugation-transported neighbourhoods of the seeds above.
   S must contain every box of the supplied list, enlarged as stated, and should be designed to contain the
   full-run population. Its shape may follow the Fourier surface.
2. **Theorem.** For every closed seed box B ⊆ S, every physical maximal completion H with leading seed in B
   is either quartet-free or outside strict D0. Cover S by a complete finite partition with exact
   bookkeeping (prefix-free/Kraft or Cartesian children). Every leaf must close by a validated method.
3. **Predicate.** Ship `certify_box(centers, radii)` taking exact rationals or exact binary64 values, in
   radians. It returns ok = True only if the whole supplied closed box lies in a certified part of S.

**Suggested route: extend ActiveF6ProductionClosure.** See
`Incoming/ActiveF6ProductionClosure_docs_2026-10-01/PROOF.md`. Its code has been requested separately; if
it is not in your checkout, build to the PROOF.md specification. Its kernel already closes the pi/512 cubes
around all 90 active/old seeds with:

- a Rouché-validated enclosure of all three roots of the side cubic, with no label cover and no reciprocal
  of sqrt(R);
- a validated completion through C*D = -E*B;
- the four sign pairings treated separately, each disposed of by non-unimodularity, a strictly larger
  competing corner, or entry into a proved matrix tube;
- regional flat references with exact graph obstructions.

To reach the shoulder, use moving Fourier references per leaf, following (a, b), and the proved 1/96 and
1/48 WideFamilyTube radii. That module's theorem includes equivalence and conjugation transfers. For the
second matched pairing, use a transposed-Fourier reference: `SeedLifting/ATLAS_RIGIDITY.md` shows that at
Fourier-surface seeds with 0 < R <= 20, every D0 completion is Fourier or transposed Fourier. Quartet
invariance under transpose is argued in ActiveF6 PROOF.md §2. Add regional references where needed,
proving their tubes with the WideFamilyTube or ActiveF6 regional machinery.

The (2,4,4,2) and (4,5,0,3) residual patches are small (0.03-0.05 rad). They may close with existing
regional tubes plus the root-based lift. Include them in S.

**Other tools in the repo:**
- `ProvenResults/FourierNeighbourhood/*`: PracticalTube (whole-family radius 1/16384), WideFamilyTube,
  ClusterTube (F6 radius 1/30), SeedLifting, F3JointLift.
- `ChartConditioning`, `RegularSideCharts` ((det J)^2 = R/64), `SignedCornerPSDPrune`,
  `SymmetricSignedCornerPrune`, `CornerBounds`, `CommonRays/ClusterCover`.
- E1 (Jaming–Matolcsi–Móra–Szöllősi–Weiner): no member of the Fourier family extends to a quartet.

## 5. Rules

- Acceptance only by exact arithmetic or outward intervals. Floating values are proposals. ok = False,
  budget exhaustion and exceptions are inconclusive.
- Keep the radii distinct, and never convert between them without a proved inequality:
  - four-coordinate seed half-widths;
  - full-matrix phase radii;
  - maximum-column projector distances;
  - entry errors.
- A campaign box counts only if it is contained in S including its 2^-40 guard. Frame transport must
  enclose the image of the whole box.
- Cover all physical completions: both side signs in both orientations. Never select a floating "physical"
  sheet. Tao: prove whole-box separation or handle it (see ActiveF6 PROOF.md §1).
- Pin every dependency by SHA-256 in `INPUTS.json` (A1-A4 via `MinimalConstruction/Proofs`, E1, module
  theorems).
- Additive only. Put everything in `ProvenResults/ActiveShoulderClosure/` with:
  - `PROOF.md`, `verify.py` (clean-checkout replay, nonzero exit on failure), `predicate.py`, `INPUTS.json`;
  - sharded certificate data, not one file per leaf;
  - `RESULTS.md` (counts, costs, what is and is not proved);
  - a receipt under `Verification/active_shoulder_2026-10-01/`.

  Do not edit existing files.
- Local compute only. If more than about 100 CPU-h is needed, stop and deliver a cost estimate and a
  shardable driver. It will run on the project cluster (Linux x86-64 Rocky 9, Python 3.11, g++ 11.5,
  Julia 1.12.7).

## 6. Deliverables

1. A precise theorem: region S, its hypotheses and dependencies.
2. A passing clean replay with its receipt.
3. Pilot: `certify_box` on all 80,613 supplied boxes, with closure count, failures listed, and CPU-s per box
   or per region leaf.
4. The exact uncovered list, if any, with reasons.
5. One ZIP with a SHA-256 manifest of the new files.

Report early if the root separation, the transposed-pairing tube, or the regional radii look likely to break
down 0.05-0.09 rad from the Fourier surface.
