# Return K in Lean (17 Oct 2026)

**Result.** Return K's proof of the nonzero-J half of `TopStripClassification` is formalised in
`lean/NoFourMUBs/PRM/CoverageSigned*.lean` (9 modules). `NoFourMUBs.Final.no_four_mubs` now uses it. Its
statement is unchanged, and it depends only on `propext`, `Classical.choice` and `Quot.sound`. The
nonzero-J square-sum route is deleted: 28 `CoverageStripIdNonzero*` modules (7.5 MB of source), the quartic
Q(k, K) with its Bernstein/Sturm sign certificate (7 modules and `Identity/RootFree`), and their generators.
The zero-J branch is unchanged.

No step needed mathematics beyond REPORT.md. The return's polynomial identities are re-checked in Lean, not
imported: the big ones by the repository's kernel circuit checker (`Circ.validR`, `QF`), the small ones by
`ring`/`linear_combination`. The return's JSON circuits are not used by Lean. `python3 verify.py` (repository
root) now also replays this return (3–4 s).

## The formalisation, step by step (REPORT.md sections)

| Step | Lean | How it is checked |
|---|---|---|
| D_C = Ψ − Ψ̄ = T̄ − T (T the side signature) as a 48-term Laurent polynomial | `CoverageSignedMoments.cornerD_expand` (`dTerms` in the generated `CoverageSignedData`, `lean/generators/strip/signed.py`) | kernel: `dExpansion_valid` (`Circ.validR`, after clearing (x₀x₁x₂y₀y₁y₂)²) |
| (3) Σ_C D_C = ā b c − a b̄ c̄, (4) the xy-weighted sum; both vanish on an all-critical strip | `signed_zero` (via `ordered_sum`, `sum_terms`, `sum_terms_weight`, `dTerms_eq`, `dTerms_weight_eq`) | `ring` after the orthogonality moments vanish and M(0,0) = 6 |
| cleared λ-identities L_j λ_j = P_j on each half (no division by L_j) and M(1,1) = st − zλ₀, M(2,−1) = s r̄ − z λ̄₁, M(−1,2) = t r − z λ̄₂ | `CoverageSignedBoundary.half_cleared`, `block_cleared` | from `Side.side_identities`, `lam_eq`, `pi_eq`; `field_simp`/`ring` |
| (5) L₊L₋ a = c_k A (one lemma for the three indices) | `paired` | `linear_combination` + `field_simp; ring` |
| (6) Ā B C − A B̄ C̄ = (1 + k²p)(s r t̄ − s̄ r̄ t)(X − Y)(Y − Z)(Z − X) | `universal` | `ring`, independent variables |
| (7) Im(s̄ r̄ t) = 0 or a repeated modulus, poles included | `boundary_alg`, `signed_boundary` | no L ≠ 0 hypothesis |
| (9), (10): the four curves; row relabelling to X = Y or X = 4k²/h² | `CoverageSignedNonzero.repeated_cubic`, `min_cubic`, `curve_of_repeated`, `OnCurveK`, `swap12_data`, `blockL_swap12`, `noPole_via` (swaps 01, 02 from the zero-J branch) | `field_simp; ring` |
| §5 sign table: under all six L ≠ 0 the weighted sum in the gauge s = t = 1 equals 32k²(3k⁴+2k²+3)/h³, −64k²(3k²+1)²/(h⁴(3k²±2k+1)), −64k²(1+k²Z)/(h(3k²+1)) | `CoverageSignedGauge` (`halves_scaled_w`, `gauge_check`), `CoverageSignedK0/Kp/Kn/Kmin` (`valid`, `*_gauge`) | kernel: one `QF` check per curve, in the single variable k; on K₀, K₊, K₋ the quadratic element is ζ = r s/t (ζ² = (J/X)ζ − Z), on K_min it is ζ = Y (h²Y² − (9k⁴+10k²+5)Y + 4 = 0, so Z = A − ζ and 1/L₀, 1/L₁ use L₀L₁ = N_σ) |
| pole forcing: some L_{j,±} = 0 | `noPole`, `noPole_core` | contradiction with (4) = 0 |
| §6: h¹⁶ ∏ L_{j,±} = poleNum₊ · poleNum₋, read off on the four curves | `prodL_eq`, `lamProduct`; `Quartic.candidates_of_poleNum` (factored out of `CoverageQuarticPole.poleClassification`) | Vieta by `ring`; the factorizations are the existing `pole_p_*`, `pole_m_*` |
| N1 → N2 window and endpoint moduli | `conclusion_of_candidates`, `CoverageTen.pStar_bounds` (existing) | |
| assembly | `nonzeroJ_pos_signed`, `nonzeroJ_signed`, `topStripClassification_signed`; `CoverageStripParts.topStripClassification`; `Final.lean` | |

Two remarks on the boundary between paper and Lean:

* **Gauge.** REPORT §5 evaluates the weighted sum in the formal gauge s = t = 1, s̄ = X, t̄ = Y. In Lean this
  is the existing row-scaling lemma of the zero-J branch (`CoverageStripIdFormal.fData_mom_scale`) and a new
  weight-(1,1) lemma (`weightedPoly_scale`). Together they give `halves_scaled_w`: (4) = s t · (gauged value).
  Since s, t ≠ 0 (from K > 0), the vanishing transfers.
