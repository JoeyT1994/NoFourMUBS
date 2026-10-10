# Generator for `NoFourMUBs/Step2/BaseAnchor.lean`

1. `h0.py` evaluates the positive matched completion at the base anchor seed `(q², q, q̄², q̄)`,
   `q = (1 + i√15)/4`, with `MinimalConstruction/Implementation/model.py`, identifies every entry in
   `ℚ(i, √3, √5, √7)` (PSLQ), and **verifies exactly in SymPy** that the result is Hadamard, flat, and has
   `2T(B) = −5103/64 + 729√3/64 i`, `2T(C)` its conjugate.  Output: `h0.json`.
2. `gen_h0.py`, `gen_h0b.py`, `gen_h0c.py` emit the Lean lemmas; each identity carries `linear_combination`
   cofactors from reduction modulo `√3² = 3, √5² = 5, √7² = 7, i² = −1`.

The scripts write to a scratch directory (edit `SC`); Lean re-checks every identity, so the generator is not
trusted.
