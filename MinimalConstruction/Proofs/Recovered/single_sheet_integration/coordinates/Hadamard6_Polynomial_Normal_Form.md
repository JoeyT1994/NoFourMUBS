# A polynomial four-phase normal form, and independence of the two cubic extensions

## Scope and mathematical inputs

The results of Mateo Cárdenes Wuttig and Joseph Tindall, *A Complete Classification of Complex Hadamard Matrices of Order Six*, supplied as `HadamardClassification(4).pdf`, are accepted as true. Global coverage uses its Theorem 22 and the preceding explicit inclusion of H_cross. Full lower-block flatness uses Supplemental Proposition S.11, through its extension established in `Hadamard6_Commuting_Pair_Normal_Form.md`.

The new results here are:

1. An explicit scalar-cubic construction with polynomial entry evaluations. It needs no multiplication matrices, eigenvectors, rational companion function, or per-root division.
2. Three fixed real projections suffice to avoid every repeated-coordinate problem.
3. The two generic cubic extensions are geometrically independent over the original four-seed sheet field. The selected-root compositum has degree nine, even with complex constants; the full splitting fields have generic Galois group S3 × S3. Thus one cubic solve, supplemented by any number of quadratic solves, cannot replace both while retaining these seed parameters and algebraic operations.

The third statement is a restriction on parametrizations over the **original seed field**, not a claim about arbitrary new coordinates or transcendental representations. The first two statements preserve the preceding strict and boundary domains; they do not assert additional boundary coverage.

Matrices are unnormalized: all entries have modulus one and HH†=6I.

---

## 1. Seed data and the shared sheet

Choose four phases a,b,c,d and set

\[
E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},
\qquad
G_h=6I-EE^\dagger,
\qquad
G_v=6I-E^T\bar E.
\]

For G_h let

\[
\Gamma_h=\operatorname{adj}G_h,
\qquad g=\det G_h,
\qquad \sigma=\operatorname{tr}\Gamma_h,
\]

\[
\eta=g+36-2\sigma,
\]

\[
\chi=\prod_{i=0}^2(\Gamma_{h,ii}-8)
       +2(\sigma-16)^2+(12-\sigma)g,
\qquad
\mathcal R=4g^2\eta-\chi^2.
\]

The same scalars are obtained from G_v. For a discrete sign epsilon=±1 set

\[
\boxed{\zeta=\frac{\chi+i\varepsilon\sqrt{\mathcal R}}{2g}.}
\]

Then

\[
|\zeta|^2=\eta,
\qquad \zeta+\bar\zeta=\chi/g,
\qquad g\zeta^2-\chi\zeta+g\eta=0.
\]

Use z=ζ horizontally and z=conjugate(ζ) vertically.

### Domain

The strict domain is simply

\[
\boxed{(a,b,c,d)\in\mathbb T^4,\qquad\mathcal R>0.}
\]

No other guards are required there. Indeed, with A=|det E|² and B=|perm E|²,

\[
g=2A-3B,
\qquad \eta=A-2B,
\qquad g=2\eta+B.
\]

Thus R>0 implies eta>0 and g>0. Since EE† has nonnegative eigenvalues summing to nine, g>0 implies G_h>0; likewise G_v>0. All diagonal cofactors of both Gram matrices are positive. The nonreal ζ therefore makes every g+ζΓ_ii nonzero.

The same recipe includes the boundary domain

\[
g>0,\qquad\mathcal R\ge0,
\qquad
\prod_i(g+\zeta\Gamma_{h,ii})
\prod_i(g+\bar\zeta\Gamma_{v,ii})\ne0.
\]

As before, neither an arbitrary point of the four-torus nor every exceptional completion of a fixed corner is being asserted to belong to this domain.

---

## 2. One universal scalar-cubic side routine

All indices below are 0,1,2. Given

\[
G=\begin{pmatrix}3&\bar s&\bar t\\s&3&\bar r\\t&r&3\end{pmatrix},
\qquad \Gamma=\operatorname{adj}G,
\qquad g=\det G,
\]

