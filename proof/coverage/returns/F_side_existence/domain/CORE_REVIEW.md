# Independent review of the arbitrary-Gram core and third-row flatness

**Verdict: the reviewed signs, rational substitutions, denominator factors,
normal-form reduction, and polynomial coefficient partition are correct.**
No existing-side or completion hypothesis enters these calculations. The
remaining dependencies in the assembly are stated explicitly below.

Reviewed files:

- `core/explore_core.py`, `core/explore_y_gram.py`;
- `algebra/explore_y.py`;
- their final replacements `core/gram_model.py`, `core/verify_gram.py`, and
  `algebra/y_model.py`.

The independent checker `domain/verify_core_review.py` reconstructs the raw
Fourier numerator from the actual row coefficients, independently performs its
rho reduction, and compares its result with both final models. Its latest run
passed 14 exact identities in 0.416 seconds. It confirms that the two auxiliary
conditions have 21 and 19 integer monomials. It performs no floating-point
acceptance and does not infer existence from successful sample evaluations.

## 1. The rescaled sheet variable

The core uses \(y=gz\), so its relation is

\[
C_y=y^2-\chi y+g^2\eta=0.
\]

This follows from the given sheet quadratic after multiplication by \(g^2\),
and conversely recovers it since strict seeds have \(g>0\). This \(y\) is an
independent algebraic coordinate, not a phase entry of a presumed side.

Write \(B_j=\bar P_j\). The numerator

\[
L_0=g^2+c_0(\chi-y)
\]

gives \(\lambda_0=L_0/(gB_0)\). Likewise
\(\bar\lambda_j=(g^2+c_jy)/(gP_j)\).
The compact formulas in the model are justified by the following identities:

\[
L_0(g^2+c_1y)-g^2U_1=-c_0c_1C_y,
\]

\[
L_0(g^2+c_2y)-g^2U_2=-c_0c_2C_y,
\]

\[
yL_0-g^2(y+c_0\eta)=-c_0C_y,
\]

\[
\begin{aligned}
L_0(g^2+c_1y)(g^2+c_2y)-g^2E_N
={}&\bigl[g^2(c_1c_2-c_0c_1-c_0c_2)\\
&\quad-c_0c_1c_2y\bigr]C_y.
\end{aligned}
\]

These are precisely the four final bridge certificates, including the correct
sign of the cubic product cofactor. The conjugate numerator `U1bar` is also
correct: it is obtained by exchanging \(c_0,c_1\) in the first identity, or by
conjugating with \(\bar y=\chi-y\).

Consequently the compact rational formulas are

\[
u=\frac{U_1}{B_0P_1},\quad
v=\frac{U_2}{B_0P_2},\quad
e=\delta^2=\frac{E_N}{27B_0P_1P_2},
\]

\[
\alpha=\frac{A_N}{9B_0P_1},\quad
\beta=\frac{B_N}{9B_0P_2},\quad
\gamma=\frac{G_N}{9B_0},
\]

\[
\bar\alpha=\frac{\overline A_N}{9P_0B_1},\quad
\bar\gamma=\frac{\overline G_N}{9P_0},\quad
k=K_N/9,\quad \bar k=\overline K_N/9.
\]

There is no missing factor of \(g\), 3, or 9 in these substitutions.

## 2. Clearing factors for the scalar core

The target residuals and their clearing factors are:

| Residual | Nonzero clearing factor |
|---|---|
| \(h-nm+k\bar k\), \(h=g/27\) | \(81\) |
| \(\gamma^2-4\alpha\beta-e\) | \(81B_0^2P_1P_2\) |
| \(e\bar\alpha-n\gamma k+\alpha k^2+n^2\beta\) | \(729B_0P_1P_2P_0B_1\) |
| \(e\bar\gamma-\gamma(nm+k\bar k)+2\alpha km+2\beta n\bar k\) | \(729B_0P_1P_2P_0\) |