* **Kernel checks instead of the return's quotient certificates.** On K₀, K₊ and K₋ the `QF` arithmetic
  reduces modulo r² = (J/X)r − Z automatically. On K_min it reduces modulo (12), with Y as the quadratic
  element. So no quotient polynomial is supplied: each curve is one `decide +kernel` on circuits built from the
  definitions (`halfQ`, the nine Newton formulas of `HalfData.mom`, `weightedPolyQ`). The kernel thus checks
  exactly the return's identities, but from the Lean definitions. Every inverted factor is in the circuit
  context's table, and its nonvanishing is proved from k > 0 or from one of the six L ≠ 0.

## Measured savings

Build times are for `lake env lean <module>` run one module at a time against prebuilt imports, on this
shared 64 GB Mac (other sessions' builds ran at the same time). Each module includes about 6 s and 5.7 GB of
Mathlib import. Raw numbers: `integration/build_old.txt`, `integration/build_new.txt`.

| | replaced (nonzero-J square sum + quartic sign certificate) | new (return K) |
|---|---|---|
| Lean modules | 39: 28 `CoverageStripIdNonzero*`, `CoverageStripId`, `CoverageStripIdStage`, `CoverageStripIdFast`, `CoverageQuartic`, `CoverageQuarticCore`, 5 `CoverageQuartic{Low,High}*`, `Identity/RootFree` (plus 7 unbuilt `split/` variants) | 9: `CoverageSignedData`, `…Moments`, `…Boundary`, `…Gauge`, `…K0`, `…Kp`, `…Kn`, `…Kmin`, `…Nonzero` |
| Lean source | 4,420 lines, 7.53 MB (the 28 nonzero modules alone 7.48 MB, of which 7.41 MB generated data) | 2,046 lines, 114 KB (generated data: `CoverageSignedData`, 48 terms, 2.2 KB) |
| `.olean` | 887 MB | 21 MB |
| serial build time | 2,177 s (36 min); largest `NonzeroDataP1` 233 s, `DataN` 231 s, `DataQ` 228 s, `DataPA` 164 s | 207 s (3.5 min); largest `CoverageSignedKn` 42 s |
| peak memory | 13.9 GB (`NonzeroCheckS1`; `CheckSF` 13.8 GB, `CheckQ` 11.1 GB) | 11.7 GB (`CoverageSignedKp`/`Kn`, the curve kernel checks; `Kmin` 11.0 GB, all others ≤ 6.9 GB) |
| generators | `stripid/gen_nonzero{,_part,_q,_stage}.py`, `stripid/staged.py`, `stripid/split/`, `critical/quartic_{defs,regions}.py` (about 650 lines of Python) | `strip/signed.py` (94 lines, deterministic, sympy only) |

Unchanged and still used: the zero-J branch (`CoverageStripIdZero*`, `…Formal`, `…QF`, `…Half`,
`CoverageStripMoments`), `CoverageQuarticDefs` (minus Q, its coefficients and `ScalarClassification`),
`CoverageQuarticPole` (its factorizations are §6's four products), and the scalar layer
(`CoverageStripBlock`, `…Scalar`, `CoverageCritical`). Old-route definitions in shared files were removed:
`NonzeroJSquareSum`, `nonzeroJ_pos`/`nonzeroJ_classification` (`CoverageStripNonzero`), the numerical sanity script `lean/generators/strip/check_props.py` (it read the deleted `qCoeffs`), `NonzeroJAlgebra`,
`nonzeroJSquareSum_of_algebra`, `topStripClassification_of_algebra` (`CoverageStripReduce`),
`topStripClassification_of_parts` (`CoverageStripParts`, now the entry point `topStripClassification`), and
`topStripClassification_of_nonzeroJ`, `strictCornerCoverage_of_nonzeroJ`, `no_four_mubs_of_nonzeroJ`
(`Final.lean`).

## Checks

- `python3 lean/check_axioms.py --full`: **LEAN PASS**. `Axioms.lean` audits 32 theorems, `Step1/Audit.lean` 216 and
  `AxiomsComplete.lean` 16, all on `propext`, `Classical.choice` and `Quot.sound` only. `AxiomsComplete` now
  audits `Coverage.noPole`, `Coverage.nonzeroJ_signed` and `Coverage.topStripClassification` instead of
  `nonzeroJAlgebra` and `Quartic.scalarClassification`. `Final.no_four_mubs` is unchanged in statement.
  Before the check, every module that changed was rebuilt one at a time in this worktree (peak 11.8 GB, at
  `CoverageSignedKn`). The stale `.olean` files of the deleted modules were then removed, and
  `lake build NoFourMUBs.Final NoFourMUBs.AxiomsComplete` succeeded. Not done: a build from an empty
  `.lake/build`.
- `python3 verify.py`: **ALL PASS** (61 s at `-j 4`). This includes the new job `mc1_nonzero_j_signed_sums`
  (this return's `verify.py`, 4 s).
- Import graph: `Final → CoverageStripParts → {CoverageSignedNonzero, CoverageStripIdZero}`. No remaining
  module imports a deleted one, and none refers to `Quartic.Q` or `ScalarClassification`.

## What was not done

- REPORT §6 is formalised through the existing per-half pole numerators. `h⁸ ∏_j L_{j,σ} = poleNum σ`, so
  `lamProduct` is exactly the return's six-denominator product, and the table's factorizations are the
  products of `pole_p_*` and `pole_m_*` in `CoverageQuarticPole`. There is no separate restatement of the four
  products in the return's normal form.
- The return's JSON circuits and quotient certificates are not imported into Lean. Lean recomputes everything
  from its own definitions (see above).
- The supplementary rank lemma (`SUPPLEMENTARY_RANK_LEMMA.md`) is not part of this integration.