and the selected sheet scalar z, calculate

\[
\begin{aligned}
P_0&=rs^2+\bar r t^2+(3-|r|^2)st,\\
P_1&=t\bar s^2+r^2\bar t+(3-|t|^2)r\bar s,\\
P_2&=s\bar t^2+\bar r^2\bar s+(3-|s|^2)\bar r\bar t.
\end{aligned}
\]

Set

\[
\lambda_i=\frac{P_i}{g+z\Gamma_{ii}},
\qquad
\boxed{U=\lambda_0/\lambda_1,\quad
       V=\lambda_0/\lambda_2,\quad
       \Pi=z\lambda_0.}
\]

All three lambda_i, U and V have unit modulus on the domain. They have direct interpretations for the reconstructed side X=(1;x;y):

\[
U=\prod_jx_j,
\qquad V=\prod_jy_j,
\qquad\Pi=\operatorname{perm}X.
\]

### 2.1 Replace a fragile coordinate by a separating projection

For kappa in {0,1,2}, define

\[
A_\kappa=s+\kappa t,
\]

\[
B_\kappa=U\bar s+\kappa\Pi+\kappa^2V\bar t,
\]

\[
C_\kappa=U(1+\kappa r)+\kappa^2V(\bar r+\kappa).
\]

The projected-coordinate cubic is

\[
\boxed{
q_\kappa(\ell)=\ell^3-A_\kappa\ell^2+B_\kappa\ell-C_\kappa.
}
\]

Its three roots will be the values ell_j=x_j+kappa*y_j. The parameter kappa is an auxiliary coordinate choice, not another free parameter of the Hadamard matrix.

### 2.2 A single quadratic polynomial gives all paired coordinates

Form the row vector

\[
\mathbf m_\kappa=
\left(
 A_\kappa^2-2B_\kappa,
\quad s+2\kappa t+\kappa^2(tr-V\bar\Pi),
\quad s\bar r-U\bar\Pi+2\kappa s+\kappa^2t
\right),
\]

and calculate

\[
(c_0,c_1,c_2)=\frac1g\mathbf m_\kappa\Gamma,
\qquad
\boxed{d_\kappa=c_2-\kappa c_1.}
\]

Choose any kappa in {0,1,2} for which d_kappa is nonzero. At least one always exists on the displayed domain. This check requires only the scalar formulas above, not a cubic root calculation.

Solve q_kappa for its three roots ell_1,ell_2,ell_3. They are necessarily distinct. Set

\[
\boxed{
Y_\kappa(\ell)=\frac{\ell^2-c_1\ell-c_0}{d_\kappa},
\qquad
X_\kappa(\ell)=\ell-\kappa Y_\kappa(\ell).
}
\]

The side is

\[
\boxed{
\mathcal P(G,z)=
\begin{pmatrix}
1&1&1\\
X_\kappa(\ell_1)&X_\kappa(\ell_2)&X_\kappa(\ell_3)\\
Y_\kappa(\ell_1)&Y_\kappa(\ell_2)&Y_\kappa(\ell_3)
\end{pmatrix}.
}
\]

The denominator d_kappa is common to all three coordinates. There is no division by a function evaluated at an individual root. In particular, there is no rootwise 0/0 rule.

An implementation can choose the largest of |d_kappa|/(1+kappa)^3 to avoid an unnecessarily poorly scaled projection. This is a numerical conditioning heuristic, not an extra mathematical condition.

---

## 3. Complete four-parameter form

Set

\[
B=\mathcal P(G_h,\zeta),
\qquad
C=\mathcal P(G_v,\bar\zeta)^T.
\]

Then

\[
\boxed{
H_\varepsilon(a,b,c,d)=
\begin{pmatrix}
E&B\\
C&-CE^\dagger\Gamma_hB/g
\end{pmatrix}.
}
\]

On the strict and permitted boundary domains,

