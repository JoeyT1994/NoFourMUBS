# MUB triples in dimension six (in progress)

**Goal.** The conjecture of Matolcsi, Matszangosz, Varga and Weiner: every MUB triple in ℂ⁶ is equivalent to a triple
of the continuous construction (Zauner; Szöllősi; Jaming–Matolcsi–Móra–Szöllősi–Weiner) or to the isolated Fourier
triple. Up to equivalence a triple is (I, H/√6, K/√6) with H, K complex Hadamard and H*K/√6 complex Hadamard, so every
triple has a *triple edge*: a Hadamard class [H] for which {I, H/√6} extends to a triple.

**Approach.** The certified atlas of the proof of no four MUBs (`PROOF.md`) covers every Hadamard class except Tao's
S₆ by 2,775 seed balls and the X-ball at F₆. Every triple has a transition in one of these pieces, so the conjecture
follows from a statement on each piece:

> on every seed ball, every third basis completing (I, H/√6), for H in the ball, gives a triple of known type, or there
> is none;

together with the same on the X-ball, and S₆ having no third basis.

This is not part of the proof that ℂ⁶ has no four MUBs.

## Status (29 October 2026, 06:36; interim, runs in progress)

Every closed ball below is closed by **one route**:
- the frozen whole-ball certifier on the original ball; or
- one dyadic tree of sub-balls, each closed by the same certifier with its Stage C preconditions checked. The tree is
  verified by one auditor, `code/audit_select.py`.

| Seed balls | Count | Nearest census triple (median) |
|---|---:|---:|
| **Closed** | **2,719** | |
| · no third basis anywhere in the ball (whole-ball certifier) | 2,101 | 0.90 |
| · every third basis of known type (whole-ball certifier) | 272 | 0.08 |
| · closed by an audited tree of sub-balls | 346 | 0.37 |
| &nbsp;&nbsp;– level-2 cover (256 cells, radius r/2) alone | 209 | |
| &nbsp;&nbsp;– level 2, then the collaborator's reviewed level-3 layer | 11 | |
| &nbsp;&nbsp;– selective chain: open cells refined again at levels 3, 4, 5, … | 126 | |
| **Open** | **56** | 0.27 |
| · still running on rusty (levels 4–6) | 30 | |
| · computed; waiting for the Stage C precondition sidecar | 10 | |
| · cells still open at the deepest level run so far | 16 | |

The open balls are 194, 282, 363, 499, 588, 595, 636, 641, 666, 678, 679, 703, 704, 730, 733, 734, 754, 767, 768,
777, 779, 807, 815, 823, 825, 830, 835, 845, 846, 847, 848, 853, 858, 879, 883, 885, 895, 900, 905, 918, 927, 987,
1010, 1016, 1035, 1038, 1070, 1089, 1213, 1216, 1217, 1227, 1265, 1270, 1622 and 2705. Each ball's tree status is in
the `tree` column of `results/balls.tsv`.

**Where the open balls are (NUMERICAL).** All lie near F₆: measured in the X-ball's edge chart, every open centre is
within 8 X-ball radii of the X-ball's centre. In the hardest balls about a third of the sub-balls stay open at levels
5 and 6, so refinement alone may not finish them. Other routes are in progress: a canonical choice of which transition
each triple is checked from, and a local theorem at F₆ of larger radius.

**No longer counted.** These earlier routes are now retired:
- the cell test (`code/nothird.py`);
- the sharper symmetry bound at the original radius;
- splits nested in the sub-balls' own frames;
- the collaborator's separate mixed-cover auditor.

Every ball they closed is either closed again by the routes above or is in the open list.

The distance is ‖H − H′‖_F between the dephased matrix at the ball's centre and the nearest triple edge H′ the census
converged to. Per-ball details are in `results/balls.tsv`.

**The X-ball (CERTIFIED, subject to review).** Every completing third basis for every H in the X-ball (the ball at F₆,
where the isolated triple and the continuous family meet) is of known type
(`proof/theorems/TC_triple_classification/xball/REPORT.md`):
- **the core ‖w‖ ≤ r/16** is certified with an outside radius-1/50 classification theorem at the two crossings;
- **the shell** is 383,829 dyadic cells, every one closed by the whole-ball certifier, down to level 7. That took
  1,352 core-hours on 8 Rusty nodes, with exact accounting.

