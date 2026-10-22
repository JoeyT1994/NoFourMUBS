# Checks performed during package preparation

## Mathematical review

The elementary side classification, finite cube-root reduction, singular-minor argument, certificate inequalities, completion criterion, dimension split, and trace implication were independently reviewed. Their hypotheses and any conditional integration steps are recorded in `BRIEF.md` and `DEPENDENCIES_AND_STATUS.md`.

## Executed exact arithmetic

The included script uses only Python's standard library and rational arithmetic in `Q(i)` and `Q(√−3)`. It checks:

- The exact Gram matrix of `E₀` and the side Gram equations for `B₀` and its conjugate.
- The six-element column-permutation orbits and their disjointness.
- Exhaustion of the solutions when entries are restricted to fourth roots of unity. The universal unit-circle classification is provided as a proof plan, not inferred from this finite check.
- The `F₃` normalization convention, the four forced-block values, the two failures of flatness, and the two explicit Tao permutations.
- Character normalization equivalences for all 81 cube-root parameter choices.
- The numerical rational constants in the five-frame and four-frame trace identities.

The script fails with an exception if any checked identity is false and emits a JSON report on success. The archived report is `checks/exact_results.json`.

## Not checked by executable proof

No Lean executable or project was available. No statement here was compiled in Lean. No certificate checker was changed or replayed. No universal search over physical seeds, sides, four-frames, or MUB extensions was performed.

In particular, the script does not verify `R`, `Ψ`, their derivatives, the strict domain, its connectedness, full classification, the optional local manifold, or the existence/closedness of the excluded set `W`. It proves no global no-four result.

## Archive integrity

The archive was constructed from the listed files, checked for valid ZIP entries, and checked against `SHA256SUMS`. That validates packaging integrity only.