\[
|H_{ij}|=1,
\qquad HH^\dagger=6I_6.
\]

This has exactly the same unordered side blocks as the preceding commuting-pair construction. No commuting matrices or eigenvectors have to be formed to evaluate it. Different valid projections and different root orderings change only the last-three-row/column permutations.

The construction contains all previous charts and the explicit H_cross seed. The accepted paper's Theorem 22 therefore gives

\[
\mathcal H_6=
\{[H_\varepsilon(a,b,c,d)]:\text{the displayed domain holds}\}
\;\dot\cup\;\{[S_6^{(0)}]\}.
\]

Tao remains separate, for the invariant-matching reason proved in the preceding notes. This is a covering atlas, not an injective fundamental domain.

The lower-right block's flatness is not inferred merely from orthogonality. It is inherited from the paper's norm identity and the preceding free rank-three algebra specialization argument.

---

## 4. Derivation of the mixed cubic and polynomial evaluations

Let X be any invertible 3-by-3 phase matrix with rows (1,1,1), x, y, and prescribed traces s,t,r. Define U,V,Pi as in Section 2.

For any scalar kappa,

\[
q_\kappa(\ell)=\prod_{j=1}^3(\ell-x_j-\kappa y_j).
\]

Its first elementary symmetric function is s+kappa*t. For its second,

\[
\sum_{i<j}(x_i+\kappa y_i)(x_j+\kappa y_j)
=U\bar s+\kappa\Pi+\kappa^2V\bar t.
\]

The mixed coefficient is Pi because

\[
\Pi=\sum_{i\ne j}x_i y_j
=st-\sum_jx_jy_j.
\]

The constant product is

\[
\prod_j(x_j+\kappa y_j)
=U+\kappa Ur+\kappa^2V\bar r+\kappa^3V.
\]

This proves the cubic without constructing a multiplication matrix.

Since X is invertible, every function on its three columns has a unique expansion in the basis (1,x,y). In particular,

\[
\ell_j^2=c_0+c_1x_j+c_2y_j.
\]

Multiply this equality by the conjugates of 1,x_j,y_j and sum. Because XX†=G,

\[
(c_0,c_1,c_2)G=
\left(\sum_j\ell_j^2,
      \sum_j\ell_j^2/x_j,
      \sum_j\ell_j^2/y_j\right).
\]

The three sums are exactly the entries of m_kappa. The less immediate mixed identities are

\[
\sum_j\frac{y_j^2}{x_j}=tr-V\bar\Pi,
\qquad
\sum_j\frac{x_j^2}{y_j}=s\bar r-U\bar\Pi.
\]

For example, the coordinate cubic of y gives

\[
y_j^2=ty_j-V\bar t+V/y_j.
\]

Divide by x_j and sum. The identity

\[
\sum_j\frac1{x_jy_j}
=\overline{\sum_jx_jy_j}
=\bar s\bar t-\bar\Pi
\]

cancels the unwanted middle terms. This gives the first mixed identity; the second follows by interchanging the rows.

Finally, substitute x_j=ell_j-kappa*y_j into the expansion of ell_j²:

\[
\ell_j^2-c_1\ell_j-c_0=(c_2-\kappa c_1)y_j.
\]

This proves the polynomial reconstruction.

### No hidden coordinate-discriminant guard

The change-of-basis identity is

\[
\begin{pmatrix}
1&1&1\\
\ell_1&\ell_2&\ell_3\\
\ell_1^2&\ell_2^2&\ell_3^2
\end{pmatrix}
=
\begin{pmatrix}
1&0&0\\
0&1&\kappa\\
c_0&c_1&c_2
\end{pmatrix}X.
\]

Taking determinants shows

\[
\operatorname{Disc}q_\kappa
=d_\kappa^2(\det X)^2.
\]

Thus d_kappa is nonzero exactly when the projected coordinates are distinct. No per-root division or separate discriminant test has been concealed.

---

