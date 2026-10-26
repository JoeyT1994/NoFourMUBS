# ZK2: closed all-cheap run6

Completed 2026-10-26. Run6 has **2,775 seed balls**, all with cheap C1 bounds,
and a closed numerical seed/edge cover with **zero edge gaps**. All 2,350
original centres and frames are preserved. Post-run SHA-256 checks confirm
that both run5 state files are unchanged.

- **PROVED:** the algebraic bound formulas derived in [REPORT.md](REPORT.md).
- **CERTIFIED:** fresh 224-bit Arb C1, strict chart/orientation bounds, and the
  certifier's own `seedcert.run_stage_c` for every final seed ball. All 2,775
  scalar contraction witnesses also pass an exact rational replay.
- **NUMERICAL:** driver closure of every seed cover and the radius-0.13 X-edge
  boundary. Edge transfers use the existing boundary routines.
- **NOT ESTABLISHED:** independent end-to-end atlas transfer certification or
  a new Lean formalization of the cheap constants. Export and independent
  Arb/Julia certification remain the user's next step. No Lean ran for ZK2.

## Bounds, budgets and radii

| Final seed population | Count |
| --- | ---: |
| Original balls at unchanged radius | 1,923 |
| Original balls shrunk | 427 |
| New balls, all constructed with cheap rank 4 | 425 |
| Selected rank 0 / rank 4 | 1,296 / 1,479 |
| Fine budgets / certifier-confirmed stored budgets | 1,002 / 1,773 |

Step 1 refined all 577 outstanding original-radius budgets and recovered 150
additional cheap fits without shrinking. Its eligibility classes were 1,299
rank 0, 624 rank 4 and 427 requiring shrink; 192 failed the original-radius
rank-4 contraction itself. Three eligible rank-0 cases ultimately store a
rank-4 enclosure after concrete Stage C checks.

The shrink grid needed factors below 0.8 for 75 balls, including three at
0.4; the median factor among shrunk originals is 0.875. Five preliminary
shrinks were restored using already certified original-radius endpoints when
smaller remainders failed nonmonotone Stage C searches. All 432 preliminary
smaller-radius budgets passed; 427 remain relevant to the final geometry.
Preparation reopened 2,077 sources, including 2,076 with transfers into a
shrunk target, and invalidated the edge boundary. Final radii span 0.015–0.125.

The final 1,002 fine budgets cover the original 577 cases plus all 425 new
balls. Of these, 371 reach factor 8; the largest non-capped relative bracket
is 1.951%. Every accepted endpoint passes the certifier. Graph/clique caps
and nonmonotone clustering mean these brackets describe the search, **not a
proved global maximum**. The other 1,773 budgets are certified stored
remainders. The minimum stored and budget slack is 1.3359633958993922e-9.

[ZK2_final_fit.jsonl.gz](ZK2_final_fit.jsonl.gz) gives every radius, rank, C1
bound, stored remainder, budget and margin. `label` belongs to the stored
remainder; `budget_label` belongs to the budget endpoint. They differ in 61
cases, and each point is checked separately.

## Closed state and repair

Seed re-cover added 379 balls. The first edge pass found 850 gaps; two cheap
recovery passes added 36 and 10 balls, reducing the gaps to 16 and then zero.
All 2,080 edge start boxes are accounted for exactly once. Reuse requires
unchanged old target centres, inverse frames, frames and radii, unchanged
edge data/routines, and matching checkpoint hashes.

The final boundary has 8,031,516 boxes. Lossless compaction groups these into
16,100 transfer descriptions, preserving duplicates and box order within
identical metadata. Ordered box digests, seed payloads and edge-ball payloads
match. The state shrank from 1,945,981,519 to 257,394,585 bytes.

The ready export input on **rusty** is:

`/mnt/ceph/users/jtindall/seed_atlas_build/hor/run6/atlas_state_edge.pkl`

Its immutable audited copy is `run6/zk2_closed_compact_state.pkl`, under the
same `hor` directory. Both have SHA-256:

`c6cd4abcbe13b14f2ff7e1a689e19d080ba0c11424ead13f0beccd30dc16d67f`

The raw closed state remains at `run6/zk2_closed_state.pkl`. Its hash and the
full closure chain are in [ZK2_final_summary.json](ZK2_final_summary.json).
`run6/zk2_final_handoff.json` records post-run hashes and readiness;
`edge_recover_required.json` is cleared with an explicit NUMERICAL qualifier.

## Timing and reproducibility

The final two audits took **3,307.48 s and 3,347.61 s** (55.12 and 55.79 min),
using 80 workers per 128-CPU node. Compaction took 129.69 s with eight workers.
The initial 1,773-ball confirmation took 697.37 s.

All **40 Slurm job records** total **1,881.3867 allocated core-hours** and
**700.4128 CPU-hours used**. These totals include cancelled searches,
restarts, and collectors that exited with numerical gaps; job steps are not
double-counted. Raw accounting is in [ZK2_completed_jobs.sacct](ZK2_completed_jobs.sacct),
with submissions in [ZK2_jobs.jsonl](ZK2_jobs.jsonl).

[ZK2_final_audits.jsonl.gz](ZK2_final_audits.jsonl.gz) contains the full final
receipts. `ZK2_receipts.tar.gz` preserves raw shards, manifests, earlier budget
and repair receipts, and preservation checks; `ZK2_receipts.manifest.json`
binds every member. `ZK2_sources.tar.gz` and `ZK2_source_manifest.json`
preserve the exact frozen job/checker sources. The environment was Python
3.12.9, NumPy 2.2.6 and python-flint 0.9.0, with BLAS threads limited to one.

`budget_finish.py` replays scalar checks and verifies complete disjoint
shards, state/source bindings, the closure/compaction chain and accounting.
Extract the receipt archive into this directory to restore its inputs.
Regression checks cover radius/transfer invalidation, source preservation,
nonmonotone endpoint reuse, safe edge reuse, compaction and receipt binding.
The current generator also retains certified endpoints below the search
floor or beyond the old 200-step confirmation limit; recorded jobs retain
their original hashed sources.
