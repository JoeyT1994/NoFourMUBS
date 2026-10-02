# Local handoff: the remaining no-four-MUB obligations (frozen 1 October 2026, about 17:30 EDT)

Response to `LOCAL_REMAINING_CELLS_HANDOFF_2026-10-01.md`. There are two archives, each under 100 MB:

| Archive | Contents |
|---|---|
| `NoFourMUBS_local_core_2026-10-01.zip` | Runnable code, proofs and certificates (§2) |
| `NoFourMUBS_local_frontier_2026-10-01.zip` | Exact frozen frontier, shoulder data, cubes, examples, receipts (§1, §3) |

**Standard.** Your standard is a kernel-checked exclusion. **Nothing in the campaign stack is kernel-checked
in Lean yet.** What exists is listed below:

| Kind of evidence | Where it exists |
|---|---|
| Lean formalization | The ClassificationPaper only (`ClassificationPaper/CertificatesandLean/`, Lean `v4.33.0-rc2`, Mathlib `51e6992e…`, the same pins as yours) |
| Proved-on-paper results with exact replays | MinimalConstruction, ProvenResults |
| Outward-interval computations with audits | The campaign |

Every claim below is labelled with its actual evidence. None of it meets the kernel-checked standard yet.

---

## 1. The exact remaining problem (frozen snapshot)

Run of record: `nofourmubs_rescaled_2026-09-30` on Flatiron's rusty cluster. The unresolved frontier splits
into four parts.

**(a) Ordinary work cells** (`frontier/workcells_open.jsonl`).
- Of 8,652,805 work cells, all but the listed ones have a complete accepting tree. The exact tree audit
  (`audit_exact.py certify`) found 0 violations over 9,762,405 records.
- Open: **18 cells**. Their pass-2 rerun was killed when a node ran out of memory; they are running again
  now (job 7151705).
- **All 18 are timeouts.** None is an enclosure failure or an obstruction. Every earlier time-capped leaf
  was certified on its leaf-level rerun:
  - pass 3a: 353 of 353 leaves;
  - pass 3b: 17 of 17 leaves.
- Each record carries:
  - an id and its ancestry (job, cell, leaf);
  - its exact domain;
  - its status and the methods attempted.

**(b) Branch layer** (`frontier/branch_survivors.tsv.gz`).
- The 623,187 cells left unresolved by the first SideTriplePrune pass.
- They are being processed by the branch95 pipeline:

  | Stage | Method | State |
  |---|---|---|
  | A | refine and prune to level 13 | done |
  | B | SideTriplePrune to level 13 | running |
  | C | certify new work cells | running |
  | D | classify open boxes | to run |
  | E | SignedCornerPSDPrune | to run |

- **The descendant frontier does not exist yet**; ETA about 2 days. These records are the parent obligations.
- On a 1,000-survivor pilot, stages A-E leave 0.123% of survivor volume open. All of it is in
  (c) and (d) below.

**(c) The near-Fourier shoulder** (`shoulder/`).
- Development data: the 80,613 open level-13 boxes of the pilot, with exact dyadic centres.
  `ProvenResults/ActiveShoulderClosure` (round 1, partial) defines an exact rational region S, 1,609 grid
  cubes of side 1/256 rad, that contains them.
- Open-leaf status of the round-1 receipt: 78,136 not attempted, 2,369 cpu_budget, 20 node_budget. **No
  enclosure failures are recorded**, but most of S has not been searched.
- **Cluster run of the round-1 driver (finished).** 256 shards; 1,800 CPU-s and 65,535 nodes per root;
  602 CPU-h. Summary in `shoulder/cluster_driver_round1/`. The 1.5 GB of raw shards stay on rusty, hashed in
  `shard_sha256.txt`.

  | Measure | Result |
  |---|---|
  | Roots | 1,609; **379 entirely closed** |
  | Volume of S closed | **79.6%**: 68.1% all four pairings closed into proved tubes, 11.6% outside strict D0 |
  | Volume open on budget | 19.4% cpu_budget, 1.0% node_budget (timeouts) |
  | Enclosure failures | **14,164 depth-24 leaves `unresolved_pairing`** in 88 roots, negligible volume |

  The failures are in `unresolved_pairing_leaves.jsonl.gz`, with full pairing data. There, at least one
  pairing is `outside_proved_tubes` even at depth 24, so these are **not** timeouts. Two kinds occur:
  - R ≈ 35, far from the Fourier tubes. A different terminal, such as the common-ray cover, is the natural
    route there.
  - An R enclosure about ±0.5 wide around 0, even on tiny boxes. This is the τ = sqrt(R) correlation loss
    you identified.

  Whether either kind is a genuine obstruction is undetermined.
