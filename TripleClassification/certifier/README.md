# Certifier for the classification of MUB triples in ℂ⁶

Every triple of mutually unbiased bases in ℂ⁶ is, up to equivalence, a triple of the two-parameter family or the
isolated Fourier triple. The seed atlas covers the Hadamard matrices by 2,775 balls. Each ball has one certificate
proving that every third basis K over it is excluded or of known type. This folder checks a certificate from its
files alone, and produces new ones.

## Run

From a clone of this repository:

    pip install -r TripleClassification/certifier/requirements.txt
    python3 TripleClassification/certifier/certify.py verify CERT                 # one ball
    python3 TripleClassification/certifier/certify.py verify-all MANIFEST         # the atlas

`CERT` is a certificate directory (`tree.json` and `leaves.tar`) or a single `.tar`. `verify` prints `CLOSED` and
the scope, and exits 0, only if every node checks; otherwise it lists the refused nodes. `verify-all` resumes and
can be split across nodes (`--shard I/N`). `close BALL OUT` searches for a certificate. `convert OLD NEW` rewrites a
certificate written by `onetree.py`, and keeps it only if it verifies.

## Speed

| What | Time |
|---|---:|
| One ball closed by a single native leaf (2,372 of the 2,775 balls) | about 15 s on one core |
| One plane leaf | 2 s to 2 min on one core |
| Ball 491, a tree of 1,734 plane leaves | 6 min on 7 cores (laptop) |
| A typical tree ball on the cluster (median over the atlas) | about 1 min on 128 cores |
| The hardest ball (768) | about 3.5 h on 128 cores |
| The whole atlas | about 4,700 core-hours, i.e. a few hours on 32 nodes of 128 cores |

The atlas figures were measured with `onetree.py check` on the full format, which stores the column proof trees.
This format stores only witnesses and rebuilds those trees. That costs nothing on most balls, and up to 2.5× on the
few whose plane leaves have many column proofs, in return for files 20–60× smaller there.

## What a certificate proves

A certificate is a dyadic tree over the ball's chart. Each node is one of the following:
- **Children:** its 16 sub-cubes.
- **Outside:** the cube misses the ball, checked in exact arithmetic.
- **Native leaf:** the frozen native certifier excludes or recognises every K over the cell.
- **Plane leaf:** one witness for each pattern of the cell's complete cover of third-basis columns:
  - pair: two columns can never be orthogonal;
  - joint: no tuple of tubes survives the joint exclusion;
  - secant: a moving-frame secant bound with a positive margin;
  - gamma: Γ_F of K or L is strictly below the cell's lower bound on Γ_F(H).

Below the whole ball, two more checks apply: the cell's record contains the cell, and its analytic branch is the
ball's (the overlap witness). Every acceptance is an Arb or exact comparison; floating point only proposes.

A ball with a gamma witness is certified for the triples whose H-transition has the least Γ_F of the three
(minimum-transition scope). That is enough, because any triple can be reordered so that its least-Γ_F transition
comes first, and Γ_F is invariant under equivalence.

**It relies on:**
- the atlas cover (`PhaseCover/`);
- C1 and Stage C (`proof/atlas/`);
- the native certifier's recognition argument, independently reviewed (`../NATIVE_REVIEW.md`);
- the overlap lemma of that review;
- the minimum-transition lemma above;
- for the F₆ ball and Tao's matrix, `../README.md`.

## Code

    certify.py            the entry point
    certifier/
      verify.py           check one certificate, or the atlas from a manifest
      certificate.py      the file format
      cells.py            dyadic cells, the outside test, cell records
      overlap.py          a cell record's branch is the ball's
      native_leaf.py      native leaves
      plane_leaf.py       plane leaves; witnesses/ holds pair, joint, secant and gamma
      column_proofs.py    column proofs rebuilt and replayed with PR #4's verify_tree
      pinned.py           the frozen code these checks build on, read from the repository and checked against
                          PINNED.sha256 (40 files of commit 914919b; pr4/ holds the 5 that main lacks)
      search/             close
    tests/                python3 -m pytest (run from this folder)

Tests compare this certifier with `onetree.py check` on seven atlas certificates and 44 tampered ones, and agree on
every verdict.
