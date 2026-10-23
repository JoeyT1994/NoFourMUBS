# A denominator-scaled certificate for the cross-side step

## Scope

This note gives a compact **division-free polynomial circuit** for the two
existing `W11` coefficient identities. All algebra below follows from the
supplied third-moment formula, with no assumptions of matched flatness.
The two terminal polynomial zeros still require exact arithmetic checking.
They are not derived here from the metric/corner-side identities alone.

This is therefore a computational certificate route, not the requested
expansion-free structural proof. It is also not a compiled replacement for
`FlatData.lean`: the original Lean source was not included in the attachment.

## 1. Source data for one side

For either complementary Gram matrix use

\[
G=\begin{pmatrix}3&S&T\\s&3&Q\\t&r&3\end{pmatrix},
\qquad S=\bar s,\ T=\bar t,\ Q=\bar r.
\]

The quantities \(g,\eta,\chi,P_0,P_1,c_0,c_1\) have exactly the
definitions in the attached `FLATNESS.md`. Put

\[
d_G=P_0\overline{P_1}.
\]

Define the following two matrices, whose entries are Laurent polynomials
in the phase seeds after substituting the complementary Gram:

\[
H_0(G)=\begin{pmatrix}
Sd_G & S^2d_G-2s(g^2+c_1\chi+c_0c_1\eta)
     & STd_G-(\chi+c_0\eta)\overline{P_1}\\
3d_G&Sd_G&Td_G\\
rd_G&Sr d_G-c_1\eta P_0&Sd_G
\end{pmatrix},
\]

\[
H_1(G)=\begin{pmatrix}
0&-2s(c_0-c_1)&\overline{P_1}\\
0&0&0\\
0&-P_0&0
\end{pmatrix}.
\]

The supplied third-moment matrix then satisfies the exact identity

\[
\boxed{Q^{(1)}(G,z)=\frac{H_0(G)+gzH_1(G)}{d_G}.}
\tag{1}
\]

This is checked entry by entry by multiplying the denominators in the
attached formulas for \(u_1,\beta,\ell_1\). No use of the sheet equation
is needed after those affine formulas have been established.

## 2. Remove the inverse Gram before contraction

Set

\[
U=-gK=E^*\operatorname{adj}(G_h).
\]

Thus \(U\) itself is a Laurent-polynomial matrix, with no inverse and
no side denominator. For the normalized four-seed corner each entry
simplifies to eleven Laurent monomials. This term count is a computational
measurement, not an additional identity used by the argument.

Write

\[
H_i=H_i(G_h),\quad V_i=H_i(G_v),\quad
d_h=d_{G_h},\quad d_v=d_{G_v},
\]

and define

\[
J_{ij}=\sum_{a,c}(V_i)_{ac}(UH_jU^*)_{ac},
\qquad i,j\in\{0,1\}.
\tag{2}
\]

The pairing in (2) has the same ordered indices and no conjugation on
the first factor: \(J_{ij}=\operatorname{tr}(V_i^{\mathsf T}UH_jU^*)\).

Substituting (1) into the supplied defect formula gives

\[
d_hd_vg^2W_{11}(z,w)
=J_{00}+gzJ_{01}+gwJ_{10}+g^2zwJ_{11}
 -d_hd_vg^2S_vS_h.
\tag{3}
\]

All divisions used in deriving (3) are already valid on the strict domain:
\(g>0\) and \(P_{0,h},P_{1,h},P_{0,v},P_{1,v}\ne0\).
No exceptional locus has been added.

## 3. The two exact polynomial targets

Define

\[
\boxed{F_1=J_{01}-J_{10},}
\tag{4}
\]

\[
\boxed{F_0=J_{00}+\chi J_{10}+\eta g^2J_{11}
             -d_hd_vg^2S_vS_h.}
\tag{5}
\]

Both are integer Laurent polynomials in \(a,b,c,d\). They involve only
addition, multiplication and conjugation (negation of Laurent exponents).
The inverse Gram has disappeared, and no rational simplification or
polynomial factorization is part of these terminal assertions.

There is a useful exact residual identity even before asserting either
terminal zero. With \(h=\chi/g\),

\[
\begin{aligned}
d_hd_vg^2W_{11}(z,w)
={}&gJ_{10}(z+w-h)+g^2J_{11}(zw-\eta)\\
   &+F_0+gzF_1.
\end{aligned}
\tag{6}
\]

Consequently the exact checks \(F_1=F_0=0\) certify

\[
\boxed{
W_{11}(z,w)=B_0(z+w-h)+D_0(zw-\eta),
}
\]

with compact, factored coefficients

\[
\boxed{B_0=\frac{J_{10}}{d_hd_vg},\qquad
       D_0=\frac{J_{11}}{d_hd_v}.}
\tag{7}
\]

Because \(F_1=0\), \(J_{10}\) may equally be replaced by \(J_{01}\)
in (7). Equation (6) makes the connection between the polynomial circuit
and the ideal-membership claim explicit; a checker is not verifying an
unrelated zero polynomial.

The universal row/column relabellings from the attached handoff give the
remaining three entries. The exact invertible change from the lower block
of \(W\) to the conic contraction matrix then transfers the universal
vanishing to that matrix. It is not valid to identify the two scalar
entries \(W_{11}\) and \(\mathcal C_{11}\) at a fixed corner.

## 4. Exact replay and size measurements

`verification/verify_compact_rational.py` evaluates (1)--(5) in exact rational Laurent arithmetic
using the attached helper. Both terminal residuals are exactly zero.
The measured evaluation of this additional circuit took about 0.08 s
in the present environment, after constructing the reference data.
This timing is not a Lean-build benchmark.

The direct conic route was also independently checked:

\[
\mathcal C_{11}(z,w)=A+Bz+Cw+Dzw,
\quad B=C,\quad A+(\chi/g)C+\eta D=0.
\]

The reduced rational coefficients are considerably larger than those
of the old weighted defect:

| Coefficient | `W11` numerator / denominator terms | direct `C11` numerator / denominator terms |
|---|---:|---:|
| constant | 17,713 / 10,557 | 36,248 / 40,347 |
| either linear coefficient | 5,270 / 5,377 | 14,824 / 25,281 |
| bilinear coefficient | 2,882 / 5,377 | 20,028 / 40,347 |

For `W11`, the bilinear numerator factors into a phase monomial, the
31-term numerator of \(g\), and a 1,066-term polynomial. Its linear
numerator has one 5,270-term nonmonomial factor. The common denominator
factors into phase monomials and four 51-term side-polynomial factors.
The quotient \(B_0/D_0\) does not have a smaller unexpected factorization.

Both numerator and denominator of each reduced `W11` coefficient are
symmetric in \(b,c\). Rewriting in \(a,b+c,bc,d\) reduces the linear
numerator to 2,933 terms and the bilinear numerator to 1,635 terms; the
common denominator has 2,982 terms. A direct JSON serialization of both
reduced fractions is 193,193 bytes (48,600 bytes gzip). These are only
coefficient data; proving their relationship to the target still requires
the checked identities. This is not a fair substitute for a complete
229 KB Lean certificate and does not establish a reduction in Lean's
runtime or peak memory.

The practical compact representation is (1)--(5), or an independently
validated exact representation of that circuit. Its mathematical
derivation is the denominator scaling above; its final cancellation is
computational. An expansion-free proof of (4)--(5) from the metric and
corner-side couplings remains a separate requirement.