## 5. Three real projections always suffice

**Lemma.** For three distinct pairs (x_j,y_j) in the two-torus, at most two distinct real values of kappa can make the values x_j+kappa*y_j collide.

**Proof.** Any fixed pair of distinct points forbids at most one kappa. If three distinct real values were bad, they would have to be assigned to the three different pairs. In particular, all three y_j would be distinct: a pair with equal y-coordinates forbids no kappa.

Three distinct points on the unit circle are not collinear in the real plane. But the three collision equations would say

\[
x_i-x_j=-\kappa_{ij}(y_i-y_j),
\]

with three distinct real kappa_ij. Summing the oriented edge differences yields a real linear relation between the two nonparallel vectors y_1-y_2 and y_2-y_3. Their independence forces all three kappa_ij to agree, a contradiction. QED.

The side columns are distinct because X is invertible. Therefore one of kappa=0,1,2 always separates them. This improves the four arbitrary complex projections in the previous spectral implementation to three real projections.

---

## 6. Exact example requiring the third projection

Let omega²+omega+1=0 with positive imaginary part, and take

\[
(a,b,c,d)=(1,\omega,\omega,1).
\]

On one matched sheet,

\[
g=9,\quad\eta=3,\quad\chi=-27,\quad
\mathcal R=243,\quad\zeta=\omega-1.
\]

Its horizontal side is

\[
B=\begin{pmatrix}
1&1&1\\
\omega&\omega^2&\omega^2\\
\omega^2&\omega^2&\omega
\end{pmatrix}.
\]

The original x coordinate repeats. The projection x+y also repeats. Correspondingly,

\[
d_0=0,\qquad d_1=0,\qquad d_2=4\omega+2\ne0.
\]

The successful scalar cubic is

\[
\boxed{
q_2(\ell)=\ell^3+(3\omega+6)\ell^2
                  +(9\omega+12)\ell+9\omega+9.
}
\]

Its roots are

\[
-\omega-2,\qquad -3\omega-3,\qquad\omega-1.
\]

The coordinate polynomial is simply

\[
\boxed{
Y_2(\ell)=
\frac{\ell^2+(4\omega+5)\ell+4\omega+5}{4\omega+2},
\qquad
X_2(\ell)=\ell-2Y_2(\ell).
}
\]

These reproduce B exactly. The vertical routine also works despite its repeated original coordinate cubic. The full completion is the non-Tao matrix displayed in the preceding commuting-pair note.

This example also shows why the two fixed projections 0 and 1 would not suffice.

---

## 7. The two cubic extensions really are independent

### 7.1 Statement

Complexify the original seed torus algebraically. Let

\[
F=\mathbb C(a,b,c,d),
\qquad
K=F(\zeta),
\qquad
\zeta^2-(\chi/g)\zeta+\eta=0.
\]

All formal conjugates of seed variables are their reciprocals. Let x be one horizontal coordinate root and p one vertical coordinate root on the conjugate-matched sheet. On the generic locus,

\[
q_h(x)=x^3-s_hx^2+U_h\bar s_hx-U_h,
\]

\[
q_v(p)=p^3-s_vp^2+U_v\bar s_vp-U_v.
\]

**Theorem.** These cubic extensions satisfy

\[
\boxed{[K(x):K]=3,\qquad[K(x,p):K(x)]=3.}
\]

In particular,

\[
\boxed{[K(x,p):K]=9.}
\]

The scalar double cover is also nontrivial, so

\[
\boxed{[F(\zeta,x,p):F]=18.}
\]

These statements remain true with complex constants; they are not merely an arithmetic obstruction over rational constants. Section 7.6 strengthens this to the full Galois group S3 × S3 over the sheet field.

### 7.2 Exact certificate modulo 101

The proof uses finite-field specializations only at points where every relevant denominator and discriminant is nonzero, on **both** scalar sheets. These are not physical phase specializations; they are exact algebraic tests of function-field degree.

All entries in the following table are in F_101.

