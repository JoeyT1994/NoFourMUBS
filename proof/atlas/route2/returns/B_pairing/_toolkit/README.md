# toolkit (floating point, numpy; standalone)

- `hadamards.py`: sources of order-6 Hadamard matrices.
  - `centres()`: the 12,021 atlas Record centres. They cover the non-Tao quotient X at radius 0.04–0.08 rad, so they make a good sample of all of X.
  - `matched(theta)`: the matched completion H₊(θ) of a strict corner (via `model.py`).
  - `fourier(a, b)`: the two-parameter Fourier family.
  - `tao()`: Tao's matrix.
- `unbiased.py`: the vectors unbiased to I and H.
  - `torus_solutions`: the set U(H).
  - `complex_solutions`: the complexified system.
  - `gram`: the inner products.
  - `triple_defect`: equals 0 exactly when H has a third MUB.
- `model.py`: explicit formulas for the matched completion (mpmath).
- `data/record_centres.npz`: the phase matrices (12021×6×6) and Record radii.

Run `python3 unbiased.py` for a demo. Needs numpy and networkx; `matched` also needs mpmath.
