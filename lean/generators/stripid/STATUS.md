# Strip square-sum identities (I4): status (22 Oct 2026)

**No square-sum identity is used any more.** Both strata of the critical strip classification I4 are proved from
unsquared corner signatures:

- **zero `J`**: return O's two weighted sums over the nine mixed corners (`PRM/CoverageMixed*.lean`,
  `PRM/CoverageZeroJProduct.lean`, generator `lean/generators/zeroj_product/generate.py`;
  `MinimalReconstruction/returns/O_zeroj_unsquared`), `NoFourMUBs.PRM.Coverage.zeroJProduct : ZeroJProduct`;
- **nonzero `J`**: return K's two signed corner sums (`PRM/CoverageSigned*.lean`, generator
  `lean/generators/strip/signed.py`; `MinimalReconstruction/returns/K_nonzero_J/INTEGRATED.md`).

Removed on 22 Oct 2026 (in git history before that date): the zero-`J` square-sum identity `zeroJAlgebra`
(`CoverageStripIdZero`, `…ZeroDefs`, `…ZeroData` (216 KB of generated data), `…ZeroCheckM`, `…ZeroCheckS`),
`ZeroJSquareSum`, `ZeroJAlgebra` and the reductions `zeroJ_direct`, `zeroJ_via_perm`, `zeroJSquareSum_of_algebra`;
the whole-strip square sum `stripSq`, its 817-term corner-square expansion and 66-monomial moment polynomial
(`CoverageStripMomentData`, `stripSq_eq_momentPoly`, `stripSq_alg`, `momentPolyQ`, `momentPoly_scale`); and the
generators of this directory (`gen_zero.py`, `gen_checks.py`, `common.py`, `gen_qf.py`, `qf_template.lean`) and
`generators/strip/moments.py`.  Removed on 17 Oct 2026: the nonzero-`J` square-sum identity `nonzeroJAlgebra`, its
28 `CoverageStripIdNonzero*` modules (7.5 MB of generated data), `CoverageStripIdStage`, `CoverageStripIdFast`, the
quartic `Q(k, K)` and its Bernstein/Sturm sign certificate and their generators.

## Shared machinery still used (hand-written)
- `CoverageStripHalfDefs`: `HalfData`, the Newton formulas `HalfData.mom`, the 24 moments `usedMoments` (the 21 of
  return O's mixed sums, among them the first-order half moments, and three more of return K's weighted sum), the
  formal half data `fData`.
- `CoverageStripNewton` (`newton`), `CoverageStripLambda` (`halfDataOf_eq_lamData`, `lamData_eq_fData`),
  `CoverageStripAlgebra` (`block_moment`): the half moments of a critical half as rational functions of its Gram
  data.
- `CoverageStripIdFormal` (`fData_mom_scale`): row scaling, the gauge `s = t = 1` (`gauge_zero` for return O,
  `halves_scaled_w` for return K).
- `CoverageStripIdQF`, `CoverageStripIdHalf`: the same formulas over the quadratic-extension fractions `QF` of
  `Identity/Frac`, for the kernel checks (`CoverageMixedCheck{G,R}`, `CoverageSignedK*`).