- **S is fitted to the pilot. It is not proved to contain the full-run remainder.**

**(d) The 90 guarded endpoint seed cubes** (`cubes/production_seed_cubes.jsonl`).
- Half-width π/512 + 2^-40 around the 18 seeds of class (1,2,2,4) and the 72 of class (4,5,0,3).
- **All open.** The old `PRODUCTION_CUBE` theorem covers only the unguarded (4,5,0,3) centre cube and its
  frame images.
- **No executable code or certificates exist for ActiveF6ProductionClosure.** Its author never delivered
  them. `Incoming/ActiveF6ProductionClosure_docs_2026-10-01/` is a specification only.

**Representative difficult cases** (`cases/`). These are for development only; they do not substitute for
the inventory:
- (1,2,2,4)-class shoulder boxes, near and far;
- the (2,4,4,2) and (4,5,0,3) residual patches;
- boxes whose outward R interval reaches R ≤ 0 (code S).

## 2. Runnable package (`NoFourMUBS_local_core_2026-10-01.zip`)

All of the following replay on **macOS arm64** from a clean extraction; timings are in
`receipts/clean_replay_macos.log`. They need Python 3.10 or later with mpmath, sympy, numpy and
python-flint 0.9.0, plus Apple clang (C++17). No Linux shared-library names are required.

| Item | Path | Replay |
|---|---|---|
| ActiveShoulderClosure (round 1): kernel, verifier, driver, region, 3,047 accepting leaves, five 1/36 tubes | `ProvenResults/ActiveShoulderClosure/`, `Verification/active_shoulder_2026-10-01/` | `verify.py --audit-partial` PASS (whole_region INCOMPLETE, as intended) |
| SignedCornerPSDPrune: predicate, C++ interval kernel, exact coefficient generation, 13,971 retained witnesses, verifier | `ProvenResults/SignedCornerPSDPrune/` | `verify.py --all` PASS |
| Fourier neighbourhood certificates: F6 tube 1/30, whole-family 1/16384, 191 regional cells at 1/96 and 1/48, seed lifts | `ProvenResults/FourierNeighbourhood/` | see each README |
| Reconstruction dossier MC1-MC5: strict domain, side fibre, matching, exceptional (Tao) cases, critical strips, exact data | `MinimalConstruction/Proofs/` | `verify_dossier.py` 15/15 PASS |
| Classification sources (theorem labels in `MinimalConstruction/Proofs/README.md`) and their Lean audit trail | `ClassificationPaper/source/`, `ClassificationPaper/CertificatesandLean/` | Lean pins as above |
| Campaign code: production driver, certification code, auditors, branch pipeline | `NumericalCampaign/` | `audit_exact.py selftest` PASS |

`ProvenResults/ActiveShoulderClosure_v2/` is **excluded**: round 2 was still being written when this
snapshot was taken.

**One-command example.** From the core root:

```sh
python3 -B example/run_example.py --root .
```

Expected result:

```
ACCEPTED: whole box outside strict D0; 9 seed leaves, 30 replayed negative-minor witnesses
REJECTED as required: missing child (one seed leaf removed)
REJECTED as required: omitted sign combination / pairing
REJECTED as required: altered denominator-clearing flag
REJECTED as required: altered coefficient enclosure
{"status": "PASS", ...}
```

It takes about 1 s on an M-series Mac, with peak RSS about 65 MB.

## 3. Geometry and branches (`frontier/geometry.json`)

**Coordinates.** θ = (θ11, θ12, θ21, θ22), the four phases of the dephased leading 3x3 corner, in radians,
on [-π, π]^4 with periodic identification.

**Cells.** A level-l ideal cell with integer address a is exactly the box

    ∏ [π(2a_i/2^l − 1), π((2a_i+2)/2^l − 1)].

**Tested enclosure.** The centre c is the stored binary64 value, given as an exact dyadic. The half-width is
r = fl(π/2^l) + 2^-40, also an exact dyadic. Arithmetic is outward from these endpoints.

**Containment, proved in `geometry.json`.** With π bounded by an integer Machin enclosure,
r ≥ π/2^l + 2^-44 for every l in use, and every record satisfies |c − ideal centre| ≤ 2^-44 exactly. So each
tested box contains its ideal cell.

**Parents and children.** A split produces 16 children ordered with the first coordinate fastest, each at
centre c ± fl(r/2) bit for bit (audited). For the branch's hex paths, see
`NumericalCampaign/Campaign/branch95/README.md`.

**Half-widths.** These are three different quantities and must not be mixed:

