# X-ball all-K work

**The whole X-ball is not yet classified.** Read [REPORT.md](REPORT.md)
for the results and [CORE_LEMMA.md](CORE_LEMMA.md) for the quantitative
crossing theorem still needed. The full original radius 0.13 run closes
12 of 16 patterns; the radius-0.0325 core closes 14 of 16. The two core
exceptions are crossing patterns.

All sixteen children of shell cell `[3,2,3,4,5]` are certified, closing
that entire positive-volume region. The combined cover has 735 shell
leaves: 17 closed, six tested but unresolved, and 712 untested. The
core remains unresolved. See the [combined receipt](results/whole_xball_accounting.json).

This directory leaves the frozen native seed certifier and its receipts
unchanged. It supplies the original edge model, checks the Stage C
arithmetic preconditions, and uses a coupled contractor that retains all
22 edge normal coordinates (or 36 local Taylor-error coordinates).
The exact dyadic cover and whole-domain accounting never promote a
partial shell run to a classification of the original ball.

## Install and bounded local replay

Run from the repository or extracted package root. Python 3.13.16 is
the tested runtime; package versions are pinned. SymPy is needed by the
inherited edge graph code and the separate exact centre calculation.

```sh
python3 -m venv .venv-tc-xball
.venv-tc-xball/bin/pip install -r proof/theorems/TC_triple_classification/xball/requirements.txt
.venv-tc-xball/bin/python proof/theorems/TC_triple_classification/xball/test_xball.py
```

Whole original ball (expected exit 2, four unresolved patterns):

```sh
.venv-tc-xball/bin/python proof/theorems/TC_triple_classification/xball/run_xball.py \
  --output xball-whole.json
```

Core subset only (expected exit 2, two unresolved patterns):

```sh
.venv-tc-xball/bin/python proof/theorems/TC_triple_classification/xball/run_xball.py \
  --core-power 2 --output xball-core.json
```

A finer cell certified empty, at the unchanged original source radius:

```sh
.venv-tc-xball/bin/python proof/theorems/TC_triple_classification/xball/run_xball.py \
  --cell 4 2 5 9 10 --output xball-fine-cell.json
```

The cell `[m,i0,i1,i2,i3]` means the product of intervals
`r[-1+2ij/2^m, -1+2(ij+1)/2^m]` in the original w coordinates,
intersected with the original ball. A cell run does not claim to cover
the original ball by itself.

The recorded eight-cell shell pilot is reproduced with:

```sh
.venv-tc-xball/bin/python proof/theorems/TC_triple_classification/xball/run_shells.py \
  --workers 4 --core-receipt xball-core.json --output xball-shell-pilot.json \
  --cell-ids 2:0:0:0:0 2:0:1:1:1 2:0:1:2:2 2:1:0:1:2 \
             2:1:1:0:2 2:1:1:2:0 3:2:3:4:5 4:6:7:7:7
```

This writes the full exact cover, per-cell JSONL, source manifest, and
overall accounting. `--resume` retains completed rows, including
unresolved rows, and rejects changed source bindings. Fresh attempts
after a method change require a new output path. `--limit N` can bound
the number of newly scheduled cells; missing cells remain untested.

The sixteen-child refinement pilot and exact centre algebra are separate
controllers with their own source hashes plus the base acceptance binding:

```sh
.venv-tc-xball/bin/python proof/theorems/TC_triple_classification/xball/experiments/refine_parent.py \
  --parent 3 2 3 4 5 --workers 2 --output xball-refined-parent.json
.venv-tc-xball/bin/python proof/theorems/TC_triple_classification/xball/experiments/exact_centres.py \
  --output xball-exact-centres.json
```

The exact centre calculation proves no positive neighborhood radius.
`diagnose_centres.py` is explicitly numerical and is not used by the
acceptance pipeline.

The saved coarse pilot and all sixteen child receipts can be combined
without repeating their numerical calculations:

```sh
.venv-tc-xball/bin/python proof/theorems/TC_triple_classification/xball/experiments/combine_receipts.py \
  --results proof/theorems/TC_triple_classification/xball/results \
  --output xball-accounting-replay.json
```

This rechecks the exact cover, source bindings, input hashes, child
partition, and complete pattern accounting. Its expected exit code is 2
because the original ball is still unresolved. The output records every
untested cell explicitly. The four separate fine probes are not inserted
into this partition or counted as closure of any larger parent.

## Larger shell replay

The full shell queue is a heavy run intended for Rusty after the local
pilots have been assessed. The user handles login. No remote job has been
submitted by this work. From an extracted package root on Rusty:

```sh
.venv-tc-xball/bin/python proof/theorems/TC_triple_classification/xball/run_shells.py \
  --workers 8 --core-receipt xball-core.json --output xball-all-shells.json
```

This default cover has 720 shell leaves and 16 leaves wholly in the core.
An unresolved core keeps the whole-ball verdict unresolved even if all
shell leaves close. Coarse shell failures require subdivision or stronger
bounds. The scripts enforce at most eight worker processes and one
numerical-library thread per worker. Prefer the bounded pilot commands
for local development.

## Proof and evidence

[PROOF.md](PROOF.md) states the conditional theorem and subdomain bounds.
The primary current receipts have `_final` in their names; the report
identifies these explicitly. Earlier unsuffixed and `_v2` files are
development history with their own bindings. Matching receipts and source
manifests must stay together. The original native binding remains
`aaab342ca5aca367c5ae9c13500d7dfcf3a6fe13233cfdda1f8c7fec6bf7ecc7`.
