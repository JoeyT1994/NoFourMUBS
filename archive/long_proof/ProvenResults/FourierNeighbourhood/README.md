# Fourier-neighbourhood exclusion (D2)

**New T2 results:** [PracticalTube](PracticalTube/README.md) proves the
uniform matrix radius **1/16384** around the whole Fourier family, its
transpose and all equivalences. [SeedAtlas](SeedAtlas/README.md) gives
exact corner parametrisations and proximity tests. [SeedLifting](SeedLifting/README.md)
proves exact D₀ atlas rigidity for 0<R≤20 and supporting quantitative
bounds. A conservative R-separated transverse bound is proved; production-scale
constants and control through R=0 remain open.
[UniformTube](UniformTube/README.md) retains the earlier much smaller
radius and the counterexample to unrestricted seed lifting.
The D2 theorem below retains its original scope around F6.

**Larger F6 quartet tube (29 September):**
[ClusterTube](ClusterTube/README.md) now excludes four full bases at
projector distance ≤**1/30** from the F6 monomial orbit. A complete integer
ray cover and sharp projective-angle graph prove this unconditionally.
It does not enlarge the radius around the whole Fourier family or the
earlier theorem's stronger four-ray-plus-anchor domain.

The [expanded certificate](ClusterTube/EXPANDED.md) uses 7,485,187 integer
nodes and exact equality of the compatibility graphs at label radii 1/6
and 5/27. The [new completion estimate](SeedLifting/RESIDUAL_LIFT.md)
proves a five-times-wider non-F6 seed patch, half-width 1/2000. Uniform
seed lifting and the T1′ cutoff remain open.

**Production-width lifting:** [ProductionCube](SeedLifting/PRODUCTION_CUBE.md)
now proves a complete closed seed cube of half-width **π/512**, centred
at `(4π/3,5π/3,0,π)`, on D₀ and including R=0. Its 227-leaf partition
passes at 96 and 160 bits. The whole cube has R<1/5; every physical
maximal completion enters the F6 radius 1/30. A fast containment rule
covers all 72 corner frames. Whole-family seed lifting remains open.

[ZeroNeighbourhood](SeedLifting/ZERO_NEIGHBOURHOOD.md) extends a genuine
maximal small-R curve to δ=π/128 with transverse radius π/4096 and R<1/2.
It also excludes trimmed zero-atlas neighbourhoods using 740 boxes and
three additional production-width domain cubes, all checked at 96/160 bits.
[FourierMaxR](SeedLifting/FOURIER_MAX_R.md) gives the exact 400-corner
maximum and d_F6≤π√M/144 for Fourier references with M≤36, yielding a
larger analytic reference tube.
[NearF6Closure](SeedLifting/NEAR_F6_CLOSURE.md) now covers **all six F6
corner classes**, uniformly at seed radius 2⁻⁴⁸, including R=0. It also
gives a uniform seed radius 2⁻⁴⁹ along Fourier references with M≤2⁻⁹².
The new nearly F3 and nearly rank-one estimates are unconditional but
very conservative. The intervening trimmed-atlas shoulders and practical
whole-family lifting remain open.

## Statement

Let `F[r,j]=exp(pi i rj/3)/sqrt(6)` and, for a unitary carrier `U`,

    d_F(U) = min_(M,sigma) max_j ||U_j U_j† − M F_sigma(j) F_sigma(j)† M†||_op,

with `M` over all row monomial unitaries and `sigma` over all column
permutations. `d_F` is invariant under Hadamard equivalence of `sqrt(6)U` and
under complex conjugation, since `conj(F)` is `F` with columns permuted.

**Theorem D2.1.** If `d_F(U) <= 1/1024`, then no orthonormal quartet
`k_1,...,k_4` flat in `I` and in `U` admits a pure anchor `w` flat in `I` and
`U` and unbiased to all four `k_i`. Equivalently, every physical 4+1 has
`d_F(U) > 1/1024`.

**Theorem D2.2.** For every such quartet, every unit `w` and every exhibited
matching of distance `d <= 1/1024`, the sixteen squared probability errors
satisfy `E41 > ((1/1024−d)/4)²`. On `d_F(U) <= 1/2048` this gives
`E41 > 2^(-26)`.

**Corollary (MUB quartets).** If `I,B_1,B_2,B_3` are four MUBs in `C^6`, then
none of the six transitions `B_i†B_j` (with `B_0=I`) is within `1/1024` of the
F6 orbit: `d_F(B_i†B_j) > 1/1024` for all `i≠j`.

