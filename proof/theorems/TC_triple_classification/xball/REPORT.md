# X-ball continuation: quantitative crossing core and full-radius remote campaign

28 October 2026, branch `codex/tc-xball`.

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

The following 27 October report is retained as historical evidence for the
original full-ball attempt, prior shell results, and implementation rationale.
Statements about a missing quantitative core below describe that earlier
state and are superseded by the 28 October results above.

---

# X-ball continuation: whole domain, shell cells, and the core obstruction

27 October 2026, branch `codex/tc-xball`.

**NOT ESTABLISHED:** classification of the entire original X-ball.
The full-radius attempt classifies 12 of 16 complete-cover patterns.
A radius-r/4 core attempt classifies 14 of 16. Two crossing patterns
remain in that core. Shell subdivision is implemented with exact domain
accounting, but the full shell queue has not been certified.

The original source is edge record 0 of the pinned atlas, chart F6-012,
with its unchanged Mth frame and radius `0x1.0a3d70a3d70a4p-3`
(displayed as 0.13). Shell cells and the smaller core are explicit pieces
of this original domain, never replacements for it. No full-radius claim
is inferred from a smaller-radius success.

## What was implemented

The frozen seed-ball implementation and its acceptance binding are
unchanged. New files live in this X-ball directory. `bootstrap.py`
verifies the frozen native binding before use. `model.py` freshly
replays C1e and the augmented edge whole-ball model, checks the new
Stage C call-site magnitude assumptions, and constructs certified local
enclosures using the edge centre jet.

The edge normal model has 22 coordinates, compared with the native
seed model's 21. `coupled.py` copies the frozen contractor with its sole
literal 21-column slice replaced by the actual X column count. No edge
normal coordinate is dropped. The local Taylor model uses 36 error
coordinates, also covered by this change. `pipeline.py` retains the
native pattern-dispatch body; a regression test checks that identity.

`geometry.py` supplies an independent exact rational tree check of the
closed-domain cover. `run_shells.py` records every requested or missing
piece. Its overall verdict cannot close while the core or any shell
piece remains untested or unresolved. The separate sixteen-child pilot
uses the same domain checker for each child and the exact dyadic child
partition for the parent.

## 1. Full original X-ball

**CERTIFIED model:** C1e passes at the actual original radius. The
augmented normal contraction has q about 0.2600821871 and tau about
0.0014706708041. The horizontal phase image bound is approximately
0.14105438198, below the stored target 0.175. The new whole-ball normal
allowance is approximately 0.011054381912 radians; conversion rounding
is additionally enclosed. The older 0.115-radius numerical table in
ZT's edge appendix is not reused as a current certificate.

The new Stage C inputs satisfy its documented arithmetic hypotheses:
the maximum tangent entry is about 1/3; the centre operator norm bound
is about 1.000000000001; the supplied phase-cycle bounds are below one.
The rcol, rH, nN, and rF values are approximately 0.013704819,
0.020690143, 0.001759360, and 0.022449502 respectively. These checks
are recorded in each receipt before proof-relevant Stage C calls.

**Complete cover:** 43,992 bins, 1,397 labels, 48 colors, and 16 color
patterns. All labels survive initial graph pruning. The 48 numerical
root proposals only assign colors; they are not assumed to be a complete
census. Every actual completing basis is covered by the torus/graph
construction and its independent-color splitting invariant.

Patterns 4–15 pass the strict symmetry test, with q approximately
0.4346–0.4499. Four patterns remain:

| Pattern | Colors | Full-radius failure |
|---:|---|---|
| 0 | 0, 8, 19, 22, 32, 43 | q approximately 8.90007 |
| 1 | 0, 9, 19, 23, 32, 38 | Moving inverse defect |
| 2 | 1, 8, 14, 22, 33, 43 | Moving inverse defect |
| 3 | 1, 9, 14, 23, 33, 38 | q approximately 8.90007 |

Each of these has 8,340 fine bins, exceeding the current 6,000-bin
fallback cap. That cap supplies no exclusion. For patterns 0 and 3 the
q contributions are approximately 0.10407 deterministic linear,
1.23814 error-Hessian, and 7.55786 remainder, plus the inverse defect.
The full-domain status is therefore `NOT ESTABLISHED`, not a claim of
sixteen successful classifications.

Primary evidence: [whole_xball_final.json](results/whole_xball_final.json),
its [source manifest](results/whole_xball_final.json.manifest.json), and
[console log](results/whole_xball_final.log).

## 2. Core and exact centre triples

