# MUB triples in dimension six (in progress)

**Goal.** The conjecture of Matolcsi, Matszangosz, Varga and Weiner: every MUB triple in ℂ⁶ is equivalent to a triple
of the continuous construction (Zauner; Szöllősi; Jaming–Matolcsi–Móra–Szöllősi–Weiner) or to the isolated Fourier
triple. Up to equivalence a triple is (I, H/√6, K/√6) with H, K complex Hadamard and H*K/√6 complex Hadamard, so every
triple has a *triple edge*: a Hadamard class [H] for which {I, H/√6} extends to a triple.

**Approach.** The certified atlas of the proof of no four MUBs (`PROOF.md`) covers every Hadamard class except Tao's
S₆ by 2,775 seed balls and the X-ball at F₆. On each seed ball we

1. certify, cell by cell, that no class in the cell is a triple edge (**CERTIFIED**, below), and
2. search for triples from the ball's centre and classify every triple found (**NUMERICAL**).

What the certification cannot exclude is where the triples actually are. The conjecture then reduces to a *local*
statement there: every triple whose edge lies in an uncertified cell (or the X-ball) is of a known form.

This is not part of the proof that ℂ⁶ has no four MUBs.

## Status (27 October 2026)

| Seed balls | Count | Nearest triple found by the census (median) |
|---|---:|---:|
| **Certified triple-free** | **1,454** | |
| · by the whole-ball test | 601 | 1.58 |
| · on sub-cells of radius r/4 or r/8 | 652 | 1.05 |
| · after refining failed cells to radius r/16 | 136 | 0.82 |
| · after refining failed cells to radius r/32 | 65 | 0.53 |
| **Remaining** | **1,321** | |
| · *fine*: a few small cells left (radius r/8 or r/16) | 181 | 0.59 |
| · *coarse*: stopped at radius r/4, most cells failing | 1,002 | 0.30 |
| · *not finished*: the run was stopped before the ball was done | 138 | 0.15 |

The distance is ‖H − H'‖_F between the dephased matrix at the ball's centre and the nearest triple edge H' that the
census converged to.

- **CERTIFIED.** On the 1,454 certified balls, no class in the ball is a triple edge. The test is Stage C's one-clique
  search (`proof/atlas/stagec.py`, `stage_c_triple`; `STAGEC.md`, `RIGOUR.md`). A third basis would be six labels that
  are unbiased to I and H/√6 and pairwise orthogonal, so a 6-clique of the O graph. The search over all labels finds
  none. Each cell's phase enclosure comes from the certificate's whole-ball model:
  - a centre jet at an exact point, in Arb (`patches.centre_jet`, the contraction of C1);
  - a curvature remainder (‖H₂‖ + ‖X‖Z₂)ρ²/2;
  - the rounding of the floating-point midpoints, bounded in Arb.

  It has one implementation (Python with Arb). There is no independent replay and no receipt binding yet.
- **NUMERICAL.** The census found 79,965 triples from the 2,775 centres:
  - 79,209 of the continuous construction;
  - 756 isolated Fourier triples;
  - none unexplained.

  The search is dense but not exhaustive.
- **What the remaining balls are.** They are the balls closest to triple edges. Certified, fine, coarse and unfinished
  balls have successively smaller distances to the nearest triple (table). The uncertified cells sit around the
  triple-edge locus. Their thickness reflects the test's resolution near that locus.
  - On balls far from the locus, refining certifies nearly everything. On the 246 refined balls, 94% of the children
    of failed cells certified at radius r/16, and 92% of the next children at r/32.
  - Near the locus it does not. In a pilot on the balls with every cell failing (nearest triples 0.006–0.16), only
    1–4% of children certified at r/16 and 5–8% at r/32.
- **Not covered here.** The X-ball (where the isolated triple and the continuous family meet, at F₆) and S₆.

## The open problem: the remaining balls

