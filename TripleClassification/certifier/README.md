# Certifier for the classification of MUB triples in ℂ⁶

For one ball of Hadamard matrices, this certifier proves that every third basis K completing {I₆, H/√6}, for every H
in the ball, gives a triple of known type, or that no such K exists. It writes a certificate that anyone can check from
its files alone. Run on each of the atlas's 2,775 seed balls, it proves statement (A) of [`../README.md`](../README.md).

## Running it

From a clone of this repository:

    pip install -r TripleClassification/certifier/requirements.txt
    python3 TripleClassification/certifier/certify.py close BALL OUT --workers 8      # search: writes OUT/b<BALL>/
    python3 TripleClassification/certifier/certify.py verify OUT/b<BALL>              # check: CLOSED or OPEN
    python3 TripleClassification/certifier/certify.py verify-all MANIFEST             # every ball a manifest lists

`BALL` is a seed ball's atlas index (0–2774), or a JSON file holding any ball's record in the atlas format.
- `verify` exits 0 only if every node checks, and otherwise lists the nodes it refused. It trusts nothing from the
  search.
- `close` and `verify-all` resume where they stopped. `verify-all` can be split across nodes with `--shard I/N`.
- The certificates of the whole atlas are published with the release
  [`tc-verification-2026-11-04`](https://github.com/JoeyT1994/NoFourMUBS/releases/tag/tc-verification-2026-11-04),
  and [`../../VERIFY.md`](../../VERIFY.md) explains how to check them.

## How long it takes

Measured on the atlas on 3 November 2026, on 128-core cluster nodes:

| Ball | Certificate | Search | Check |
|---|---|---|---|
| Closed whole by the whole-ball certifier (2,373 balls) | `tree.json` only | about a minute on one core | median 19 s on one core |
| Refined into cells (402 balls) | median 2.5 MB, largest 205 MB | median 1 core-hour, largest 405 | median 0.9 core-hours, largest 46 (median wall time 87 s on one node, since a small ball keeps only part of its 128 cores busy) |
| All 2,775 balls | 3.3 GB | about 2,000 core-hours | about 900 core-hours, under five hours on sixteen nodes |

A laptop checks a typical refined ball in a few minutes (`verify --workers 8`).

[`tools/fp_audit.py`](tools/fp_audit.py) runs `verify-all` with every floating-point exception raised. Run it on
OpenBLAS, since Apple Accelerate raises spurious flags inside matrix products.

## What a certificate proves

A certificate is a dyadic tree over the ball's coordinates. Each node is one of four kinds.
- **Children**: the 16 half-size cells of the node.
- **Outside**: the cell misses the ball, which is checked in exact rational arithmetic.
- **Native leaf**: the original whole-ball certifier excludes or classifies every K over the cell.
- **Normal-form leaf**: the Normal-form localisation test, followed by the Symmetry test, excludes or classifies every K over the cell, one pattern
  at a time, and the leaf stores the exact data that replay each pattern's proof. In four balls, a pattern it cannot
  resolve may instead carry an ordering witness ([`certifier/ordering.py`](certifier/ordering.py)). Those balls then
  classify the triples whose first transition has the least Γ_F, and `verify` reports this as their scope.

Below the whole ball, each leaf must also pass two checks. Its record must contain its cell, checked in Arb, and must
lie on the ball's own analytic branch, checked by the overlap witness. Every record must also satisfy the input
conditions of the graph-search tests. Every acceptance is an exact or Arb comparison, except a few floating-point
comparisons in the graph-search tests, which carry proved error margins
([`../../QuartetExclusion/ROUNDING.md`](../../QuartetExclusion/ROUNDING.md)). Floating point otherwise only proposes.

## How the search works

`close` first tries the whole-ball certifier, and most balls close there as a single node. Otherwise it tries the
Normal-form localisation test on the 16 cells of the first level, then on the children of any cell where it fails,
and so on. On a cell of level two or three where this test fails, the whole-ball certifier is also tried (for up to
120 s) before the cell is split. The search spends at most 60 s on each pattern, and the first pattern it leaves open
ends the attempt on that cell. One pool of workers serves every cell.

The certifier relies on the atlas cover, the enclosure of H over each ball and the graph-search tests, the whole-ball
certifier's recognition argument with the overlap lemma ([`../proofs/NATIVE_REVIEW.md`](../proofs/NATIVE_REVIEW.md)),
and the Normal-form localisation test ([`../proofs/normal_form/`](../proofs/normal_form/PROOFS.md)). All of these are described in
[`../README.md`](../README.md).

## The code

    certify.py              the entry point
    certifier/
      search/close.py       the search: the tree, one worker pool, time caps
      search/normal_form.py the normal-form search on one cell
      verify.py             check one certificate, or the whole atlas from a manifest
      certificate.py        the file format
      cells.py              dyadic cells, the outside test, cell records and their containment
      overlap.py            checks that a cell record lies on the ball's branch
      native_leaf.py        native leaves
      normal_form_leaf.py   normal-form leaves
      ordering.py           the Ordering test, used in four balls
      pinned.py             the earlier code these build on, checked against PINNED.sha256 on import:
      normal_form/            the reviewed and repaired normal-form witness, unchanged
      pr4/                    cell records, the containment proof, the outside test and the input checks
                              The native certifier and the atlas are read from ../../proof/ at their own paths.
    tools/fp_audit.py       verify-all with every floating-point exception raised
    tests/                  python3 -m pytest, run from this folder: close and verify, tampered certificates, the
                            overlap witness and the pinned manifest (55 tests, about 11 minutes on a laptop)
