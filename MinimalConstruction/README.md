# Canonical reconstruction

[One-page PDF](Hadamard6_Positive_Sheet.pdf) · [LaTeX](Hadamard6_Positive_Sheet.tex)
· [Full definitions](RECONSTRUCTION.md) · [Accepted inputs](ASSUMPTIONS.md)

Four unit phases a,b,c,d and R>0 define the positive-sheet construction.
Under the explicitly accepted external coverage, exhaustion and sheet-reversal
theorems, it covers every non-F6, non-Tao class up to equivalence. It is a
surjection, not an injective parametrization. F6 denotes the individual
Fourier matrix, not its entire two-parameter family.

The existing PDF, TeX, mathematical definitions and assumptions are unchanged.
Navigation links and this index were updated.
The classification paper does not certify the later accepted reconstruction
inputs; their distinct status is intentional.

## Executable formulas and measurement equations

- [Implementation/model.py](Implementation/model.py) evaluates the PDF construction.
- [Implementation/single_radical.py](Implementation/single_radical.py) gives the
  equivalent measurement equations using one shared sheet scalar.
- [Measurement-coordinate derivation](Measurements/MeasurementCoordinates.md).
- [Single-radical derivation](Measurements/SingleRadicalMeasurements.md).

These are two implementations of the same carrier construction, not competing
Hadamard parametrizations. The measurement equations retain ray variables.
One positive sheet suffices for global class coverage; both signs can matter
when keeping a prescribed seed frame.

Run all retained verification checks with python3 ../verify.py from this folder,
or python3 verify.py from the project root.
