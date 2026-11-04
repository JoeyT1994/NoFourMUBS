# Square-sum identities for three complete rows: status (22 Oct 2026)

**No square-sum identity is used any more.** The classification of three complete rows with R = 0 at every corner
(part of the proof of SM Proposition S.5, `CoverageStrip*` in the code) is proved in both cases, J = 0 and J ≠ 0, from unsquared corner
labels.

- **The case J = 0**: two weighted sums over the nine mixed corners (`PRM/CoverageMixed*.lean`,
  `PRM/CoverageZeroJProduct.lean`, generator `lean/generators/zeroj_product/generate.py`, and the proof in
  [`MinimalReconstruction/returns/O_zeroj_unsquared`](../../../MinimalReconstruction/returns/O_zeroj_unsquared/)),
  `NoFourMUBs.PRM.Coverage.zeroJProduct : ZeroJProduct`.
- **The case J ≠ 0**: two signed corner sums (`PRM/CoverageSigned*.lean`, generator
  `lean/generators/strip/signed.py`, and the proof in
  [`MinimalReconstruction/returns/K_nonzero_J/INTEGRATED.md`](../../../MinimalReconstruction/returns/K_nonzero_J/INTEGRATED.md)).

Removed on 22 Oct 2026 (in git history before that date):
- the square-sum identity for J = 0, `zeroJAlgebra`
  (`CoverageStripIdZero`, `…ZeroDefs`, `…ZeroData` (216 KB of generated data), `…ZeroCheckM`, `…ZeroCheckS`),
  `ZeroJSquareSum`, `ZeroJAlgebra` and the reductions `zeroJ_direct`, `zeroJ_via_perm`, `zeroJSquareSum_of_algebra`,
- the square sum `stripSq` over the three complete rows, its 817-term corner-square expansion and 66-monomial moment
  polynomial (`CoverageStripMomentData`, `stripSq_eq_momentPoly`, `stripSq_alg`, `momentPolyQ`, `momentPoly_scale`),
- the generators of this directory (`gen_zero.py`, `gen_checks.py`, `common.py`, `gen_qf.py`, `qf_template.lean`) and
  `generators/strip/moments.py`.

Removed on 17 Oct 2026: the nonzero-`J` square-sum identity `nonzeroJAlgebra`, its
28 `CoverageStripIdNonzero*` modules (7.5 MB of generated data), `CoverageStripIdStage`, `CoverageStripIdFast`, the
quartic `Q(k, K)` and its Bernstein/Sturm sign certificate and their generators.

## Shared machinery still used (hand-written)
- `CoverageStripHalfDefs`: `HalfData`, the Newton formulas `HalfData.mom`, the 24 moments `usedMoments` (the 21 of
  the mixed sums for J = 0, among them the first-order half moments, and three more of the weighted sum for J ≠ 0),
  the formal half data `fData`.
- `CoverageStripNewton` (`newton`), `CoverageStripLambda` (`halfDataOf_eq_lamData`, `lamData_eq_fData`),
  `CoverageStripAlgebra` (`block_moment`): the half moments of a critical half as rational functions of its overlap
  data.
- `CoverageStripIdFormal` (`fData_mom_scale`): row scaling, the gauge `s = t = 1` (`gauge_zero` for the case J = 0,
  `halves_scaled_w` for the case J ≠ 0).
- `CoverageStripIdQF`, `CoverageStripIdHalf`: the same formulas over the quadratic-extension fractions `QF` of
  `Identity/Frac`, for the kernel checks (`CoverageMixedCheck{G,R}`, `CoverageSignedK*`).