| Point | (a,b,c,d) | ζ_h, ζ_v | q_h(T) | q_v(T) |
|---|---|---|---|---|
| A | (74,91,40,98) | 18,30 | T³−36T²+41T+15 | T³+14T²−37T−10 |
| B | (19,87,26,9) | 34,81 | T³+6T²+4T+42 | T³+46T²−31T+13 |
| C | (27,74,22,44) | 54,64 | T³+T²+25T+25 | T³+50T²+37T−12 |
| D | (32,61,36,12) | 2,93 | T³−7T²+22T+25 | T³−32T²+26T+7 |

Their g,eta,chi values are respectively

\[
(44,35,92),\qquad(17,27,36),\qquad(66,22,11),\qquad(8,85,53).
\]

At A, q_h has no root in F_101 and is therefore irreducible.

At B,

\[
q_h(T)=(T-7)(T-29)(T-59),
\]

whereas q_v has no root and is irreducible. Thus the horizontal cubic has a rational specialization point at which the vertical cubic is still irreducible.

At C, both cubics split simply, with root sets

\[
\{50,51,100\},\qquad\{74,79,100\}.
\]

This supplies an F_101-rational point of the full degree-eighteen cover, for example ζ=54, x=50, p=74.

The scalar quadratic is genuinely nonsplit in characteristic 101. At b=2,c=3,d=5, its unnormalized discriminant chi²−4g²eta reduces to

\[
\frac{-17a^8-21a^7-24a^6+39a^5+3a^4+11a^3-4a^2-21}{24a^4}.
\]

The numerator is squarefree, has degree eight, and does not vanish at a=0. The generic discriminant has a square monomial denominator; a square generic function would therefore specialize to a square times a constant, impossible here. This proves nonsplitting over F_101(a,b,c,d), and indeed over its algebraically closed constant extension.

The verifier computes these expressions from the seed formulas, checks all guards on both sheets, and checks the two cubic irreducibilities by exact gcd with T^101−T. It does not infer irreducibility from approximate roots.

### 7.3 Why the specializations prove degree nine

Work first in characteristic 101. Localize the Laurent seed ring at g, the scalar discriminant, and the norms of the finitely many phase denominators and cubic discriminants. The preceding guard checks show that all four certificate points remain in this open set.

Adjoining the monic scalar quadratic gives a finite étale normal domain R: the scalar polynomial is irreducible and its discriminant is invertible. The horizontal cubic has coefficients in R.

A useful elementary fact is that a factorization of a monic polynomial over the fraction field of a normal domain descends to monic factors over the domain. Each factor coefficient is integral over the domain, since it is a symmetric function of integral roots; normality then puts it in the domain.

If q_h were reducible over Frac(R), these descended monic factors would specialize at A without changing their degrees, contradicting the irreducibility there. Therefore q_h is irreducible, and R[x]/(q_h) is again a normal domain after the indicated discriminant localization.

Now apply the same argument to q_v over this horizontal cubic ring. Point B, together with the horizontal root x=7, defines a homomorphism of that ring to F_101. A hypothetical monic factorization of q_v would specialize to a factorization of the irreducible vertical cubic at B. This is impossible.

Thus the selected-root algebra has degree 3×3=9 over the scalar sheet field, and degree 18 over the original seed field, in characteristic 101.

### 7.4 Why the result is geometric, not only arithmetic

The finite étale cover just constructed is an integral normal variety over F_101. It has an F_101-rational point by C. It is therefore geometrically integral.

For completeness, over a perfect field a normal variety remains normal after algebraic field extension. Its finitely many geometric irreducible components are disjoint. The Galois group acts transitively on those components when the original variety is integral. A rational point lies on a unique component and is Galois-fixed; hence that component is fixed. Transitivity forces a single component.

To pass to characteristic zero, use the same monic equations over Z localized at 101, making the same denominator/discriminant localizations by their norms. This is a finite étale cover of degree eighteen of a regular open seed torus. All four points survive in its special fiber.

