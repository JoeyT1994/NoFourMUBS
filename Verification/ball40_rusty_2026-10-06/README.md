# 6 Oct 2026: 1/40 punctured ball replay, stage-C leaves, and the outside-0.03 export

## Patch2442Local Radius025Complete (punctured ball of radius 1/40 at both (2,4,4,2)-class seeds)
- **Inputs checked:** the delivered archive's `ARCHIVE_MANIFEST.sha256` and the module's `MANIFEST.sha256` both pass on rusty.
- **Fresh replay:** 4 independent invocations on one rome node with gcc 13.3.0 and `--workers 32`, each a full `verify.py --boxes` run. All four report `PASS_UNIFORM_BALL`: 140,104 terminals, 0 unresolved, max local score 7833210364118525/9007199254740992. Receipts are in `res_K.jsonl.gz.verification.json`.
- **Boxes sent:** ring rows (class 2,4,4,2, seed distance <= 0.07 - 1e-6) whose centre distance plus half-width is at most 0.0251. That is 445,392 rows, built by `branch95/ball_prep.py`, with exact centres and an outward radius bound.
- **Accepted: 438,110**, by exact whole-box membership, 219,055 at each seed. **Not accepted: 7,282.** Of these, 7,280 lie partly outside 1/40 and 2 contain a seed. Strict D0 excludes the seed itself (R=0).
- **Ledger:** `full_ledger.py` credits the accepted rows as source `ball40`.

## Stage-C FAILED leaves (the audit's C_failed sliver)
- **The sliver:** 1,018 leaves in 395 cells, rerun one leaf per cell with the production cover and pass-3 caps (`close_rest.sh`, job certP3, 8 nodes, 10 min).
- **Result:** all 1,018 have a done record with `failed = 0`. The done records are in `stageC_leaves_P3_done.jsonl.gz`.
- **Cross-check:** the PSD prune (stageG_psd) separately closed 727 of the 1,018.

## Outside-0.03 export to the collaborator
- **What it is:** every row still delegated (ring, export 2, addendum, minus the 6,442 we accepted) that a 0.03 punctured ball does not contain. That is **1,864,163 rows**: 1,859,367 in class (2,4,4,2) and 4,796 in class (0,0,2,4).
- **Order:** sorted by the ball radius each row needs.
- **Files:** `OUTSIDE_R003_README.md` and `OUTSIDE_R003_MANIFEST.json` describe it, and `branch95/outside03.py` produced it. The zip is a release asset (outside-r003-2026-10-06), sha256 dae5e65048e3372f6961fdfa0752a1419eac003b965d6967a286b68819eee274.

## Open volume (measured, `branch95/vol.py`)
Every post-E row is level 13, which is 2^-52 of T^4. The branch95 survivors make up 9.07e-6 of T^4, and post-E opened at 1.015e-8. The table shows what is open now.

| Open piece | Rows | Fraction of T^4 |
|---|---:|---:|
| (2,4,4,2) beyond 0.03 | 1,859,367 | 4.13e-10 |
| Ring between 0.025 and 0.03 (collaborator reports a ball at 0.03; not yet replayed) | 99,594 | 2.2e-11 |
| (0,0,2,4) (frontier at 1,800 s running) | 4,796 | 1.1e-12 |
| Shoulder (frontier at 7,200 s running) | 170 | 3.8e-14 |