These exactly reproduce `targets()` in the final model. The first identity is
\(3g-c_1c_2+K_N\overline K_N=0\); it already vanishes as a polynomial, with
no use of the sheet relation.

For the two additional Y conditions, `SPEC` correctly records a denominator
monomial in

\[
3,\ B_0,\ P_1,\ P_2,\ P_0,\ B_1.
\]

The componentwise maximum exponent is a common denominator. Multiplying each
term by its missing powers yields the displayed cleared polynomial. Every
base factor is nonzero on strict seeds by `DOMAIN.md`. Neither seed entries
\(s,t,r\), nor \(\alpha,\beta,\gamma\), nor any auxiliary coefficient is
divided out.

## 3. Which physical Fourier coefficient is being checked?

Put

\[
M_y=(\nu,c_+\sigma,c_-\bar\sigma).
\]

The nonconstant row-flatness numerator used by the reference recipe is

\[
\mathcal F_y
=\sigma^2\bigl(\nu\overline{c_+\sigma}
  +c_-\bar\sigma\bar\nu\bigr)
 +\rho(c_+\sigma)\overline{c_-\bar\sigma}.
\]

Define the smaller coefficient

\[
F_y=\nu\bar c_++\bar\nu c_-+\sigma c_+\bar c_-.
\]

Then the following exact identity holds, without assuming a side exists:

\[
\mathcal F_y-\rho\sigma F_y
=\sigma(\nu\bar c_++c_-\bar\nu)
 (\sigma\bar\sigma-\rho).
\]

Thus \(|\sigma|^2=\rho\) gives \(\mathcal F_y=\rho\sigma F_y\). Since
\(\rho>0\) and \(\sigma\ne0\), the conditions are equivalent. This verifies
the exact connection between the algebraic Y residual and the physical
Fourier condition. There is no transpose, conjugation, or sign reversal
missing in this passage.

## 4. Direct derivation of the raw numerator

For clarity, use the code's auxiliary notation

\[
a=\alpha,\quad A=\bar\alpha,\quad K=\bar k,\quad
c=\gamma,\quad e=\delta^2,\quad h=\delta\bar\delta=g/27,
\]

and write \(D=nc-2ak\), \(S_0=u\rho+\mu a\). The definitions imply

\[
c_+=\frac{k\rho-\delta A}{n\rho},\quad
c_-=\frac{ka+\delta\rho}{n\rho},\quad
\sigma=\frac{S_0}{\rho},
\]

\[
\bar c_+=\frac{K\rho-\bar\delta a}{n\rho},\qquad
\bar c_-=\frac{KA+\bar\delta\rho}{n\rho}.
\]

Define exactly as in the final model

\[
\begin{aligned}
R_0={}&n\nu K\rho^3+n\bar\nu ka\rho^2
       +A\rho(kK-h)S_0,\\
R_d={}&n\bar\nu\rho^3-KA^2S_0,\\
R_b={}&-n\nu a\rho^2+k\rho^2S_0.
\end{aligned}
\]

Then

\[
n^2\rho^3\delta F_y=\delta R_0+eR_d+hR_b.
\tag{R1}
\]

This is checked directly after clearing only the displayed definitions and
using \(\delta\bar\delta=h\), \(\delta^2=e\). In particular, the negative
terms \(-KA^2S_0\) and \(-n\nu a\rho^2\), and the factor \(kK-h\), all have
the correct signs. Equation (R1) does not use either Y condition, the Gram
identity for the constructed side, or entrywise flatness.

## 5. Exact rho elimination

Let \(N=\delta R_0+eR_d+hR_b\). Divide this polynomial in \(\rho\) by the
monic relation

\[
Q_\rho=\rho^2-n\rho+aA.
\]

Write the quotient as \(q_\rho\), and the remainder as
\(L_0+\rho L_1\), where \(L_1=A_0+\delta B_0\). The temporary symbols
\(A_0,B_0\) in this paragraph denote coefficients, not the Gram polynomials.
The final normal form is