**What remains for the conjecture:**
- the 56 open balls above;
- S₆: Tao's matrix has no third basis (certified, `proof/theorems/TC_triple_classification/tao.py`);
- the independent review: the certifier, recognition, the crossing theorem, and the tree builders and auditor.

### The whole-ball certifier

The main tool is the native all-K certifier in `proof/theorems/TC_triple_classification/family_neighbourhoods/`
(`PROOF.md`, `REVIEW_HANDOFF.md` there; frozen for review at commit `bd87c694752357dcd31571aa3377461d4dd03cca`). It
works on one entire original seed ball, as follows:

1. A fresh C1 encloses every H in the ball.
2. Stage C covers every possible completing basis K by six-colour patterns.
3. Contractions and exclusions remove patterns, preserving every actual solution.
4. On each surviving pattern, an exact order-three action and a contraction bound q < 1 force the actual triple to
   have a balanced common order-three symmetry.
5. A recognition argument identifies every triple with that symmetry as one of the continuous construction or the
   isolated product/Fourier triple (its `seed_method/reference/r0153/CHECKPOINT.md` §8).

A ball is **CERTIFIED** when every pattern is excluded or forced into known type, and **CERTIFIED EMPTY** when every
pattern is excluded. Every row is bound to the sources and the atlas by hash (binding `aaab342c…`).

**Status of the method: CERTIFIED, subject to review.** The new acceptance inequalities are in Arb or exact
arithmetic. Two dependencies have not been independently checked:
- the recognition argument;
- Stage C's binary64 error enclosures (`proof/atlas/RIGOUR.md`) at the certifier's new call sites.

An independent review is under way.

### Trees of sub-balls

A tree covers one original seed ball by sub-balls and runs the frozen certifier on each.
- **Level 2.** `code/split.py` cuts the parameter cube into 256 cells. Each sub-ball keeps the parent's frame, has a
  binary64 centre near the cell's centre, and has radius r′ ≥ 2h·r + ‖Mth⁻¹δ‖, where h is the cell half-width and δ is
  the centre's rounding, reduced mod 2π. The bound is checked in Arb, so the sub-balls cover the parent's image.
- **Deeper levels.** Level k refines only the cells left open at level k − 1. It takes the 16 children of each open
  cell that meet the closed ball, each a sub-ball of half the radius. Level 3 is built with the collaborator's
  reviewed `split_mixed.py`; levels 4 and beyond with `code/split_select.py`.
- **Certification.** Each sub-ball is an ordinary seed record with its own C1 constant. The frozen certifier
  recertifies it from scratch, with a 300 s limit per sub-ball; a timeout counts as open, and the cell is refined.
- **Stage C.** Every closed sub-ball must also pass the Stage C magnitude preconditions (`code/stagec_guard.py`):
  inline, or in a hash-bound sidecar.
- **The auditor.** `code/audit_select.py` checks a whole chain of layers, from level 2 to level K:
  - the exact rational cell set of each layer;
  - Arb containment of every cell in its sub-ball;
  - each previous layer named by hash;
  - per-row source bindings to an accepted builder;
  - seed and radius hashes;
  - complete pattern accounting and strict q < 1.

  The ball is closed when every cell is closed or refined, and the last layer's open cells are only tangent ones.
  A tangent cell meets the closed ball in exactly one point, and that point must lie in a closed cell.
- **Assembly.** `code/assemble.py` tries, for each ball:
  1. the level-2 cover alone;
  2. level 2 plus the collaborator's level-3 layer;
  3. the selective chain.

  The first verified tree closes the ball.
- **Status: EXPERIMENTAL** until the reviewer has seen it.

### The census (NUMERICAL)

A triple search from every ball centre (`code/census.py`, `code/triples.py`) found 79,965 triples. By its
heuristic labels:
- 79,209 look like the continuous construction;
- 756 look like isolated Fourier triples;
- none is unexplained.

The labels come from matrix invariants (f6, d3, x2) that are markers, not equivalence tests. An outside review
pointed out that Tao's S₆ has f6 = d3 = x2 = 0 but is not of Fourier type. S₆ has no third basis, so no census
triple is affected, but the labels are not a recognition proof. The search is dense but not exhaustive. Balls with triples nearby are the ones the certifier classifies (median
distance 0.08) or that need splitting.

