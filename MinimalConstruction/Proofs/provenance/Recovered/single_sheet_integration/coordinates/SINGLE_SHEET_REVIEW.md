# One-sheet conjugate-Fourier form: review and integration

20 September 2026. The [supplied note](Hadamard6_Single_Sheet_Conjugate_Fourier_Form.md) is retained byte-for-byte. Its named upstream scripts and verification log were not supplied. The local [constructor](single_sheet.py) and [checker](verify_single_sheet.py) are independent implementations.

## Results accepted after review

**One sheet covers the previously covered equivalence classes.** For a reconstructed block matrix H=(E B; C D), exchange both block rows and block columns, then dephase. The new horizontal side is equivalent to C, so its invariant is the complex conjugate of the old horizontal invariant. The new vertical invariant is conjugated correspondingly. The generic phase-block identities for g, eta and chi show that these real scalar data, and R, are preserved. A negative-sheet matrix therefore has a positive-sheet representative at the dephased opposite corner. At R=0 the shared sheets already coincide.

This argument is global over the inherited reconstruction domain. Its coverage claim uses the previously accepted classification and extension results, and its identification with the prescribed constructor uses the existing uniqueness of a side at fixed (G,zeta). The exact scalar identities and corner involution were independently checked here.

The positive and negative completions **at the same seed** are not thereby proved equivalent. The opposite-corner seed normally differs and requires evaluating the completion. This does not give a rational seed-only sheet involution or an injective fundamental domain.

**The seed-selected frame gives uniform Fourier bounds.** Write p for the sum of squared off-diagonal entries of a complementary Gram. Since

\[
\det G+\det(6I-G)=54-6p>0,
\]

we have p<9. Select the least-correlated pair in each direction. Then

\[
|s|^2<3,\quad n>2/3,\quad \rho\ge n/2>1/3.
\]

Row and column selections are compatible because they preserve the other direction's correlation magnitudes. Scalar data are unchanged and boundary factors are permuted in modulus. Thus the selection loses no point of the inherited domain.

**The conjugate-diagonal coefficients are equivalent to the compact ones.** With q=alpha/rho and tau cubed equal to T, replace diag(1,tau,1/tau) by diag(1,tau,conjugate(tau)) and divide the old L's third column by rho. This gives exactly the new L. The resulting coefficient bounds are |q|<=1 and |c_plus|^2+|c_minus|^2<3. The variable divisions in the displayed side formulas are by positive real quantities; n and rho have the uniform bounds above. The old determinant and seed factors can still approach zero.

## What this changes for measurements

The new [conjugate-Fourier intensity equations](../two_ray_locus/SINGLE_SHEET_MOMENTS.md) have the same physical solutions and count as the compact formulation. Their complex correlation is

\[
\Psi(z;\rho,T)=\rho(z_0\bar z_1+z_2\bar z_0)+Tz_1\bar z_2.
\]

This form has no division by rho. The weighted norm has weights (1,rho,rho), rather than (1,rho,1/rho). The uniform bounds apply to these coefficients after frame selection. Neither change eliminates ray variables or proves a new seed-only measurement restriction.

All side records refer to the **adapted** matrix and corner. To restore compatible rays to the original-corner matrix, apply the returned left_transport. The constructor returns both left_transport and right_transport, with

\[
H_{\rm original}=L_{\rm transport}\,H_{\rm adapted}\,R_{\rm transport}.
\]

These are monomial unitaries. The same left operation must act on each additional basis; do not independently row-dephase that basis.

## Independent verification and numerical conventions

The exact checks cover the scalar rewrite, all three P norm identities, generic four-variable phase-block descriptions of g/eta/chi, the generic rational opposite-corner involution, the conjugate-coefficient formulas, the cube rewrite, the new intensity correlation and the displayed exact example with its two corner transports.

The numerical checker tests 100 strict seed tuples, comparison with the old positive-sheet constructor, 100 negative-to-positive opposite-corner transports, four additional boundary/repeated-coordinate examples, and 200 arbitrary ray inputs with frame transport. It checks the theoretical n/rho/coefficient bounds as well as flatness, unitarity, cube amplitudes and intensity identities. See [SINGLE_SHEET_VERIFICATION.json](SINGLE_SHEET_VERIFICATION.json) for the actual run outcome and residuals. Numerical examples do not establish global coverage or physical pair existence.

The numerical routines allow twelve decimal digits of accumulated error in their reality diagnostics. The new phase-input routine normalizes only accepted, roundoff-sized modulus errors; this supports seeds extracted from a numerically completed opposite corner. Boundary rounding remains explicit and is recorded. These conventions are not exact sign or membership certificates. The old compact routine's overly strict reality diagnostic was adjusted to the same tolerance and its regression suite was rerun; no algebraic formula changed.

## Adoption

Use the positive-sheet, adapted-frame atlas for coverage and measurement work up to equivalence. Keep [compact_fourier.py](compact_fourier.py) for both local candidates at a prescribed corner. Radical count and four-dimensional seed domain are unchanged. The global measurement restriction remains open.
