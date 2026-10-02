# Sheet exchange by complex conjugation

The separate [side branch lemma (T4)](BRANCH_LEMMA.md) now proves that
regular δ-sign and cube-root changes act by permutations, including at
dF = 0. Its exact verifier is [verify_branch_lemma.py](verify_branch_lemma.py).

## Statement

For every strict seed `(a,b,c,d)` (`R>0`) and every allowed root choice,

    H_-(ā,b̄,c̄,d̄) = P · conj(H_+(a,b,c,d)) · P'

where `P` and `P'` permute only the last three rows and columns, respectively.
For the principal root choices, `P=P'=diag(I_3,J)`, where `J` swaps Fourier
indices 1 and 2. The same holds with the sheets exchanged.

**Consequence.** Complex conjugation preserves orthogonality and every
absolute overlap. It therefore maps 4+1 configurations and MUB quartets over
`H` to the same over `conj(H)`, and permutations preserve the extension
question ([RECONSTRUCTION.md](../../MinimalConstruction/RECONSTRUCTION.md),
"Use for the no-four-MUB problem"). Hence: *if a seed region `X` is closed
under conjugation, excluding the positive sheet over `X` excludes both sheets
over `X`.* A general seed box `X` transfers the negative sheet over `X` to
the positive sheet over `X̄`. The strict `a=−1` section is conjugation-closed.
`d_F` of [FourierNeighbourhood](../FourierNeighbourhood/README.md) is also
conjugation-invariant.

This does **not** say that the two sheets at the *same* seeds are equivalent.

## Status

**Proved** ([CONJUGATION.md](CONJUGATION.md)). The argument is a direct
calculation on the explicit formulas of RECONSTRUCTION.md §§1–3.

## Dependencies

The identity uses only the explicit side and completion formulas, not the
coverage theorems. Using it to conclude an exclusion for *all classes* still
depends on the positive-sheet coverage input in
[ASSUMPTIONS.md](../../MinimalConstruction/ASSUMPTIONS.md).
MinimalConstruction is not modified.

## Provenance

The source is the section "Global exclusion needs only one sheet" of
`KarlssonAndMeasurements/SeedBoxCertificates/METHOD.md`, 22-September
snapshot. `verify.py` is new at import.

## Verification

`verify.py` runs two checks:

- an exact SymPy check that seed conjugation conjugates `G_h` and leaves
  `g,η,χ,R` unchanged, so that `z_-(s̄)=conj(z_+(s))`;
- a 60-digit regression with the unchanged `MinimalConstruction/Implementation/model.py`,
  over 12 random strict seed tuples in both directions. The identity with
  `diag(I_3,J)` holds to below `1e-59`. All nine cube-root branch choices
  match up to permutations of the last three rows and columns.

    python3 verify.py      # about 2 s
