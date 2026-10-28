# X-ball: classification of MUB triples near F₆

## Current status (28 October 2026)

**CERTIFIED, subject to the review dependencies below; independently audited** (see the audit summary at the end of
this section). Everything after the next horizontal rule is **history**: the state before the radius-1/50 crossing
theorem, kept for provenance, and superseded where it says NOT ESTABLISHED.

### The whole original X-ball closes

**CERTIFIED, conditional on the review dependencies listed below:** every completing third basis, for every H in the
entire original X-ball (radius `0x1.0a3d70a3d70a4p-3`, F6-012, original Mth frame), is of Conjecture 1 type.

- **Core ||w|| <= r/16.** `results/core4_v4.json`, from `experiments/core_crossing_v4.py` with
  `results/crossing_radius_20261028_v4.json`. The radius-1/50 crossing theorem of the outside continuation
  (`reference/crossing_continuation_20261028/`, its verifiers rerun on Rusty and passing) classifies every actual zero
  in the full horizontal phase ball of radius 1/50 around each crossing. Both crossing patterns have total phase bounds
  0.01831 < 1/50; the other 14 core patterns pass the strict symmetry test. The r/8 core fails (0.0370).
- **Shell.** `experiments/sharded.py`. Every open shell leaf of the screened cover was split exactly to dyadic level 5,
  certified by the unchanged `run_shells.run_piece` across 8 Rusty nodes, and the failures split again:

  | Level | Shell leaves | Closed | Unresolved |
  |---:|---:|---:|---:|
  | 5 | 376,570 | 376,117 | 453 |
  | 6 | 380,605 | 380,373 | 232 |
  | 7 | 383,829 | 383,829 | 0 |

  The last unresolved cells all lay at 0.054-0.094 r, just outside the core. `results/sharded_20261028/account7.json`
  is the exact accounting (`run_shells.account` over the plan's verified geometric cover: 383,829 shell, 272 core and
  90,005 outside leaves; every shell leaf has one closed receipt with matching domain and base binding `5a2d8e40...`).
  `manifest_sharded.json` lists the SHA-256 of every row file (about 0.5 GB, kept on Rusty at the path recorded there)
  and of the gzipped plan. Shell CPU: 1,352 core-hours.
- **Review dependencies.**
  - the radius-1/50 crossing theorem (outside, not yet independently reviewed);
  - recognition (`seed_method/reference/r0153/CHECKPOINT.md` section 8);
  - the inherited Stage C binary64 enclosures at these call sites;
  - the sharded driver and `campaign.py`'s v4 core check, both new.

28 October 2026, branch `codex/tc-xball`.


### Independent audit (28 October 2026)

An outside adversarial review (`TC_audit_review_evidence`) found no critical error. It graded:
- the crossing implication: VERIFIED, including the gauge, norm and alignment transport to the r/16 core, whose fresh
  replay closes 16 of 16 patterns;
- the shell's dyadic partition: VERIFIED, all 474,106 leaves checked independently in integers;
- the shell's closure: CHECKED on a sample, TRUSTED in aggregate, because the full 2 GB of rows was not shipped;
- recognition: VERIFIED.

---

## History (superseded): before the radius-1/50 theorem

**Whole original X-ball: NOT ESTABLISHED.** Both crossing patterns now have
certified quantitative neighborhoods, and the complete all-K core at r/128
is **CERTIFIED**, conditional on the analytic lemma and supplied qualitative
theorem described below. All six previously unresolved shell parent regions
are now fully **CERTIFIED** by exact subdivision. The remaining full-radius
shell campaign is running on Rusty; incomplete shell coverage is not a
whole-ball proof.

The original atlas radius remains `0x1.0a3d70a3d70a4p-3`, approximately
0.13, in the original F6-012 w coordinates and original Mth frame. The core
and every shell cell are pieces of this same domain. No smaller-radius
result replaces it.

## New results and their precise scope

