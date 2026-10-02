# Results: ActiveF6Cube1551

The complete partition closes the two guarded production cubes at (1,5,5,1)
and (5,1,1,5), half-width pi/512+2^-40 radians, on the campaign's maximal-corner
domain. Both matched signs, both nonmatched pairings, boundary faces and
physical maximal R=0 points are covered. See PROOF.md for the exact scope.
The receipt, rather than this narrative, records the fresh replay outcome.

## Complete partition

| Terminal | Leaves | Certified statement |
|---|---:|---|
| FourierTransverseStability_v2 | 443 | All four pairings, physical R>0 |
| Fourier R slabs with adopted 1/28 tubes | 1,244 | All four pairings, physical R>0 |
| Validated side-root lift | 2,657 | All four pairings on the maximal-corner domain |
| Production common-ray cover | 365 | H+ not a quartet edge under the campaign reduction |
| Nonpositive outward R bound | 35 | Outside strict D0 |
| **Total** | **4,744** | **Complete closed representative root** |

The exact Kraft sum is one. Leaf depths range from 8 to 15; splits are in the
four seed coordinates, with no auxiliary tau search tree. The global transpose
lemma, applied only after full root closure, supplies the negative matched
sheet for direct-cover leaves. Conjugation and periodicity supply the other
cube. No open leaf, resource limit or exception is counted as acceptance.

## Diagnosis of the supplied rusty runs

The supplied lift continuation spent 8,893.162 CPU-s replaying the inherited
forest and had 6,996 outside_proved_tubes failures, with no recorded root
separation failure. The label-cover run had 20,237 label_limit failures and
1,508 outside_proved_tube failures. Additional CPU on those same recipes was
therefore a poor next step.

A 24-leaf diagnostic sample locates difficult leaves near the offset direction
(+,-,-,+) relative to (1,5,5,1). Point values there have R roughly 30–44.
The selected reference-tube bounds still fail when those sampled widths are
set to zero; sampled side-root separations exceed 1.72. This diagnoses a
limitation of the selected tube bound/reference, not an optimal distance lower
bound or a structural obstruction to all Fourier-tube methods. Direct common-ray
cover closes that face. Near R=0, the signed transverse chart and eight exact
R slabs remove unnecessary interval dependence. No new tube theorem or enlarged
normal chart domain was needed.

An initial direct-cover trial near R=0 was stopped after radical-enclosure
exceptions and poor throughput. Flushed records are retained only as diagnostics
in direct_cover_recovered.jsonl.gz. They certify no part of the final partition.
The successful direct-cover pass had all 365 prefixes close in one seed node.
The frozen Julia cover code is unchanged.

## Search cost

| Stage | Seed nodes | CPU-s | Wall-s, eight workers |
|---|---:|---:|---:|
| Initial analytic partition | 4,492 | 59.924 | 9.544 |
| Refined analytic partition | 6,636 | 881.415 | 113.438 |
| Direct cover on remaining leaves | 365 | 2,271.961 | 292.193 |
| **Successful search total** | **11,493** | **3213.301** | **415.174** |

This is 0.8926 CPU-hours, 3.577 seed nodes per CPU-s overall.
The cover stage uses 6.225 CPU-s per accepted leaf including worker startup;
its 0.161 seed nodes per CPU-s is not comparable to an analytic node because
one such node contains the full common-ray proof. Search cost per completed
representative-cube volume is 0.893 CPU-hours; the second cube uses exact
transport and needs no additional search. These measurements are local, not
rusty measurements or projections for an unrelated frontier.

Recorded interrupted-trial work is 1,693.551 CPU-s plus at most roughly eight
in-flight one-minute prefix budgets, and separate direct-cover probes took
about 150 CPU-s. The local effort, including diagnostics and fresh replays,
is comfortably below the 100 CPU-hour limit. That limit was not used as an
acceptance criterion. No cluster run was launched by this task.

## Runtime and integration

Local arithmetic: Python 3.11.16, numpy 2.2.4, sympy 1.13.1, mpmath 1.3.0,
python-flint 0.9.0; Julia 1.12.7 production profile; Apple Clang with UBSan.
On rusty use gcc/13.3.0 with UBSan and its existing Julia 1.12.7 production
environment. README.md gives the short calibration and bounded sharded recipe.

Recommended rusty action: run the 60-leaf stratified calibration (requested
count 64 rounds down equally across the five methods), then the complete
4,744-leaf replay with eight workers. Use the measured cover CPU multiplier
to scale the local replay cost. Allow 12 CPU-hours as a conservative budget;
no further search is required for this certificate. An independent 64-shard
search recipe is supplied, capped at about 8.54 CPU-hours of prefix budgets
plus bounded in-flight terminal overhead; its performance has not been
measured on rusty. Exhaustion remains inconclusive.

The retained first-stage and analytic-stage files have INCOMPLETE summaries;
they are intermediate partitions only. Their open leaves are exactly replaced
by later stages in the final certificate. Only the complete final forest and
its fresh replay authorize the theorem. The old input runs and probe outputs
are diagnostic data, never accepted proof leaves.

This resolves the two-cube production item under the stated reduction. It
does not claim closure of the 497 remaining pilot boxes mentioned by the
integrator, or of the entire no-four-MUB campaign. Existing v1, v2, frontier
extension and proof-of-record files remain unchanged.

For planning on rusty, expect roughly **1–2 CPU-hours for full replay** if
its production cover costs remain around 8 CPU-s per box; this is a projection,
not a rusty measurement. The calibration overrides that estimate.

For the optional independent search, use **--cover-depth 8** if you want
cover attempts in every assigned depth-8 prefix. The --cover-depth 12
recipe in README.md can intentionally defer high-R prefixes before depth 12
and return them as pending_direct_cover; it requires a subsequent pass over
those open paths using --prefix-list and --cover-depth 0. Both modes retain
open leaves explicitly. The delivered complete forest needs neither search.

## Final clean replay

**PASS: 4,744/4,744 leaves**, with all pins, exact geometry,
symmetry, the complete closed partition and 17 rejection controls passing.
The full replay used 2506.163 CPU-s (0.6962 CPU-hours)
and 324.397 wall-s with eight workers. This freshly replays
the new certificate relative to its adopted pinned theorems.

| Terminal | Leaves | Replay CPU-s |
|---|---:|---:|
| FourierTransverseStability_v2 | 443 | 3.585 |
| Fourier_R_slabs | 1,244 | 45.559 |
| R_nonpositive | 35 | 0.060 |
| accelerated_cover | 365 | 2274.303 |
| side_lift | 2,657 | 182.655 |

The separate 10-leaf calibration passes, covering every terminal, in
24.105 wall-s with two workers. Its receipt is explicitly
CALIBRATION_PASS and makes no whole-cube claim. The small-budget driver
control correctly returns INCOMPLETE with no accepted leaves.

The release ZIP contains MANIFEST.sha256 with repository-relative paths.
From the repository root, check it with:

```sh
sha256sum -c ProvenResults/ActiveF6Cube1551/MANIFEST.sha256
```
