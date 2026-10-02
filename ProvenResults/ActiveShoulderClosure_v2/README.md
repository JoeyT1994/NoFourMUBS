# ActiveShoulderClosure v2

Add this directory to the matching NoFourMUBS checkout. V1 is unchanged.
Read PROOF.md for the exact theorem, RESULTS.md for measured outcomes,
and COST_ESTIMATE.md for the remaining computation. Neither the whole
shoulder nor all 90 production cubes is certified by this delivery.

## Clean replay

Required packages are Python 3.11, numpy 2.2.4, sympy 1.13.1,
python-flint 0.9.0 and mpmath 1.3.0. Python 3.11.16 on macOS arm64 was
locally tested. The source uses no later Python, NumPy or SymPy API.
Linux/Rocky execution is not claimed locally tested. requirements.txt
pins every package wheel by SHA-256 for macOS arm64 and Linux x86_64;
WHEELS.json gives the exact filenames. For another architecture obtain
and record the corresponding official wheels before accepting a replay.
The seven integer tube covers also require a C++17 compiler with UBSan
(`c++`, or the executable selected by CXX). Its version and executable
SHA-256 are recorded in the replay receipt.

The production campaign cover terminal requires **Julia 1.12.7** and the
repository's NumericalCampaign/Certification/jlenv_cluster environment.
Set JULIA_BIN to that Julia executable. Project.toml and Manifest.toml
are SHA-256 pinned, as are all 1,999 files of the 61 non-stdlib package
source trees in data/julia_dependencies.json. Artifact metadata retains
SHA-256 archive pins for the supported platforms. The replay records the
local Julia executable hash; runtime/compiler trust is stated in PROOF.md.
Install the Julia manifest dependencies once before running offline.
No network access is required by the driver or replay.

Every parallel runner explicitly uses spawned Python processes, including
on Linux. A Julia request/response connection belongs to its creating
process; a process with a different PID cannot use or terminate it.
This prevents a Python 3.11 fork from sharing a parent's live Julia
connection after the verifier's terminal controls. The controls exercise
two independent spawned workers, reject a foreign owner, and check that
the parent's connection still works. Connections are used serially within
each process by the provided runners.

The frozen production bundle SHA-256 is
`577018ebd9e3b0cee1134680a3d0302f3d972ff3211c3cf0cbacc5a6c09f961d`.
It hashes the 17 certification sources selected by the production bundle
script plus Campaign/driver.jl, in the production driver's exact order.
The checker validates this full digest as well as individual source pins.
It is not the hash of cover_accelerated.jl alone.

Historical exploratory measurements used Julia 1.12.1, available only through the explicit
`SHOULDER_JULIA_PROFILE=local-1.12.1` setting. Their receipts report that
profile and do not establish a Julia 1.12.7/Rocky execution. Julia 1.12.7
was subsequently installed locally from the verified official archive;
JULIA_RUNTIME.json records archive SHA-256 pins for macOS arm64 and Linux
x86_64. The final receipt identifies the runtime actually used. The default
profile and cluster.sh require 1.12.7 and reject any other runtime. The
unchanged manifest itself records its original generation with 1.12.1.
See MULTIPLIER_HOOK.md for the disabled exact-PSD extension point.

Subtree jobs validate all tree geometry, but replay interval witnesses only
inside the assigned prefix and on its ancestors. This is explicitly marked
SCOPED_REPLAY and is never a complete proof receipt. The merge requires
byte-identical proof nodes outside each assignment; the final clean verifier
replays the entire merged tree. Add `--refine` to subtree_sweep.py to
subdivide its assigned open frontier with the adaptive driver after the
fallback-only sweep. No accepting proof is inferred from a budget stop.

From this directory, in an isolated environment:

```sh
python3.11 -m pip install --require-hashes -r requirements.txt
python3.11 -B verify.py --jobs 8 --output-dir /path/to/fresh/replay
```

Exit 0 means the **stated partial theorem and retained evidence** passed.
Read both `whole_region` and `production_90` in RECEIPT.json; they remain
INCOMPLETE. To demand the originally requested complete populations:

```sh
python3.11 -B verify.py --jobs 8 --require-complete \
  --output-dir /path/to/another/fresh/replay
```

This delivery returns 2 at that gate. Invalid evidence returns 1. Python
`-O` is forbidden because adopted verifiers contain critical assertions.
The replay regenerates geometry and controls, and revalidates accepting
side-root/completion witnesses at 160 bits. Initial tau-domain bounds can
also use a freshly recomputed 128- or 96-bit outward witness; Arb bounds
are not assumed nested across precisions. No tolerance or domain widening
is allowed. The replay rebuilds all seven new regional integer covers, redoes the 227
base production side-cover leaves and every independent primitive cube
cover with every guard, and tests all 80,613 pilot boxes. Upstream proved algebra/matrix-tube dependencies are pinned and
identified; the whole upstream repository is not rerun implicitly.

