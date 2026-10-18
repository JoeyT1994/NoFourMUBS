# Independent review and adoption of the compact Fourier form

20 September 2026. The supplied [note](Hadamard6_Compact_Fourier_Normal_Form.md) is preserved byte-for-byte. Its named upstream programs were not supplied. The local [implementation](compact_fourier.py) and [checker](verify_compact_fourier.py) were written independently.

## Mathematical assessment

The simplification is valid. For an actual phase side, write its centered Fourier coefficients as A,B,C,D. The identities

\[
\alpha=AB,\quad\gamma=AD+BC,\quad
n=|A|^2+|B|^2,\quad k=C\bar A+D\bar B,
\]

give

\[
\frac{n\gamma-2\alpha k}{AD-BC}=|A|^2-|B|^2.
\]

The determinant radical supplies \(\delta=\pm(AD-BC)\). Choose its sign so that \(d_F\ge0\). Then \(\rho=|A|^2\ge n/2>0\), and the phase-root identity gives

\[
A^3=u\rho+\mu\alpha.
\]

The other Fourier coefficients follow from \(B=\alpha/A\) and

\[
\begin{pmatrix}\bar A&\bar B\\-B&A\end{pmatrix}
\binom CD=\binom k\delta.
\]

The coefficient matrix times its adjoint is \(nI\). This establishes the condition-number-one statement for that particular linear solve. It does not establish uniform conditioning of the entire seed reconstruction. In particular, prior rational denominators and the shared sheet collision remain relevant.

Since the output reconstructs an existing side up to permutation, the earlier global construction and lower-block-flatness theorem transfer. Their hypotheses remain inputs. No independent classification theorem or enlargement of the seed domain is claimed here.

## Notation and branch conventions

- The new \(\alpha,\gamma,\delta\) are the old corresponding quantities divided by nine. The old \(\beta,h\) are not needed by the new routine.
- The new amplitude orientation can reverse the previous orientation. Compare side matrices up to column permutation, not column-by-column in their initial order.
- The new \(T\) agrees with the old radicand only when the same Fourier orientation is used.
- The sign choice need not vary continuously through a tie. It is an explicit finite choice, not an assertion of a single continuous global branch.
- Zero mixed pivot, zero first-row mean and repeated coordinates do not introduce new branches within the retained domain.

## Verification actually performed

The exact checker verifies the phase Laurent identities for the centered product, variance and two-term cube, the discriminant identity, the block determinant, the amplitude identity, the covariance determinant and the scaled-unitary linear solve. It also verifies the quadratic-stage L coefficients and the displayed repeated-coordinate and zero-old-pivot examples.

An independent 80-digit run checked both sheets at 100 accepted strict-domain seeds (200 matrices), both sheets of four additional seed examples, and two side-only examples. The extra seeds include the previous H_cross and removable-pole frames. The side-only examples check a zero old pivot and a zero mean. Cube-root cycling and the initial determinant-root sign reproduce the same unordered sides in the tested cases.

For the 200 strict-domain matrices, maximum entry-modulus error was approximately \(5.84\times10^{-78}\), and maximum unitarity error was \(3.20\times10^{-77}\). Unordered sides agreed with the prior double-precision Fourier evaluator within \(4.06\times10^{-14}\). The 400 arbitrary ray inputs verify the transferred intensity and overlap identities; they are not physical pair witnesses. The complete recorded numbers are in [COMPACT_FOURIER_VERIFICATION.json](COMPACT_FOURIER_VERIFICATION.json).

These are our own checks, not a reproduction of the source's unavailable verification log. Floating-point checks support the implementation; the supplied Fourier argument and accepted earlier inputs establish general equivalence.

## Integration decision

The compact form is now the primary reconstruction. Previous sources and verifiers remain as derivations and comparison implementations. The active cube-free measurement formulation is [COMPACT_MOMENTS.md](../two_ray_locus/COMPACT_MOMENTS.md). The seed domain, number of continuous parameters, radical count, dimension theorem and unresolved global measurement restriction are unchanged.
