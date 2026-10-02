# Analytical reductions for the NoFourMUBS campaign

Start with **RESULTS.md**. It gives full proofs, precise scope, and the campaign implications.

**Main results:**

- Global ten-chart block conditioning, valid for every physical order-six Hadamard and including R=0.
- An explicit off-family F6 inverse: M>=4 rho^2 in the full-matrix phase cube rho<=1/40.
- Uniform exclusion of four of the six F6 corner classes as positive-R maximizers in rho<=1/1250; a conditional global two-class endpoint theorem.

**Not a completed no-four-MUB proof.** Numerical global confinement thresholds, seed-cell lifting/side matching, and exhaustive campaign closure remain unproved here.

## Replay

Python 3.10+ and SymPy are required. Run `python verify.py`. It regenerates all certificate matrices and exact bounds from the sine determinant formula; no source archive, network access, floating-point data, or precomputed input file is needed.

The completed replay is saved in `verification_receipt.txt` and `verification_receipt.json`. The full exact matrices and all 400 corner labels are in `certificate.json`.

Full-matrix phase radii must **not** be treated as four-seed radii. The well-conditioned auxiliary chart must **not** silently replace the D0 maximal chart. See RESULTS.md for these and the other quantifier restrictions.
