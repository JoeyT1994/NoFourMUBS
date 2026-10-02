# branch95: close the refinable part of the branch layer (run of record code, 30 Sep 2026)

This runs production code only, from a byte-identical copy of `nofourmubs_rescaled_2026-09-30/code`
(`FREEZE.json` records the hashes).

- **A.** `driver.jl expand` from the level-9 survivors. `JOBLEVEL=9` and `EXPAND_SINGULAR_EXTRA=2`,
  so singular cells refine to level 11 and kept cells refine for pruning to level 11 (PRUNEMAX),
  exactly as in the expansion. Output is in the expansion format: work lines, `#layer` lines and
  `#prune` counts per survivor.
- **B.** The unchanged `SideTriplePrune.prune_box` on every level-11 `#layer` leaf, recursively to
  level 13 on its dyadic children. Each leaf gets a line of `path:code` entries, where a path is the
  child indices from the leaf, T means certified outside D₀ and O means open.
- **C.** Production `batch` certification (cover only) of stage A's work cells, rewritten as
  121-byte cell records.
- **D.** Level-13 open boxes:
  - `r_test` out (R < 0) excludes the box;
  - otherwise the outward R interval sorts it as posR (inf R > 1, for side charts) or residual.

**Survivors:** `survivors.txt` holds `IDX LAYER_ID JOB LEVEL θ1..θ4` from `results/layer` records
with `"ok": false` and `layer.txt`. `survivors_jobs.txt` holds θ only, in the same order; its line
number IDX is the expand job index.

## Full pass (approved 30 Sep, about 115k CPU-h)

The full pass runs in `nofourmubs_branch95_full_2026-10-01` on all 623,187 survivors, with the
settings chosen from the pilot:
- **Stage A:** `EXPAND_EXTRA=4` (prune-refine to level 13) and `EXPAND_SINGULAR_EXTRA=2`, 32
  survivors per task.
- **Stages B and C:** combined in `tasks_branchBC.txt`.
  - Cover certification uses `CERT_COVER0=30`, 64 cells per task.
  - Side-triple goes to level 13, 500 leaves per task, with no per-task logs because of the file quota.
- **Chain:**
  1. the three stage-A slices start after the run of record's certification jobs (`SBATCH_DEPENDENCY`);
  2. `post_a.sh` runs after them;
  3. the three B/C slices follow.
- **Stage D**, classifying the level-13 open boxes, runs afterwards.

Pilot measurements per 1,000 survivors:
- stage A (x4) closes 92 % of survivor volume, about 35 CPU-h;
- stage B excludes 65 % of the singular-leaf volume at 23.6 s per leaf;
- stage C certifies about 550 work cells at 89 s mean with 0 failures.

About 2.8 % of survivor volume remains open, in level-13 boxes, for the side-chart and residual work.

## Stage D and the coverage audit (added 30 Sep, night)

- **`stageD.jl`** works per leaf. It rewrites each stage-B line with every open code O replaced by:
  - R: production `r_test` proves R < 0 on the enlarged box, so the box is excluded;
  - P: the outward R interval has inf > 1, a side-chart target;
  - S: residual.

  It also appends `|nearest=KIND:class:dist` for the leaf centre. Open regions are handed on as
  level-11 leaves with masks, about 11k leaves per 1,000 survivors, not as individual level-13 boxes,
  of which there are about 1.9M per 1,000 survivors.
- **`branch95_audit.py`** checks the following and reports the closed and open volume as exact fractions:
  - stage A tiling: per-level counting from level 9 and grid membership;
  - stage B subtrees: prefix-free and complete, summing to exactly 1;
  - stage C: the cells match stage A's work cells, final failed = 0, bisections complete, one code hash;
  - stage D: verdicts cover exactly the open boxes.
- **Chain:** `post_a.sh` submits B/C and `post_bc.sh`. `post_bc.sh` checks that B/C is complete,
  submits stage D (3 × 4 nodes), then the audit job, which writes `logs/audit_branch95.log`.

**Pilot validation**, on 1,000 survivors with stage A at `EXPAND_EXTRA=2` (stage C not included):
`branch95_audit.py` **PASS**.

| Bin | Survivor volume |
|---|---:|
| Pruned in stage A | 86.18 % |
| Work cells | 5.80 % |
| Excluded in stage B | 5.19 % |
| D_Rneg | ≈ 0 |
| Open P (R > 1) | 1.04 % |
| Open S (residual) | 1.80 % |

The full pass uses `EXPAND_EXTRA=4`, which cuts work cells to 1.1 % of survivor volume and prunes
the rest.