## Search and assembly

```sh
python3.11 -B driver.py --shards 256 --shard 0 --jobs 1 \
  --cpu-per-root 1800 --max-nodes 131071 --max-depth 64 \
  --max-tau-depth 12 --output /work/shoulder/shard_000.jsonl.gz
```

Vary `--shard` from 0 through 255. See cluster.sh. To reuse the delivered
proofs without loading the full forest in every cluster process, first run:

```sh
python3.11 -B shard_forest.py --shards 256 --output-dir /work/resume
```

Set `SHOULDER_V2_DIR`, `SHOULDER_V2_OUTPUT` and `SHOULDER_V2_RESUME`
(to `/work/resume`) before submitting cluster.sh. Each job then reads only
its own resume shard and freshly revalidates every inherited witness. Each root has explicit
open budget leaves and a complete theta/tau tree. A completed search
output is not a clean replay receipt. Search returns 2 for open roots.
The default precision is 128 bits; replay uses 160. Static Fourier-cell
indexes and proposal templates are cached per worker; plans and individual
pairing proofs are reused along a root's tree. Failed bounds choose split
axes. A chart change cannot invalidate an inherited sign-pairing proof.
The default delays minimax row-phase fitting until 1,024 new nodes in a
root, avoiding its cost on easy roots. Use `--minimax-gauge` to enable it
immediately for known tube-limited roots; `--minimax-after -1` disables
delayed fitting. The fit only proposes exact phases for an outward test.

```sh
python3.11 -B assemble.py --region data/region.json \
  --output /work/shoulder/forest.jsonl.gz /work/shoulder/shard_*.jsonl.gz
```

The assembler includes an explicit open root for every missing record and
selects one authoritative complete tree per root. It performs geometry
checks; acceptance witnesses still require replay. It never treats a shard
counter, filename, or PASS bit as a coverage certificate.

Replay a newly assembled pilot forest without modifying the delivered pins:

```sh
python3.11 -B verify_region.py --region data/region.json --pilot \
  --forest /work/shoulder/forest.jsonl.gz --jobs 8 \
  --output-dir /work/shoulder/fresh-replay
```

This regenerates the original pilot geometry and returns 0 only when all
1,609 roots close; valid incomplete evidence returns 2.

`--resume SHARD` replays retained witnesses before reusing completed nodes
and open-node plans; that cost is included in its per-root CPU budget.
Multiple resume shards may be given, but root IDs must not overlap. A v1
cluster shard must first be converted:

```sh
python3.11 -B import_v1.py /work/v1/shard_000.jsonl.gz \
  --include-open --output /work/v2-import/shard_000.jsonl.gz
python3.11 -B driver.py --shards 256 --shard 0 --jobs 1 \
  --resume /work/v2-import/shard_000.jsonl.gz --cpu-per-root 1800 \
  --max-nodes 131071 --max-depth 64 --max-tau-depth 12 \
  --output /work/v2/shard_000.jsonl.gz
```

The converter derives v1's cyclic split geometry exactly and freshly
revalidates accepting leaves with v2. An unsuccessful replay becomes an
open obligation. Without --include-open it imports only complete v1 roots.
The finished cluster ZIP described by the integrator was not available during
this local run; its reported 379 closed roots and 602 CPU-hours are not
counted as local v2 proofs or local CPU usage.

## Production cubes and singular patches

```sh
python3.11 -B driver.py --region data/production_region.json \
  --shards 9 --shard 0 --jobs 1 --cpu-per-root 3600 --minimax-gauge \
  --max-nodes 262143 --max-depth 80 --max-tau-depth 16 \
  --fallback-depth 8 --output /work/production/rep_0.jsonl.gz
```

Run the nine representative IDs separately. This is a bounded continuation
recipe, not a promise that nine CPU-hours close them. The first
representative is already closed by the root-free guarded cube theorem;
its 16 cube-isometric images are recorded individually. Further root-free
cube lemmas are listed in data/rootfree_cubes.json and freshly replayed.
The separate production receipt records exactly which of the 90 cubes close. The optional
fallback performs an exhaustive side-label/triple cover and validated
completion, including all pairings. That full completion fallback is disabled by default in shoulder
search because it can be much slower. A cheaper, bounded paired-side
maximality prune runs automatically at proposed singular-patch roots. R=0 is handled on maximal physical
D0 by the proved A1 theorem, not by claiming a nonzero derivative there.

The furthest local side-root continuation of representative 7 is retained
separately and its witnesses are also freshly checked by verify.py:

