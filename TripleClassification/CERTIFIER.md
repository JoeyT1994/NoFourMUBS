# The certifier: one tree per ball

`code/onetree.py` certifies one seed ball of the atlas at a time. It searches for a proof (`close`), or verifies a
proof someone else produced (`check`). A certificate is one directory: a dyadic tree over the ball's chart plus a
small proof per leaf. For most balls the tree is a single leaf: the frozen whole-ball certifier on the ball itself.
Checking it needs no caches, manifests, earlier audits or job history. Every node is verified independently, in
parallel, from the files themselves.

## What a certificate proves

The ball B is the closed set of Hadamard matrices H = exp(iQ) with Q = Q0 + U w + ½ H2(w ⊗ w) + X ξ, ‖w‖ ≤ r, ‖ξ‖ ≤ τ
(the atlas record). Its chart box r·[−1, 1]⁴ is split dyadically. `tree.json` assigns each node one of four things.

- **16 children.**
- **`outside`.** The closed dyadic cube misses the closed ball. This is checked in exact rational arithmetic
  (`plane_tree_certificate.misses_ball`).
- **A native leaf** (`{"native": ...}`). The frozen whole-ball certifier (`family_neighbourhoods/run.py`, the
  native all-K certifier that closed 2,373 atlas balls whole) certifies every completing basis K over the cell. The
  checker re-runs it, and it must return CERTIFIED or CERTIFIED EMPTY:
  - at level 0, exactly the audited call on the original atlas ball (binding `aaab342c…`);
  - below, on the cell's own record (`leaves/<level>_<cell>.input.json.gz`), after proving that this record contains
    the whole cell and that its branch is the ball's (the overlap witness, `branch_overlap.py`; `NATIVE_REVIEW.md`),
    run as a one-seed sub-atlas in the same way the audited trees run sub-balls.

  The checker also requires Stage C's input preconditions to hold for the record (`stagec_guard.check`).
  `.native.json` is the search's own run, kept for reference only.
- **A plane leaf** (`{"leaf": ...}`). The leaf is `leaves/<level>_<cell>.input.json.gz`, the cell's H record,
  together with `.proposal.json.gz`, its whole-cell proof. The checker requires three things:
  - the record names this ball, level and cell;
  - the record's H ball contains the entire closed cell (`cell_geometry`, Arb), and the record's analytic branch is
    the ball's (`branch_overlap.py`: one Arb inequality at a common seed, `NATIVE_REVIEW.md`);
  - the whole-cell check succeeds. That check rebuilds C1, the H normal form, Stage C and the complete cover of the
    possible third-basis columns from the record, then verifies a witness for **every** pattern (six mutually
    orthogonal colours). The witness says the pattern is excluded, classified or (see below) ordering-discharged.

Witnesses:

| Witness | Meaning | Code |
|---|---|---|
| 1 or 2 columns | a column has no tube, or two columns' tubes are never orthogonal | `plane_cell_certificate` (PR #4) |
| joint | no tuple of tubes survives the joint exclusion (or the known family is recognised) | `plane_joint_certificate` (PR #4) |
| secant | a moving-frame secant bound with positive transverse margin | `projector/moving_secant_certificate.py` |
| projector | one common row functional with positive minimum over every tube | `projector/projector_joint_certificate.py` |
| gamma | the upper bound of Γ_F(K) or Γ_F(L) over the pattern is strictly below the cell's certified lower bound g_cell of Γ_F(H) (ordering discharge) | `ext_cell_certificate.py`, `gamma_test.py`, `gamma_exact.py` |

**Arithmetic.** Every check is computed in Arb (python-flint's interval arithmetic) or in exact rationals; floating
point only chooses what to check (column centres, alignments, secant frames), so a poor choice can fail a check but
never pass a false one. `outside` nodes and the gamma comparison with g_cell are exact rationals. The
cell's lower bound g_cell on Γ_F(H) is a minimum over 14,400 labelled alignments. Each alignment shift (π/3)·v has
integer v, so modulo 2π each of the 225 entries sees only six shifts. `gamma_exact.py` bounds those 1,350 squared
distances below in Arb, rounds them down to integers, and takes the minimum over the alignments in exact integer
arithmetic: 0.1 s per cell, within 10⁻¹⁵ of the true minimum in the tests (`test_gamma_exact.py`, which also evaluates
all 14,400 alignments directly in Arb).

A native leaf classifies by the certifier's own method. A fresh C1 and Stage C cover every completing column. Each
surviving pattern is excluded, or an exact order-three action and a contraction q < 1 force a balanced order-three
symmetry, which identifies the triple as a known one (the recognition argument, `seed_method/reference/r0153/
CHECKPOINT.md` §8). Its scope is always all-K.

**Scope.** A tree whose leaves are all excluded or classified certifies: *every* MUB triple (I, H, K) with H in B is
excluded or classified. A tree with an ordering-discharged pattern certifies this only for triples whose H-transition
has the least Γ_F of the triple's three transitions (`check` reports `scope: minimum-transition`). Such a ball counts
through one lemma.

> **Lemma (minimum transition).** Let every ball's certificate classify every triple (I, H, K) with H in the ball
> whose H-transition has the least Γ_F of its three transitions (ties included). Then every triple is classified.
>
> *Proof.* Γ_F is invariant under equivalence. Any triple can be reordered and renormalised so that its transition
> of least Γ_F is the one from the first basis to the second. That transition's H lies in some ball of the atlas.

The comparison in every ordering discharge is strict, and every one uses the same invariant Γ_F, as the lemma needs
(`handoffs/ret_TC_ordering_result/TC_ordering_result/ORDERING_THEOREM.md` §3). The Fourier-neighbourhood theorem is
not used: a gamma witness counts only on the ordering bound.

**Dependencies outside the certificate.**

- The atlas covers every Hadamard class (the original seed atlas, pinned by SHA-256 in `plane_frontier_certificate.PIN`).
- The Stage C and C1 theorems.
- For native leaves: the native certifier's recognition argument (above), independently reviewed
  (`NATIVE_REVIEW.md`).

## Running it

The pinned checker tree is this repository at commit `914919b` (PR #4):

    git worktree add pr4 914919b
    pip install python-flint==0.9.0 numpy scipy

Check a certificate. It returns 0 and prints `"verdict": "CLOSED"` when every node verifies:

    python TripleClassification/code/onetree.py check pr4 BALL CERT_DIR --workers 64

Produce one. This is resumable: an interrupted run continues from its journal.

    python TripleClassification/code/onetree.py close pr4 BALL CERT_DIR --max-level 6 --workers 64

`close` first tries the native certifier on the whole ball: a ball it closes gets a one-leaf certificate. Otherwise
`close` searches coarse first. `--native-first L` tries the native certifier on every cell at levels ≤ L before any
plane search. On every other cell it tries the gamma witness on every pattern before any column proof
(`fast_search.py --gamma`), then the column, joint, secant and projector witnesses, within a time cap per level. Where
that search meets a persistent pattern (from level 3), it tries the native certifier on the cell. Every candidate is
verified by the same leaf check before it becomes a leaf; anything else is split. `--no-native` gives plane leaves only.

`rusty/onetree_ball.sh BALL` runs `close` and then `check` on one 128-core node of a Slurm cluster.

## Measured

On Rusty (one 128-core node per ball unless stated). **Search** is the core-hours spent proposing (failed searches
included); **check** is the wall time of `onetree.py check` with 128 workers, which re-verifies every node.

| Ball | Atlas type | Verdict | Scope | Leaves (levels) | Proof | Search | Check |
|---:|---|---|---|---:|---:|---:|---:|
| 524 | empty | CLOSED | all | 16 (1) | <0.1 MB | 0.2 h | 97 s* |
| 2731 | empty | CLOSED | all | 46 (1–2) | 0.2 MB | 0.6 h | 97 s* |
| 2770 | empty | CLOSED | all | 136 (1–2) | 0.6 MB | 4.7 h | 102 s* |
| 1428 | tree | CLOSED | all | 242 (1–3) | 0.6 MB | 6.7 h | 36 s |
| 16 | tree | CLOSED | all | 256 (2) | 0.6 MB | 9.3 h | 23 s |
| 1399 | classified | CLOSED | all | 302 (2–3) | 0.7 MB | 10.0 h | 32 s |
| 1901 | tree | CLOSED | all | 389 (2–3) | 2.1 MB | 15.3 h | 127 s* |
| 1664 | classified | CLOSED | minimum-transition | 447 (2–3) | 1.1 MB | 15.8 h | 36 s |
| 2538 | classified | CLOSED | minimum-transition | 1,613 (2–3) | 5.2 MB | 61.5 h | 181 s* |
| 491 | tree | CLOSED | all | 1,734 (2–4) | 5.6 MB | 64.1 h | 187 s* |
| 1797 | empty | CLOSED | minimum-transition | 2,585 (2–8) | 227 MB | — | 453 s |
| 1866 | classified | CLOSED | minimum-transition | 2,617 (2–4) | 120 MB | 107 h | 399 s* |
| 895 | tree | CLOSED | minimum-transition | 4,547 (2–5) | 243 MB | 199 h | 883 s* |
| 1016 | open until 31 Oct (16 nodes) | CLOSED | — | 107,493 | 7.2 GB | 794 h | (running) |

\* measured before the checker loaded the atlas once per node (a fixed ~70 s saving). The rows from 1797 on, and 1016,
used the earlier, heavier column budget (depth 8, 30,000 nodes). The default budget (depth 6, 6,000 nodes) gave as many
leaves with about half the proof size on ball 1016's cells (below). The hardest balls are being re-run with the
default, and the whole atlas is being certified this way; results will be added here.

**Search budget, measured on 40 random cells of ball 1016 per level:**

| Level | depth 8 / 30,000 nodes: proposed, mean proof | depth 6 / 6,000 nodes: proposed, mean proof |
|---|---|---|
| 4 | 37 of 40 (3 time-outs), 213 KB | 40 of 40, 114 KB |
| 5 | 40 of 40, 32 KB | 40 of 40, 19 KB |
| 6 | 40 of 40, 3.3 KB | 40 of 40, 3.3 KB |

A search takes about 100 s per cell at every level (it rebuilds the record, C1, Stage C and the cover). Few cells need
longer, so the default time caps are 150 s at levels 0–2, 450 s at levels 3–4 and 300 s below.

## Tests

`code/test_onetree.py PINNED_ROOT` covers the following:
- a certificate passes;
- a changed proposal, a record for the wrong cell, a renamed leaf, a false `outside` node and an unresolved node are
  each refused;
- an interrupted run resumes;
- a leaf whose files vanished is searched again;
- a run split into parts joins into one certificate;
- a native whole-ball certificate passes (ball 2254), a native leaf the certifier refuses is refused (ball 491), and
  a native leaf below the root passes.

`code/test_ext.py` covers the witnesses, including tampered gamma and secant witnesses, the ordering-only gamma rows and
the rounding in the Γ_F(H) lower bound. `code/test_gamma_exact.py` (python-flint and numpy only) covers the exact
g_cell bound.