The tested core has original-coordinate radius r/4,
`0x1.0a3d70a3d70a4p-5` (displayed as 0.0325), with the same Mth frame.
Its edge model is freshly certified on that explicit subset. It still
has sixteen patterns. Fourteen pass, including the two product-pattern
alternatives. Patterns 1 and 2 still fail the moving inverse test.

The fine fallback reaches 240 bins for each of these two patterns;
23,994 necessary edges remain, and no bins are removed by arc
consistency. A six-step clique search finds a candidate. It proves
neither uniqueness nor existence of an actual third basis, and the
rank-deficient symmetry test supplies no classification of the pattern.

Primary evidence: [core_r_over_4_final.json](results/core_r_over_4_final.json),
its [source manifest](results/core_r_over_4_final.json.manifest.json), and
[console log](results/core_r_over_4_final.log).

**CERTIFIED exact centre algebra:** the separate
[exact-centre receipt](results/exact_centres.json) contains four explicit
twelfth-root triples. For each, the checker evaluates all 96 equations
exactly and verifies a balanced diagonal cubic-root operator whose
representations in H and K are monomial with two three-cycles. The
dephased 96-by-55 Jacobians have exact ranks **55, 51, 51, 55**, computed
over Q(sqrt(3)). This uses numerical rounding only to propose integer
root-of-unity exponents; every resulting identity and rank is exact.

Together with the cited recognition and transverse theorem, these are
the isolated product and crossing types, respectively. The rank-55
calculation also supports qualitative local isolation by the inverse
function theorem. It supplies no explicit positive neighborhood radius.
The [numerical centre diagnostics](results/centre_diagnostics.json) are
kept separately and are not acceptance evidence.

The precise remaining quantitative lemma and proof plan are in
[CORE_LEMMA.md](CORE_LEMMA.md). At a crossing, one must certify a
51-equation implicit-function tube, the two actual solution surfaces,
a coordinate change placing them on two planes, and invertibility of
the analytic coefficient matrix multiplying `(ac,ad,bc,bd)`. A tangent
cone or qualitative germ theorem does not replace these radius bounds.
No missing assertion is used by the current checker.

## 3. Shell geometry and local enclosures

The initial exact cover has 720 shell leaves and 16 leaves wholly in
the core. An exact tree traversal visits 785 nodes. It retains cells
touching the original sphere; the shell cell `2:0:0:0:0`, for example,
meets the original ball at just one tangent point. Its closure must
not be presented as evidence for a positive-volume shell region.

For each cell, the local anchor is its midpoint inside B_r or its
radial projection onto the original sphere. The original augmented
centre-jet theorem encloses Q(a), DQ(a). The certified global Hessian
bound, about 2.1748165205, gives remainder L rho^2/2. Every segment from
the anchor to an actual point of the cell intersect B_r stays in B_r.
The enclosing sub-ball may extend outside B_r; the proof never assumes
the chart extends there. The local pipeline uses H2=0 and X=I_36,
retaining that entire error bound.

The eight-cell coarse pilot closes the tangent-point cell and leaves
the other seven unresolved, each with two remaining patterns. Their
final q bounds range from about 1.054 to 4.347. There are 712 untested
shell leaves in this initial accounting. These counts describe the
initial eight-cell pilot before the separate child refinement.

Four additional finer, positive-volume cells were certified empty:
`[4,2,5,9,10]`, `[4,5,2,10,9]`, `[5,5,11,19,21]`, and
`[5,20,18,4,13]`. Their enclosing parameter radii are approximately
0.01625 or 0.008125. Initial runs took approximately 2.4–2.6 seconds
each. They demonstrate effective local exclusion but do not close
their larger parents or the shell as a whole.

The parent `[3,2,3,4,5]`, whose two bounds were about 1.05391 and
1.05395, is also tested through **all sixteen** exact children. Its
result and the final combined accounting are given in the tables below.
The additional four isolated fine-cell trials are not counted as a
cover of any untested parent.

## 4. Arithmetic, evidence, and remaining work

New acceptance inequalities are Arb or exact. Stage C retains its
documented binary64 enclosures and conservative margin 1e-7. The new
call-site magnitude checks are necessary support for using that
inherited proof; this is not an independent Arb replay of every edge.
NumPy/Accelerate warnings are preserved in the logs. Neither a small
numerical residual nor a successful hash check proves an analytic bound.