| Result | Status | Evidence |
|---|---|---|
| Both crossing centres: commuting actions, exact covariance, rank-four mixed obstruction | CERTIFIED exact algebra | `results/crossing_structure_20261028.json` |
| Both crossing product domains with R=3/1024, rho=21/8192, eta=3/8192 | CERTIFIED interval bounds, conditional on the analytic lemma | `results/crossing_radius_20261028_v3.json` |
| Every completing K on original-coordinate core ||w||<=r/128 | CERTIFIED, 16/16 patterns | `results/core7_complete_20261028.json` |
| Six previously failed shell parent regions, including their boundaries within the original ball | CERTIFIED, 477/477 descendant shell leaves closed | `results/adaptive_20261028_round3.json` and its cover/cell receipts |
| Additional coarse cheap-screen exclusions | CERTIFIED EMPTY on seven cells | `results/screen_20261028.cells.jsonl` |
| Entire original ball at radius r | NOT ESTABLISHED | remaining shell campaign |

The six closed parent cells are

    2:0:1:1:1   2:0:1:2:2   2:1:0:1:2
    2:1:1:0:2   2:1:1:2:0   4:6:7:7:7

Here `m:i0:i1:i2:i3` denotes the product of the original-coordinate
intervals r[-1+2ij/2^m,-1+2(ij+1)/2^m], intersected with ||w||<=r.
Splitting replaces a parent by all sixteen exact dyadic children.
Only cells with strict lower radial bound greater than r are discarded;
closed-sphere tangencies remain covered.

The final scoped adaptive round has 477 required leaves and 477 closed,
with no missing or unresolved scoped leaves. Its full outer cover has
1,206 shell leaves, 494 closed, and 712 untested. The seven additional
cheap exclusions bring closure to 501. The screen leaves 121 cells needing
full classification and 584 previously untested outer cells. These numbers
describe that exact partition, not an estimated percentage of volume.

## Why the crossing argument now has a radius

The previous single-anchor inverse cannot remove the tangent directions of
the other branch. This is an exact rank deficiency, so reducing the radius
alone does not repair that criterion.

The new argument uses the two commuting physical order-three symmetries.
Exact Fourier covariance is checked including base phases. In the
55-dimensional horizontal gauge, the rank-51 Jacobian has a four-dimensional
kernel splitting into two orthogonal fixed planes K0,K1. The mixed Hessian
has rank four modulo the Jacobian image. The physical operators and their
balanced monomial representations are checked exactly at both centres.

A group-averaged normal inverse gives a quantitative implicit graph over
K0 direct-sum K1. Equivariance puts each known branch on its corresponding
linear fixed plane. The supplied qualitative surfaces establish analytic
identities there; the identity theorem extends those identities across the
quantitatively constructed graph. The four reduced residuals factor as
C(u,v)(u tensor v). A uniform mixed-Hessian bound proves ||C-I||<1, so a
zero must have u=0 or v=0. This excludes additional branches throughout an
explicit neighborhood, rather than only checking the tangent cone.

The full statement, proof, derivative estimates, physical interpretation,
and review dependencies are in [CORE_LEMMA.md](CORE_LEMMA.md). The original
source-bound plan is [QUANTITATIVE_CROSSING.md](experiments/QUANTITATIVE_CROSSING.md).
Its opening pre-implementation status has been preserved to keep the
existing receipt hashes intact; the present report states current status.

At both crossings the accepted radii are exactly

    R=3/1024, rho=21/8192, eta=3/8192.

The normal contraction bound is about 0.007375951725. The normal image bound
is about 1.0973438922e-5, strictly below eta=0.0003662109375. The mixed
invertibility defect bound is about 0.946870453928, strictly below one.
These are display values only; the saved 224-bit Arb intervals decide.
The obstruction is an exact least-norm solution, avoiding the much larger
constants of an arbitrary square residual subsystem.

## All-K core inclusion, not just a neighbourhood of a fitted triple

