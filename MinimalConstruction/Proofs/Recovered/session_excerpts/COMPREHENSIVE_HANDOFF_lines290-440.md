\]

They obey

\[
D_E=2P_E+P_B,\qquad D_B=P_E+2P_B.
\]

Necessary consequences include \(p+|j|\le9\), \(D_E\ge2P_E\), and the corresponding determinant comparison. Some energy identities already appeared in the original radical note; the symmetric cone and invariant filters are the new useful packaging.

The same work exposes the standard two-dimensional \(S_3\) immanant block. In A3's complementary convention \(j_c=-j\), its source identities are

\[
\|F_{\rm std}(E)\|_{\rm F}^2=2p+j_c,\qquad
|\det F_{\rm std}(E)|^2=3d+j_c(j_c+p),
\]
\[
|\operatorname{perm}E|^2+|\det E|^2+
2\|F_{\rm std}(E)\|_{\rm F}^2=36.
\]

They give anisotropy/rank-loss inequalities and a two-permanent-circle description of the invariant relaxation. The fixed-row-triple sum rule \(\sum_{|C|=3}|\operatorname{perm}H_{R,C}|^2=72\) accompanies the determinant sum 216. These are additional cheap invariant consistency checks, with the source-domain and physical binding still required; the relaxation is not by itself the complete MUB incidence.

The intrinsic discriminant is

\[
F(p,j,d)=
[d+(p-15)j-(p-9)(p-18)]^2
-4(9-p+j)(27-3p+j)^2.
\]

The incoming differential identity is

\[
F=-4(\operatorname{Im}Q)^2=-64(\det Dm)^2.
\]

For a seed, the complementary side condition is \(\Omega(E)=F(p(E),-j(E),d(E))<0\). The old radical \(\mathcal R\) equals \(-F\) for the same Gram convention. The scalar dictionary is now kernel checked in I1; binding it to every actual physical invariant remains separate. The seed/complement sign conventions must not be mixed.

The new proposed results are:

1. **Two-orbit strict side fiber:** if a physical Gram fiber is nonempty and \(F<0\), it contains twelve labeled points, or two column-permutation orbits. Properness, degree and orientation arguments are part of the proof obligation.
2. **Strict completion exhaustion:** normally there are two matched framed completions. Two Tao corner classes have a third completion; the fourth pairing is explicitly nonflat. This could reduce the sixteen-tag necessary cover after formal admission.
3. **Global critical-locus closure:** the sum of \((\operatorname{Im}Q)^2\) over all 400 corners vanishes precisely at the equivalence class of \(F_6\). The earlier Karlsson-only proof is an intermediate dependency, not the complete result.
4. **Local conditioning:** the Gram Jacobian identity and Frobenius estimates give a lower singular-value bound proportional to \(\sqrt{-F}\). The source bound is \(\sqrt{-F}/[8(12/5)^{5/2}]\), under its moment-map normalization.
5. **Global score selector:** maximizing the complementary strictness score supplies a positive margin at each non-\(F_6\) matrix, with the source's explicit comparison to the summed invariant.

The pointwise positive margin can approach zero near \(F_6\). It also need not select one of the twenty current determinant-optimized frames. Formalizing this theorem would greatly simplify corner choice, but it does not yet justify discarding the checked fallback or assuming a finite well-conditioned cover.

C04's two-trace/deltoid construction gives a complete alternative seed coordinate system using reciprocal cubics. It still has four real dimensions and retains repeated-root/deltoid boundaries. C05's stronger singular-3-minor routing to Fourier or transpose could separate the domain needed by finite ray algebras; removing that branch in a quartet proof also needs the external Fourier nonextension theorem. Fourier carriers themselves can admit a third basis.

## 10. Intrinsic quotient and elliptic reconstruction — R

C11–C18 reorganize the same carrier dimension and finite lifts:

- **Modulus cubic:** \(M(T)=T^3-pT^2+(d+k)T-k\), with an explicit discriminant. Fold curves include \(d=p-1\) and \(27d=p^2(9-p)\). This helps restrict invariant boxes and identify true branch changes.
- **Row/column coupling:** a symmetric biquadratic relates the two directional modulus variables. They should not be chosen independently. Its automatic positivity statements require the full source-domain hypotheses.
- **Generic quotient inverse:** a constructive finite lift gives the reported 144 directed / 288 unoriented labeled counts. These are presentation counts under the source's conventions, not counts of inequivalent Hadamards.
- **Hidden-sheet normalization:** retain \(\varpi\) with \(\varpi^2=-xR(x)\Delta_-\). At \(\Lambda=0\), the projected response can identify two different lifts. The first v6 example is singular; v7 provides a smooth-fiber example.
- **Elliptic fiber:** \(q^2=xR(x)\) admits the displayed Weierstrass form. Complementary block data correspond to one elliptic point and translations by marked sections.
- **One oriented edge:** this determines the complementary invariant block square through rational operations and the appropriate finite choices. Balanced \(j=0\) and vertical-line cases have separate formulas.
- **Singular fibers:** the source identifies the divisor involving \(\Theta\), \(p-1-d\), and \(27d-p^2(9-p)\), with rational normalizations and special balanced/torsion/self-dual leaves.
- **Frame scanning:** the regularity existence test can be organized as 400 positional corner scores or 100 complementary squares instead of redundant ordered frames.

The generic invariant fiber has three base invariants plus one elliptic coordinate. It remains four-dimensional. Actual phase entries live on finite lifts above it. A two-element basis for the elliptic function field only reduces coefficients proved to belong to that field; it does not automatically reduce every full MUB equation.