## Where everything is

This folder is the entry point. The certifier and its receipts stay in `proof/theorems/TC_triple_classification/`,
because every receipt is bound by hash to those source paths. Moving them would invalidate every receipt.

| Path | What |
|---|---|
| `TripleClassification/README.md` | This status page |
| `TripleClassification/results/` | Per-ball status (`balls.tsv`), the certifier's per-ball rows, the census, the summary |
| `TripleClassification/code/` | Our drivers: `split.py` (level-2 covers), `split_select.py` (deeper selective levels), `audit_select.py` (the tree auditor), `stagec_guard.py`, `assemble.py`, the census, and the retired cell test |
| `proof/theorems/TC_triple_classification/family_neighbourhoods/` | The whole-ball certifier: `run.py`, `PROOF.md`, `REVIEW_HANDOFF.md` |
| `proof/theorems/TC_triple_classification/seed_method/reference/r0153/CHECKPOINT.md` | Transverse rigidity and the recognition argument (§8) |
| `proof/theorems/TC_triple_classification/xball/` | The X-ball: `REPORT.md`, `CORE_LEMMA.md`, the crossing receipts, the r/16 core (`results/core4_v4.json`), the sharded shell accounting (`results/sharded_20261028/`) |
| `proof/theorems/TC_triple_classification/xball/reference/crossing_continuation_20261028/` | The outside radius-1/50 crossing theorem and family tubes, with its verifiers |
| `proof/theorems/TC_triple_classification/tao.py` | Tao's S₆ has no third basis |

The bulky raw receipts are on rusty under `/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/`, with SHA-256
manifests in this repository:
- the X-ball shell rows (about 0.5 GB);
- the split rows.

## Files

- `code/assemble.py`: builds `results/` from the raw rows of all runs (single route).
- `code/split.py`: the level-2 driver (`build`, `run`).
- `code/split_select.py`: the deeper selective levels (`build`, `run`).
- `code/audit_select.py`: the tree auditor.
- `code/nothird.py`, `code/refine.py`: the cell test and its refinement.
- `code/census.py`, `code/triples.py`: the census. `python code/triples.py --validate` checks the classifier on the
  known triples.
- `code/run_rusty_queue.sh`: the Slurm array for the cell test and the census.
- `results/balls.tsv`: one line per seed ball. Columns:
  - `final`: the status above;
  - `certifier` and `certifier_patterns`: the certifier's result, with patterns counted as classified / excluded /
    unresolved;
  - `tree`: the verified tree (route, depth, leaves) or why the ball is open;
  - `split`: the earlier split bookkeeping, kept for reference;
  - the first cell-test run;
  - the census at the centre.
- `results/certifier.jsonl.gz`: one compact row per ball from the certifier (status, reason, binding, pattern counts,
  time).
- `results/census.jsonl.gz`: the census rows.
- `results/summary.json`: the counts above, per-ball split counts, and CPU time.

The full certifier and split receipts are on rusty, under `/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/`
(`runs/` and `split/`); `assemble.py` rebuilds `results/` from them.

## Runs

All runs used the certificate `proof/seed_atlas/results/seed_atlas_certificate.json.gz` (SHA-256 `33ad9798…bd8baf`) on
rusty, 26–28 October 2026.

| Run | Jobs | CPU time |
|---|---|---:|
| Cell test, first run | 7348802 and an earlier launch | 1,748 core-hours |
| Cell-test refinement | 7351842 | 72 core-hours |
| Census | with the cell test | 6 core-hours |
| Certifier on all 2,775 balls | 7352404, 7352420 | 171 core-hours |
| Splitting, level 2 (running) | 7354091, 7354126, 7354280–7354283 | 1,607 core-hours so far |
| Fixed cell test on 43 balls | 7352800, 7353385 | not recorded |
| Selective level 3 (150 balls, about 100,000 sub-balls) | 7360915 | about 2.5 h on 16 nodes |
| Selective levels 4–6, and a second batch of 39 balls (running) | 7361643–7361646, 7361689–7361704, 7363033–7363048 | running |