The complete torus/colour cover is rebuilt at delta=r/128. The exact original
frame is retained. Numerical roots propose centres/colours; the cover proves
that every actual completing basis is represented. Fourteen patterns pass
the inherited strict symmetry test. For each crossing pattern, a common
shared gauge maps the entire H-and-K enclosure into the product domain.
The exact identity W D=W removes any ambiguity in applying the shared
row and column rephasings to the correlated four-coordinate carrier.

The crossing kernel bounds are respectively below 0.002273113489 and
0.002273081844, against rho=0.0025634765625. Their normal bounds are below
2.106947547e-6 and 2.075303182e-6, against eta=0.0003662109375. All sixteen
patterns close. The complete core replay took 37.69 seconds in the saved
local run, before the user requested cessation of local numerical work.

The core receipt's `base_binding` and `extension_sources_sha256` deliberately
distinguish this theorem extension from frozen-driver-only evidence. The
radius receipt alone does not claim core inclusion. Earlier isotropic and
inclusion-only trials retain their actual unsuccessful/incomplete statuses;
only `core7_complete_20261028.json` is the complete core acceptance receipt.

## Full original-domain accounting and the remote job

The smaller certified core creates an annulus that must be included.
`experiments/campaign.py` preserves every old outer shell/exterior leaf,
then exactly partitions the old r/4 core until leaves are either wholly
inside r/128 or separated from the origin. This adds 1,200 shell leaves.
The initial full-domain cover therefore has:

- 2,406 shell leaves: 501 already closed, 121 cheap-screen failures to
  classify fully, and 1,784 untested;
- 16 leaves wholly in the certified r/128 core;
- 39 strictly exterior leaves.

This is a certified geometric cover with an uncertified classification
until all required leaves close. The remote runner retries cheap-screen
failures with the full pipeline. A failed full run splits into all sixteen
children, retaining an explicit unresolved leaf at the maximum depth.
New children wholly inside the proved core can use that core; others need
shell receipts. There is no inference from “no currently failed leaf” when
untested descendants remain.

The controller verifies the base binding, the separate core source hashes,
the radius receipt's recursively bound sources, the scalar radius
inequalities in Arb, every core pattern inclusion, and exact full coverage.
Its output schema is `tc-xball-extended-accounting-v1`; it explicitly records
the new analytic dependencies. It does not falsely present the core theorem
as part of the old 59-file base binding.

Completed cell events are appended, fsynced, and linked by SHA256. Atomic
state snapshots contain both the cover and its current rows. On restart,
the journal reconstructs subdivisions and retries only unfinished work.
An interrupted final partial line is backed up and removed; a complete but
corrupt event is rejected. A lock prevents concurrent writers. Source or
input changes reject a resume. Worker results preserve their original
source/domain data. The whole-ball status becomes CERTIFIED only when
both the core and every current shell leaf close.

**Remote deployment:** Rusty became accessible on 28 October. Slurm job
**7354920**, `tc-xball`, was submitted under

    /mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/xball/release_20261028/

It runs eight single-threaded numerical workers, with a 24-hour scheduler
limit, a 23-hour dispatch budget, 10,000 new-cell budget, and maximum dyadic
level 11. Hitting any limit is not acceptance. Current remote files are
`campaign_7354920.log` and, inside this release's X-ball results directory,
`rusty_campaign_20261028.{json,state.json,manifest.json,events.jsonl}`.
These are live progress evidence, not yet a complete certificate. No
remaining certification computation is running on the laptop.

An immutable progress snapshot is bundled in
`results/rusty_snapshot_20261028/`, taken at 2026-10-28T13:39:27.709069+00:00.
It records 16 completed new cell events, 2482 current shell leaves,
501 closed, 105 unresolved, and 1876 untested; the core is CERTIFIED.
These counts already include exact subdivision of failed parents. The
snapshot journal prefix was verified against the atomic state hash before
copying. Later live progress is intentionally outside this frozen snapshot.