```sh
python3.11 -B driver.py --region data/production_region.json --root-ids 7 \
  --resume data/production_continuation.jsonl.gz --minimax-gauge --jobs 1 \
  --cpu-per-root 3600 --max-nodes 262143 --max-depth 80 \
  --max-tau-depth 16 --output /work/production/continued_7.jsonl.gz
```

Its partial tree is useful for resuming subdivision. The primary forest
preserves its earlier certified coverage; a different partial partition is
adopted only when exact tree comparisons prove that coverage is preserved.
Both are incomplete; neither closes that representative or its two cubes.

For singular representatives a separate root-free driver avoids cubic
root separation entirely:

```sh
python3.11 -B side_cover_driver.py --shards 9 --shard 1 --jobs 1 \
  --cpu-per-root 3600 --min-depth 8 --max-depth 14 --phase-depth 18 \
  --output /work/production/rootfree_1.jsonl.gz
```

Use `--resume /work/production/rootfree_1.jsonl.gz` with a fresh output
to continue a root-free search. It replays retained witnesses, preserves
completed covers and visits only the remaining cyclic seed boxes.
Its trees use the same assembly/replay format. All failed covers remain
open. The optional `--direct-models` side-root mode has exact Laurent
controls, but did not resolve the F3 patch in the local pilot; it is not
the default performance recommendation.

For a single expensive cyclic root-free tree, distribute its independent
leaf replays and refinements across CPUs on one node:

```sh
python3.11 -B refine_cover.py --input /work/production/rootfree_3.jsonl.gz \
  --root 3 --jobs 8 --cpu-per-leaf 60 --max-depth 18 \
  --output /work/production/refined_3.jsonl.gz
```

Every old accepting leaf is freshly revalidated; each open leaf gets its
own bounded search. The aggregate allocation is the leaf budget times the
number of open leaves, plus replay cost. The resulting exact complete
root tree uses the ordinary assembly and clean-replay format.

After combining all production shards with assemble.py (using
`--region data/production_region.json`), validate the new production forest
without editing the delivered index or refreshing pins:

```sh
python3.11 -B verify_production.py --forest /work/production/forest.jsonl.gz \
  --jobs 8 --output-dir /work/production/fresh-replay
```

It regenerates the 90 exact transports, repeats the supporting finite
lemmas, replays every accepting witness and reports each guarded cube.
Exit 0 requires all 90; exit 2 means valid evidence with open cubes.

`data/patch_region.json` separately identifies the six supplied pilot boxes
whose v1 full-width derivative checks failed. Their own complete trees and
unresolved outcomes are retained; they are not silently omitted.

## A region for a new exact box list

Use JSONL (optionally gzip), one record per box, in radians:

```json
{"centers":["1/3","-2","5/7","0"],"radius":"1/4096"}
{"centers":["0","1","2","3"],"radii":["1/512","1/1024","0","1/2048"]}
```

Every guard must already be included. Rational strings are exact; JSON
floating values have exact binary64 semantics. The input list is streamed.

```sh
python3.11 -B build_region.py --boxes /work/open_boxes.jsonl.gz \
  --grid 256 --output /work/full_region.json
python3.11 -B driver.py --region /work/full_region.json \
  --shards 256 --shard 0 --cpu-per-root 1800 \
  --output /work/full/shard_000.jsonl.gz
```

After assembling a new forest, replay the whole new obligation with:

```sh
python3.11 -B verify_region.py --region /work/full_region.json \
  --forest /work/full/forest.jsonl.gz --boxes /work/open_boxes.jsonl.gz \
  --jobs 8 --output-dir /work/full/fresh-replay
```

This regenerates S from the exact source list and returns 0 only if all
new roots close; incomplete coverage returns 2.

After all shards are assembled, `predicate.VerifiedRegion(region_path,
forest_path)` checks dependency hashes and freshly replays each retained
accepting witness once. Its `certify_box(centers,radii)` then accepts only
exact containment in the certified subset of that S. The ordinary
`predicate.certify_box` uses the frozen delivered shoulder forest. Failure,
absence of containment, open leaves, bad hashes and exceptions are all
inconclusive. No rounded distance or nearest-seed label accepts a box.

## File roles

