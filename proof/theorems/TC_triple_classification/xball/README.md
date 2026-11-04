# X-ball all-K work

**The whole original X-ball remains NOT ESTABLISHED.** The complete core at
r/128 is now **CERTIFIED** (16/16 patterns), using the separately bound
quantitative crossing extension. All six previously unresolved shell parent
regions are closed. Read [REPORT.md](REPORT.md) for the full current status
and [CORE_LEMMA.md](CORE_LEMMA.md) for the new statement, proof and review
boundary.

The initial full-radius campaign cover has 2,406 shell leaves: 501 closed,
121 cheap-screen failures to classify fully, and 1,784 untested. Its 16 core
leaves lie inside the certified r/128 core. The original radius, coordinates,
and Mth frame are unchanged. Exact subdivision and final accounting must
close every remaining shell before claiming the whole original ball.

**All further numerical replay belongs on Rusty.** Job 7354920 is running
under `/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/xball/release_20261028/`.
It uses eight single-threaded workers and a restartable, source-bound journal.
No certification workers remain on the laptop. The 28 October commands in
[REPORT.md](REPORT.md#replay-commands) reproduce the extension and full-domain
accounting. After this job finishes or stops, its scheduler script can resume
the saved campaign without discarding completed cells. Do not submit two
writers to the same output.

The commands below also document earlier baseline experiments. Their
r/4 core remains unresolved by the older single-anchor method; the current
positive core theorem is the separate r/128 extension.

This directory leaves the frozen native seed certifier and its receipts
unchanged. It supplies the original edge model, checks the Stage C
arithmetic preconditions, and uses a coupled contractor that retains all
22 edge normal coordinates (or 36 local Taylor-error coordinates).
The exact dyadic cover and whole-domain accounting never promote a
partial shell run to a classification of the original ball.

## Install and baseline replay on Rusty

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

## Full-radius remote campaign

From the remote release root:

```sh
X=proof/theorems/TC_triple_classification/xball
sbatch "$X/experiments/run_campaign.sbatch"
```

The script first runs the five new campaign tests and seven existing X-ball
tests. It then starts or resumes the source-bound full cover. Inspect the
Slurm log and `results/rusty_campaign_20261028.json`; the latter explicitly
lists all untested and unresolved leaves. `*.state.json` atomically stores
that same summary with the exact current cover and rows. `*.events.jsonl`
is the durable hash-linked journal used for recovery. Resource or depth
limits leave NOT ESTABLISHED, never implicit success.

## Proof and evidence

[PROOF.md](PROOF.md) states the conditional theorem and subdomain bounds.
The `_final` receipts document the frozen baseline. Current extension
evidence is `crossing_radius_20261028_v3.json`, `core7_complete_20261028.json`,
and the adaptive/screen/campaign receipts identified in the report. Earlier
versions are development history with their own bindings. Matching receipts and source
manifests must stay together. The original native binding remains
`aaab342ca5aca367c5ae9c13500d7dfcf3a6fe13233cfdda1f8c7fec6bf7ecc7`.
