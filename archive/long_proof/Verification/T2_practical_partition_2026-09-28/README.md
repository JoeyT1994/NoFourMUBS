# Completed uniform Fourier-family tube certificate

**PASS:** every quartet edge has d_Four>1/16384, including both family
orientations and all allowed equivalences. See the
[proof](../../ProvenResults/FourierNeighbourhood/PracticalTube/PROOF.md).

- `summary.json`: completed exhaustive search, 294 closed leaves covering
  all 270 parent cells; 2,178,035 candidate C six-cliques excluded.
- `final_audit.json`: independent re-parsing of all retained leaf records,
  source hashes, checkpoint provenance, log hashes and exact coverage.
- `audit.txt`: exact affine-phase equivalences, interval endpoints,
  refinements and transpose/arithmetic constants.
- `positive_controls.txt`: 408 exact feasible controls across all three
  parameter grids, compiled with undefined-behavior checks.
- `grid_*.txt` and accompanying JSON files: each completed job and its hash.
- `imported_coarse.txt`, `import.json`, `import_history/`: the 238 recovered
  completed coarse cells, with original source/table hashes and checkpoint
  history. The default verifier replays all cells afresh; importing a
  checkpoint is explicit.
- `refined.cpp`, `refined_720.cpp`: generated variants of the unchanged
  canonical search, changing only the three parameter-grid denominators.

Some extra partial logs are from searches superseded by smaller closed
boxes. They are not included in the 294 required leaves. A nonzero exit
from cancelling such a job is not a mathematical rejection or proof.
The unrefined exploratory logs in `../T2_practical_tube_2026-09-28/` are
not an additional complete certificate.

The segment elapsed time in `summary.json` covers only the final resumed
run, not the earlier work recovered from checkpoints. This receipt proves
the matrix tube; it does not prove positive-width seed lifting or T1′.
