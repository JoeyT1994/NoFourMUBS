# Handoff TCX: classifying the MUB triples on the X-ball (the neighbourhood of F₆)

## Goal

Prove:

> **(X)** For every complex Hadamard H whose class lies in the X-ball, every third basis K completing (I, H/√6) to a
> MUB triple gives a triple of the continuous construction or the isolated Fourier triple.

(X) is the last missing piece of the atlas. It joins:
- the 2,775 seed balls, where your whole-ball certifier, the cell-by-cell exclusion and subdivision are running;
- Tao's S₆, which has no third basis (your `tao.py`).

Together they cover every Hadamard class, so (X) would complete the proof of the triple conjecture of Matolcsi,
Matszangosz, Varga and Weiner, subject to the independent review now under way.

## Where to work

- Your worktree `/Users/jtindall/.codex/worktrees/tc-triple-classification/NoFourMUBS`. Work on a new branch from
  `codex/tc-triple-classification`, for example `codex/tc-xball`.
- Do not change the frozen review commit `bd87c694…` or its receipts: the independent review and the rusty run use them.
- The repository's `main` has the certificate and the edge theorems; GitHub `main` has `TripleClassification/` (the
  seed-ball status: which balls are excluded, which are left).
- Rusty: put work under `/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/xball/`.

## The X-ball

`PROOF.md` Step 4 on main.
- **Chart** (Theorem 4.2, returns U and W). Near F₆ the corner on rows and columns 0, 1, 2 parametrises every class by
  p = (θ₁, θ₂, θ₃, y), with y = −2 Im Ψ the signed root of R. The chart is valid on W's ellipsoid and covers every class
  within distance 0.15 of F₆.
  - Theorems: `proof/theorems/U_fold_at_edge/`, `proof/theorems/W_f6_neighbourhood_chart/`.
  - Transfers into the chart: `proof/theorems/XS_edge_side_orders/` (Theorem 4.3).
- **The ball.** The X-ball is {p = M w : ‖w‖ ≤ r}, with r = `0x1.0a3d70a3d70a4p-3` ≈ 0.13. It is centred at F₆ = H(0),
  chart `F6-012`; its record is the `edge` entry of `proof/seed_atlas/results/seed_atlas_certificate.json.gz`, format
  in `FORMAT.md`. Its image lies within distance 7/40 of F₆.
- **Phase enclosure.** The record does not store P and U as a seed ball does. They come from the chart's whole-ball
  model: `proof/seed_atlas/cert/edge_wholeball.py` (fields Rhs, L2, L3, c, d, b0, b2), its weighted Hessian and centre
  jet, and C1e.
  - Theorems: ZT's edge appendix (`proof/theorems/ZT_wholeball_transfers/`) and ZC2a
    (`proof/theorems/ZC2a_xball_sphere_caps/`).
  - The Arb checker of the X-ball is `proof/seed_atlas/cert/edgecert.py`.
- **Covering only.** For classification it is enough that sub-domains cover the X-ball's parameter ball. No transfers
  are needed: the atlas already places every class in a seed ball or the X-ball.

## Why the X-ball is different

Several triple families meet at F₆:
- the isolated Fourier triple, whose three transitions are all F₆-equivalent;
- the continuous construction, whose Fourier-type transitions F₆⁽²⁾(a, b) and their transposes pass through F₆.

Your `seed_method/reference/r0153/CHECKPOINT.md` records the consequences:
- the crossing has Jacobian rank 51 against 53 on the regular family;
- the isolated product triple has rank 55;
- the local classification at the crossing and product isolation are in its `prior_local` reference.

Over H near F₆, several kinds of third basis K can coexist. A whole-ball run is expected to leave patterns whose
contraction bound fails near F₆ itself (q ≥ 1).

## Suggested route

1. **Run the native certifier on the X-ball as it is.** Feed the edge model's enclosure (the X-ball's analogue of
   `model_stage_c_args`) into the unchanged all-K pipeline: cover, contractions, symmetry forcing, recognition. Record
   which patterns fail and their q values. This is engineering, and should come first.
2. **Shells.** Cover the X-ball minus a small ball B_δ around F₆ by sub-balls in chart coordinates, each with a fresh
   enclosure from the edge model restricted to the sub-ball. Run the certifier on each.
   - Prove the cover in exact arithmetic: dyadic cells meeting the ball, each inside its sub-ball.
   - Choose δ as small as the certifier allows.
3. **The core B_δ.** A local classification of all triples with H within δ of F₆. Use:
   - the prior local germ at the crossing, product isolation (rank 55) and the transverse rank theorem (rank 53);
   - the structure of all third bases over F₆ itself.

   This may need new mathematics. If it does, **write the statement and the proof plan up for the user before relying
   on it** (new lemmas go to the user). Do not substitute numerical evidence.
4. **Accounting.** One receipt covering the whole X-ball. Each piece must be CERTIFIED, CERTIFIED EMPTY or proved by
   the core theorem, with an exact proof that the pieces cover the X-ball. Anything unresolved is NOT ESTABLISHED.

## Standards

- Same as the native certifier: Arb or exact acceptance only. Stage C's binary64 enclosures are allowed only where
  `RIGOUR.md`'s assumptions are checked for the new call sites; say so explicitly.
- Bind sources and certificate by hash, as `run.py` does.
- Labels on every claim: PROVED, CERTIFIED, NUMERICAL, NOT ESTABLISHED.
- Test balls 1864 and 2200 must still give their frozen results after any shared code change.
- Commit on your branch only; do not push.
- Local runs: at most 8 threads. Heavy runs go to rusty; the user handles any login.

## Deliverables

- `REPORT.md`:
  - step 1's outcome on the whole X-ball;
  - the shell cover and its results;
  - the core theorem (statement, proof, status) or the precise statement still missing;
  - what remains.
- The receipts and logs, and the commands to replay them.