The remote environment is Python 3.12.9, NumPy 2.2.6, SciPy 1.17.0,
python-flint 0.9.0 and SymPy 1.14.0. The local evidence used Python 3.13.16
with the same package versions. Both runtime contexts are recorded; the
remote receipt computations are not represented as a byte-identical
replay of local floating-point proposals.

## Validation and source boundary

On Rusty's worker node, all five new campaign tests and all seven existing
X-ball tests passed before dispatch. New tests cover exact core refinement,
missing-cell rejection, complete child replacement, failed-leaf retention
at the depth cap, interrupted-journal recovery, corrupt-event rejection,
actual core/source validation, rejection of a bad core inclusion, and the
continued NOT ESTABLISHED verdict on a partially covered original ball.

No frozen native source or top-level base-bound X-ball source was changed.
The native binding remains
`aaab342ca5aca367c5ae9c13500d7dfcf3a6fe13233cfdda1f8c7fec6bf7ecc7`;
the base X-ball binding remains
`5a2d8e40163634356fbea68cfa4195b23621b8ba7b4520691c7c9f11a0562eb2`.
The pinned atlas hash is
`33ad9798eb7a5585c486f2427a6b223867a43b308b7f184467b4cd5956bd8baf`.

Commits `dc5d273bf` and `5d8f32a19` preserve the earlier quantitative
experiments. Commit `d43f81093` records the successful complete core,
quantitative v3 radii, scoped shell closure, and cheap screen. Source hashes
in each receipt are the authoritative association with its exact version.
The frozen seed regressions for 1864 and 2200 were previously verified;
no shared source change in this continuation requires a new seed replay.

The acceptance arithmetic remains exact algebra/Arb except for the inherited
Stage C binary64 enclosure theorem with checked call-site hypotheses and
1e-7 margin. This is not a claim of an all-Arb Stage C implementation.
The analytic crossing lemma, qualitative surface theorem, and recognition
link remain mathematical review dependencies.

## Replay commands

Run numerical commands on Rusty, not on the laptop. From the extracted
release root, set the Python executable and X-ball path:

```sh
PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
X=proof/theorems/TC_triple_classification/xball
"$PY" "$X/experiments/test_campaign.py"
"$PY" "$X/test_xball.py"
"$PY" "$X/experiments/crossing_structure.py" --output crossing-structure-replay.json
"$PY" "$X/experiments/crossing_radius.py" --output crossing-radius-replay.json
"$PY" "$X/experiments/core_crossing.py" --core-power 7 --output core7-replay.json
```

The core controller intentionally consumes the bundled hash-bound v3 radius
receipt; a fresh radius replay is compared with it, not silently substituted.
To reconstruct full accounting without running a new shell computation:

```sh
"$PY" "$X/experiments/campaign.py" \
  --cover "$X/results/screen_20261028.cover.json" \
  --receipts "$X/results/screen_20261028.cells.jsonl" \
  --core "$X/results/core7_complete_20261028.json" \
  --output "$X/results/accounting-replay.json" --max-new-pieces 0
```

This must report CERTIFIED core, 2,406 required shells, 501 closed, and
NOT ESTABLISHED overall. To submit or resume the campaign after confirming
there is no active writer, run `sbatch "$X/experiments/run_campaign.sbatch"`.
The script detects its own manifest and resumes the same journal. Exit 0
means the complete original ball was certified; exit 2 means work remains.
Neither the script nor this report schedules automatic resubmission.

## Outstanding work

Close every remaining shell leaf, or strengthen the interval method where
subdivision is too expensive. Review the new analytic lemma and its
physical recognition link. Independently replay the source-bound exact
and interval evidence. Only a fully closed exact cover may support (X).
No global Conjecture 1 conclusion is asserted by this continuation.

The 27 October report (the original full-ball attempt, the earlier shell results and the implementation
rationale) and the superseded trial receipts are in the git history, at tag `tc-xball-history-20261028`.
