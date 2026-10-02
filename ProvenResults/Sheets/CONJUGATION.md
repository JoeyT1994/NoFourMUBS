# Conjugation exchanges the two reconstruction sheets

> Imported 26 September 2026 from the archived
> `KarlssonAndMeasurements/SeedBoxCertificates/METHOD.md` (22-September
> snapshot), section "Global exclusion needs only one sheet". The text is
> unchanged except that one sentence about the archived seed-box pipeline's
> shipped examples is dropped. Notation is that of
> [RECONSTRUCTION.md](../../MinimalConstruction/RECONSTRUCTION.md) §§1–3, and
> checks are in [verify.py](verify.py).

## Global exclusion needs only one sheet

There is a direct conjugation symmetry, without moving to the opposite corner:

\[
H_-(\bar a,\bar b,\bar c,\bar d)
\sim\overline{H_+(a,b,c,d)}.
\]

Here the equivalence uses permutations of the last three rows and columns.
Indeed, conjugating seeds conjugates both Grams and leaves `g,eta,chi,R`
unchanged. The negative sheet at the conjugated seeds uses `bar(z_+)`.
All side quantities conjugate, with conjugate choices of `delta` and `w`;
`dF` is unchanged and remains nonnegative. If `J` swaps Fourier indices 1 and 2,
then `bar(F3)=F3 J` and

\[
S(\bar G,\bar z)=\overline{S(G,z)}J.
\]

Thus, for those root choices, the displayed Hadamard identity holds with
`diag(I3,J)` on both sides of the conjugated matrix. Other allowed root choices
only add the already registered side permutations, including at `dF=0`.

Conjugation preserves orthogonality and all absolute overlaps, so it preserves
4+1 and four-MUB compatibility. The entire strict `a=-1` section is closed under
conjugation. Consequently **excluding the positive sheet throughout that
section suffices to exclude both sheets throughout it**. Requiring both sheets
globally would duplicate work; the earlier opposite-corner argument overlooked
this simpler symmetry. This does not claim the two sheets at the same seeds
are monomially equivalent.

For a particular seed box `X`, the negative sheet transfers to the positive
sheet over `bar(X)`, not generally over `X` itself. In the rational charts,
conjugation keeps each sign and sends `[lo,hi]` to `[-hi,-lo]`.
