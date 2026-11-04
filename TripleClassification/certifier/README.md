# Certifier for the classification of MUB triples in ℂ⁶

For one ball of Hadamard matrices, this certifier proves that every third basis K completing (I, H/√6), for every H
in the ball, gives a triple of known type, or that there is none. It writes a certificate that anyone can check from
its files alone. Run on each of the atlas's 2,775 seed balls, it proves statement (A) of [`../README.md`](../README.md).

## Run

From a clone of this repository:

    pip install -r TripleClassification/certifier/requirements.txt
    python3 TripleClassification/certifier/certify.py close BALL OUT --workers 8      # search: writes OUT/b<BALL>/
    python3 TripleClassification/certifier/certify.py verify OUT/b<BALL>              # check: CLOSED or OPEN
    python3 TripleClassification/certifier/certify.py verify-all MANIFEST             # every ball a manifest lists

`BALL` is a seed ball's atlas index (0–2774), or a JSON file holding any ball's record in the atlas format. `verify`
exits 0 only if every node checks, and otherwise lists the refused nodes. It trusts nothing from the search. `close`
and `verify-all` resume where they stopped, and `verify-all` can be split across nodes (`--shard I/N`). The atlas's certificates are release
[`tc-certificates-2026-11-03`](https://github.com/JoeyT1994/NoFourMUBS/releases/tag/tc-certificates-2026-11-03).

## Speed

Measured on the atlas (3 November 2026; the cluster has 128-core nodes):

| What | Certificate | Search | Check |
|---|---|---|---|
| A ball closed whole by the native certifier (2,373 balls) | `tree.json` only | about a minute on one core | median 19 s on one core |
| A tree ball (402 balls) | median 2.5 MB, largest 205 MB | median 1 core-hour, largest 405 | median 0.9 core-hours (87 s on one node), largest 46 |
| All 2,775 balls | 3.3 GB | about 2,000 core-hours | about 900 core-hours: under five hours on sixteen nodes |

A laptop checks a typical tree ball in a few minutes (`verify --workers 8`).

## What a certificate proves

A certificate is a dyadic tree over the ball's chart. Each node is one of the following:
- **Children:** its 16 sub-cubes.
- **Outside:** the cube misses the ball, checked in exact rational arithmetic.
- **Native leaf:** the frozen native certifier excludes or recognises every K over the cell.
- **Normal-form leaf:** the cubic normal-form witness excludes or recognises every K over the cell, pattern by
  pattern; the leaf stores the exact data that replay each pattern's proof. With `close --ordering` (used for four
  balls only), a pattern it cannot resolve may instead carry an ordering witness (`ordering.py`), and the ball then has
  minimum-transition scope; `verify` reports the scope.

Below the whole ball, two more checks apply to a leaf: its record contains the cell (Arb), and its analytic branch
is the ball's (the overlap witness). Stage C's input preconditions are checked for every record. Every acceptance is
an Arb or exact comparison, or a binary64 test of Stage C with the proved rounding margins of
[`RIGOUR.md`](../../proof/atlas/RIGOUR.md); elsewhere floating point only proposes.

**The search.** `close` tries the native certifier on the whole ball (most balls close here, as one node). Otherwise
it tries the normal-form witness on the 16 cells of level 1, then on the children of any cell it fails on, and so on;
on a level-2 or level-3 cell where it fails, the native certifier is tried too (120 s) before the cell is split. It
searches each pattern for at most 60 s, and the first pattern left open ends the attempt on that cell. One pool of workers serves every cell.

**It relies on** the atlas cover, C1 and Stage C, the native certifier's recognition argument with the overlap lemma
(reviewed: [`../proofs/NATIVE_REVIEW.md`](../proofs/NATIVE_REVIEW.md)), and the normal-form witness (reviewed and
repaired: [`../proofs/normal_form/`](../proofs/normal_form/PROOFS.md)). See [`../README.md`](../README.md).

## Code

    certify.py              the entry point
    certifier/
      search/close.py       the search: the tree, one worker pool, time caps
      search/normal_form.py the normal-form search on one cell
      verify.py             check one certificate, or the atlas from a manifest
      certificate.py        the file format
      cells.py              dyadic cells, the outside test, cell records and their containment
      overlap.py            a cell record's branch is the ball's
      native_leaf.py        native leaves
      normal_form_leaf.py   normal-form leaves
      ordering.py           the ordering witness (Gamma_F), for the four minimum-transition balls
      pinned.py             the frozen code these build on, checked against PINNED.sha256 and REVIEWED on import:
      normal_form/            the normal-form witness, the reviewed repaired code, byte-identical
      pr4/                    cell records, containment proof, outside test and Stage C guard (tag tc-checker-914919b; named after the pull request that introduced them)
                              (the native certifier and the atlas are read from ../../proof/ at their own paths)
    tests/                  python3 -m pytest (run from this folder): close and verify, tampered certificates, the
                            overlap witness, the pinned manifest (55 tests, about 11 minutes on a laptop)