- data/*forest.jsonl.gz: compact complete proof trees, including open leaves.
- data/benchmarks/: per-root timing/census summaries for search experiments;
  these are measurements, not extra accepting certificates.
- data/production_region.json: all 90 exact seed transports and nine roots.
- data/production_continuation.jsonl.gz: separately replayed partial tree for
  continuing representative 7 without discarding the latest subdivision.
- data/production_cover.json: complete guarded root-free partition template.
- data/rootfree_cubes.json: additional independent primitive cube covers.
- data/stronger_tubes.json: the two new regional raw-cover parameters.
- transfer.py: exact conversion improving the new matrix radii to 1/34 and 1/28.
- replay/: final clean receipt, every population replay and pilot outcomes.
- INPUTS.json: immutable source, finite-data and mathematical-dependency pins.
- MANIFEST.sha256: delivery file hashes, including results and receipts.

Do not run pin_inputs.py to make a failed replay pass. It is a release
helper; verify.py never refreshes its own trusted inputs. New user datasets
and search outputs need their own hashes and fresh replay.

## Campaign terminals and seed-volume measurements

The default search uses lift → signed-corner PSD → accelerated H+ cover.
PSD proves outside strict D0; the H+ cover proves the campaign statement Q,
not an all-four-pairing statement. Production cubes require the additional
conjugate cover and Tao guard. These statements are retained explicitly in
every fallback leaf. The optional --no-campaign-terminals switch permits
paired performance comparisons; it never changes the meaning of acceptance.

The expensive cover is deferred on internal boxes wider than --cover-width
(default 0.0006 radians). --cover-seconds and --cover-nodes bound each
attempt. Budget-stopped frontier leaves remain inconclusive; no fallback
success is inferred for them. Worker CPU includes measured Julia cover CPU.
Compilation/startup, serialization, and clean replay are reported separately.

volume.py measures a rational lower bound on four-dimensional certified seed
volume by whole-box mesh containment. Both tau children must pass. Use this
measure when comparing cost per volume; accepting leaf fractions and tau
partition mass are not seed volume. A 600-fold input row count is not itself
a measured 600-fold increase in union volume.

## Bounded cluster allocation and single-root shards

cluster.sh now assigns at most 10,800 measured worker CPU-seconds to each
of 256 shards (768 nominal CPU-hours), with 300 seconds per root. The last
indivisible test and worker startup may overrun a nominal budget. Roots
not scheduled within a shard budget are emitted as explicit inconclusive
one-leaf trees. Preserve the earlier forest when assembling continuations.
This is a resource allocation, not a prediction that every root closes.
Julia cover CPU, including inherited-cover replay, counts against budgets.

For an existing forest, terminal_sweep.py tries the fallbacks at unresolved
ancestor boxes and replaces a subtree only after a whole-box certificate.
It replays all inherited proofs, and preserves every unvisited subtree.
For one expensive root, subtree_sweep.py divides its open frontier into
prefix-disjoint subtrees and can run --jobs 8 locally, or --shard i as
separate cluster jobs. PLAN.json records the actual prefixes and hashes.
These assigned jobs replay their prefix and its ancestors; the final
whole-tree replay remains mandatory. After a failed cover, the default
search waits for four seed halvings before retrying it. Tau-only splits
do not satisfy that delay. Lift and PSD are still attempted. Set
--cover-backoff 0 in driver.py or terminal_sweep.py to reproduce the
earlier immediate-retry policy.
The adaptive driver also limits unsuccessful cover trials to 25% of its
root CPU allocation, with one-call overshoot possible. Successful calls
do not consume that failure allowance. Use --cover-failure-fraction 1 to
restore the earlier allocation; failed/deferred calls remain inconclusive.
All jobs must use the same inputs and options. After every part finishes,
run the same command with --merge-only. The merge verifies the partition
and rejects changes outside each assigned prefix. Run a clean production
or region replay on the merged result before claiming closure.

Example for the last production representative:

```sh
python3.11 -B subtree_sweep.py --region data/production_region.json \
  --resume data/production_continuation.jsonl.gz --root 7 --parts 16 \
  --jobs 1 --shard 0 --cpu-per-subtree 3600 --refine --output-dir /work/prod-parts
# Repeat for every prefix index in /work/prod-parts/PLAN.json, then:
python3.11 -B subtree_sweep.py --region data/production_region.json \
  --resume data/production_continuation.jsonl.gz --root 7 --parts 16 \
  --cpu-per-subtree 3600 --refine --output-dir /work/prod-parts --merge-only
```

This allocates 16 nominal CPU-hours, including inherited replay. Calibrate
the largest assignment first: partitioning by open leaves does not balance
the cost of inherited cover witnesses. In the earlier eight-part tree,
one assignment contained 644 cover calls with 3,784 recorded CPU-seconds;
its 1,200-second budget therefore allowed no new search. Those historical
call timings are estimates for sizing work, not bounds on another machine.

The pilot grid has volume 1609/256^4 radians^4, about 13.43 times the
summed volume of its outward input boxes. Overlap can make the original
input union smaller still. Rebuild the actual full-run region before
projecting cost: neither a count of boxes nor tau-tree mass determines
its geometric volume.
