# Open patterns of the remaining balls: data (no proof role)

This is everything the certifier, the labelled Fourier score and the anchored-column exclusion (`../ANCHORED_PROOF.md`)
have **not** closed in the open balls, exported from the cluster for work off it. Snapshot of 29 October 2026, about
16:30. The anchored runs were still going, deepest levels first, so shallow levels are partly missing. Ask for a
refresh, or for any other cell or pattern.

## Files

**`open_cells.jsonl.gz`**: one JSON line per sub-ball that still has a pattern open after all three rules:

| Field | Meaning |
|---|---|
| `ball` | the original seed ball (index in `proof/seed_atlas/results/seed_atlas_certificate.json.gz`) |
| `level`, `cell` | the dyadic cell: level L, coordinates c ∈ {0..2^L−1}⁴ in the ball's unit cube (`../TREE_PROOF.md`) |
| `subatlas`, `subatlas_sha256`, `sub` | the cluster sub-atlas file holding the sub-ball record, and its index there |
| `record_sha256` | SHA-256 of the sub-ball record (`json.dumps(record, sort_keys=True)`) |
| `patterns` | the open patterns: `pattern` (the certifier's number), `colours` (six), `radii` (the six column phase radii, rounded to 1e-4), `open` |

`open` is one of:
- `no narrow pair`: fewer than two columns with phase radius below 0.1, so the anchored check was not tried;
- `not established`: two narrow columns exist, but no wide column gave a certificate.

**`summary.json`**: per ball and level, the sub-balls and patterns examined, how many were excluded, how many
sub-balls the exclusions closed, and the open patterns by kind.

**`snapshots/*.json.gz`**: complete `tc-pattern-snapshot-v1` files, one pattern each, named
`b<ball>_l<level>_s<sub>_p<pattern>`. Each holds:
- the sub-ball record and its hash, and the certifier row;
- H's normal-form enclosure: Q0 (36), U (36×4), H2 (36×16), X, r and tau, as Arb `"mid +/- rad"` strings (which
  enclose the true values), with H[a, c] = exp(i·Q[6a + c]);
- per column: v0, T, epsilon, phase_radius and the colour's fine bins;
- a numerical least-squares K*, its residual and singular values.

`snapshot_targets.txt` lists which pattern each new snapshot is. Per open ball, at the deepest level reached:
- the `no narrow pair` pattern whose second-smallest radius is largest (the hardest);
- one `not established` pattern, where there is one.

The five earlier snapshots (`b678_l5_s12319_p0`, `b1217_l5_s4434_p0`, `b1016_l4_s2665_p0`, `b282_l8_s192_p0`,
`b1010_l7_s1078_p0`) are included too.

## Reading a snapshot

```python
import gzip, json
s = json.load(gzip.open('snapshots/b1217_l6_s4759_p0.json.gz', 'rt'))
s['model']['r'], [c['phase_radius'] for c in s['columns']]
```

`../code/anchored_column_certificate.py SNAPSHOT --column C --anchors A1 A2 --out OUT.json` runs the anchored check on
an uncompressed snapshot. Add `--rebuild-model` to re-prove H's normal form from the record; that needs the frozen tree
of `proof/theorems/TC_triple_classification`.

## How these were made

The scripts are `../code/anchored_run.py` (receipts, per ball, on the cluster), `../code/rusty/phantom_export.py`
(this export) and `../code/phantom_snapshot.py` (snapshots).
