# TC: a seed-ball classification method, local patches, and Tao

**CERTIFIED: the entire original seed ball 1879, radius 0.063, is
classified, including every completing third basis.** Its centre, four
coordinates and full radius are unchanged. The
[whole-ball transfer proof](seed_method/TRANSFER_R0153.md) puts its entire
Hadamard image within 0.120873737696 radians of an exact equivalent
anchor, inside the supplied all-K theorem's radius 0.153. Both the local
theorem and native C1 were replayed. The
[receipt](seed_method/results/seed1879_r0153_transfer.json) binds the inputs
and records the strict Arb inclusion.

**Earlier result: a smaller four-coordinate seed ball is classified,
including every possible third basis.** See [seed_method/README.md](seed_method/README.md).
The certified ball has radius 0.00625 in seed 1879's original w frame,
centred at an exact construction point and entirely contained in its
original radius-0.063 ball. Its 120 column branches form ten possible
third bases; all ten are proved to have continuous-construction type.

**The global classification conjecture remains NOT ESTABLISHED.** Other
centres and the X-ball need their own inclusions or classification theorems.

| Claim | Status | Checked domain |
|---|---|---|
| Every triple over the original ball 1879 has Conjecture 1 type | **PROVED / CERTIFIED** | Original `||w|| <= 0.063`, original centre and Mth; all K covered |
| Every triple over a four-dimensional seed ball has continuous-construction type | **PROVED / CERTIFIED** | `||w-w_*|| <= 1/160`, inside native ball 1879; all K covered |
| The tensor-product triple is locally unique | **PROVED / CERTIFIED** | All 55 gauged phases within 1/8192 radians of the exact anchor |
| A two-circulant anchor has only continuous-construction neighbours | **PROVED / CERTIFIED** | All 55 gauged phases within 2^-20 radians of the exact anchor |
| Tao cannot extend to a MUB triple | **PROVED / CERTIFIED** | Complete five-phase torus; all-Arb bin and edge decisions, exact clique search |
| Every seed cell and the entire X-ball are classified | **NOT ESTABLISHED** | Missing complete column/clique covers and known-family patch coverage |
| Rusty summaries imply a completed triple neighbourhood | **NOT ESTABLISHED** | Frozen partial snapshot only; no census data in that snapshot |
| A counterexample exists | **NOT ESTABLISHED** | None certified |

Read [PROOF.md](PROOF.md) for the statements, proofs, explicit analytic
constants, sufficient cell certificate contract, and remaining obligations.
The two older full-triple patches control **both H and K**; by themselves
they do not classify every third basis over a seed cell. The new seed-ball
receipts include every K on their respective domains. The isolated full triple has a
rank-55 Jacobian, whereas the continuous anchor has rank 53. A common
Fourier edge does not identify these full triples.

## Replay

From the repository root, using Python with `python-flint==0.9.0` and
`sympy==1.14.0`:

```sh
python proof/theorems/TC_triple_classification/replay.py --output proof/theorems/TC_triple_classification/results/local_receipt.json
python proof/theorems/TC_triple_classification/tao.py --output proof/theorems/TC_triple_classification/results/tao_receipt.json
python -m unittest discover -s proof/theorems/TC_triple_classification -p 'test_tc.py' -v
python proof/theorems/TC_triple_classification/cells.py proof/seed_atlas/results/seed_atlas_certificate.json.gz proof/theorems/TC_triple_classification/reference/nothird_snapshot.jsonl --output proof/theorems/TC_triple_classification/results/input_audit.json
python proof/seed_atlas/cert/check_binding.py
```

The new original-ball replay is documented in
[TRANSFER_R0153.md](seed_method/TRANSFER_R0153.md), including the supplied
Stage C error-enclosure argument and exact symmetry recognition on which
it depends. The commands below this README's Replay heading concern the
earlier local patches and Tao.

The local patches replay in about one second; the full Tao torus cover
is the longer check. No floating-point comparison authorizes a result.
The Jacobian row proposals are frozen as integer lists; replay verifies
them independently using interval inverses and contraction bounds.
The exact anchors supply existence, rather than small residuals.

`run_rusty.sh` runs the patch replays, Tao cover and negative tests on one
CPU with 4 GB requested memory. Submit it only inside the dedicated
`/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/` directory.

## Contents

- `local.py`: analytic 96-by-55 Jacobian and certified transverse uniqueness.
- `replay.py`: exact anchors, explicit continuous-family existence, patch replays.
- `tao.py`: complete interval exclusion with no dependency on float Stage C.
- `cells.py`: exact dyadic cell geometry and a deliberately unresolved global ledger.
- `test_tc.py`: independent symbolic directional derivative checks, graph and
  enclosure tests, and rejection tests for singular/oversized/invalid inputs.
- `seed_method/`: the whole-seed-ball method, complete all-column cover,
  ten clique classifications, five additional tests, and precise domain.
- `results/`: source-bound local receipts, Tao receipt, and atlas accounting.
- `reference/`: the requested brief and a frozen snapshot of 28 research rows
  from replacement Rusty job 7346699, with per-file hashes and provenance.

The existing all-caps atlas hash and its 26-source Arb receipt binding
were checked successfully. The full atlas computation was not rerun.
No theorem in the existing no-four-MUB proof is changed by this return.

**CERTIFIED replay:** Rusty job 7346823 completed successfully in 76 seconds
(95,564 K maximum resident memory reported for its batch step). It ran both
certifiers and all nine tests. The local and Rusty JSON receipts are
identical, including source hashes. This is the same checker on two
platforms, not an independent implementation. The scheduler receipt,
package versions and full log are retained in `results/rusty*`.
