# Branch-layer status — guarded transition, 30 September 2026

## Latest user direction: computations stopped; hourly follow-ups retained

At the user's request, both remaining local F3JointLift computations were
terminated (PIDs 67810 and 68010), and branch Slurm job **7138797** was
cancelled. Process and queue checks confirm they have stopped. The hourly
follow-up automation remains **ACTIVE**. Campaign-agent jobs were untouched.
Do not restart the cancelled jobs or the tiny-width experiments merely
because earlier instructions below describe them as running. The user
explicitly rejected further minuscule-width improvements: future hourly
work must target actual enlarged production-width survivor cells. The
unfinished F3JointLift experiments are development evidence, not new
certified radius theorems or parent closures; no new acceptance is of record.

**The analytic gap and the branch layer remain open. No guarded-inventory
closure PASS is claimed.** At the 10:57 UTC check, guarded expansion had
finished and `layer.txt` and the old-to-new ID map existed. Layer pruning
is running as job **7140424**; **2,594/3,607** finished task files were
observed. The final guarded survivor inventory is not yet ready to freeze.
Campaign metadata reports **14,426,812 layer cells** and **8,652,808 work
cells**; these are observed metadata, not a completed independent audit.
See the [readiness receipt](../Verification/BranchLayer_hourly_20260930T1057Z/status.json).
All closure counts below refer to the frozen historical
623,187 survivor coordinates until exact coordinate migration is complete.

## Guarded replay and record policy

The [new audit](../Verification/BranchLayer_guarded_20260930a/historical_coordinates_audit/audit.json)
retains **330 whole-parent closures, with 622,857 historical parents open**.
Of 1,147 selected Julia acceptances, 824 pass current guarded production
code and 323 former D0 exclusions are inconclusive. Three formerly closed
parents reopen: **4878025, 11105462, 13270005**. Direct diagnostics on three
failed leaves hit `invariant: scalar outside proved range`. A bounded
Arb-only recovery on all 323 failed leaves accepts none (224 CPU-seconds).
The old 333-parent count is not of record.

The 330 accepted witnesses comprise 322 Arb-only whole-root exclusions
and eight fully covered refined parents. All eight selected production
cover leaves pass guarded replay. The remaining historical trial receipts,
including unselected longer cover runs, remain historical until replayed.

`layer2/audit.py` now rejects unguarded Julia replay records and requires
the reviewed FastTM SHA-256 and guard trace metadata. Even a complete
historical-coordinate ledger cannot emit final closure PASS. That requires
a manifest identifying the guarded run, source verification, and all
acceptance replays. `inventory.py --guarded` checks the new source manifest
and all original row/outcome coordinates. `rekey_guarded.py` matches JOB,
LEVEL and the exact four binary64 coordinates; IDs alone never transfer
acceptance. Wrong-ID-map and changed-coordinate controls pass.

## Target A: whole enlarged parents containing F6

**Not closed.** The previous 54 T2 inner boxes and 336 open outer slabs
remain partial certificates. New bounded refinement on one actual enlarged
parent from each of the six classes gives the following complete partial
partitions. Every accepted leaf replays at **96 and 160 bits**.

| Historical parent | Class | Accepted leaves | Open leaves | Open volume fraction |
|---|---|---:|---:|---:|
| 9083 | second mixed | 57 | 5 | 115/128 |
| 1039530 | mixed | 55 | 6 | 215/256 |
| 1931745 | F3 block | 0 | 761 | 1 |
| 2559749 | rank-one pair | 108 | 29 | 65017/65536 |
| 3535816 | symmetric | 31 | 7 | 107/128 |
| 7989659 | standard F6 | 0 | 318 | 1 |

Discovery used **1,088.27 CPU-seconds**; replay used about **698.12**.
The four partly successful runs leave substantial unresolved volume;
251 accepted leaves do not mean 251 closed parents. The F3-block and
standard-F6 runs hit side-label limits even after subdivision. Rank-one
also retains depth-limited leaves. Other open leaves are budget-limited.

The missing result remains a complete production-width T2 lift for every
F6 class and its surrounding region. The eightfold analytic radii proved
previously remain valid but are far smaller than the required parent size.

## Target B: certified local R gap

The [registered LocalBranchGap theorem](../ProvenResults/CornerBounds/LocalBranchGap/PROOF.md)
proves **D0 implies R > 1 on 7/10** of the intended near-atlas,
sampled-zero-crossing cohort, on the **whole enlarged boxes**, with
96/160-bit replay. The cohort is bound to exact coordinates, not row order.
For their union U the exact atlas predicate also proves
`dist_2(theta, S_Four) < pi/128`, and complete F6 seed enumeration proves
`dist_infinity(theta, S_F6) >= 42893/262144`.
These are finite-region statements on U, not a uniform implication for
all seeds satisfying those two distances. Positive-R parts still need
subdivision and a production cover or T2 certificate.