The base acceptance binding is
`5a2d8e40163634356fbea68cfa4195b23621b8ba7b4520691c7c9f11a0562eb2`,
covering 59 source/proof/dependency files and the pinned atlas. Runtime:
Python 3.13.16, NumPy 2.2.6, SciPy 1.17.0, python-flint 0.9.0, and
SymPy 1.14.0. The separate exact-centre and parent-refinement controllers
record their own SHA-256 in addition to this base binding.

Seven X-ball tests pass, covering frozen-source identity, unchanged
pattern dispatch, exact coverage and missing-leaf rejection, incomplete
accounting, Stage C magnitude guards, explicit core radius/frame,
boundary-cell enclosures, and retention of the 22nd normal coordinate.
The frozen seed regression reproduces 1864 `CERTIFIED` and 2200
`CERTIFIED EMPTY`. Native acceptance sources and their original binding
are unchanged. Logs and receipts are included with this report.

The earliest whole-X-ball attempt is frozen at commit `d3252b895`.
The `_v2` receipts match the staged source snapshot committed as
`230b29ac6`. Use the `_final` receipts for the current implementation;
earlier unsuffixed files are development records. Final reruns followed
repairs to diagnostic JSON serialization and explicit runtime dependency
binding, not a change to the numerical acceptance inequalities.

Remaining obligations are the quantitative crossing core theorem,
closure of every shell piece by refinement or stronger bounds, and
combination with the separately reviewed seed/Rusty results. The status
of the seed survivor queue is not independently established by this
X-ball work. No remote job has been submitted. [README.md](README.md)
gives bounded local commands and the prepared Rusty queue command.

## 5. Final replay tables and complete domain accounting

The final full-radius replay took 93.76 seconds and the core replay 62.20
seconds while other pilots were running. Timings are observations from
this machine, not portable performance guarantees.

### Initial eight shell cells

| Cell ID | Classified patterns | Excluded patterns | Unresolved patterns | Cell status | Seconds |
|---|---:|---:|---:|---|---:|
| `2:0:0:0:0` | 0 | 0 | 0 | CERTIFIED EMPTY | 2.21 |
| `2:0:1:1:1` | 6 | 6 | 2 | NOT ESTABLISHED | 83.52 |
| `2:0:1:2:2` | 6 | 8 | 2 | NOT ESTABLISHED | 84.67 |
| `2:1:0:1:2` | 6 | 8 | 2 | NOT ESTABLISHED | 83.45 |
| `2:1:1:0:2` | 6 | 7 | 2 | NOT ESTABLISHED | 83.22 |
| `2:1:1:2:0` | 6 | 6 | 2 | NOT ESTABLISHED | 86.13 |
| `3:2:3:4:5` | 6 | 0 | 2 | NOT ESTABLISHED | 78.97 |
| `4:6:7:7:7` | 6 | 0 | 2 | NOT ESTABLISHED | 77.30 |

### Complete subdivision of the failed parent

**CERTIFIED:** all completing bases throughout cell `[3,2,3,4,5]`
are of Conjecture 1 type, subject to the analytic dependencies in
[PROOF.md](PROOF.md). This is the full parameter rectangle
`r([-1/2,-1/4] × [-1/4,0] × [0,1/4] × [1/4,1/2])`.
Its maximum squared normalized radius is 5/8, below 1, so it is
a positive-volume region entirely inside the original ball.
Its minimum squared normalized radius is 1/8, above the core's 1/16.

All sixteen exact children close. There are 116 classified patterns
and six excluded patterns across their independent covers. The strict
classification q bounds range from approximately 0.017479 to 0.618598.
A `CERTIFIED` classification is conditional on a completing K being
present; it does not assert such a K exists in each child.

| Child cell ID | Classified | Excluded | Unresolved | Seconds |
|---|---:|---:|---:|---:|
| `4:4:6:8:10` | 8 | 0 | 0 | 24.79 |
| `4:4:6:8:11` | 8 | 0 | 0 | 24.83 |
| `4:4:6:9:10` | 8 | 0 | 0 | 26.65 |
| `4:4:6:9:11` | 8 | 0 | 0 | 26.63 |
| `4:4:7:8:10` | 8 | 0 | 0 | 27.27 |
| `4:4:7:8:11` | 8 | 0 | 0 | 27.36 |
| `4:4:7:9:10` | 8 | 0 | 0 | 27.02 |
| `4:4:7:9:11` | 8 | 0 | 0 | 27.10 |
| `4:5:6:8:10` | 8 | 0 | 0 | 26.98 |
| `4:5:6:8:11` | 8 | 0 | 0 | 26.95 |
| `4:5:6:9:10` | 8 | 0 | 0 | 26.60 |
| `4:5:6:9:11` | 2 | 0 | 0 | 8.57 |
| `4:5:7:8:10` | 8 | 0 | 0 | 26.17 |
| `4:5:7:8:11` | 8 | 0 | 0 | 24.37 |
| `4:5:7:9:10` | 8 | 0 | 0 | 23.52 |
| `4:5:7:9:11` | 2 | 6 | 0 | 7.99 |

