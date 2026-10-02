# Global measurement coordinates with no cube roots in the equations

**Further simplification:** `SingleRadicalMeasurements.md` removes both side
square roots too, proves that all remaining completion dependence is affine
in the single shared sqrt(R), and gives an optional exact elimination of that
last radical. The present note remains the proof of the underlying mixed
coordinates and their explicit recovery.

**Result.** The PDF reconstruction admits an exactly equivalent measurement
normal form on its entire domain `R>0`. For each common-unbiased ray, use
three phase entries in the standard basis and three in the carrier basis.
After fixing their shared phase, these are five phase variables. Compatibility
is exactly one real and two complex quadratic equations. Orthogonality between
rays is a quadratic equation rational in the original four seeds (with the
fixed normalization constant sqrt(6)), with no seed-dependent radicals and
no dependence on the completion sheet.

Neither the lower-right block D nor the two cube roots occurs in these tests.
The cube roots are evaluated only if the actual matrix or full rays are wanted.
There are no new guards, local branches, projection exclusions, or additional
continuous parameters.

This is an improvement of the **joint carrier-and-measurement representation**.
It does not replace a,b,c,d by a new four-parameter carrier chart, reduce the
number of ray phases, or prove the three-ray exhaustion conjecture. The usual
entrywise ray equations are already quadratic; the improvement is their
coefficient structure and the removal of unnecessary reconstruction stages.

## 1. Unchanged carrier data

Use the current PDF, *A four-phase, positive-sheet reconstruction*, without
changing its seeds or domain:

\[
 E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},\qquad
 G=6I-EE^\dagger,\qquad T=6I-E^\dagger E,
 \qquad g=\det G=\det T>0.
\]

Let `M_h,xi_h` and `M_v,xi_v` be the PDF's side data, stopped **before** taking
the two cube roots. Thus

\[
 3M_hM_h^\dagger=G,\qquad
 3\overline{M_v}M_v^T=T,\qquad |\xi_h|=|\xi_v|=1.
\]

All these are explicit functions of a,b,c,d requiring only the PDF's three
square roots. In particular

\[
 |\det M_h|^2=|\det M_v|^2=g/27>0.
\]

Write

\[
 J=\operatorname{adj}(T),\qquad
 A_v=\operatorname{adj}(\overline{M_v}),\qquad
 A_h=\operatorname{adj}(M_h).
\]

Every adjugate consists of signed 2-by-2 determinants. The new equations below
use no matrix inverses or linear solves.

Seeds are retained verbatim and recovered as
`(a,b,c,d)=(E11,E12,E21,E22)` in zero-based indexing. There is no seed inversion
problem or unidentified finite fiber introduced by this change.

## 2. Five phase variables and five real compatibility equations

Choose

\[
 x=(x_0,x_1,x_2)^T\in\mathbb T^3,\qquad
 p=(p_0,p_1,p_2)^T\in\mathbb T^3.
\]

They will be the first three entries of a raw phase ray v and of
`H†v/sqrt(6)`, respectively. Set `x0=1` to remove their common phase; this is
always possible and leaves five phase variables.

Form the linear expressions

\[
 z=\sqrt6\,p-E^\dagger x,\qquad h=\sqrt6\,x-Ep,
 \qquad r=A_vz,\qquad t=A_hh.
\]

Define the real quadratic and two complex quadratics

\[
 \boxed{N=z^\dagger Jz-3g,}
\]

\[
 \boxed{
 C_v=\xi_v(r_0\bar r_1+r_2\bar r_0)+r_1\bar r_2,
 \qquad
 C_h=t_0\bar t_1+t_2\bar t_0+\xi_h t_1\bar t_2.
 }
\]

**Theorem.** At every seed in the PDF domain, a phase pair (x,p) comes from a
common-unbiased ray if and only if

\[
 \boxed{N=0,\qquad C_v=0,\qquad C_h=0.}
\]

These are five real equations. They contain neither D, Fourier matrices,
phase cube roots, nor the full 6-by-6 H. The norm equation N has coefficients
rational in the seeds with no seed-dependent radicals. Only the other four real equations
use the quadratic-stage side data.

## 3. Explicit recovery and proof

For display or recovery only, choose the PDF phase roots

\[
 w_h^3=\xi_h,\qquad w_v^3=\xi_v,
 \qquad P(w)=\operatorname{diag}(1,\bar w,w),
 \qquad F=(\omega^{jk})_{j,k=0}^2,\quad \omega=e^{2\pi i/3}.
\]

Put `Delta_h=det(M_h)` and `Delta_v=det(M_v)`. The complete raw input and
output rays are

\[
 \boxed{
 v=\binom{x}{y},\quad
 y=\frac{F P(w_v)r}{3\overline{\Delta_v}},\qquad
 \widehat v=\binom{p}{q},\quad
 q=\frac{F^\dagger P(w_h)^\dagger t}{3\Delta_h}.
 }
\]

The normalized quantum ray is `v/sqrt(6)`. The full carrier is still the
PDF's `H_+(a,b,c,d)`.

First, the PDF sides are `B=M_h P(w_h)F` and `C=F P(w_v) M_v^T`. The displayed
y satisfies

\[
 C^\dagger y=\sqrt6\,p-E^\dagger x=z.
\]

Thus the first three entries of `H†v/sqrt(6)` equal p. Block orthogonality,
or substitution of the PDF's explicit D formula, gives

\[
 q=B^\dagger\frac{\operatorname{adj}(G)}g(\sqrt6\,x-Ep)
   =\frac{F^\dagger P(w_h)^\dagger t}{3\Delta_h}.
\]

