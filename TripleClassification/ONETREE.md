# One tree per ball: a standalone certifier for the seed balls

`code/onetree.py` certifies one seed ball of the atlas at a time. It searches for a proof (`close`), or verifies a
proof someone else produced (`check`). A certificate is one directory: a dyadic tree over the ball's chart plus one
small proof file pair per leaf. Checking it needs no caches, manifests, earlier audits or job history. Every node is
verified independently, in parallel, from the files themselves.

## What a certificate proves

The ball B is the closed set of Hadamard matrices H = exp(iQ) with Q = Q0 + U w + ½ H2(w ⊗ w) + X ξ, ‖w‖ ≤ r, ‖ξ‖ ≤ τ
(the atlas record). Its chart box r·[−1, 1]⁴ is split dyadically. `tree.json` assigns each node one of three things.

- **16 children.**
- **`outside`.** The closed dyadic cube misses the closed ball. This is checked in exact rational arithmetic
  (`plane_tree_certificate.misses_ball`).
- **A leaf.** The leaf is `leaves/<level>_<cell>.input.json.gz`, the cell's H record, together with
  `.proposal.json.gz`, its whole-cell proof. The checker requires three things:
  - the record names this ball, level and cell;
  - the record's H ball contains the entire closed cell (`cell_geometry`, Arb);
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
| gamma | Γ_F(K) or Γ_F(L) ≤ 19/50 (classified, Fourier-neighbourhood theorem), or below the cell's certified lower bound of Γ_F(H) (ordering discharge) | `ext_cell_certificate.py`, `gamma_test.py` |

**Scope.** A tree whose leaves are all excluded or classified certifies: *every* MUB triple (I, H, K) with H in B is
excluded or classified. A tree with an ordering-discharged pattern certifies this only for triples whose H-transition
has the least Γ_F of the triple's three transitions (`check` reports `scope: minimum-transition`). Such a ball counts
in a global classification only through the minimum-transition reduction
(`handoffs/ret_TC_ordering_result/TC_ordering_result/ORDERING_THEOREM.md` §3). The reduction is valid when every
ordering discharge uses the same invariant Γ_F and a strict comparison, as here.

**Dependencies outside the certificate.**

- The atlas covers every Hadamard class (the original seed atlas, pinned by SHA-256 in `plane_frontier_certificate.PIN`).
- The Stage C and C1 theorems.
- For Fourier-classified gamma rows: the Fourier-neighbourhood theorem and its hypotheses
  (`handoffs/ret_TC_questions_3_4_results/.../REPORT.md` §7).

## Running it

The pinned checker tree is this repository at commit `914919b` (PR #4):

    git worktree add pr4 914919b
    pip install python-flint==0.9.0 numpy scipy

Check a certificate. It returns 0 and prints `"verdict": "CLOSED"` when every node verifies:

    python TripleClassification/code/onetree.py check pr4 BALL CERT_DIR --workers 64

Produce one. This is resumable: an interrupted run continues from its journal.

    python TripleClassification/code/onetree.py close pr4 BALL CERT_DIR --max-level 6 --workers 64

`close` searches coarse first. It tries the gamma witness on every pattern before any column proof
(`fast_search.py --gamma`), then the column, joint, secant and projector witnesses within a time cap per level. Any
proposal is verified by the same leaf check before it becomes a leaf; anything else is split.

`rusty/onetree_ball.sh BALL` runs `close` and then `check` on one 128-core node of a Slurm cluster.

## Measured

*(filled in from the validation runs)*

## Tests

`code/test_onetree.py PINNED_ROOT` covers the following:
- a certificate passes;
- a changed proposal, a record for the wrong cell, a renamed leaf, a false `outside` node and an unresolved node are
  each refused;
- an interrupted run resumes;
- a leaf whose files vanished is searched again.

`code/test_ext.py` covers the witnesses, including tampered gamma and secant witnesses, the gamma scope labels and
the rounding in the Γ_F(H) lower bound.
