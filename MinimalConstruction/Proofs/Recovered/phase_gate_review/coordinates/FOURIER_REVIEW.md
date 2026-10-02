# Review of the polynomial and Fourier–radical normal forms

20 September 2026. Both supplied notes are retained unchanged. Their named upstream Python implementations were not attached; the checks described below were independently reconstructed.

## Assessment

The Fourier–radical formula is a substantive global simplification of reconstruction on the preceding commuting-pair domain. Each side needs one square root and one cube root, with no coordinate-root collisions, projection search, or general cubic solver. The key identity is

\[
\Delta^2=\gamma^2-4\alpha\beta=-3(\det X)^2=3g uv/\lambda_0\ne0.
\]

It uses the determinant of the entire side configuration, so it remains nonzero when an individual coordinate repeats. The prescribed choice of h avoids a vanishing Fourier coefficient without discarding a seed. The cube-root choices are cyclic permutations; the side square-root choices reverse the ordering. These are not extra Hadamard moduli.

Coverage remains that of the previous construction: every non-Tao equivalence class has a suitable frame, under the accepted classification-paper inputs. The strict domain is R>0; the stated boundary guards remain. Neither note provides completion of every exceptional fixed corner, and neither changes the four continuous seed parameters.

## The degree theorem

The polynomial note supplies a real mathematical obstruction, with carefully limited scope: the generic ordered matrix has degree 72 over the original complex seed field, and the two cubic splitting fields have group S3 × S3 over the sheet field. The Fourier tower attains degree 2×2×2×3×3=72.

I independently reproduced the four modulo-101 points, both scalar sheets' phase-denominator and cubic-discriminant guards, the cubic root tests, the listed discriminants and their square classes, and the squarefree scalar-discriminant specialization. They all agree with the note.

I also reviewed its argument passing from these arithmetic certificates to geometric function fields: normality lets monic factors descend, the split rational point forces geometric connectedness of the normal integral cover, and finite étaleness lets hypothetical characteristic-zero components extend and meet the special fibre. The cited normality and component facts are supported by [Stacks, Section 33.10](https://stacks.math.columbia.edu/tag/038L) and [Lemma 28.7.5](https://stacks.math.columbia.edu/tag/0357). With the stated localizations, I find no gap in that argument. This is a written proof review, not a formal proof-assistant verification.

The degree 72 counts ordered algebraic reconstruction over fixed original seeds. It does not count inequivalent physical Hadamards, bound the number of measurement-compatible roots, or obstruct a different choice of four parameters. In particular it does not force us to carry the cubic extensions into the pair-existence calculation.

## A global consequence for our measurement problem

The supplied pure-cube projection immediately gives

\[
hx_j-\alpha y_j=(hs-\alpha t)/3+\Delta\tau\omega^j.
\]

Its three values always form an equilateral triangle. Consequently a norm equation and **one explicit complex weighted moment per side** recover all intensities, including at repeated-coordinate points. The previous selection among four moment projections per side is unnecessary.

The resulting [global pair equations and proof](../two_ray_locus/FOURIER_MOMENTS.md) need no cube roots. They use the shared sheet and two side square roots, with five real equations per ray and one complex pair-overlap equation. This is a concrete improvement in the uniform formulation of the global incidence problem.

The important remaining step is still projection onto the Hadamard seeds. No small seed-only equation, practical three-coordinate locus, or improvement in elimination runtime has yet been established. The additional quadratic coefficients may help or hurt symbolic elimination; their smaller equation count is not itself a complexity bound.

## Verification and reproducibility

Run the independent checker from any directory:

```sh
OPENBLAS_NUM_THREADS=1 PYTHONDONTWRITEBYTECODE=1 python3 /absolute/path/to/verify_fourier.py
```

Dependencies: Python, NumPy, SymPy. It writes `FOURIER_VERIFICATION.json` beside itself.

The checks include:

- Exact generic affine discriminant/determinant identities, the pure-cube product formula, and the alternate expression for the cube radicand.
- Exact Fourier autocorrelation identities that remove the cube roots from intensity equations.
- Exact modulo-101 data supporting the generic-degree and Galois-group proof.
- Both sheets of 100 strict-domain seeds: 200 Hadamards and 400 arbitrary ray inputs, plus the supplied repeated-coordinate example.

In this double-precision run the largest entry-modulus error was 2.8×10⁻¹²; the largest orthogonality error was 1.2×10⁻¹¹. Intensity identities agreed within 7.3×10⁻¹¹. These checks supplement the algebraic derivations; they neither certify pair existence nor reproduce the upstream claimed 80-digit regression.

The independent checker does not reprove the classification theorem, the paper's lower-block-flatness identity, or every identity in the two attachments. These remain the mathematical inputs or previously audited formulas explicitly identified above.