Accepted historical IDs: **13348107, 4644842, 2637391, 12004424, 2685452,
1913921, 5579157**. Open IDs: **13549801, 8198725, 2776046**. The latter
fail the bounded gap policy even at threshold 1/4096.

The first trial mistakenly joined two differently ordered tables by row
number; its apparent 9/10 near-atlas rate is withdrawn. Its certificates
remain valid for the actual boxes tested, but only the corrected
coordinate-bound run supplies the 7/10 result above.

The retained CornerBounds Fourier curve supplies small-R examples. It
does **not** prove that all small-R physical seeds lie on that curve.
Its qualitative compactness theorem gives no explicit uniform threshold;
none is assumed here.

## Target C and remaining leaf list

[BranchReference](../ProvenResults/FourierNeighbourhood/SeedLifting/BRANCH_REFERENCE.md)
combines MovingReference's regional radii with the correctly indexed
FourierMaxR F6 margin. Its parameter-convention identity and outward radius
controls pass the registered verifier. It rejects a mere nonpositive-R
`outside_strict_D0` result; a separately proved strictly negative R cap
can exclude physical D0.

On a 16-leaf split of each of the three B-open parents, this policy
excludes **11 leaves** of parent 8198725 by strict R negativity, all
replayed at 160 bits. It closes no whole parent. **37 leaves remain open**;
the moving-reference side covers hit label limits there.

The [analytic partial-cover audit](../Verification/BranchLayer_guarded_20260930a/final_analytic_audit/audit.json)
passes coordinate binding, exact binary coverage and acceptance receipt
accounting. Its [1,163 open analytic leaves](../Verification/BranchLayer_guarded_20260930a/final_analytic_audit/open_analytic_leaves.jsonl)
retain original IDs, root coordinates, binary paths, failure reasons and
needed theorem. It is not a global closure PASS.

## Cancelled second pass and budget

**Job 7138797 was cancelled at the user's request**, in the branch-owned package
`~/Documents/QuantumPhysics/ClusterScripts/nofourmubs_branch_2026-09-30b`.
It was intended to attempt all 623,187 historical survivor boxes with the retained
Arb-only second pass and independently replays every exclusion at 160 bits.
These certificates require migration before entering the guarded ledger.
No campaign results directory or protected production source was modified.

The [03:50 UTC check](../Verification/BranchLayer_hourly_20260930T0350Z/README.md)
confirms cancellation after **48m17s**, about **103.00 allocated CPU-hours**
and **102.15 process CPU-hours**. Its 128 partial output files remain on
Rusty; no complete task output or 160-bit replay receipt is available.
Nothing from these partial files has entered the accepted ledger. Together
with predecessor 7138762, these two jobs used **113.92 allocated CPU-hours**.
No branch job was restarted. Guarded expansion subsequently finished;
the ID map exists, but the final pruned survivor inventory is still pending.

The first 6,591 rome inputs averaged **3.884 CPU-seconds**, projecting
**672 discovery CPU-hours**, before replay. The local 1,024-cell estimate
was 299 CPU-hours; it underestimated rome time. The cancelled job had an
**eight-hour / 1,024 allocated CPU-hour ceiling**. Its predecessor 7138762
was cancelled after 5m07s when Slurm denied a live extension of its
four-hour limit; all partial results remain in package `...-30a`.
That predecessor used about 10.54 process CPU-hours / 10.92 allocated hours.
The new cluster allocation plus that cancelled run is capped below 1,035
allocated CPU-hours, comfortably below the 5,000-hour approval threshold.

## Receipts and next required work

- [Current receipts and replay commands](../Verification/BranchLayer_guarded_20260930a/README.md).
- [Registered proof checks](../Verification/BranchLayer_guarded_20260930a/final_bound_checks/summary.json).
- [Complete historical-coordinate open list](../Verification/BranchLayer_guarded_20260930a/historical_coordinates_audit/open_cells.jsonl.gz).
- [Historical measurements and previous status](../Verification/BranchLayer_guarded_20260930a/historical_status_before_guarded_update.md).

Next: collect the branch sweep's completed replay receipts, freeze the
finished guarded inventory, migrate by exact coordinates and re-audit.
The production-width all-class F6 lift remains the main analytic gap.
There is no certificate for every survivor and no final guarded coverage
PASS yet.