*Proof of the corollary.* Apply the unitary `B_i†` to all four bases. This
preserves unbiasedness and orthogonality. The bases become `I`,
`U=B_i†B_j`, and two further bases `K`, `L` unbiased to `I`, `U` and each
other. Any four columns of `K` are an orthonormal quartet flat in `I` and in
`U`. Any column `w` of `L` is flat in `I` and `U` and has `|k†w|²=1/6` for
every column `k` of `K`. This is a 4+1 configuration over the carrier `U`, so
Theorem D2.1 gives `d_F(U) > 1/1024`. The pair `(i,j)` was arbitrary. QED.

A complete fourth basis is much more than a 4+1. D2 uses only four rays of
one extra basis and one ray of another. It needs no completion, balance or
symmetry.

## Status

**Proved.** The proof is computer-assisted. The finite certificate is checked
in exact integer interval arithmetic, with no floating point in acceptance. It
covers 32 closed phase charts with 389,672 leaves and has no unresolved boxes.
The graph step then rejects all 23,760 anchor/four-neighbour choices.

## Dependencies

None beyond the written proof and the replayed certificate. The theorem does
not use the reconstruction or its accepted inputs, the classification, the
Karlsson theorems or any published exclusion. It quantifies over completed
physical carriers, so it applies to either reconstruction sheet whenever that
sheet's output meets the distance bound.

The optional `nonvacuity.py` diagnostic evaluates the positive-sheet
reconstruction. That reconstruction depends on the accepted inputs in
[ASSUMPTIONS.md](../../MinimalConstruction/ASSUMPTIONS.md).

## Provenance

The result is RESULT_D2, returned 22 September 2026. It was vendored in the
22-September snapshot as `KarlssonAndMeasurements/SeedBoxCertificates/d2_base/`,
and the independent review of rounds A2–D2 checked it
(`work/result_review_round2_2026-09-22/REVIEW.md`; its full rerun passed in 56.8 s). [RESULT.md](RESULT.md), [PROOF.md](PROOF.md) and every `data/`
file are unchanged. The one exception is a clearly marked import note in
RESULT §3, and RESULT §5 now drops its references to old receipt files.
"Round one" in the text refers to the earlier fixed-reference joint-frame SOS
neighbourhoods, which are archived. The `verify.py` acceptance code is
unchanged, except that it no longer writes a receipt file unless `--output`
is given. The seed-box adapter, the discovery programs and the old receipts
were not imported.

## Premise in raw entries

Put `q=(1+i sqrt(3))/2`. The carrier `H` is in the excluded domain if one row
permutation `pi`, one column permutation `sigma` and six phases `alpha_r`
satisfy, for every `j`,

    |sum_r conj(H[r,j]) alpha_r q^(pi(r) sigma(j))|² >= 36 (1 − 1/1024²).

One exhibited matching is enough. There is no need to minimize over matchings.

## What D2 adds beyond the published exclusions