Consequently `H†v/sqrt(6)=widehat v` for **every** x,p, even before imposing
flatness. Invertibility of C gives uniqueness. This is a globally invertible
linear change of ray variables at each seed.

The Gram identity also gives

\[
 A_v^\dagger A_v=J/9,\qquad
 N=9\|r\|^2-3g.
\]

Unitarity of `H/sqrt(6)` implies

\[
 9(\|r\|^2-\|t\|^2)=g(\|p\|^2-\|x\|^2).
\]

For phase triples x,p the right side vanishes. Hence a **single** norm
equation suffices for both Fourier triples.

For a three-term Fourier expression

\[
 f_j=A+B\bar w\,\omega^j+Cw\,\omega^{-j},
\]

the nonconstant coefficient of its squared modulus vanishes exactly when

\[
 w^3(A\bar B+C\bar A)+B\bar C=0.
\]

This replaces w by its known cube xi. Applying it to y and to the opposite
Fourier convention for q gives exactly `C_v=0` and `C_h=0`.
Together with their norm condition, these say that all entries of y,q have
modulus one. Both directions of the theorem follow.

More quantitatively, for **every** phase pair x,p the following exact identity
holds for the reconstructed y,q:

\[
 \boxed{
 g^2\sum_{j=0}^2\left[
 (|y_j|^2-1)^2+(|q_j|^2-1)^2\right]
 =\frac23N^2+54\bigl(|C_v|^2+|C_h|^2\bigr).
 }
\]

This identity proves that the replacement introduces no spurious physical
solutions. It is also a direct residual check for implementations. Because
its left side sums over the coordinates, it is unchanged by all cube-root
permutation choices.

## 4. Several rays: all overlaps use only E

For two mixed-coordinate pairs `(x,p)` and `(x',p')`, put
`z=sqrt(6)p-E†x` and `z'=sqrt(6)p'-E†x'`. Define

\[
 \boxed{\mathcal B_E((x,p),(x',p'))
       =g\,x^\dagger x'+z^\dagger Jz'.}
\]

Their reconstructed raw rays satisfy the exact identity

\[
 \boxed{\mathcal B_E((x,p),(x',p'))=g\,v^\dagger v'.}
\]

Indeed `y†y'=z†Jz'/g`, since `C†C=T`. This calculation explains why the
completion sheet and every side radical disappear from the overlap formula:
they do not change the required Gram matrix T.

Thus k orthogonal common-unbiased rays exist **if and only if** there are k
phase pairs, each satisfying the three equations in Section 2, and

\[
 \boxed{\mathcal B_E((x_i,p_i),(x_j,p_j))=0\quad(i<j).}
\]

For three rays this is 15 phase variables and 21 real equations: 15 individual
compatibility equations and six real orthogonality equations. These are
listed equation counts, not an assertion of algebraic independence.
No completion to a third basis or Kramers-pair assumption is used.

This overlap formula works between rays in different added measurements too.
When both rays are normalized, their inner product is `mathcal B_E/(6g)`.
Mutual unbiasedness between them is therefore exactly

\[
 |\mathcal B_E|^2=6g^2.
\]

The last equation is quartic in the ray phase variables; no reduction of
that degree is claimed.

## 5. Global coverage, gain, and limits

The argument uses only the PDF's strict reconstruction and the positive
quantity g. It does not divide by a ray coordinate, a minor that could vanish
inside the domain, or a projected discriminant. The two determinant divisors
in **recovery** have squared modulus g/27; hence they never vanish here.
The compatibility tests themselves introduce no variable denominators beyond
those already present in the PDF's side data.

Every admissible seed and every common-unbiased ray is retained. The equations
are independent of the nine phase-cube-root choices. They also apply to the
other matched sheet if its quadratic-stage side data are supplied. Degenerate
Fourier-coefficient orientations cause no additional exclusion: the PDF's
permitted presentation choices give the same physical solution set.

Accordingly the global class coverage is exactly the PDF's accepted coverage:
all non-F6, non-Tao classes, up to Hadamard equivalence. Strict-corner coverage,
matched completion, and the positive-sheet covering remain external theorem
inputs, as explicitly stated in the PDF. This note proves the measurement
change of variables; it does not re-prove those inputs.

The practical gain is an exact global system in which:

- the full H and its lower-right block never need to be expanded;
- both cube-root extensions are absent from the compatibility equations;
- all pairwise overlaps and one norm constraint per ray use only the seeds;
- all remaining individual-ray equations are quadratic in five phase variables,
  with coefficients computable at the PDF's square-root stage;
- seeds and complete rays are explicitly recoverable.

The remaining hard question is what eliminating the ray phases forces on E.
No seed-only three-dimensional locus, favourable-corner theorem, or small
factorization is claimed. The new equations provide a simpler global starting
point for that question.

## Verification and files

`../Implementation/model.py` implements the entire current PDF formula
for all four seeds, without the old a=-1 specialized denominator guard. It also
implements the new equations, ray recovery, and seed-only overlaps.

`../Implementation/verify.py` proves the two Fourier residual identities
symbolically and runs 70-digit numerical regressions. The recorded run tested
40 generic strict seeds across both sheets, 64 reconstruction branch cases,
and an independently specified known six-ray third basis. It checked the
Hadamard identities, the unchanged corner, recovery in both bases, all new
compatibility equations, the overlap identity, and the sum-of-squares identity.
The largest absolute residual was below `5.1e-62`.

The proof above establishes the global equivalence; numerical regressions
are checks of the implementation, not a substitute for that proof. They do
not certify inputs with interval arithmetic or assert numerical stability
uniformly as R approaches zero.

Run with Python, mpmath, and SymPy:

```
python ../Implementation/verify.py
```
