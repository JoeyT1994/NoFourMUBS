# mub-triple-certifier

Certificates for the classification of triples of mutually unbiased bases (MUBs) in ℂ⁶, one seed ball at a time,
and a verifier that checks them from their files alone.

    pip install ./TripleClassification/certifier
    python -m certifier verify b2254/                 # one ball: prints CLOSED and the scope, exit code 0
    python -m certifier verify-all MANIFEST           # every ball of the atlas

## The theorem, and what this package proves

**Theorem (classification).** Up to equivalence (unitaries, column monomials and permutations of the three bases),
every triple of MUBs in ℂ⁶ is a triple of the continuous two-parameter family or the isolated Fourier triple.

Up to equivalence a triple is (I, H/√6, K/√6), with H, K and H\*K/√6 complex Hadamard matrices. The seed atlas covers
every Hadamard class except Tao's matrix S₆ by 2,775 seed balls and one ball at F₆. Every triple has a transition H
in one of these pieces, so the theorem follows from:

- **(A)** for every seed ball B and every H in B, every third basis K completing (I, H/√6) gives a triple of known
  type, or there is none;
- **(B)** the same on the ball at F₆;
- **(C)** S₆ has no third basis.

**A certificate this package verifies proves (A) for its ball**, or, when its scope is minimum-transition, the
restricted form of (A) that the minimum-transition lemma (below) turns into the theorem. One certificate per seed
ball proves (A). (B) and (C) are proved elsewhere in the repository (`TripleClassification/README.md`).

## What a certificate proves

A seed ball B is the closed set of Hadamard matrices H = exp(iQ), Q = Q₀ + U w + ½ H₂(w ⊗ w) + X ξ, ‖w‖ ≤ r,
‖ξ‖ ≤ τ, given by its record in the pinned atlas. Its certificate is a dyadic tree over the chart box r·[−1, 1]⁴
(`tree.json`) and the files of its leaves (`leaves.tar`). Every node is one of:

| Node | What `verify` checks | Module |
|---|---|---|
| 16 children | they are the node's 16 dyadic sub-cubes, in order | `certificate.py` |
| outside | the closed cube misses the closed unit ball of the chart: exact rational arithmetic | `cells.py` |
| native leaf | the frozen native certifier closes the cell: every completing K is excluded or recognised as known; and Stage C's input preconditions hold | `native_leaf.py` |
| plane leaf | every pattern of the cell's complete cover of third-basis columns has a witness | `plane_leaf.py`, `witnesses/` |

**Native leaf.** The native whole-ball certifier (`family_neighbourhoods/run.py`, source binding `aaab342c…`)
certifies C1 and the normal form of a ball record, rebuilds the complete cover of the possible columns of K, and
resolves every pattern (six mutually orthogonal colours): it is excluded, or an exact order-three action and a
contraction q < 1 force a balanced order-three symmetry, which identifies the triple as a known one. At level 0 the
record is the atlas ball itself, and the call is exactly the audited one; 2,372 of the 2,775 certificates are this
single leaf. Below level 0 it is the cell's own record (`<cell>.input.json.gz`).

**Plane leaf.** From the cell's record alone the verifier rebuilds C1, the H normal form, Stage C's preconditions and
the complete cover; it replays every column proof the witnesses use into tubes, and then checks one witness per
pattern:

| Witness | It proves | Module |
|---|---|---|
| pair | two columns' tubes are never orthogonal, so the pattern holds no basis | `witnesses/columns.py` (PR #4) |
| joint | no tuple of the columns' tubes survives the joint exclusion, or the survivors are the known family | `witnesses/joint.py` (PR #4) |
| secant | a moving-frame secant bound with a strictly positive transverse margin: no unbiased column | `witnesses/secant.py` |
| gamma | an upper bound on Γ_F over the pattern strictly below the cell's lower bound g_cell on Γ_F(H) | `witnesses/gamma.py` |

**Leaves below the whole ball** need two more facts, both checked: the cell record's H ball contains the whole
closed cell (`cells.contains`, Arb), and the record's analytic branch is the atlas ball's (the overlap witness,
`overlap.py`): a single Arb inequality at a common seed point,
‖X_p⁺(Π p_c(w_c) + 2π h(N) − p_p(w_p))‖ + ‖X_p⁺ Π X_c‖ τ_c < τ_p, which by the uniqueness of the branch in its tube
identifies the two branches on the common domain.

**Arithmetic.** Every acceptance decision is an Arb (python-flint ball arithmetic) inequality or an exact rational
or integer comparison. Floating point only proposes what to check (centres, alignments, preconditioners), so a poor
proposal can make a check fail but never pass. The tree, the outside test and the gamma comparison with g_cell are
exact; g_cell itself is a minimum over 14,400 labelled alignments computed in exact integers (`gamma_exact.py`).

**Scope.** A certificate whose leaves are all excluded or classified proves (A) for B: scope **all**. A gamma witness
proves only that the pattern holds no triple whose H-transition has the least Γ_F of the triple's three
transitions; a certificate with one has scope **minimum-transition**, and counts through:

> **Lemma (minimum transition).** If every ball's certificate classifies every triple (I, H, K) with H in the ball
> whose H-transition has the least Γ_F of its three transitions (ties included), then every triple is classified.
>
> *Proof.* Γ_F is invariant under equivalence. Any triple can be reordered and renormalised so that its transition
> of least Γ_F is the one from the first basis to the second, and that transition's H lies in some ball.

Every ordering comparison is strict and uses the one invariant Γ_F (`gamma_test.py`, pinned). The
Fourier-neighbourhood bound (Γ_F ≤ 19/50) is not used.

## What the proof depends on, outside the certificates

1. **The atlas covers** every Hadamard class except S₆ (the original seed atlas, SHA-256 `33ad9798…`, vendored and
   checked; its proof is in `PhaseCover/` and `PROOF.md` of the repository).
2. **C1 and Stage C** (`proof/atlas/STAGEC.md`, `RIGOUR.md`, vendored): the normal form of a ball record and the
   error budget of the column cover, under input hypotheses that the verifier checks for every record it uses.
3. **The native certifier's recognition argument** (`seed_method/reference/r0153/CHECKPOINT.md` §8, vendored;
   `family_neighbourhoods/PROOF.md` §6 for the symmetry bound), reviewed independently on 1 November 2026
   (`TripleClassification/NATIVE_REVIEW.md`: sound for a record's own branch; F2 and F3 are presentation).
4. **The overlap lemma** of that review (finding F1), which carries a cell record's certificate to the atlas ball;
   the centre forms used for cells of levels 1–2 are our sharpening of it (justified in `overlap.py`).
5. **The minimum-transition lemma** above, for the balls with minimum-transition scope.
6. **(B) and (C)**, and the joint witness's known-family recognition (PR #4's `plane_joint_certificate`).

## Verifying

Requirements: Python ≥ 3.11 and the pinned python-flint 0.9.0, numpy 2.2.6 and scipy 1.17.0 (`pyproject.toml`).
Nothing else: the frozen code the checks build on is vendored (below), and no repository checkout is needed.

    python -m venv venv && venv/bin/pip install ./TripleClassification/certifier
    venv/bin/python -m certifier verify CERT [--ball N] [--workers 8] [--json REPORT.json]

CERT is a certificate directory (`tree.json` with `leaves.tar`, or with an unpacked `leaves/`) or one `.tar` file
holding `tree.json` and `leaves/`. The verifier prints the verdict (CLOSED, CELL CLOSED for a certificate of one
cell, or OPEN with the refused nodes) and the scope, and exits 0 only when every node verifies. Nodes are checked
independently, in parallel; nothing is cached and nothing from the search is trusted.

**The whole atlas.** A manifest lists one certificate per ball, `BALL PATH` per line (paths relative to the manifest;
`python -m certifier manifest DIR` writes one for a directory of `b<BALL>/` certificates).

    python -m certifier verify-all MANIFEST [--results R.jsonl] [--shard I/N] [--workers 128]

Each verified ball appends one line to the results file (default `MANIFEST.results.jsonl`, shared safely by
concurrent shards). A ball already CLOSED there, with the same certificate digest and checker, is skipped, so runs
resume. The final summary covers the whole atlas, and the exit code is 0 only when all 2,775 balls are CLOSED. On a
Slurm cluster, one array task per shard:

    #SBATCH --array=0-31 --cpus-per-task=128
    python -m certifier verify-all MANIFEST --shard $SLURM_ARRAY_TASK_ID/32 --workers 128 --results results.jsonl

## Producing certificates

    python -m certifier close BALL OUT [--max-level 7] [--native-first 0] [--workers 8]

`close` writes `OUT/b<BALL>/` (`tree.json`, `leaves.tar`, `journal.jsonl`, `summary.json`). It tries the native
certifier on the whole ball first, then searches coarse first: a cell that misses the ball is outside; otherwise a
plane proposal (gamma witness first, then column proofs with pair and joint witnesses, then the secant witness),
within a time cap per level, is kept if the leaf check accepts it; from level 3, a cell whose search fails tries the
native certifier; anything else is split. `--native-first L` tries the native certifier first at every level ≤ L. An
interrupted run resumes from its journal. `--cell L:c0,c1,c2,c3` closes one cell. The search has no proof role.

## Code

    certifier/
      __main__.py          the command line
      verify.py            one certificate (parallel over nodes); the atlas from a manifest
      certificate.py       reading tree.json and the leaf files (packed, unpacked, one tar)
      cells.py             dyadic cells, the outside test, cell records and their containment
      overlap.py           the overlap witness: a cell record's branch is the atlas ball's
      native_leaf.py       native leaves
      plane_leaf.py        plane leaves: the rebuilt cover, the column replays, one witness per pattern
      witnesses/           columns (pair), joint, secant, gamma
      gamma_exact.py       the exact lower bound of Γ_F behind g_cell
      pinned.py            loads the vendored code after checking its SHA-256 manifest
      search/              close (close.py: the tree search; plane.py: plane proposals)
      _pinned/             vendored, byte-identical (below)
    tests/                 pytest
    tools/                 provenance and equivalence checks against the repository