Evidence: [parent summary](results/refined_parent.json),
[all child receipts](results/refined_parent.cells.jsonl),
[manifest](results/refined_parent.manifest.json), and
[log](results/refined_parent.log).

### Additional fine probes

These four probes are separate from the coverage partition used below.
All were replayed with the current source binding. None closes its
larger parent by itself.

| Cell ID | Status | Classified patterns | Excluded patterns | Seconds |
|---|---|---:|---:|---:|
| [`4:2:5:9:10`](results/fine_4_2_5_9_10_final.json) | CERTIFIED EMPTY | 0 | 2 | 2.48 |
| [`4:5:2:10:9`](results/fine_4_5_2_10_9_final.json) | CERTIFIED EMPTY | 0 | 2 | 2.45 |
| [`5:20:18:4:13`](results/fine_5_20_18_4_13_final.json) | CERTIFIED EMPTY | 0 | 0 | 2.30 |
| [`5:5:11:19:21`](results/fine_5_5_11_19_21_final.json) | CERTIFIED EMPTY | 0 | 0 | 2.30 |

### Combined whole-X-ball receipt

The [combined receipt](results/whole_xball_accounting.json) replaces the
one coarse parent by all sixteen children, removes its superseded
unresolved row, and rechecks the resulting entire coverage tree using
exact rationals. The updated tree has 801 nodes, 735 shell leaves,
and 16 core leaves. The geometric cover is certified; classification
of the complete original X-ball is **NOT ESTABLISHED**.

| Obligation | Final accounting |
|---|---:|
| Original radius | `0x1.0a3d70a3d70a4p-3` |
| Core radius | Original r/4, same Mth |
| Core patterns classified / unresolved | 14 / 2 |
| Required shell leaves | 735 |
| Tested shell leaves | 23 |
| Closed shell leaves | 17 |
| Tested unresolved shell leaves | 6 |
| Untested shell leaves | 712 |

The six unresolved leaves are `2:0:1:1:1`, `2:0:1:2:2`,
`2:1:0:1:2`, `2:1:1:0:2`, `2:1:1:2:0`, and `4:6:7:7:7`.
The complete list of 712 untested leaves is in the combined receipt.
Seventeen closed leaves means sixteen classified child regions and
one empty tangent point; it is not a measure or percentage of the ball.

The [combined cover](results/whole_xball_accounting.cover.json),
[combined rows](results/whole_xball_accounting.cells.jsonl), and
[manifest](results/whole_xball_accounting.manifest.json) bind the input
receipts and the accounting controller. Replay is documented in README.
This replay checks coverage and receipt consistency; it does not rerun
the numerical acceptance calculations. A separate consistency check
confirmed 184 stored successful q bounds are strictly below one in Arb
and all 45 stored scalar exclusions satisfy lhs > rhs in Arb. The
current primary source manifests match all 59 files. These are checks
of the stored inequalities, not independent reconstructions of their
analytic inputs.

## 6. Suggested independent review order

1. Check the original atlas hash, frozen native binding, and source
   manifests before interpreting any successful receipt.
2. Review `model.py` and `PROOF.md`: the augmented edge model, retained
   22nd normal coordinate, conversion enclosures, new Stage C magnitude
   checks, and the Taylor argument restricted to the original ball.
3. Compare `coupled.py` with the frozen native contractor and check
   `pipeline.py` against the frozen dispatch. Review the exact cover
   traversal and its strict sphere-boundary treatment.
4. Replay the seven unit tests, one empty fine cell, and the sixteen
   children of the classified parent. Check every remaining pattern
   was classified or excluded before the parent was closed.
5. Review the exact centre algebra independently of the numerical
   proposals. It establishes the four ranks and symmetries, not the
   missing positive-radius crossing theorem.
6. Review `CORE_LEMMA.md` against the supplied prior local proof. The
   quantitative tube, surface straightening, residual factorization
   bound, and inclusion of all core K-patterns remain open obligations.

A useful next engineering step is adaptive refinement of the six tested
unresolved shell parents, followed by a bounded Rusty shell campaign.
The current coarse queue does not automatically refine its failures.
The mathematics needed at the crossing is the main core obstruction;
reducing the core radius alone has not supplied a certificate.