The 1,321 remaining balls carry:
- 2,161,455 uncertified cells of radius r/4 on the coarse balls (a median 89% of each ball's cells);
- 134,478 smaller cells on the fine balls;
- the 138 unfinished balls in full.

**We need an efficient way to deal with them.** Refinement alone does not scale. One more level on the coarse balls
costs about 16 × 2.16 M tests at 0.9 s, about 9,000 core-hours. Near the locus it certifies only a few percent per
level, so the cost grows by close to 16× per level without converging.

Directions:

1. **A local classification (L)** that takes over where the test stops. For every remaining cell, every triple with its
   edge in the cell is of a known form. For example: the triple equations are regular along the known families, and
   a certified tube of explicit radius around each family contains no other triples. The cells then need only be shown
   to lie in such tubes. The census suggests tubes of radius ≈ 0.3–0.6 (Frobenius on H) cover most remaining balls.
2. **A sharper exclusion test near triples.** Close to a triple edge an approximate third basis exists, so a one-clique
   search on cells of radius ρ fails until ρ is small compared with the distance to the edge. Other options:
   - a test that uses the explicit near-triple, such as interval Newton on the triple equations from the census
     triple, proving a unique (known) solution in the cell;
   - certified bounds on V(H), the unbiased vectors, along the cell.
3. **Cheap refinement where it works.** On the coarse balls with at most half their cells failing (220 balls,
   188,593 cells), one level costs about 800 core-hours, and it certified most children in the pilot.
4. **The X-ball and S₆**, separately.

## Files

- `code/nothird.py`: the certified test on a seed ball's whole ball, then on dyadic cells down to `--max-level`.
  - Cells are numbered as follows. Level m splits [−r, r]⁴ into 2^m cells per axis. The cell c = (c₀, …, c₃) has
    centre w = r(−1 + (2cᵢ + 1)/2^m) and is tested on a ball of radius 2r/2^m.
  - A ball refines to its last level only if at most 32 cells failed at the level before it.
- `code/refine.py`: refines the failed cells of chosen balls by one or two levels with the same cell test.
- `code/census.py`, `code/triples.py`: the census.
  - `census.py` finds the unbiased vectors and near-orthonormal six-sets, solves the triple equations by
    Levenberg–Marquardt, and classifies each triple by the invariants f6, d3 and x2.
  - `python code/triples.py --validate` checks the classifier on the known triples.
- `code/run_rusty_queue.sh`: the Slurm array run (one node per task, a shared claim queue).
- `code/assemble.py`: builds `results/` from the raw run rows.
- `results/balls.tsv`: one line per seed ball. Columns:
  - status, the level of its remaining cells and their number;
  - for coarse balls, the fraction of level-3 cells that failed;
  - the census at its centre (unbiased vectors, triples by class, nearest-triple distance).
- `results/remaining_cells.jsonl.gz`: for every unresolved ball (except the unfinished ones), the level and indices of
  every uncertified cell.
- `results/census.jsonl.gz`: the census rows.
- `results/summary.json`: the counts above and the CPU time.

## Runs

The runs used the certificate `proof/seed_atlas/results/seed_atlas_certificate.json.gz` (SHA-256 `33ad9798…bd8baf`) on
rusty, 26–27 October 2026:
- the main run: array 7348802, four 128-core nodes, `--max-level 4`, stopped after 7 h 22 min;
- an earlier launch of the same test that did 109 balls;
- the refinement: job 7351842, one node, the 246 coarse balls with at most 25% failing cells, stopped with 16 balls
  before their last level.

| Run | CPU time |
|---|---:|
| `nothird.py` | 1,748 core-hours |
| Refinement | 72 core-hours |
| Census | 6 core-hours |

To reassemble `results/` from the raw rows (on rusty, under
`/mnt/ceph/users/jtindall/seed_atlas_build/triples/explorations/triples_seed/results/`):

```bash
python TripleClassification/code/assemble.py <raw rows> TripleClassification/results
```
