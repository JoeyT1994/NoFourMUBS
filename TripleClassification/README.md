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

## Status (28 October 2026)

| Seed balls | Count | Nearest census triple (median) |
|---|---:|---:|
| **Resolved** | **2,514** | |
| · no third basis anywhere in the ball (whole-ball certifier) | 2,101 | 0.90 |
| · every third basis of known type (whole-ball certifier) | 272 | 0.08 |
| · no triple edge in the ball (cell test, after the certifier left it open) | 43 | 0.72 |
| · split into 256 sub-balls of half the radius, every sub-ball resolved by the certifier | 98 | 0.31 |
| **Not yet resolved** | **261** | |
| · split, still running on rusty | 222 | 0.33 |
| · split, some sub-balls unresolved | 39 | 0.39 |

The distance is ‖H − H′‖_F between the dephased matrix at the ball's centre and the nearest triple edge H′ the census
converged to. Per-ball details are in `results/balls.tsv`.

**What remains for the conjecture:**
- the 261 balls above;
- the X-ball, where the isolated triple and the continuous family meet at F₆ (handed off);
- S₆;
- the independent review of the certifier.

### The whole-ball certifier

The main tool is the native all-K certifier of the triple-classification work. It is on branch
`codex/tc-triple-classification`, implementation commit `bd87c694752357dcd31571aa3377461d4dd03cca`, in
`proof/theorems/TC_triple_classification/family_neighbourhoods/` (`PROOF.md`, `REVIEW_HANDOFF.md` there). It is not on
this branch. It works on one entire original seed ball, as follows:

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

### Splitting

`code/split.py` covers a seed ball by sub-balls and runs the frozen certifier on each.
- **Cover.** At level 2 the parameter cube is cut into 256 cells. Each sub-ball keeps the parent's frame, has a
  binary64 centre near the cell's centre, and has radius r′ ≥ r/2 + ‖Mth⁻¹δ‖, where δ is the centre's rounding,
  reduced mod 2π. The bound is checked in Arb. So the sub-balls cover the parent's image.
- **Certification.** Each sub-ball is an ordinary seed record with its own C1 constant. The certifier recertifies it
  from scratch.
- **Binding.** The frozen code is used unchanged. Only the binding differs: schema `tc-native-allk-v1+split`, with the
  sub-atlas hash, and `split.py` added to the sources.
- **Status: EXPERIMENTAL** until the reviewer has seen it.

Splitting closes most balls. Of the 137 split balls finished so far, 98 are closed. In the 39 that are not, the
unresolved sub-balls range from 1 to 156 of 256:
- most have under 10, and splitting those sub-balls once more (radius r/4) is the next step;
- 550, 636 and 1241 have 92–156 unresolved sub-balls, so splitting barely helps there.

### The cell test

`code/nothird.py` is a cell-by-cell Stage C test that no class in a cell is a triple edge: there is no 6-clique of
the orthogonality graph. It was the first method; the certifier superseded it.
- **Fixes since the first run:**
  - the cell's radius pays for rounding its centre;
  - the cell-meets-ball test is exact;
  - Arb squares are products. With python-flint 0.9.0, `x**2` is NaN on a ball containing 0; this only ever
    weakened the test.
- **The 43 balls above** were rerun with the fixed code, uncapped down to radius r/32 where needed, and all are
  triple-free.
- **The columns of `balls.tsv`** under `status`, `level` and `cells_remaining` are the first run's results, kept for
  reference.

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

## Files

- `code/assemble.py`: builds `results/` from the raw rows of all runs.
- `code/split.py`: the splitting driver (`build`, `run`).
- `code/nothird.py`, `code/refine.py`: the cell test and its refinement.
- `code/census.py`, `code/triples.py`: the census. `python code/triples.py --validate` checks the classifier on the
  known triples.
- `code/run_rusty_queue.sh`: the Slurm array for the cell test and the census.
- `results/balls.tsv`: one line per seed ball. Columns:
  - `final`: the status above;
  - `certifier` and `certifier_patterns`: the certifier's result, with patterns counted as classified / excluded /
    unresolved;
  - `split`: the level, depth, closed or open, and sub-ball counts;
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
