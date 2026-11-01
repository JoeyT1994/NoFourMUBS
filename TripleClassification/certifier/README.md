# mub-triple-certifier

Certificates for the classification of triples of mutually unbiased bases (MUBs) in ℂ⁶, one seed ball at a time,
and a verifier that checks them from their files alone.

    git clone https://github.com/JoeyT1994/NoFourMUBS && cd NoFourMUBS
    pip install -e TripleClassification/certifier
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
(`tree.json`) and one file per leaf, `<cell>.json.gz`, in `leaves.tar` (format: `certificate.py`). Every node is
one of:

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
single leaf, and the certificate is `tree.json` alone. Below level 0 it is the cell's own record (its leaf file).

**Plane leaf.** Its file holds the cell's record, one witness per pattern, and the depth of the column proofs:
nothing the verifier can recompute. From the record alone the verifier rebuilds C1, the H normal form, Stage C's preconditions and the complete cover. It rebuilds every column
proof the pair and joint witnesses use (`column_proofs.py`: the deterministic column search at that depth) and
replays it with PR #4's `verify_tree`, which re-checks every leaf slab in Arb and gives the column's tubes, exactly as
a stored proof tree was replayed; the trees themselves are not stored. Then it checks one witness per pattern:

| Witness | It proves | Module |
|---|---|---|
| pair | two columns' tubes are never orthogonal, so the pattern holds no basis | `witnesses/pair.py` (PR #4) |
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
exact; g_cell itself is a minimum over 14,400 labelled alignments computed in exact integers (`TripleClassification/code/gamma_exact.py`).

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

1. **The atlas covers** every Hadamard class except S₆ (the original seed atlas, SHA-256 `33ad9798…`, pinned and
   checked; its proof is in `PhaseCover/` and `PROOF.md` of the repository).
2. **C1 and Stage C** (`proof/atlas/STAGEC.md`, `RIGOUR.md`, pinned): the normal form of a ball record and the
   error budget of the column cover, under input hypotheses that the verifier checks for every record it uses.
3. **The native certifier's recognition argument** (`seed_method/reference/r0153/CHECKPOINT.md` §8, pinned;
   `family_neighbourhoods/PROOF.md` §6 for the symmetry bound), reviewed independently on 1 November 2026
   (`TripleClassification/NATIVE_REVIEW.md`: sound for a record's own branch; F2 and F3 are presentation).
4. **The overlap lemma** of that review (finding F1), which carries a cell record's certificate to the atlas ball;
   the centre forms used for cells of levels 1–2 are our sharpening of it (justified in `overlap.py`).
5. **The minimum-transition lemma** above, for the balls with minimum-transition scope.
6. **(B) and (C)**, and the joint witness's known-family recognition (PR #4's `plane_joint_certificate`).

## Verifying

Requirements: a clone of this repository, Python ≥ 3.11, and the pinned python-flint 0.9.0, numpy 2.2.6 and scipy
1.17.0 (`pyproject.toml`). The frozen code the checks build on is read from the clone at its own paths (below).

    python -m venv venv && venv/bin/pip install -e TripleClassification/certifier
    venv/bin/python -m certifier verify CERT [--ball N] [--workers 8] [--json REPORT.json]

