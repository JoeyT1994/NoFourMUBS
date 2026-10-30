# Graph exclusion: one pattern, the whole H cell

The fourth rule by which the tree auditor may close a cell the certifier left open. The theorem and checker are the
collaborator's (`GRAPH_REPORT.md`, with detailed proofs in `graph_proofs/`; code in `code/hardball/`, byte-exact).
Labels: **PROVED**, **INHERITED** (from the certifier's review), **CHECKED** (by the auditor).

## The statement

For a sub-ball record and one pattern of the certifier's complete cover, **INHERITED**:
- H's enclosure Q = Q₀ + U·w + ½H₂(w⊗w) + X·ξ over the whole sub-ball;
- for each column, a phase ball ‖V_k − v0_k‖ ≤ pr_k, in the mean-zero gauge, containing that column of every third
  basis in the pattern. This needs the Stage C preconditions.

**Theorem (PROVED, collaborator).** If `hardball/certify_graph.py` returns `PROVED_PATTERN_EXCLUSION` on that pattern's
snapshot, no third basis lies in the pattern for any H in the sub-ball. The checker:
- covers each selected column's ball exhaustively, through two-dimensional fibres after a uniform contraction of
  three strong directions, or a five-dimensional cover. Every residual test keeps the shared four-dimensional w;
- stops a branch only when every possible zero in it lies in a capture cap;
- shows in Arb that every choice of caps has a pair of columns with normalized overlap bounded away from zero.

Numerical searches only propose cap centres, rotations and preconditioners. r, τ and the column radii are never
reduced.

## Producing the inputs: `code/graph_run.py`

As `code/anchored_run.py` does, the runner repeats the certifier's normal form, cover and pattern contraction for each
record, with the same calls as `run.run_ball`, and writes each listed pattern's snapshot. It then:
1. runs `certify_graph.certify` with its own numerical proposals;
2. if that fails, runs `adaptive_capture.py` for at most 180 s, and replays the final proposals with
   `certify_graph.certify`, which is the authoritative check.

Each receipt carries:
- the checker's output, including the snapshot and record hashes and the SHA-256 of every checker module;
- the sub-atlas hash, sub-ball, pattern, pattern colours and pattern count;
- the runner's hash.

## What the auditor checks (`--gamma-rules ...,graph`)

An open pattern is discharged by a graph receipt only when all of the following hold (**CHECKED**):
- schema `tc-hardballs-graph-certificate-v1` and status `PROVED_PATTERN_EXCLUSION`;
- the pinned runner hash, and the pinned `certify_graph.py` hash;
- every module the receipt names has its hash in the pinned checker directory;
- the same sub-atlas, sub-ball and record as the row;
- the row's pattern count, and the row's colours for that pattern number;
- a minimum normalized overlap that reads back positive in Arb.

As for every rule, the cell's record must also pass Stage C.

## Points for the reviewer

1. The collaborator's theorems: the fibre reduction, the cap-capture cover and the graph argument
   (`graph_proofs/`).
2. **Binding.** Pattern count and colours do not by themselves bind the phase balls; the collaborator stresses this
   (`graph_proofs/INTEGRATION.md`). The runner rebuilds them with the frozen certifier's own calls, and each receipt
   records the snapshot hash. A full re-derivation would rerun the runner on a cell and compare that hash.
3. That the snapshot's Arb strings enclose the certifier's model and column bounds (Arb's `str` guarantee).