If its characteristic-zero generic cover split after extending constants, the splitting would already occur over some number field. Choose a discrete valuation ring at a place above 101. Over that ring, the model is still finite étale over a regular integral seed base, so its total space is normal. Generic idempotents extend to the normal total ring because they are integral. Each nonzero resulting finite étale component has positive locally constant rank on the connected seed base and therefore meets the special fiber. This would split the geometrically integral special fiber, a contradiction.

Consequently the characteristic-zero selected-root cover is geometrically integral, proving the displayed degree-nine statement over C(a,b,c,d)(ζ).

The standard normality/component facts used here are recorded, for example, in the Stacks Project, Section 33.10 (tag 038L, especially Lemma 33.10.6) and Lemma 28.7.5 (tag 0357). The monic-factor and lifting steps have been spelled out to specify exactly why these good-reduction computations suffice.

### 7.5 What this rules out, and what it does not

Starting from the original seed field, a tower consisting of arbitrary quadratic adjunctions and only one cubic adjunction has total degree dividing 2^m×3. Even adjoining all roots of the one cubic only changes the power of two. Such a tower cannot contain an extension of degree divisible by nine.

The full reconstructed matrix determines the sheet scalar rationally through

\[
\zeta=-\frac{\operatorname{perm}(B)(\det B)^2}
 {g\prod_{i,j}B_{ij}},
\]

and it contains the selected horizontal and vertical coordinate entries. Thus this degree obstruction applies to reconstructing the full generic matrix, not merely to an auxiliary quantity.

Accordingly, **two cubic-degree steps are genuinely necessary in the original four-seed coordinates**, unless they are replaced by an equation whose degree itself contains the missing factor of three. A different parametrization could change the function field over which the entries are expressed; no obstruction to such a reparametrization is claimed. Nor is this a minimality statement for the number of arithmetic operations or a claim about arbitrary transcendental formulas.


### 7.6 Full generic Galois group and degree of an ordered matrix

There is also an exact strengthening:

\[
\boxed{\operatorname{Gal}(L/K)\cong S_3\times S_3,\qquad [L:K]=36,}
\]

where L is the field obtained by adjoining all roots of both cubics to the complex sheet field K. Therefore

\[
\boxed{[L:F]=72.}
\]

This degree 72 concerns a generically ordered matrix over a fixed ordered four-phase corner, before quotienting by the last-three-row/column permutations. It is not the dimension of a parameter space, nor a count of inequivalent Hadamards above each physical seed.

Here is the additional exact certificate. In characteristic 101, the cubic discriminants at points A and D are

\[
\begin{array}{c|cc}
&\operatorname{Disc}q_h&\operatorname{Disc}q_v\\\hline
A&6&91\\
D&50&79.
\end{array}
\]

The Legendre symbols are respectively (+1,−1) at A and (−1,+1) at D. Thus the two generic discriminants, and their product, are nonsquares in the characteristic-101 sheet function field. Indeed, a putative square root is integral over the same normal coefficient ring and would specialize at the indicated point, contradicting the nonsquare residue. The product is nonsquare already at A.

Each cubic is irreducible, and a separable irreducible cubic has Galois group S3 when its discriminant is nonsquare. The two S3 splitting fields have distinct quadratic subfields, because their discriminant square classes differ. Their intersection is Galois over the base. The only proper nontrivial quotient of S3 is C2, so a nontrivial intersection would force those quadratic subfields to agree. They are therefore linearly disjoint, giving S3 × S3 and degree 36.

This remains a geometric statement. The universal ordered-root algebra is finite étale of rank 36 over the sheet ring: adjoin a first root of each cubic, then a root of the residual monic quadratic; the third root follows from the trace. The characteristic-101 group calculation makes this ordered-root algebra a domain. Point C, where both cubics split over F_101, supplies a rational point of it. The normality, geometric-integrality and characteristic-zero lifting argument in Section 7.4 applies unchanged. Hence its degree 36 persists after adjoining arbitrary complex constants.