[Jaming et al.](https://arxiv.org/abs/0902.0882) exclude the Fourier family
and its transpose as transitions of a MUB quartet. Both families contain F6.
The explicit strict family `H(x)` in RESULT §3 is the Fourier-family matrix
`N(zeta(x),1)` (its upper-left block is `F3`). The reviewer's caveat is
therefore correct: that family shows only that the domain contains infinitely
many classes. It does not show that the domain contains anything new.

What is genuinely added:

1. **A full neighbourhood, not a family.** D2 excludes 4+1 over every unitary
   carrier in a ball around the F6 orbit, whatever family it belongs to.
   Jaming et al. treat only the two Fourier families.
2. **Carriers outside the published exclusions exist in the ball.** At F6 the
   Hadamard equations in 25 dephased phases have Jacobian rank 21 (defect 4).
   Newton projection of random perturbations of F6 lands on points with the
   same rank and with no 3×3 or 2×2 Hadamard submatrix. `nonvacuity.py`
   gives one such carrier as the positive-sheet reconstruction `H_+(a,b,c,d)`
   at exact rational unit-circle seeds, with `R≈8.9e-4 > 0`. It checks
   (60 digits):
   - the Hadamard residual is below `1e-59`;
   - an explicit matching has distance `5.45e-4 < 1/1024`;
   - `min ||SS†−3I|| = 3.4e-7` over all 400 3×3 submatrices, so there is no
     F3 block;
   - `min |h_ij h_kl + h_il h_kj| = 6.5e-10` over all 225 2×2 submatrices,
     so there is no 2×2 Hadamard block.

   With no F3 block, the carrier is not in the Fourier family, its transpose
   or Tao. Each of those contains a 3×3 Hadamard block, which is the trivial
   direction of [FourierBlocks](../FourierBlocks/FourierBlockClassification.md).
   With no H2 block, it is not H2-reducible, so it is not in Karlsson's
   family `K_6^(3)` either. Karlsson's family itself contains both Fourier
   families (Karlsson, arXiv:1003.4177), so it also meets the ball. To our
   knowledge no published result excludes these carriers.

   The margins exceed the evaluation error by more than 40 orders of
   magnitude, but this is a high-precision diagnostic, not an interval
   certificate. Its Hadamard property is the reconstruction's accepted
   side-formula input.
3. **A robust quantitative bound.** D2.2 bounds the sixteen actual probability
   errors from below. This excludes approximate 4+1 configurations near F6 as
   well as exact ones.
4. **Fewer vectors.** D2 excludes 4+1, which is only five rays beyond `I` and
   `U`, rather than a full quartet of bases.

**Limit.** The radius is tiny. D2 does not show that any hypothetical quartet
transition must come near F6. It does not cover the strict seed domain or
classify a component, and every carrier with `d_F>1/1024` remains open.

## Files and verification

| File | Role |
|---|---|
| [RESULT.md](RESULT.md) | Theorems, quantifiers and scope (source text) |
| [PROOF.md](PROOF.md) | Complete analytic argument and certificate acceptance logic |
| [data/README.md](data/README.md) | Exact formats of the forest, multipliers, centres and graph |
| `verify.py` | Exact acceptance of all 32 charts, all leaves and the graph (standard library) |
| `verify_seed_family.py` | Exact SymPy check of the explicit family `H(x)` and its corner invariants |
| `tests/test_certificate.py` | Eleven arithmetic, mutation and coverage regression tests |
| `dump_cover.py` | Decodes leaves to JSON lines for inspection (used by the tests) |
| `nonvacuity.py` | Diagnostic: a non-Fourier, non-H2 carrier inside the domain |

Run each script from this folder:

    python3 verify.py                  # full certificate, about 60 s (57.7 s alone, 65 s in the runner copy)
    python3 verify_seed_family.py      # about 1.5 s
    python3 -m unittest discover -s tests   # about 2.4 s
    python3 nonvacuity.py              # about 6 s

`python3 verify.py --charts a:b` gives a partial run for quick inspection. It
reports `PASS_PARTIAL_CHARTS` and does not verify the theorem. The full run
is well under the root runner's 300 s limit, so no reduced check is needed.

## Restricted lifting: new exact-atlas theorem

[SeedLifting](SeedLifting/README.md) proves that every physical carrier with
an exact Fourier-atlas seed in D₀ and 0<R≤20 is in the Fourier family or
its transpose. Its exact rational positivity certificate has 19 nodes.
A separate completion bound controls the carrier from the seed and both
side blocks. A conservative R-separated lifting theorem is now included. Uniform
control through R=0 and practical transverse bounds remain open.

**New seed-only application across R=0:**
[the local lift](SeedLifting/R_ZERO_LIFT.md) certifies a phase cube of
half-width 1/2048 around (4π/3,5π/3,0,π), on D₀, by matching every retained
side triple to F6. The normalized Frobenius bound is <1/40, entering the
1/36 F6 tube. The cube has both signs of R and contains strict D₀ points.
This does not yet cover full production cells or the whole family.

The [matched-cover extension](SeedLifting/MATCHED_COVER_LIFT.md) now proves
a **1/512 seed half-width** for the first F6 cube, through a complete
255-leaf cover, and adds two distinct seed classes. It uses individual
column/row completion bounds into the same 1/36 F6 matrix tube. This
extends the earlier local seed theorem; it is still local and smaller
than full production width.

**Beyond the F6 orbit:** [WideFamilyTube](WideFamilyTube/README.md) now
proves radius **1/256 on 191 closed parameter boxes**, including transpose
and equivalences; four boxes have radius **1/128**. The remaining 79
coarse boxes have no larger certified radius here, so the whole-family
uniform radius remains **1/16384**. The fresh replay checks over 1.2 billion
integer cover nodes and 73344 positive controls.

A [regional seed lift](SeedLifting/REGIONAL_SEED_LIFT.md) enters a stronger
direct radius 1/48 at a reference not equivalent to F6. It certifies a
full phase cube of half-width 1/10000 with 8<R<9, using complete side
matching and an exact 400-corner maximality census.
