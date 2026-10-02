# Small maximal R does not put a carrier inside the present Fourier tube

**Proved under the accepted reconstruction inputs.** There exists a
positive-sheet seed in D₀∩F satisfying

    0 < R < 1/200,             d_Four(H₊/sqrt(6)) > 1/16000.

Since 1/16000>1/16384, the proposed shortcut

    θ∈D₀∩F, R(θ)<m  ⇒  d_Four(H₊(θ)/sqrt(6))≤1/16384

is false for **every m≥1/200**. In particular, the already-certified
matrix radius cannot be paired with m≈20 to remove the whole small-R
layer solely by this carrier-proximity implication.

A second example has maximal R between 17 and 18 and
`d_Four>1/300`. Thus a proximity-based m=20 theorem would require a
matrix exclusion radius **strictly larger than 1/300**, over 54 times
the presently certified 1/16384.

This does **not** refute quartet exclusion, suggest a quartet, or refute
a D₀ estimate with an additional seed-proximity hypothesis. It also
does not rule out a larger Fourier matrix tube, a smaller R threshold,
or a direct quartet certificate for the carriers outside the current tube.

## 1. Two exactly specified carriers

Apply the accepted sign-selected positive-sheet reconstruction to unit
seeds whose phase vectors, in radians, are

    A: (π/256)  (88, −80, −83, 91),
    B: (π/2400) (801, −798, −799, 802).

These are exact roots of unity; no rounded production centres define the
examples. A was found by examining the positive-R corner of the third
retained T6 benchmark box. B follows a related exact Fourier-seed surface.
We do not assert that either displayed input frame is already maximal.

The standalone [Arb replay](small_R_obstruction.py), at 256-bit precision,
certifies the following strict rational inequalities:

| Carrier | Leading R | Every positional corner R | Every raw 3×3 minor modulus |
|---|---|---|---|
| A | >17 | <18 | >3/25 |
| B | >1/500 | <1/200 | >49/25000 |

All **400 corners and 400 minors per example** are checked individually.
The reconstruction verifies both complementary Grams' positive leading
principal minors, g>0, R>0, nonzero side polynomials, n>0, the selected
sign dF>0 and ρ>0. Root choices only permute side rows/columns. Physical
Hadamard identities come from the explicitly accepted local reconstruction
inputs, not from small numerical residuals.

## 2. Quantitative separation from every Fourier representative

Every raw Fourier-family matrix and its transpose has a zero 3×3 minor.
This persists under row/column monomial equivalence. If a normalized
carrier is matched to such a representative with column-projector
distance at most d, matching each column phase gives a raw column
Euclidean error at most sqrt(12)d. Restricted raw three-row columns have
norm sqrt(3). Telescoping the determinant at a zero reference minor gives

    |det H[I,J]| ≤ 18sqrt(3)d.

This is the same unconditional bound proved in
[SEED_OBSTRUCTION.md](../UniformTube/SEED_OBSTRUCTION.md#3-a-quantitative-distance-lower-bound-from-the-minors).
The exact rational comparisons

    (3/25)² > 972(1/300)²,
    (49/25000)² > 972(1/16000)²

therefore prove `d_Four(A/sqrt(6))>1/300` and
`d_Four(B/sqrt(6))>1/16000`. This includes every equivalence and both
Fourier orientations. The same lower bounds hold after transposition
or conjugation because the complete minor-modulus multiset is unchanged.

## 3. Put each example in D₀∩F without resolving a tied maximum

Choose a positional corner attaining the largest of the 400 R values.
The replay proves this maximum is positive and below the stated cap.
Move that corner to the top left, dephase, and sort its horizontal and
vertical Gram triples, transposing if necessary. The exact corner
symmetries preserve the R multiset, so the resulting seed is maximal
and meets the fundamental-domain ordering F.

Neither carrier is F6, since every minor is nonzero. Neither is Tao,
since Tao has a positional corner with R=243. Accepted strict completion
exhaustion therefore identifies the framed carrier with a matched sheet.
If it is the negative sheet, conjugate the entire carrier and its seed;
the [proved sheet-conjugation lemma](../../Sheets/CONJUGATION.md) gives
a positive-sheet representative with the same corner-R values and
minor moduli. This is exactly the canonical-frame and sheet argument in
[the campaign reduction](../../../NumericalCampaign/REDUCTION.md), steps
(c)–(f), which does not require extendability for this normalization.

Consequently some positive-sheet seed in D₀∩F realizes each certificate's
R bound and Fourier-distance lower bound. No numerical guess about the
maximizing corner, or equality between tied corner enclosures, is needed.

## Consequence for the next campaign work

The current uniform matrix tube is a valid theorem, and DirectLift is a
valid local bridge into it. But simply sharpening a universal small-R
bound cannot make that *same radius* cover all of R<20. The next useful
route must enlarge the exclusion region, retain a substantially smaller
R threshold, or certify the non-Fourier remainder directly. This is an
obstruction to the proposed pairing of constants, not completion of T2/T1′.
