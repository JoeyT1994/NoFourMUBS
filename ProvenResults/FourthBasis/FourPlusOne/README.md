# 4+1 reduction, second-moment barrier and standard-ghost gap

A 4+1 over a carrier `U=H/sqrt(6)` is made of four orthonormal rays `v_1..v_4`
and one ray `w`. All five are flat in `I` and in `U`, and `|v_i†w|²=1/6`. Every
MUB quartet supplies one; see [../README.md](../README.md).

## Statement

1. **Constant Gram.** Rephase each `v_i` so that `v_i†w=sqrt(6)` (raw
   vectors). This is global and needs no branch. The five-ray Gram is then the
   constant matrix `Γ=[[6I_4, sqrt6·1],[sqrt6·1ᵀ, 6]]`, with `det Γ=2·6^4`,
   and `Γ⁻¹` is explicit.
2. **Rank-one defect.** Stack the mixed coordinates of the five rays, meaning
   the first three input and first three output entries, into `W` (6×5). Put
   `K_E=[[I_3,E/sqrt6],[E†/sqrt6,I_3]]`. Then the rays have Gram `Γ` exactly
   when `rank(K_E − WΓ⁻¹W†)=1`. This holds for all four seeds on `R>0` and on
   either sheet. The defect is quadratic in the ray phases, linear in the
   entries of the seed corner `E`, and free of radicals.
3. **Consequences.** The defect diagonal is `(4−|u_1+…+u_4−sqrt6 z|²)/12 ≥ 0`,
   which gives six disk inequalities. On `a=−1` there is a sheet-free quartic
   minor identity, `M03M14−M04M13+(M03+M04+M13−M14)/sqrt6−1/3=0`. On strict
   `a=−1`, 4+1 is equivalent to three conditions: `W` has phase entries, the
   defect has rank one, and 20 real flatness moments vanish (29 phases, 45
   quadratic real equations).
4. **Second-moment barrier.** For every carrier, the degree-two moment
   relaxation of the aligned 4+1 equations is feasible, even with the anchor's
   first entry fixed. The witness is Gaussian with covariance `(Γ/6)⊗I_6`.
   Hence no degree-two SOS refutation exists.
5. **Standard-ghost gap.** Let `w` be a physical common-unbiased anchor over
   any Hadamard. Every standard Laurent ghost (one coordinate of a column
   multiplied by `ρ=−2±sqrt3`) has residual `|F|²=54+144(cosθ−sqrt6/4)² ≥ 54`.

## Status

**Proved.** Items 1, 2, 4 and 5 are exact analytic statements. Item 3's
equivalence on strict `a=−1` rests on the fixed-observable lemma in
[FIXED_OBSERVABLE.md](FIXED_OBSERVABLE.md) §4. None of this proves 4+1
emptiness, a seed-only restriction, or a classification of quartets.

## Dependencies

- Items 1, 4 and 5 need no reconstruction input.
- Item 2 uses only that `H=[[E,B],[C,D]]` is Hadamard with `T=6I−E†E>0`,
  which gives `C†C=T`. On the strict domain `g=det T>0`. It uses the mixed
  coordinates of [MeasurementCoordinates.md](../../../MinimalConstruction/Measurements/MeasurementCoordinates.md).
- Item 3 uses the retained single-radical measurement equations
  ([SingleRadicalMeasurements.md](../../../MinimalConstruction/Measurements/SingleRadicalMeasurements.md))
  in their strict `a=−1` form, and the fixed-observable lemma. The lemma's
  divisor `P_0,P_1≠0` and the side properties come from the reconstruction's
  **accepted side-formula input**
  ([ASSUMPTIONS.md](../../../MinimalConstruction/ASSUMPTIONS.md)).
- Applying the strict-section statements to *every* carrier would need
  coverage by strict `a=−1` frames. That is **not** claimed.

## Provenance

`KarlssonAndMeasurements/Quartet41/{REDUCTION.md, targets.py, verify.py}`
(22-September snapshot, dated 21 September 2026), with the fixed-observable
section of `Karlsson/SymbolicThreeRaySystem.md` and its `symbolic.py`, which
is renamed `strict_a1_system.py` here. The mathematics is unchanged. The
changes are: import paths now point to `../../../MinimalConstruction`; the
verifier prints its receipt instead of writing `verification.json`;
`export_coefficients` writes a file only when given a path; and the verifier
also replays the fixed-observable identities.

## Files and verification

| File | Role |
|---|---|
| [REDUCTION.md](REDUCTION.md) | Statements and proofs, items 1–5 |
| [FIXED_OBSERVABLE.md](FIXED_OBSERVABLE.md) | Strict `a=−1` equations and the fixed-observable lemma |
| `strict_a1_system.py` | Exact symbolic `a=−1` seed coefficients and ray equations |
| `targets.py` | The 25/41 and aligned 29/45 4+1 systems, with both sheets retained |
| `verify.py` | Exact identities, the covariance witness, equation counts and degrees, 75-digit reconstruction comparisons, and 432 ghost/anchor cases |

    python3 verify.py      # about 35 s
