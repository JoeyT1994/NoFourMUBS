# Minimal reconstruction

> **Status (17 Oct 2026).** The current proof ([`PROOF.md`](../PROOF.md), Step 2) uses this reconstruction **without** the
> classification [CT]: matched existence and uniqueness (Theorems 2.2–2.3; sides by return J, flatness by return E), the
> nonmatched converse (Theorem 2.4, return G) and strict-corner coverage (Theorem 2.5, proved in `Proofs/` with the
> nonzero-J strips by return K). The statements MC1–MC5 below, proved relative to [CT], are the earlier route and are kept
> as a record.

**[One-page construction (PDF)](Hadamard6_Positive_Sheet.pdf)** · [LaTeX](Hadamard6_Positive_Sheet.tex) · [Full definitions](RECONSTRUCTION.md) · [Statements MC1–MC5](ASSUMPTIONS.md)

Four unit phases a, b, c, d with R > 0 determine an order-6 complex Hadamard matrix by the positive-sheet construction. The steps are:
1. Form the corner E = [[1,1,1],[1,a,b],[1,c,d]] and its Gram invariants.
2. Compute the side scalars z± = (χ ± i√R)/2g.
3. Apply the side constructor for the blocks B and C.
4. Set D = −CWB/g.

Every non-F6, non-Tao equivalence class is reached this way. The construction is a surjection, not an injective parametrisation. F6 denotes the single Fourier matrix, not its two-parameter family.

## Proofs

The five statements the reduction needs are proved in [`Proofs/`](Proofs/README.md), relative to named results of the [classification paper](../ClassificationPaper/README.md).

| | Statement |
|---|---|
| **MC1** | Every non-F6 Hadamard matrix has a corner with R > 0 |
| **MC2** | At a strict corner, the side fibre has exactly two orbits |
| **MC3** | The side formulas are well defined on R > 0 |
| **MC4** | Both matched completions are flat. The non-matched exceptions are exactly the Tao cases |
| **MC5** | Positive-sheet coverage holds in the form used by Step 2 of [the proof](../PROOF.md) |

`python3 Proofs/verify_dossier.py` replays the local checks.

MC4's matched half (both matched completions are flat) and the side fibre's existence part now also have proofs that do not use the classification, by exact certificates: `../proof/coverage/returns/E_matched_flatness/` and `../proof/coverage/returns/J_side_existence/` (earlier: `F_side_existence/`).

## Executable formulas

- [Implementation/model.py](Implementation/model.py) evaluates the PDF construction.
- [Implementation/single_radical.py](Implementation/single_radical.py) gives the equivalent measurement equations, with one shared sheet scalar. Derivations: [measurement coordinates](Measurements/MeasurementCoordinates.md) and [single radical](Measurements/SingleRadicalMeasurements.md).
