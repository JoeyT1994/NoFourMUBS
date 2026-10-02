# Active-class shoulder closure: brief (1 October 2026)

You are joining the NoFourMUBS project: a computer-assisted proof that C^6 has no four mutually unbiased
bases. Read `PROOF_OF_RECORD.md` at the repository root first (architecture, evidence labels, release gates),
then `NumericalCampaign/REDUCTION.md`, `MinimalConstruction/ASSUMPTIONS.md` and `MinimalConstruction/Proofs/README.md`
(the reconstruction inputs A1-A4, now proved there relative to the ClassificationPaper imports).

## Where the campaign stands

- Work cells: 8,652,805 cells certified quartet-free by the accelerated common-ray cover (99.997%; a second pass
  for 261 slow cells is running).
- Branch layer: 623,187 survivors of the first SideTriplePrune pass. The branch pass (stages A-D: refine and
  prune, SideTriplePrune to level 13, certify new work cells, classify open level-13 boxes) is running on the
  cluster. A new stage E applies `ProvenResults/SignedCornerPSDPrune` to every open box.
- On a 1,000-survivor pilot, stages A-E close all but about 0.04% of survivor volume. Every box left so far
  is labelled P (an outward enclosure of the leading-corner invariant gives inf R > 1 on the whole box), and
  PSD fails on it. Raising the PSD budget to seed depth 12, 8,191 nodes, q depth 10 closes only 10 of 73
  such failures. These are very likely genuine strict-D0 maximal carriers. They need a **quartet** exclusion,
  not a domain prune.

**All of these boxes are in the shoulder of the active F6 class (1,2,2,4)**, between its production cube and
about 0.2 rad:

- `SHOULDER_2026-10-01/shoulder_boxes_pilot_partial.txt` has 5,159 boxes from the first 22% of the pilot's
  leaves. The pilot is still running; the full pilot list will follow.
- Every box is level 13: half-width pi/8192 + 2^-40 rad in each of the four seed coordinates.
- Nearest orbit seed, in pi/3 units: (1,5,5,1) for 5,068 boxes, (5,1,1,5), its complex conjugate, for 91.
- Circular sup distance to that seed: 0.082-0.192 rad, clustered at 0.08-0.09 and 0.17-0.19.
- `psd_pilot_unresolved.jsonl` has the 73 boxes or leaves PSD left open in an earlier random sample
  (levels 11-13). It includes a few residual (S) boxes near (1,2,2,4) and (2,4,4,2).

Projected to the full run, this is of order 10^7 level-13 boxes. Their union is a thin, structured
neighbourhood of a few orbit seeds. That count is too large for per-box methods costing tens of CPU-seconds:
SideChartCover plus the production cover measured 39 CPU-s per box locally.

## Task

Prove an additive, whole-region certificate. For every closed seed box B in a stated shoulder region S, every
physical maximal completion H with leading seed in B is quartet-free (or B misses strict D0). Then:

1. Define S explicitly so that a campaign box can be tested by exact containment. Good shapes:
   - a finite union of rational-faced boxes;
   - the circular-sup-distance <= 1/4 rad neighbourhoods of the 18 seeds of the (1,2,2,4) orbit, or of
     the seeds that actually occur.

   It must contain at least every supplied box, enlarged as stated.
2. Cover S by a complete finite partition, with exact prefix-free/Kraft or Cartesian-children bookkeeping.
   Every leaf must be closed by a validated method.
3. Ship `certify_box(centers, radii)`. It must accept exact rationals or exact binary64 values in radians and
   return ok = True only when the whole supplied closed box is contained in a certified part of S.

Under its own documented hypotheses, any method you prove may be used. These are the obvious tools in the
repository:

- **ActiveF6ProductionClosure** (PROOF.md and README.md in `Incoming/`; the code is being requested
  separately). It closes the production cubes (half-width pi/512 + 2^-40) around all 90 active/old seeds by:
  - a root-based cubic side enclosure (Rouché, no reciprocal of sqrt(R));
  - all four side pairings;
  - a validated completion;
  - a three-reference maximality test;
  - nine regional matrix tubes (projector radius 1/30) with exact graph obstructions.

  Extending this from radius 0.006 to about 0.25 rad, with more regional references along the relevant
  Fourier-family directions, is the natural route. (1,5,5,1) is one of its nine representatives.
- `ProvenResults/SideChartCover` (implicit side charts, fixed-inverse completion, CoverCell injection into
  the production common-ray cover). `Verification/review_patch_2026-10-01` has the corrected verifier and
  notes one exception-contract gap.
- `ProvenResults/RegularSideCharts`: (det J)^2 = R/64, so the side map is uniformly regular on these boxes,
  which have R > 1.
- The `ProvenResults/FourierNeighbourhood` modules: UniformTube, WideFamilyTube, ClusterTube, SeedLifting,
  F3JointLift.
- External theorem E1 (Jaming–Matolcsi–Móra–Szöllősi–Weiner): no member of the two-parameter Fourier family
  extends to a quartet.
- `ProvenResults/ChartConditioning`, `FourierCornerRigidity`, `EffectiveConfinement`, `SignedCornerPSDPrune`,
  `SymmetricSignedCornerPrune`, `CornerBounds`, and `CommonRays/ClusterCover` (the cluster-cover theorem used
  for the work cells).

First establish what the shoulder carriers are: matrix distance to F6 and to nearby Fourier-family or
transposed-Fourier members. If they are within a uniform matrix tube of the Fourier family, a family-tube
argument may close all of S at once.

## Rules

- Acceptance only by exact arithmetic or outward intervals. Floating values are proposals only. ok = False,
  budget exhaustion and exceptions are inconclusive.
- Keep the radii distinct, and never convert between them without a proved inequality:
  - four-coordinate seed half-widths (radians);
  - full-matrix phase radii;
  - projector distances;
  - entry errors.
- A campaign box is accepted only if it is contained in S **including** its 2^-40 guard.
- Cover all physical completions: both side signs in both orientations (all four pairings). Do not select a
  floating "physical" sheet.
- State every dependency (A1-A4 via MinimalConstruction/Proofs, E1, module theorems) and pin it by SHA-256
  in `INPUTS.json`.
- Additive only. Put everything in `ProvenResults/ActiveShoulderClosure/` with:
  - `PROOF.md`, `verify.py` (clean-checkout replay, nonzero exit on failure), `predicate.py`, `INPUTS.json`;
  - certificate data, sharded and not one file per leaf;
  - `RESULTS.md` (counts, cost, what is and is not proved);
  - a receipt under `Verification/active_shoulder_2026-10-01/`.

  Do not edit existing files.
- No cluster access is assumed. If your method needs more than about 100 local CPU-hours, stop and report a
  cost estimate and a shardable driver instead. A full-scale run will be scheduled on the project's cluster
  (Linux x86-64, Python 3.11, Julia 1.12.7, g++ 11).

## Deliverable checklist

1. A theorem, in a precise statement with region S and its hypotheses.
2. The full replay passes from a clean checkout, and the receipt is included.
3. Pilot: `certify_box` on all supplied boxes, with closure count, failures listed, and CPU-s per box.
4. If S does not cover everything, the exact uncovered list and why.
5. One ZIP with a SHA-256 manifest of the new files.