\[
N_{\rm red}=2eL_0+A_0(en+\delta D)+eB_0(n\delta+D).
\]

The exact cofactor identity is

\[
\begin{aligned}
2eN-N_{\rm red}
={}&2e q_\rho Q_\rho
 +L_1(2e\rho-en-\delta D)\\
&+B_0D(\delta^2-e).
\end{aligned}
\tag{R2}
\]

The root-rho relation used here follows from the already derived scalar
identities:

\[
\begin{aligned}
2e\rho-en-\delta D
={}&e(2\rho-n-d_F)+\delta(\delta d_F-D)\\
&-d_F(\delta^2-e).
\end{aligned}
\tag{R3}
\]

The final `algebra/y_model.py` uses the equally valid decomposition through
\(2\delta\rho-n\delta-D=0\). Both reproduce the same normal form.

Its constant coefficient is exactly divisible by \(e\), and

\[
N_{\rm red}=eY_0+\delta Y_1.
\]

The independent checker verifies this divisibility as a polynomial identity,
not by a numerical test. It also verifies that `gram_model.y_conditions()`
returns exactly these same \(Y_0,Y_1\). Their 21 and 19 coefficients are
integers.

## 6. Divisor and dependency audit

Once the two arbitrary-Gram certificates give \(Y_0=Y_1=0\), equations
(R1)–(R3) prove

\[
2e\delta n^2\rho^3 F_y=0.
\]

Every canceled factor is nonzero:

- \(n>0\) comes directly from strict-seed positivity;
- \(\delta\ne0\) and \(e=\delta^2\ne0\) follow from its prescribed square
  root and \(g>0\);
- the reality of \(d_F\) follows from core I–III before any division by
  \(\rho\), and its sign choice gives \(\rho\ge n/2>0\).

The separate x-row scalar calculation in `assembly/ASSEMBLY.md` proves
\(|\sigma|^2=\rho\) from \(u\bar u=1\), the definitions of \(n,\alpha,q\),
and the rho quadratic. That calculation does not use third-row flatness.
Accordingly, using \(\sigma\ne0\) to identify \(F_y\) with the physical
Fourier condition creates no circularity. The later constructed-side Gram
identity uses this independently established sigma norm.

## 7. Polynomial partition audit

For a cleared target \(P\) and its saved cofactor \(Q\), the verifier proves
\(P=C_yQ\). Partitioning in the two independent variables \(s,S\) writes

\[
P=\sum_{i,j}s^iS^jP_{ij},\quad
C_y=\sum_{i,j}s^iS^jC_{ij},\quad
Q=\sum_{i,j}s^iS^jQ_{ij}.
\]

The checked identity for each pair is

\[
P_{ij}=\sum_{a,b}C_{ab}Q_{i-a,j-b}.
\]

Summing these identities proves the original polynomial identity. It is
essential that the verifier checks the union of all indices on both sides;
the final code does so. Thus a coefficient absent from the saved residual is
still checked against the complete product coefficient, including any
cancellation to zero. No coefficient of the cofactor is assumed to vanish.

This is coefficient grouping in a polynomial ring. It does not divide by
\(s\), \(S\), or any coefficient, and therefore introduces no exceptional
locus. The variables may subsequently be specialized to conjugate pairs.

## 8. Exact-acceptance implementation details

The final Gram verifier rebuilds the targets from fixed formulas, verifies
the saved residual against the rebuilt target, parses only canonical integer
coefficient arrays, checks the saved sheet quadratic, and multiplies the
saved cofactors. Default verification never calls the quotient generator.
All comparisons are exact coefficient comparisons.

One minor hazard in the exploratory script was its unconditional
`int(coefficient)` conversion. Its actual coefficients were checked to be
integers, so it did not invalidate this calculation. The final
`clear_auxiliary_polynomial()` explicitly checks denominator 1 before the
conversion, resolving that implementation hazard.

This review establishes the stated algebraic links. It does not by itself
claim that lower-block flatness, global coverage, or the no-four-MUB theorem
has been proved.
