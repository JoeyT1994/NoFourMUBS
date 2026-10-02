# ActiveShoulderClosure v2 results

**Clean audit: PASS. Whole shoulder: INCOMPLETE. Production cubes:
88/90 closed.** An audit PASS certifies the explicitly
stated positive theorem and retained subset. It does not certify any open
leaf or imply whole-population closure. Read PROOF.md and the separate
whole_region and production_90 fields in replay/RECEIPT.json.

## Replay efficiency correction

The interrupted serial replay consumed 11.80 CPU-hours (recorded in
CPU_ACCOUNTING.json). It was stopped because the continuation repeated
4,946 cover calls on only 1,280 distinct outward input boxes. The final
verifier freshly checks each distinct input once on isolated workers and
still audits every leaf, sheet, guard and exact containment. No saved
progress boolean is accepted as proof.

The final continuation cover stage completed
1280 distinct checks using
1.9507 cover CPU-hours
in 14.91 wall minutes.
Process startup and other checks are also charged by the full-run timing
wrapper. Stage progress and per-cover completed records are retained.

## Freshly replayed outcomes

| Population | Complete members | Accepting leaves / all leaves |
|---|---:|---:|
| Accumulated shoulder roots | 1527/1609 | 262,528/665,536 |
| Production representatives | 8/9 | 1,856/2,272 |
| Separate difficult patch boxes | 3/6 | 13,436/36,364 |
| Independent fresh 30-second pilot | 1200/1609 | 119,728/225,150 |

The exact predicate checked **all 80,613 supplied guarded boxes**:
**78,223 accept and 2,390 remain unresolved**.
The complete per-box outcomes are replay/pilot_boxes.jsonl.gz. S contains
every supplied box, including the guard and faces; acceptance requires
exact containment in its replayed certified subset. The generic builder
accepts exact radian centers and radii for a future full-run list. That
full-run list and the integrator's per-root cluster ZIP were not supplied;
its reported 602 CPU-hours and 379 closures are not local replay results.

There are 82 open shoulder roots. data/open_roots.json records their
exact grid keys and diagnostics; the forest retains every open leaf.
Unresolved leaf reasons are {'cpu_budget': 403008}. All are inconclusive.
The assembler preserves prior certified coverage and rejects incomparable
partial replacements; accepting-leaf ratios are not used as volume scores.

The accumulated shoulder's certified seed-volume lower bound is
**394053/1099511627776 rad^4**, or
**95.666223%** of S. This is an exact
closed-mesh containment lower bound, not tau-tree mass or a measure of the
unresolved interior. replay/SEED_VOLUME.json contains all root contributions.
The independent fresh pilot's corresponding bound is
85331/274877906944 rad^4
(82.864939%). Its complete
forest is delivered and freshly replayed; see FRESH_PILOT_VOLUME.json.

## Distinct accepting statements

Lift leaves exclude a quartet for all four side pairings under the stated
maximal-corner hypotheses. PSD leaves prove outside strict D0. A single
production cover proves H+ is not a quartet edge, used under A3/MC5.
Production-cube cover leaves additionally validate the conjugate box and
the whole-box non-Tao guard, covering both matched signs. These statements
are recorded separately and are never relabelled as four pairing proofs.

| Population | Replayed terminal statement | Leaves |
|---|---|---:|
| shoulder | Hplus_not_quartet_edge | 699 |
| shoulder | outside_strict_D0 | 1983 |
| patches | outside_strict_D0 | 5495 |

## Separate production result

Class (1,2,2,4): **16/18** whole cubes.
Class (4,5,0,3): **72/72** whole cubes.
Each requested closed cube has half-width **pi/512 + 2^-40 radians**.
The exact 18+72 census is reduced only by checked signed-permutation cube
isometries, conjugation and recorded integer periods. Boundary faces and
both side signs are included. Every seed outcome and transport appears in
replay/production_90.json and PRODUCTION_RESULTS.json.

| Representative, pi/3 units | Cubes | Whole cube | Accepting leaves / all |
|---|---:|---|---:|
| 0, 2, 3, 1 | 16 | Closed | 1/1 |
| 0, 2, 3, 4 | 16 | Closed | 1/1 |
| 1, 2, 2, 4 | 8 | Closed | 72/72 |
| 1, 2, 4, 2 | 16 | Closed | 1/1 |
| 1, 2, 5, 4 | 8 | Closed | 543/543 |
| 1, 3, 5, 3 | 8 | Closed | 1/1 |
| 1, 4, 5, 2 | 8 | Closed | 1/1 |
| 1, 5, 5, 1 | 2 | Open | 1235/1651 |
| 2, 3, 4, 3 | 8 | Closed | 1/1 |

The base 227-leaf root-free cover and 2,513 primitive root-free leaves were
also freshly replayed. Physical **maximal** leading R=0 implies every
positional corner has R=0; A1 then gives F6 equivalence and the replayed
F6 tube excludes a quartet. No claim substitutes an arbitrary nonmaximal
R=0 corner for that hypothesis.