| Quantity | Value |
|---|---|
| Production work cells (level 9) | π/512 + 2^-40 |
| Pilot shoulder boxes (level 13) | π/8192 + 2^-40 |
| Fourier tubes | maximum-column **projector** distance radii (1/30, 1/36, 1/48, 1/96, 1/16384) |

No conversion between seed and matrix radii is assumed. The lift theorems convert explicitly, through
validated completion bounds.

**Branches.** Every module retains all four side-sign pairings, except where a whole-box Tao-absence guard
licenses the matched-only shortcut. That shortcut is SignedCornerPSDPrune with A3; its guard is recorded and
replayed per certificate.

## 4. Domain mismatch: please read before importing anything

**Our strict D0.** The leading corner is maximal among **all 400 positional 3x3 corners**, and R > 0
(`NumericalCampaign/REDUCTION.md`). Every exclusion here is stated under that hypothesis. The production
prune `D0_out` uses a rigorously enclosed competing corner with strictly larger R.

**Your worker.** It selects a corner maximal among **eligible good corners**. That is a different predicate.
We supply no bridge between the two. Keep our exclusions under their original hypothesis until a bridge is
proved. As you say, a larger competing corner can exclude one domain and not the other.

**Further cautions:**
- **R = 0 at one corner** does not identify F6. Only "all 400 invariants vanish" does, by MC1
  (`MinimalConstruction/Proofs/STRICT_CORNER_COVERAGE.md`).
- **Domain exclusion vs quartet exclusion.** These are different conclusions:
  - domain exclusions: `outside_strict_D0` (PSD, R_out), `outside_D0`;
  - quartet exclusions: the cluster cover and the Fourier-tube lift.

  Module receipts keep them separate.
- **Physical completions.** That every physical completion is represented by the retained branches is A2
  side exhaustion (MC2, proved relative to the classification imports), together with the four-pairing
  retention.

## 5. Your machinery

We do not have `mub6-numerical`, so nothing here targets `mub6.cluster-cover.v1` or your importer.
Everything is exported as exact rationals or dyadics, with hypotheses stated, for you to bind.

## 6. Evidence for numerical acceptance: what exists and what does not

**PSD certificates.**
- Retained per seed leaf: 112 outward coefficient endpoints per provider, and the q-cover with explicit
  negative principal-minor witnesses. These can be replayed independently (`verify.py`).
- The coefficient formulas are exact Laurent identities, regenerated by SymPy in the verifier.

**Shoulder certificates.** Accepting leaves retain their plan: reference, pairings, root disks and
completion bound. They replay at 160 bits.

**Ordinary common-ray covers (work cells).** **Not exported.**
- Production records keep, per leaf, the status, method, label count and basis count. They do **not** keep
  the phase-cover trace, the labels, the capacity witnesses or the graph.
- Acceptance evidence is the deterministic re-execution of the frozen code, with an independent replay of
  200 random leaves (all agree).
- Exporting full traces means re-running each cell with a dump mode, at roughly the original cost per cell
  (mean about 22 CPU-s per cell, 52k CPU-h for all of them). Output volume is also large.
- **This is the main gap relative to your §6.** We can produce dumps for any chosen subset on request.

**Taylor models.** The FastTM model algebra and its invariant are proved
(`ProvenResults/FastTMInvariant/`), but per-leaf models are not retained.

## 7-8. Research targets

All of your proposed routes match where the obstacles actually are. The shoulder round-2 commission already
includes:
- tau slabs near R = 0, keeping the relation τ² = R;
- fixes for the (2,4,4,2) and (4,5,0,3) patches;
- the 90 cubes;
- data-driven region building.

Exact PSD minor witnesses with Positivstellensatz-type multipliers, and the R^k P factorizations, have **not
been attempted**. The PSD minors are explicit in `engine.cpp` and `PROOF.md` and are suitable for that work.

## 9. One complete closed example

`example/run_example.py` gives a real positive-width frontier box: a stage-D residual box next to the
stationary (2,4,4,2) seed. The chain is:

> physical domain (strict D0, all-400 maximality) → complete branches (A2, four pairings, Tao guard) →
> exact accepting certificate (9 leaves, 30 minor witnesses, outward coefficients) → whole-box exclusion
> from strict D0

It includes the requested negative controls. **It is not Lean-checked.**

## 10. Honest residual list (as frozen)

1. 18 work cells (timeouts, rerunning).
2. 623,187 branch obligations, mid-pipeline. After A-E, expected to reduce to the shoulder and patches.
3. The shoulder: the full-run region is not yet defined, and round 1 is partial.
4. The 90 production cubes: no certificate.
5. Everything in Lean beyond the classification.
6. Common-ray-cover certificate export.
7. Any bridge from all-400 maximality to eligible-good maximality.
