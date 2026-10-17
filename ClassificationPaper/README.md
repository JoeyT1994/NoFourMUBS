# Classification input

`HadamardClassification.pdf` is the current complete paper.  The `source/`
directory contains the corresponding main text, Supplemental Material,
bibliography, and figures.

**The MUB proof does not use this classification.** It uses the corner reconstruction and the
critical-strip proofs (`MinimalConstruction/`), proved without it (`PROOF.md`, Step 2). An earlier
version of the proof used the paper's exact-reach statement; see the history in `PROOF.md`.

The paper's Lean development is at
[mateocardeneswuttig/all_hadamard_matrices_in_dimension_six](https://github.com/mateocardeneswuttig/all_hadamard_matrices_in_dimension_six);
the proof's Lean build imports a few of its leaf modules at commit `57b0302` (`lean/README.md`, Dependencies).

This classification organizes all possible transition matrices.  It does
not itself exclude a fourth mutually unbiased basis.