The separately retained production continuation has 18,492
leaves, 13,282 accepting. It was freshly replayed,
but a partial continuation is not a whole-cube certificate. Its complete
frontier is in data/production_continuation.jsonl.gz.

## Difficult patches and structural limits

| Pilot box | Nearest seed class | Whole box | Accepting leaves / all |
|---|---|---|---:|
| 5328 | 2,4,4,2 | Open | 2288/12011 |
| 5712 | 2,4,4,2 | Open | 3650/8305 |
| 6347 | 2,4,4,2 | Open | 2914/11464 |
| 6982 | 2,4,4,2 | Closed | 4582/4582 |
| 49329 | 4,5,0,3 | Closed | 1/1 |
| 49509 | 4,5,0,3 | Closed | 1/1 |

The four F3 patches received bounded refinements with lift and PSD, then
production-cover attempts on refined sub-boxes. Small-center diagnostics
are kept separate from these full-box outcomes. The exact F3 endpoint is
singular in the tested side charts; this is an obstruction to those charts,
not a proof of tube insufficiency or failure of PSD alternatives nearby.
Two formerly difficult production point fits passed after validated phase
reference refinement, so their earlier failures did not establish a tube
radius obstruction. Point success never substitutes for a positive-width
certificate. The exact R^k multiplier interface remains disabled until its
separate proof and independent checker are installed and pinned.

A direct frozen-cover diagnostic on a full F3 patch failed because its
Taylor square-root model range reached zero. A refined sub-box built that
model successfully, but a warmed attempt reached the 500,001-node limit.
This establishes a full-width chart limitation and a bounded-search stop,
not an insufficient tube radius in principle. Exact probe inputs and logs
are retained under data/diagnostics/.

The driver adapts splits to failing bounds, reuses and revalidates plans,
caches per-root data, preserves closed pairings, and uses auxiliary tau
slabs near R=0. After a failed expensive cover, new default searches defer
its next attempt until four seed halvings; lift and PSD continue meanwhile.
Unsuccessful covers have a separate 25% root-CPU allowance, preventing
them from consuming the entire search budget. Successful calls do not
consume this failure allowance; one-call overruns remain possible.
Subtree workers replay their assignment and ancestors only, marked
SCOPED_REPLAY. The merge checks unchanged outside nodes and the final
verifier replays the entire proof. Scoped checks never authorize a full
audit receipt.

## Timing, environment and continuation

All 1,609 roots were attempted locally. The fresh fallback pilot measured
18.0662 nodes/worker-CPU-second and 5.320846 total CPU-hours for its achieved
partial coverage. The final 16-root calibration on Julia 1.12.7, with explicit spawned
workers, measured 18.8867 nodes/CPU-second:
11 roots closed in 83.021294 worker CPU-seconds.
Additional backoff and continuation measurements are in data/benchmarks/.
See COST_ESTIMATE.md for seed-volume projections and their limits, and
CALIBRATION.md for the short rusty recipe. No measurement establishes
complete closure within 1,000 cluster CPU-hours.

The cluster recipe uses 256 shards, one CPU each, 300 CPU-seconds/root,
131,071 nodes, depth 64 and tau depth 12, with 10,800 CPU-seconds/shard.
For the 82 open pilot roots the nominal first continuation allocation is
6.833 CPU-hours plus closed-root replay and indivisible-call overruns.
Recalibrate before escalation; rebuild S before sizing the full campaign.

Local final replay used Python 3.11.16, numpy 2.2.4, sympy 1.13.1,
python-flint 0.9.0, mpmath 1.3.0 and Julia **1.12.7**, with the production
profile and the frozen jlenv_cluster environment. Historical exploratory
timings used the explicitly labelled Julia 1.12.1 profile. Julia 1.12.7
was installed from an official archive after verifying its SHA-256;
JULIA_RUNTIME.json also pins the Linux x86_64 archive for rusty.
Rocky 9 itself was not locally tested. Every parallel runner explicitly
spawns isolated processes, preventing a Linux fork from inheriting the
parent Julia connection. Fresh controls check two separate child workers,
foreign-owner rejection, and survival of the parent connection.
The full frozen production bundle hash matches
577018ebd9e3b0cee1134680a3d0302f3d972ff3211c3cf0cbacc5a6c09f961d.
It is the aggregate bundle hash, not an individual cover-file hash.
The receipt records runtime binaries and the package/source inventory;
INPUTS.json pins mathematical/source/data dependencies and the archive
manifest covers every delivered file.

The final replay took 4731.889 wall seconds. Recorded local
CPU is 79.943 hours. Including 0.624 hours for
cancelled jobs and a 10-hour allowance for unmetered setup/diagnostics gives
**90.566 estimated local CPU-hours**.
This is not a fully metered upper bound. CPU_ACCOUNTING.json lists the
components without double-counting worker totals and matching wrappers.
V1's 67 original files are checked byte-for-byte unchanged during packaging.

Verifier exit 0 means the stated audit passed. --require-complete returns
2 unless both the whole shoulder and all 90 cubes close; invalid evidence
returns 1. Open leaves remain explicit obligations for the sharded driver.