**Vendored code.** `certifier/_pinned/` holds 40 files of this repository at commit `914919b`, byte-identical and at
their repository paths: PR #4's plane checker (`TripleClassification/code/plane_*.py` with
`anchored_column_certificate.py`, `gamma_test.py`, `nothird.py`, `stagec_guard.py`), the frozen native certifier
(`proof/theorems/TC_triple_classification/family_neighbourhoods/`) with the seed-atlas code it imports, the documents
its source binding hashes, and the 17 MB atlas. The paths are kept because the native certifier's binding hashes its
sources by path. `pinned.py` checks every file against `MANIFEST.sha256` at import, and refuses to load otherwise.
`tools/check_vendored.py` compares every file with the commit, `gamma_exact.py` with the approved file, and every
function this package took unchanged from the approved one-tree checker (`overlap.py`, `witnesses/gamma.py`,
`witnesses/secant.py`, `search/plane.py`) with the original, by syntax tree.

**Relation to `TripleClassification/code/onetree.py`.** This package replaces `onetree.py check` and `close` with the
same acceptance, the same certificate format and the same search (on five test cells its `close` writes byte-identical
records and proposals). Two witnesses of the one-tree checker are not accepted, because no certificate uses them
(witness census, `DISSEMINATION_NOTES.md`): the projector witness and PR #4's one-column witness.
`tools/equivalence.py` runs both checkers on the same certificates, genuine and tampered. On seven atlas
certificates (balls 1615, 505, 1097, 1023, 589, 793, 491; 3,120 leaves, both layouts) and eight small certificates
with 52 tampered variants, the two agree on every verdict, scope, count and refused node, with one exception: `onetree.py`
(64588c3f…) refuses its own packed certificates whose tree is one native leaf at the root (it looks for an input file
such a leaf does not have); this package accepts them.

## Measured

On a laptop (Apple M-series, 18 cores, at most 8 used). Real certificates of the atlas, as produced on the cluster,
with 7 workers; `onetree.py check` takes the same time on each (within 2%):

| Ball | Leaves (levels) | Outside | Verdict, scope | Verify |
|---:|---|---:|---|---:|
| 2254 | 1 native leaf (the whole ball) | 0 | CLOSED, all | 15 s (1 core) |
| 1615 | 136 plane (1–2) | 0 | CLOSED, all | 57 s |
| 505 | 215 plane (1–3) | 71 | CLOSED, all | 54 s |
| 1097 | 256 plane (2) | 0 | CLOSED, minimum-transition | 65 s |
| 1023 | 256 plane (2) | 0 | CLOSED, minimum-transition | 64 s |
| 589 | 256 plane (2), joint-known witnesses | 0 | CLOSED, minimum-transition | 98 s |
| 793 | 267 plane (2–3), joint-known witnesses | 4 | CLOSED, minimum-transition | 101 s |
| 491 | 1,734 plane (2–4) | 1,177 | CLOSED, minimum-transition | 366 s |

A one-native-leaf certificate (2,372 of the 2,775 balls) is checked by re-running the native certifier on the ball
(15 s for ball 2254 on one core). A plane leaf takes 1–60 s on one core, depending on its patterns. Checking every leaf of the
atlas's certificates as of 1 November (1,038,098 plane leaves, before the native-first re-certification of the tree
balls) was measured at about 4,600 core-hours (`DISSEMINATION_NOTES.md` §3), dominated by the five largest
certificates (balls 768, 815, 825, 1016, 905); `verify-all` splits it across nodes with `--shard`.

The test cells (`tests/data/certificates`), one core each:

| Cell | Witnesses | Verdict, scope | Verify |
|---|---|---|---:|
| ball 194, level 4, (3, 13, 5, 3) | secant | CELL CLOSED, all | 2.5 s |
| ball 825, level 5, (10, 15, 16, 8) | 512 gamma | CELL CLOSED, minimum-transition | 2.9 s |
| ball 825, level 6, (3, 22, 27, 42) | pair, secant | CELL CLOSED, all | 19 s |
| ball 363, level 4, (5, 10, 6, 0) | pair, joint | CELL CLOSED, all | 36 s |
| ball 793, level 2, (2, 0, 0, 1) | joint-known | CELL CLOSED (classified), all | 14 s |

## Tests

    pip install './TripleClassification/certifier[test]'
    cd TripleClassification/certifier && python -m pytest

They cover: close then verify; the three certificate layouts; refusal of a changed proposal, a record of another
cell, a renamed leaf, a false outside node, an open node, missing files and an incomplete partition; resuming an
interrupted close (including a cut leaves.tar); native leaves at and below the root, and a native leaf the certifier
refuses; verify-all; the vendored manifest (a changed file is refused at import); every witness kind on real cells
(pair, joint, joint-known, secant, gamma), each refused when changed; the refused projector and one-column witnesses; the overlap witness (cells of ball 905, a corner cell of ball 550, a record of another ball);
the exact Γ_F bound against all 14,400 alignments in Arb.
