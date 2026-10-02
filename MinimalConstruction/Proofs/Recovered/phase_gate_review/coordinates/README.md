# Working coordinates: one-sheet conjugate-Fourier atlas

The current covering construction is the [one-sheet conjugate-Fourier form](Hadamard6_Single_Sheet_Conjugate_Fourier_Form.md), imported unchanged on 20 September 2026. Read the [independent review](SINGLE_SHEET_REVIEW.md) for its proof dependencies, checks and frame-transport rules. The [compact form](Hadamard6_Compact_Fourier_Normal_Form.md) remains available when both completions at a prescribed corner are required.

**Further structural simplification reviewed:** the [unitary-core phase-gate form](Hadamard6_Unitary_Core_Phase_Gate_Form.md) confines the cubic stage to two unit-phase roots around a quadratic-stage unitary core. Its two-angle unitary orbit is flat exactly at nine permutation-related gate settings. The [independent review and normalized measurement equations](PHASE_GATE_REVIEW.md) record the proof, checks and remaining limitations. The executable primary constructor below remains the one-sheet implementation; the new checker evaluates the factorization using its side data.

The four initial seed phases are unchanged. A seed-only row/column selection puts both complementary Grams into a frame with n>2/3. Choose the positive shared sheet and the larger first-row Fourier coefficient. Each side uses
\[
\rho=(n+d_F)/2>1/3,\qquad T=u\rho+\mu\alpha=\mu^3+u(\rho-|\mu|^2),\qquad \tau^3=T,
\]
and X=L diag(1,tau,conjugate(tau)) F_3, with bounded entries in L. The displayed variable divisions are by positive reals; the Fourier denominators n and rho have uniform lower bounds. The radical count remains one shared sheet square root, one determinant square root per side and one cube root per side.

## Domain and coverage

The strict domain is \(\mathcal R>0\). The permitted boundary is
\[
g>0,\quad\mathcal R\ge0,\quad
\prod_i(g+\zeta\Gamma_{h,ii})
\prod_i(g+\bar\zeta\Gamma_{v,ii})\ne0.
\]
Every symbol is defined in the source note. The six boundary factors can equivalently be written as nonzero P_i, because |P_i|^2=|g+z*Gamma_ii|^2. Frame selection adds no guard and does not enlarge the domain. Ties in either frame or Fourier orientation allow finite choices. The old factors g and P_i can still approach zero; no global numerical-conditioning claim follows from the new Fourier bounds.

Coverage of every non-Tao equivalence class, including H_cross, is inherited from the classification paper and the previously reviewed extensions. Tao is treated separately. This is coverage up to equivalence and reframing, not a construction at every exceptional fixed corner or a parametrization of the entire four-torus. Lower-block flatness uses the existing theorem; orthogonality alone would not suffice.

Opposite-corner exchange reverses the shared sheet and preserves the scalar data. Thus one positive sheet covers all the previously covered classes. This changes the seed in general and does not identify the two completions at the same prescribed corner.

## Implementation

[single_sheet.py](single_sheet.py) is an independent mpmath implementation reconstructed from the supplied note. The upstream Python files named there were not attached. It returns both an adapted matrix and a representative with the original input corner restored, together with the monomial transport operations.

From this directory, for example:

~~~python
import mpmath as mp
from single_sheet import from_angles

out = from_angles(['1.2', '2.5', '3.2', '6.0'], dps=80)
with mp.workdps(80):
    print(mp.nstr(out.horizontal.cube, 30))
    print(mp.nstr(out.matrix, 12))
    print(out.adapted_seed)
~~~

Use exact phase inputs or sufficiently precise mpmath values with from_phases. Accepted roundoff-sized modulus errors are normalized. The from_angles function forms phases at the requested precision. Use a working-precision context for subsequent arithmetic on returned data. Boundary mode permits a numerical roundoff-sized sheet collision and records it in boundary_roundoff_used; it does not certify exact boundary membership. Near singular data may require higher precision. This implementation provides numerical evaluations, not interval certificates.

The side records belong to adapted_matrix and adapted_corner. Apply left_transport to an adapted compatible ray or additional basis to obtain one for result.matrix. Do not combine the adapted side coefficients with the original corner. The previous [compact_fourier.py](compact_fourier.py) still accepts sheet=+1 or -1 for fixed-corner questions.

## Measurement equations

Use the [conjugate-Fourier cube-free equations](../two_ray_locus/SINGLE_SHEET_MOMENTS.md). The new correlation is Psi=rho*(z0*conj(z1)+z2*conj(z0))+T*z1*conj(z2), with no division by rho. They retain five real equations per common-unbiased ray, plus one complex overlap equation for a pair. Neither side cube root is needed to evaluate their coefficients.

This simplifies reconstruction and coefficient formulas. It does not eliminate ray variables, lower the established generic ray-algebra degree, or supply a seed-only measurement restriction. The prior [rational Möbius reduction](../two_ray_locus/MOBIUS_REDUCTION.md) remains an alternative for elimination experiments.

## Independent checks and retained derivations

Run from the project root:

~~~sh
OPENBLAS_NUM_THREADS=1 PYTHONDONTWRITEBYTECODE=1 python3 MeasurementCompatibility/coordinates/verify_single_sheet.py
~~~

The checker requires SymPy and mpmath and writes [SINGLE_SHEET_VERIFICATION.json](SINGLE_SHEET_VERIFICATION.json). It verifies the core identities exactly and checks 100 strict seeds, 100 negative-to-positive transports, four additional seed examples and 200 arbitrary ray inputs at 80 digits. Comparisons with the previous compact constructor also use 80 digits. The global result uses the written proof and inherited inputs; the sample is not a proof of coverage or physical pair existence.

Earlier sources and verifiers remain available:

- [Compact Fourier form](Hadamard6_Compact_Fourier_Normal_Form.md), [review](COMPACT_FOURIER_REVIEW.md), [checker](verify_compact_fourier.py) and [report](COMPACT_FOURIER_VERIFICATION.json).
- [Fourier–radical form](Hadamard6_Fourier_Radical_Normal_Form.md), [polynomial form](Hadamard6_Polynomial_Normal_Form.md), [review](FOURIER_REVIEW.md), and [checker](verify_fourier.py).
- [Commuting-pair form](Hadamard6_Commuting_Pair_Normal_Form.md), [review](COMMUTING_PAIR_REVIEW.md), and [checker](verify_commuting_pair.py).
- [Möbius form](Hadamard6_Mobius_Normal_Form.md) and [checker](verify_mobius.py); this is the preceding primary construction, whose narrower coordinate guards are not added to the compact form.
- [Barycentric derivation](Hadamard6_Barycentric_Four_Parameter_Form.md), [checker](verify.py), and [saved regression seeds](AUDIT.json).
