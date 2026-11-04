# Fourier vanishing in Lean

This folder formalises the Fourier-vanishing theorem of
[`MinimalReconstruction/theorems/H_fourier_vanishing/REPORT.md`](../../../MinimalReconstruction/theorems/H_fourier_vanishing/REPORT.md),
referred to below as the report. For a complex Hadamard matrix of order six that is not equivalent to Tao's
matrix, every triple moment over three rows or three columns vanishes. The theorem is SM Proposition S.8
(Fourier vanishing) of the paper, a consequence of the reconstruction. The main proof does not use it.

```lean
theorem NoFourMUBs.FourierVanishing.fourierVanishing (H : Mat6) (hH : Hadamard6.IsHadamard H)
    (hT : ¬ IsTaoOrbit H) :
    (∀ I : Finset I6, I.card = 3 → ∑ j, (∏ a ∈ I, H a j) * ∏ d ∈ Iᶜ, conj (H d j) = 0) ∧
    (∀ J : Finset I6, J.card = 3 → ∑ i, (∏ b ∈ J, H i b) * ∏ d ∈ Jᶜ, conj (H i d) = 0)
```

The report labels the three inputs of the proof D1, D2 and D3.

* D1, the side identities, is the `Side.TS_root` and `L1.hv_eq` machinery of the main formalisation.
* D2 is `PRM.nonmatched_tao` (`PRM/FourierMatch.lean`, from `PRM/Converse.lean`).
* D3 is `PRM.strictCornerCoverage` (`Final.lean`), in its `F6` form `PRM.Coverage.strictCorner_of_not_F6`
  (`PRM/CoverageFourierLocus.lean`).

No other results are used.

## Building

`Main` imports `NoFourMUBs.Final`. Like `Final` and `Complete`, it is not imported by the library root, so
`lake build` does not build it. Build and audit it with:

```bash
lake build NoFourMUBs.FourierVanishing.Main
python3 check_axioms.py --full   # audits fourierVanishing in AxiomsComplete.lean
```

The four light modules (`Duality`, `Jacobi`, `Square`, `Criterion`) are imported by the root, so plain
`lake build` checks them. `fourierVanishing` uses only `propext`, `Classical.choice` and `Quot.sound`.

## Map to the report

Row triples are handled by permutations. A row arrangement `σ` puts the row set `I` on `inl` and `Iᶜ` on `inr`.
A column split `(J, Jᶜ)` is a permutation `τ`, with `J = τ(inl)`. The sign `(-1)^(ΣI+ΣJ)` of the report then
becomes `sign τ`, carried by `det (K.submatrix id τ) = sign τ · det K`.

| Report | Lean | File |
|---|---|---|
| §0 Theorem (0.1), rows and columns | `fourierVanishing`, `rowVanishing` | `Main` |
| §0 Complementary-invariant criterion | `moments_vanish` | `Main` |
| §2.1 Covariance (row permutations) | `moment_submatrix` | `Criterion` |
| §2.2 D1: corner labels equal or conjugate (g = 0, R = 0, R > 0) | `sig_lower_eq_or_conj` | `Corners` |
| §2.2 D2 at a strict corner | `dephased_matched` (uses `PRM.nonmatched_tao`) | `Corners` |
| §2.2 (2.1)/(0.2) at every corner | `allCornersMatched : PRM.AllCornersMatched H`, then `cornerConj_of_matched` | `Corners`, `Criterion` |
| §3 (3.1) `det X^[2] = perm X det X − 2 P_X conj det X` | `det_sqMat` | `Square` |
| §3 (3.2) | `det_mul_det_sqMat` (with `sideSignature = −Ψ`) | `Square` |
| §4 (4.1) Jacobi's complementary minors | `jacobi`, `det_mul_conj_det` | `Jacobi` |
| §4 (4.2) `A_I` | `topA`, `botA`, and `det_leftMinor_topA`, which gives `det A_I[:,J] = det E^[2] · conj P_E` | `Criterion` |
| §4 (4.3)–(4.5) | `dual_of_cornerConj` (singular blocks via `det_sqMat_eq_zero`) | `Criterion` |
| §5.1 (5.1)–(5.3) exterior duality ⇒ `A Cᵀ = 0` | `duality` (hypothesis `Dual`) | `Duality` |
| §5.3 (5.4) readout as moments | `readout`, `mixed_moments`, `moment_compl` | `Criterion` |
| §6 (6.1) Cramer, single exchange | `cramer`, `exists_exchange`, `good_swap` | `Criterion` |
| §6 the last two moments | `bot` and `classify` inside `moments_vanish` | `Main` |
| §7 rank from a strict corner | `det_sqMat_ne_zero`, the second case of `exists_good` (uses `PRM.Coverage.strictCorner_of_not_F6`) | `Square`, `Main` |
| §8 Fourier class | `fourier_block` and the first case of `exists_good` | `Main` |
| §8 transpose, and the Tao matrix is symmetric | `taoMatrix_transpose`, `not_tao_transpose` | `Main` |

## Differences from the report's proof

### §5 by normalisation

The Lean proof of §5 uses a normalisation instead of the report's certificate of 180 identities. Permuting the
columns of both matrices preserves hypothesis (5.1), with a new `κ`, and the conclusion `A Cᵀ = 0`. So does
multiplying `A` or `C` on the left by an invertible `3 × 3` matrix. One may therefore assume `A[:, inl] = I` and
`C[:, inr] = I`. The identity split then gives `κ = 1`. The nine transpositions `inl a ↔ inr b` give
`A_{a, inr b} = −C_{b, inl a}`, which is `A Cᵀ = 0`. This needs no Laplace or Cauchy–Binet expansion. The
certificate `certificates/hodge_integer_cofactors.json` is not used.

### §4.1 Jacobi

The Lean proof uses the block identity `L · [[E†, 0], [B†, I]] = [[6I, B], [0, D]]`. The report uses the third
compound matrix instead.

### §8 F₆

The F₆ case is not handled by computing its moments. F₆ is not equivalent to Tao's matrix, so it goes through the
same criterion. Only the rank hypothesis needs F₆ specifically. It comes from the explicit square minor on rows
and columns `{inl 0, inr 1, inl 2}` (`{0, 2, 4}` in 0–5 order), whose determinant is `3ω(1 − ω) ≠ 0`.

### §6 one exchange

Only one exchange is needed. With the starting triple on `inl`, every row triple is the top, the bottom, a mixed
triple or the complement of one (`classify`, by `decide`). The bottom triple is mixed for the exchanged
arrangement.