The product-sheet coordinate \(t\) rationalizes the stated double cover with involution \(t\mapsto C/t\). Its nonzero-coordinate and boundary hypotheses remain part of the chart. The scalar source polynomial \(R(x)\) here is not automatically the old seed radical \(\mathcal R\).

**Numerical benefit:** shared computation across related blocks, fewer redundant finite choices, and explicit singular invariant routing. Required next step: a complete invariant-to-phase-matrix lift with common ray transport and quantitative bounds.

## 11. Finite common-ray classification and exact length — R

C19–C22 apply hyperplane-arrangement and projective algebra to carriers with **all positional 3-minors nonzero**.

The twelve hyperplanes from the two bases have a controlled intersection pattern. The incoming proof checks the nonzero dense-edge weights required by the established unbalanced-master-function theorem. It gives a finite complex ray algebra, including multiplicities, even when the roots are not simple.

Let \(b\) be the number of zero positional 2-minors. The proposed affine length is

\[
252-2b.
\]

The generic number 252 is the Segre degree \(\binom{10}{5}\); the application to every retained minor-support stratum is the new classification work. The non-Tao support graph is described by paths/even cycles with maximum degree two and \(b\le30\); Tao has \(b=45\).

There are 72 universal nonphysical formal sections, obtained from carrier columns by one-coordinate factors \(-2\pm\sqrt3\). They can form formal complete bases, so leaving them in a complex elimination ideal makes the projection dominate every carrier. They must be removed by a justified saturation or equivalent decomposition.

The later projective completion accounts for all boundary points:

| Piece | Complex scheme length |
|---|---:|
| Full projective pair scheme | 252 |
| Universal nonphysical sections | 72 |
| Affine residual | \(180-2b\) |
| Nonphysical coordinate boundary | \(2b\) |
| Projective residual after deleting only the universal sections | 180 |

The \(2b\) boundary points have explicit support types and are simple under the stated domain hypotheses. They stay inside the rank-180 projective residual. Deleting them as well changes the length back to \(180-2b\).

These are complex lengths with multiplicity, not counts of physical rays. The real/conjugation involution and a trace-signature or equivalent physical selection must still be bound. Root collision does not authorize dropping multiplicity or declaring a ray absent.

The logarithmic algebra has explicit circuit reductions on zero-minor support strata. Do not divide by a vanished circuit determinant. A projective algebra is a candidate fallback when support changes inside a parameter cell.

The constructive projective proposal uses Hilbert function \(1,26,126,226,251,252\), and degree-five/six linear algebra. Its raw matrix sizes are 158,760 by 63,504 and 635,040 by 213,444. A theoretical common affine cover has 2,521 charts. These constructions are not yet a practical full six-dimensional parameter-family backend; the supplied model checks are much smaller.

**Numerical benefit:** a principled completeness count, fixed-size projective residual data and a possible replacement for repeated root finding. Required output: sparse multiplication matrices, exact algebra relations, conjugation and physical bindings, all support/boundary charts, and a formal length/flatness theorem.

## 12. Corrected deletion of universal formal rays — S/R

If rays are normalized at coordinate \(\ell\), put

\[
P_j=\sum_i\overline{H_{ij}}x_i,\qquad Q_j=\sum_iH_{ij}y_i,
\]
\[
s_j=H_{\ell j}P_j+\overline{H_{\ell j}}Q_j,\qquad
L_H=\prod_j(6-s_j)(18+s_j).
\]

This is the corrected gauge-covariant expression. The incoming primitive note used \(P_j+Q_j\) after normalizing rays at coordinate six, without requiring carrier row six to be ones.

On a physical ray, the corrected \(s_j\) is real and \(s_j^2\le24\), so every factor is positive. On a universal formal section, the selected-column sum is six if the modified row differs from \(\ell\), and minus eighteen otherwise; one factor vanishes.

An independent exact Fourier control verifies all formal ray equations but gives the old product

\[
1742412223296-5524537519872i\ne0,
\]

while the corrected product is zero. The source verifier normalized the carrier's last row too, so its successful control did not expose the missing hypothesis.

I1 includes kernel-checked scalar identities and positivity for this repair. The complete matrix, conjugation, normalization and finite-product bindings remain open. The original archived sources are unchanged; [CORRECTIONS.md](../../intake/2026-09-21_classification_chats.nosync/CORRECTIONS.md) must accompany reuse.

## 13. Nonreduced ray algebras, moments and basis selectors — R

C21/C23 replace root-by-root descriptions by positive functionals on a finite real algebra. Positivity removes nilpotent and nonreal contributions under the proposed theorem, allowing physical ray measures and tight frames to be reconstructed.

Simple-root idempotent selectors are useful on the reduced/étale branch. They are not a replacement for handling multiple roots. The positive-functional extension is intended to cover that case.

The source reformulates full bases through frame-operator purity and, on its 25-dimensional complement, a convex feasible set of trace-five operators. A quartet corresponds to attaining squared diameter ten. This may permit support-function or moment bounds without consistent numerical root labels.

The final objective remains nonconvex: maximizing squared distance over a convex set is not automatically an SDP. The physical reconstruction theorem and every normalization of the operator coordinates need formal binding.

**Numerical benefit:** an alternative treatment of collisions and unlabeled rays. It should be benchmarked against the existing ray/graph route, not assumed cheaper.

## 14. A potentially thinner third-basis carrier locus — R

C25/C26 claim

\[
\dim_{\mathbb R}\mathcal E_3\le3,\qquad
\dim_{\mathbb R}(\mathcal E_3\cap\mathcal K_6^{(3)})\le2.
