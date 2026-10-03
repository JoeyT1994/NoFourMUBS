# Residual patch near the stationary seed (2,4,4,2): pilot results, 2 October 2026

The patch is all 2,354 pilot open boxes nearest (2,4,4,2): level 13, half-width pi/8192 + 2^-40 rad, code S.
They are the "class 2,4,4,2" rows of `shoulder_boxes_pilot_full.txt.gz`. Their history:

| Stage | Method | Result |
|---|---|---|
| Stage E | SignedCornerPSDPrune, bounded profile | failed on all of them (they are frontier boxes) |
| Shoulder v2 | kernel | does not contain them |
| Side cover | `residual_lift.certify_f6` with an F6 reference ordered to the seed | `label_limit`, or `side_pair_budget` even at quarter width |
| Stage F | production accelerated cover; COVER0 = 30, MAXDEPTH = 3, CELLMAX = 900; frozen code 577018eb | 1,666 / 2,354 boxes fully certified. 688 boxes have 9,428 FAILED leaves (3,341 D0_singular, 6,087 time_limit) |
| Stage G | PSD on those leaves | 5,254 excluded; 4,174 open: 2,518 unresolved, 1,656 seed_node_budget (`stageG_open_leaves.txt.gz`) |
| F2, a leaf pass | cover with MAXDEPTH = 4, CELLMAX = 1800, COVERBUDGET = 1e8, on the 4,174 leaves | cancelled after 866 leaves: only 54 certified; 812 split into 13,294 failing sub-leaves, dominated by D0_singular (an H+ branch point) and timeouts. Partial trees in `stageF2_partial_trees.tgz` |

**Pilot ledger after all stages:** 80,116 / 80,613 closed. The 497 open boxes are all in this patch
(`pilot_open.txt`, with the zero-based pilot index first). Leaf form: `open_after_FG.txt.gz`, as
"stageF-cell level hex-centre". `pilot_ledger_receipt.json` has the full ledger.

**Scale.** The full run is roughly 600 times the pilot, so expect about 300k such boxes.