Finally, on the generic locus the full ordered matrix has exactly this field L over K. The coordinate roots are entries of B and C; the other entries are rational in those roots and ζ. Conversely, ζ is rational in B by the invariant formula in Section 7.5. Therefore the ordered matrix entries generate degree 72 over the original complex seed field F. This is a function-field statement; special seeds can have much smaller degrees.

---

## 8. Boundary poles are not all artificial

The earlier coordinate poles have been removed. The remaining scalar poles cannot all be repaired by assigning a unique finite root list at every fixed corner.

For example, take E=F_3. Then

\[
G_h=G_v=3I,
\quad g=27,
\quad\eta=9,
\quad\chi=-162,
\quad\mathcal R=0,
\quad\zeta=-3.
\]

Every denominator g+ζΓ_ii is 27−3×9=0. The side fiber really is positive-dimensional:

\[
X_{\alpha,\beta}=
\operatorname{diag}(1,e^{i\alpha},e^{i\beta})F_3
\]

has first row (1,1,1), phase entries and X X†=3I for every pair of real angles. Thus the same fixed corner contains infinitely many normalized side candidates.

A universal finite-valued prescription at this corner cannot enumerate that entire fiber. Global coverage remains available by reframing, as in the accepted paper. This example does not classify every scalar pole or assert that all scalar poles are equivalent to Fourier.

---

## 9. Verification and implementation

Files:

- `hadamard6_polynomial.py`: standalone high-precision scalar-cubic constructor, requiring only mpmath.
- `verify_hadamard6_polynomial.py`: exact Laurent-polynomial identities, the repeated-coordinate example, the finite-field degree and Galois-group certificates, and optional numerical regression.
- `Hadamard6_polynomial_verification.txt`: the observed verification output.

Exact checks establish the mixed characteristic polynomial, all three second-moment identities, the three phase-scalar formulas on arbitrary phase blocks, the example where projections 0 and 1 fail, and every finite-field calculation used in the degree and Galois-group theorems. The written normal-model argument is the proof connecting those exact finite computations to the geometric function-field conclusion.

A reproducible comparison at 80 decimal digits used both sheets of 100 admissible random seeds (200 matrices). Observed maxima were:

| Quantity | Maximum observed residual |
|---|---:|
| Entry modulus | 4.6849843925655e-76 |
| HH†−6I, entrywise | 2.6373374425788e-75 |
| Side Gram identity | 2.1639885380486e-75 |
| Difference from the preceding spectral constructor | 8.4137359260664e-76 |

Projection counts over the 400 side reconstructions were 320 for kappa=0, 16 for kappa=1, and 64 for kappa=2. Both sheets of H_cross, the zero-imbalance seed, the old removable-companion seed, and the repeated-coordinate seed also passed the high-precision checks.

These floating-point checks are supplementary, not interval certificates. The new polynomial evaluations can suffer cancellation near their common-denominator boundary; selecting a well-scaled projection and increasing precision addresses numerical resolution, not mathematical membership in the domain. No improvement in numerical conditioning over the spectral method is claimed.

Run:

```sh
python hadamard6_polynomial.py --example repeated
python hadamard6_polynomial.py --example hcross
python verify_hadamard6_polynomial.py
python verify_hadamard6_polynomial.py --numerical --count 100
# Optional comparison, with hadamard6_spectral.py in the same directory:
python verify_hadamard6_polynomial.py --numerical --compare-old --count 100
```

## Bottom line

\[
\boxed{
\text{four seed phases}
\longrightarrow\text{one sheet square root}
\longrightarrow\text{two scalar cubics}
\longrightarrow\text{quadratic polynomial evaluations}
\longrightarrow H.
}
\]

The matrix eigenproblems have disappeared from the evaluation formula. The two cubic extensions themselves have not—and the degree-nine theorem proves that they cannot be merged into one cubic over the original seed coordinates.