CERT is a certificate directory (`tree.json` with `leaves.tar`, or with an unpacked `leaves/`) or one `.tar` file
holding them. The verifier prints the verdict (CLOSED, CELL CLOSED for a certificate of one
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

**Certificates of `onetree.py`.** The cluster runs wrote the full format of `onetree.py` (schema `onetree-v1`), in
which every plane leaf also stores the proof trees of its columns, 93% of the bytes. `verify` reads only this
package's format; `convert` writes it from the full format, verifies the result, and keeps it only if it verifies
(otherwise it prints the refused nodes and writes nothing):

    python -m certifier convert FULL_CERT NEW_CERT [--workers 8]

## Producing certificates

    python -m certifier close BALL OUT [--max-level 7] [--native-first 0] [--workers 8]

`close` writes `OUT/b<BALL>/` (`tree.json`, `leaves.tar`, `journal.jsonl`, `summary.json`) in this format. It tries the native
certifier on the whole ball first, then searches coarse first: a cell that misses the ball is outside; otherwise a
plane proposal (gamma witness first, then column proofs with pair and joint witnesses, then the secant witness),
within a time cap per level, is kept if the leaf check accepts it; from level 3, a cell whose search fails tries the
native certifier; anything else is split. `--native-first L` tries the native certifier first at every level ≤ L. An
interrupted run resumes from its journal. `--cell L:c0,c1,c2,c3` closes one cell. The search has no proof role.

## Code

    certifier/
      __main__.py          the command line
      verify.py            one certificate (parallel over nodes); the atlas from a manifest
      certificate.py       the format: reading it (packed, unpacked, one tar), writing it, converting the full format
      column_proofs.py     column proofs rebuilt from the record (prove_column) and replayed (pinned verify_tree)
      cells.py             dyadic cells, the outside test, cell records and their containment
      overlap.py           the overlap witness: a cell record's branch is the atlas ball's
      native_leaf.py       native leaves
      plane_leaf.py        plane leaves: the rebuilt cover, the column replays, one witness per pattern
      witnesses/           pair, joint, secant, gamma
      pinned.py            loads the pinned code from the repository after checking its SHA-256 manifest
      PINNED.sha256        that manifest: 40 files of commit 914919b
      pr4/                 the five PR #4 files main does not have, byte-identical (below)
      search/              close (close.py: the tree search; plane.py: plane proposals)
    tests/                 pytest
    tools/                 provenance and equivalence checks against the repository

**Pinned code.** The checks build on 40 files of this repository at commit `914919b` (PR #4), listed with their
SHA-256 in `certifier/PINNED.sha256`: PR #4's plane checker (`TripleClassification/code/plane_*.py` with
`anchored_column_certificate.py`, `gamma_test.py`, `nothird.py`, `stagec_guard.py`), the frozen native certifier
(`proof/theorems/TC_triple_classification/family_neighbourhoods/`) with the seed-atlas code it imports, the documents
its source binding hashes, and the atlas. They are read from the repository at their own paths (the native
certifier's binding hashes its sources by path), from the clone this package lies in, or from `--root` /
`MUB_CERTIFIER_ROOT`. The one exception is the five `plane_*_certificate.py` files, which PR #4 added and main does
not have: they are kept, byte-identical, in `certifier/pr4/`. One later file of the one-tree checker,
`TripleClassification/code/gamma_exact.py` (the exact Γ_F bound), is read at its approved hash. `pinned.py` checks
every file at import, checks the native binding id, and refuses to load on any mismatch, or when a module loaded from
a pinned directory is not a pinned file. `tools/check_vendored.py` compares every pinned file with the commit,
`gamma_exact.py` with the approved revision, and every function this package took unchanged from the approved
one-tree checker (`overlap.py`, `witnesses/gamma.py`, `witnesses/secant.py`, `column_proofs.py`, `search/plane.py`)
with the original,
by syntax tree.

**Relation to `TripleClassification/code/onetree.py`.** This package replaces `onetree.py check` and `close` with the
same acceptance and the same search (on five test cells its `close` wrote the same records and witnesses, byte for
byte). It differs in two ways. Its format stores no column proof trees (above). And it does not accept the projector
witness or PR #4's one-column witness, which no certificate uses (witness census, `DISSEMINATION_NOTES.md`).
`tools/equivalence.py` runs `onetree.py check` on full-format certificates and `convert` (which verifies) on the same
ones, genuine and tampered. They agree on every verdict, scope, count and refused node: on seven atlas certificates
(balls 1615, 505, 1097, 1023, 589, 793, 491; 3,120 plane leaves; packed and unpacked) and on six small certificates
with 44 tampered variants (each witness kind, the record and proposal bindings, the tree, missing files).

## Measured

On a laptop (Apple M-series, at most 8 cores used). **Size**: the full format of `onetree.py` against this format,
as uncompressed tars of gzipped leaf files. **Verify**: `onetree.py check` on the full format against `verify` on
this format (which rebuilds the column proofs), same workers.

| Certificate | Plane leaves | Column proofs | Size, full → this | Ratio | Verify, full → this | Ratio |
|---|---:|---:|---:|---:|---:|---:|
| ball 825, level-6 cell (3, 22, 27, 42): pair, secant | 1 | 5 | 573 KB → 10 KB | 56 | 19 → 45 s (1 core) | 2.4 |
| ball 363, level-4 cell (5, 10, 6, 0): pair, joint | 1 | 10 | 1,075 KB → 51 KB | 21 | 36 → 105 s (1 core) | 2.9 |
| ball 793, level-2 cell (2, 0, 0, 1): joint-known | 1 | 48 | 31 KB → 10 KB | 3.0 | 14 → 16 s (1 core) | 1.1 |
| ball 491, level-4 cell (12, 5, 12, 12): no pattern | 1 | 0 | 10 KB → 10 KB | 1.0 | 2 → 2 s (1 core) | 1.0 |
| ball 1615 | 136 | 0 | 563 KB → 420 KB | 1.3 | 49 → 50 s (7 workers) | 1.0 |
| ball 505 (71 outside) | 215 | 0 | 891 KB → 666 KB | 1.3 | 52 → 51 s | 1.0 |
| ball 1097 | 256 | 0 | 1,055 KB → 788 KB | 1.3 | 70 → 73 s | 1.0 |
| ball 1023 | 256 | 0 | 1,055 KB → 788 KB | 1.3 | 68 → 71 s | 1.0 |
| ball 589 | 256 | 102 | 1,137 KB → 799 KB | 1.4 | 118 → 117 s | 1.0 |
| ball 793 (4 outside) | 267 | 300 | 1,219 KB → 840 KB | 1.5 | 106 → 113 s | 1.1 |
| ball 491 (1,177 outside) | 1,734 | 10 | 8,346 KB → 5,335 KB | 1.6 | 350 → 349 s | 1.0 |
| ball 2254: one native leaf | 0 | 0 | — (`tree.json` only) | | 15 s (1 core) | |

The gain is where the column proofs are. The leaves of the atlas balls above carry few of them and are mostly cell
records (about 2.3 KB each); there the format saves a quarter to a third and costs nothing. The hard balls' leaves
carry most of the column proofs: atlas-wide, of the 75.9 GB of certificates as of 1 November, the proof trees were
68.4 GB and the other column data 4.5 GB, against 2.4 GB of records and 0.8 GB of witnesses (`DISSEMINATION_NOTES.md`
§3). This format keeps the records and witnesses, plus about 1 KB per leaf of tar headers: a few GB for the atlas.
There, verifying costs about 2.5 times as much (the column proofs are rebuilt, then replayed), as on the two cells
above and in the notes' sample of 120 leaves from the eight largest certificates.

A one-native-leaf certificate (2,372 of the 2,775 balls) is checked by re-running the native certifier on the ball
(15 s for ball 2254 on one core). `verify-all` splits the atlas across nodes with `--shard`.

## Tests

    pip install -e 'TripleClassification/certifier[test]'
    cd TripleClassification/certifier && python -m pytest

They cover: close then verify; the three certificate layouts; refusal of a record that does not match its hash, a
record of another cell, a renamed leaf, a false outside node, an open node, missing files and an incomplete partition; resuming an
interrupted close (including a cut leaves.tar); native leaves at and below the root, and native leaves the certifier
refuses, at and below the root; verify-all; the pinned files (a changed file, a changed manifest, or an extra native
source is refused at import); every witness kind on real cells (pair, joint, joint-known, secant, gamma), each refused
when changed, and refused at another column-proof depth; the refused projector and one-column witnesses; convert
(verdicts kept; a changed witness or a proposal of another record converts to nothing; no overwrite; verify refuses
the full format); the overlap witness (cells of ball 905, a corner cell
of ball 550, a record of another ball); the exact Γ_F bound against all 14,400 alignments in Arb.
