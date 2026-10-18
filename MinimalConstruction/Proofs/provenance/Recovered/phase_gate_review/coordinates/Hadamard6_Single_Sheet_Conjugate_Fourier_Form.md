# A one-sheet, conjugate-Fourier atlas for order-six Hadamards

## Scope and accepted inputs

The supplied paper by Mateo Cárdenes Wuttig and Joseph Tindall, *A Complete Classification of Complex Hadamard Matrices of Order Six*, is accepted as true. The global inputs remain its Theorem 22 and Supplemental Proposition S.11, together with the earlier extended-domain construction and its inclusion of H_cross. This note does not independently re-prove that classification or the extension through the original companion singularities.

The new results are:

1. Opposite-corner exchange is an exact sheet-reversing involution. Consequently the positive reconstruction sheet alone covers every previously covered equivalence class.
2. A frame selected entirely from the seed guarantees Fourier variance n>2/3 and preferred Fourier power rho>1/3 in both directions.
3. The side formula uses a cube root and its conjugate, rather than its reciprocal. Every division in the constructor can be made by a positive real number. After the frame selection, the new Fourier coefficient denominators are uniformly bounded away from zero.

There remain three rational phase coefficients per side, and three variable square roots plus two variable cube roots for the full construction. The radical count is NOT reduced. The four continuous parameters remain the four initial seed phases. Different seeds can represent equivalent matrices; this is not an injective fundamental domain.

All matrices are unnormalized: |H_ij|=1 and H H†=6 I_6.

## 1. Seed data, in scalar form

Start with four phases and the dephased corner

\[
E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},
\qquad G_h=6I-EE^\dagger,\quad G_v=6I-E^T\bar E.
\]

For either direction write

\[
G=\begin{pmatrix}3&\bar s&\bar t\\s&3&\bar r\\t&r&3\end{pmatrix}.
\]

For the horizontal direction,

\[
s=-(1+a+b),\quad t=-(1+c+d),\quad r=-(1+c/a+d/b).
\]

For the vertical direction transpose E, equivalently exchange b and c.

Set

\[
X=|s|^2,\quad Y=|t|^2,\quad Z=|r|^2,\quad
p=X+Y+Z,\quad J=2\operatorname{Re}(sr\bar t),
\]
\[
W=XY+XZ+YZ-XYZ,
\]
\[
g=27-3p+J,\quad \eta=9-p+J,
\]
\[
\chi=W-(p-9)(p-18)+(p-15)J,\quad
\mathcal R=4g^2\eta-\chi^2.
\]

These are the same scalars as the previous adjugate recipe; the displayed equalities are elementary polynomial identities and are checked exactly. Both directions give the same g, eta, chi, R.

For the covering atlas, always use

\[
\boxed{\zeta=\frac{\chi+i\sqrt{\mathcal R}}{2g}.}
\]

Use z=zeta horizontally and z=conjugate(zeta) vertically. No free sheet sign is required for global class coverage. This does not enumerate both candidates at each fixed corner.

The strict domain remains R>0. Its previous proof guarantees positive complementary Gram matrices and nonzero side factors. On R=0 retain g>0 and the six nonzero side factors P_i defined below, three in each direction. These are exactly the preceding boundary guards in an equivalent seed-only form.

## 2. A seed-only choice of frame with uniform Fourier bounds

For G_h choose the pair of row indices with smallest off-diagonal modulus, place them first and second, and place the remaining row third. Let this permutation be r=(r_0,r_1,r_2). Do the same for G_v to obtain the order c=(c_0,c_1,c_2) of the seed columns.

Form E_P by (E_P)_ij=E_{r_i,c_j}, and dephase:

\[
\widehat E_{ij}=\frac{(E_P)_{00}(E_P)_{ij}}
{(E_P)_{i0}(E_P)_{0j}}.
\]

All factors here are phases, so the divisions can equivalently be implemented by multiplication by conjugates. This calculation requires only the original four phases, not any reconstruction roots.

The two choices are compatible: column operations leave horizontal row-Gram magnitudes unchanged, while row operations leave vertical column-Gram magnitudes unchanged. Subsequent row and column phasing also preserves these magnitudes.

The scalar data and the sheet scalar are unchanged under this corner equivalence. The side guards are merely permuted in modulus. Thus this frame choice loses no point of the previous domain.

### Uniform-variance theorem

Let p be the sum of the three squared off-diagonal correlations of G. Since

\[
\det G+\det(6I-G)=54-6p,
\]

G is positive definite and 6I-G is positive semidefinite, we have p<9. Therefore the smallest squared correlation is less than three. In the selected frame,

\[
\boxed{|s|^2<3,\quad |\mu|^2<1/3,\quad n=1-|\mu|^2>2/3,}
\qquad \mu=s/3.
\]

This holds in both directions, including the permitted R=0 boundary.

The formula below chooses the larger first-row Fourier coefficient, hence

\[
\boxed{\rho\ge n/2>1/3.}
\]

These are uniform mathematical bounds, not empirical minima. They do not provide a uniform bound on the full reconstruction near g=0 or a seed factor P_i=0.

## 3. Rational phase data with seed-only positive denominators

For the selected G,z define

\[
\begin{aligned}
P_0&=rs^2+\bar r t^2+(3-|r|^2)st,\\
P_1&=t\bar s^2+r^2\bar t+(3-|t|^2)r\bar s,\\
P_2&=s\bar t^2+\bar r^2\bar s+(3-|s|^2)\bar r\bar t,
\end{aligned}
\]
\[
(c_0,c_1,c_2)=(9-|r|^2,9-|t|^2,9-|s|^2).
\]

The exact scalar identities are

\[
|P_i|^2=g^2+c_i\chi+c_i^2\eta=|g+c_i z|^2.
\]

Consequently the old ratio P_i/(g+c_i z) has the equivalent form

\[
\boxed{\lambda_i=\frac{P_i(g+c_i\bar z)}{|P_i|^2}.}
\]

Its denominator is positive real and depends only on G, not on the sheet. These three lambda quantities are retained; they have not been eliminated or claimed unnecessary.

Compute without any phase quotients:

\[
u=\lambda_0\bar\lambda_1,
\qquad \mu=s/3,\quad \nu=t/3,
\]
\[
n=1-|\mu|^2,\qquad k=r/3-\nu\bar\mu,
\]
\[
\alpha=\mu^2-u\bar\mu,
\qquad \gamma=2\mu\nu-z\lambda_0/3.
\]

Here the standalone symbol u denotes the row product; nu denotes the second row mean.

## 4. The conjugate-Fourier side formula

Take one square root

\[
\boxed{\delta^2=\frac g{27}\lambda_0\bar\lambda_1\bar\lambda_2.}
\]

Since |delta|^2=g/27, the old division by delta is replaced by multiplication by its conjugate:

\[
d_F=\frac{27}{g}(n\gamma-2\alpha k)\bar\delta\in\mathbb R.
\]

Choose the sign of delta to make d_F nonnegative, and put

\[
\rho=(n+d_F)/2.
\]

Define the three bounded quadratic-stage coefficients

\[
\boxed{
q=\frac\alpha\rho,\qquad
c_+=\frac{k-\delta\bar q}{n},\qquad
c_-=\frac{kq+\delta}{n}.
}
\]

Take any cube root

\[
\boxed{\tau^3=\mu^3+u(\rho-|\mu|^2).}
\]

This equals the preceding two-term radicand u rho+mu alpha. The new form makes its coefficient of u explicitly real.

The side is

\[
\boxed{
\mathcal C(G,z)=
\underbrace{\begin{pmatrix}
1&0&0\\
\mu&1&q\\
\nu&c_+&c_-
\end{pmatrix}}_{L(G,z)}
\underbrace{\operatorname{diag}(1,\tau,\bar\tau)}_{D(\tau)}
\underbrace{\begin{pmatrix}
1&1&1\\1&\omega&\omega^2\\1&\omega^2&\omega
\end{pmatrix}}_{F_3},
\qquad \omega=e^{2\pi i/3}.
}
\]

Equivalently,

\[
x_j=\mu+\tau\omega^j+q\bar\tau\omega^{-j},
\]
\[
y_j=\nu+c_+\tau\omega^j+c_-\bar\tau\omega^{-j},\quad j=0,1,2.
\]

There is no reciprocal cube root and no reciprocal square root. All variable divisions in the constructor are by the positive real quantities |P_i|^2, g, n, or rho.

### Proof of exact equivalence to the previous compact formula

Write the actual Fourier coefficients as A,B,C,D, with

\[
x_j=\mu+A\omega^j+B\omega^{-j},\qquad
y_j=\nu+C\omega^j+D\omega^{-j}.
\]

The preceding compact proof gives

\[
\alpha=AB,\quad \rho=|A|^2,\quad
k=C\bar A+D\bar B,\quad \delta=AD-BC,
\]
\[
A^3=u\rho+\mu\alpha.
\]

Choose tau=A up to its harmless cube-root-of-unity relabeling. Then

\[
q\bar\tau=(\alpha/\rho)\bar A=B,
\]
\[
c_+\tau=(kA-\delta\bar B)/n=C,
\]
\[
c_-\bar\tau=(kB+\delta\bar A)/n=D.
\]

Thus the new formula is exactly the old side, up to column permutation, not a new unverified family.

### Uniform coefficient bounds

Because rho is the larger of |A|^2 and |B|^2,

\[
|q|\le1,\qquad 1/3<\rho\le1,\qquad 1/\sqrt3<|\tau|\le1.
\]

Also

\[
|c_+|^2+|c_-|^2=rac{1-|\nu|^2}{\rho}<3.
\]

Every entry of L therefore has modulus at most sqrt(3). In particular,

\[
\boxed{|\tau^3|>1/(3\sqrt3).}
\]

The divisions by n and rho are uniformly safe in the mathematical sense n>2/3, rho>1/3. Seed-dependent factors and the determinant can still approach zero. No global conditioning, derivative, or runtime bound is claimed.

## 5. Assemble the full matrix

Use the adapted corner Ehat and its corresponding complementary Gram data. Let

\[
B=L_hD_hF_3,\qquad C=F_3D_vL_v^T,
\]

where the vertical routine uses conjugate(zeta). With Gamma_h=adj(G_h), set

\[
\boxed{\widehat H=
\begin{pmatrix}
\widehat E&B\\C&-C\widehat E^\dagger\Gamma_hB/g
\end{pmatrix}.}
\]

The adjugate is the explicit 3-by-3 cofactor matrix from the previous notes; no matrix inverse is needed. The Fourier factorization is

\[
\widehat H=
\begin{pmatrix}I&0\\0&F_3D_v\end{pmatrix}
\begin{pmatrix}
\widehat E&L_h\\
L_v^T&-L_v^T\widehat E^\dagger\Gamma_hL_h/g
\end{pmatrix}
\begin{pmatrix}I&0\\0&D_hF_3\end{pmatrix}.
\]

All cubic dependence is confined to the two conjugate diagonals D_h and D_v. The middle matrix is computed at the quadratic stage. These factors are not individually claimed to be unitary or standard-equivalence operations.

To restore the original seed corner, undo the selected permutations on the first three full rows and columns, leaving the remaining three in their existing order, and dephase the full matrix. Its upper-left corner is then the originally supplied E. All operations are monomial equivalences; for phase matrices dephasing uses multiplication and conjugation only.

In the implementation, result.adapted_matrix is Hhat, result.matrix is the original-corner version, and the Side records belong to Hhat.

The final-block flatness remains the accepted paper's norm identity, as specialized by the preceding extended-domain argument. Orthogonality alone is not used as a flatness proof.

## 6. The sheet-reversing opposite-corner involution

For an invertible phase block X define

\[
\Theta(X)=-\frac{\operatorname{perm}(X)(\det X)^2}
{|\det X|^2\prod_{ij}X_{ij}}.
\]

It is invariant under row/column phasing, row/column permutations, and transposition. For example, multiplying rows by a product phase r and columns by a product phase c multiplies the numerator and denominator by the same factor (rc)^3. Squared determinant signs remove permutation signs.

For G_X=X Xdagger, the scalar definitions in Section 1 satisfy

\[
g_X=|\det X|^2,\qquad
\eta_X=|\operatorname{perm}X|^2,
\]
\[
\boxed{\chi_X=g_X(\Theta(X)+\overline{\Theta(X)}).}
\]

These are Laurent-polynomial identities. The verifier dephases X to four independent phase variables, expands with conjugation replaced by inversion, and checks all three identically. Hence

\[
\mathcal R_X=4g_X^2(\operatorname{Im}\Theta(X))^2.
\]

For a reconstructed H=(E B; C D), the matched rule is

\[
\Theta(B)=\zeta,\qquad \Theta(C)=\bar\zeta.
\]

Let

\[
S=\begin{pmatrix}0&I_3\\I_3&0\end{pmatrix},\qquad
\mathscr T(H)=\operatorname{dephase}(S H S).
\]

Before dephasing, its blocks are (D C; B E). Thus the new horizontal side is monomially equivalent to C and the new vertical side to B. Their invariants are bar(zeta) and zeta. Moreover their determinant norms and permanent norms agree with the old ones. The scalar identities above prove

\[
\boxed{
\zeta_{\mathscr T(H)}=\bar\zeta_H,
\qquad (g,\eta,\chi,\mathcal R)_{\mathscr T(H)}
=(g,\eta,\chi,\mathcal R)_H.
}
\]

The new seed is explicitly the dephasing of the old bottom-right block:

\[
(a',b',c',d')=
\left(
\frac{D_{00}D_{11}}{D_{10}D_{01}},
\frac{D_{00}D_{12}}{D_{10}D_{02}},
\frac{D_{00}D_{21}}{D_{20}D_{01}},
\frac{D_{00}D_{22}}{D_{20}D_{02}}
\right).
\]

All entries of D are phases, so these expressions have no zero denominator. They depend on the completed matrix; this is not claimed to be a rational seed-only involution before radical evaluation.

For a dephased matrix, T(T(H))=H exactly. This can be checked by cancellation of the dephasing factors; the verifier also checks it symbolically for a generic dephased 6-by-6 matrix.

### One-sheet coverage theorem

A strict negative-sheet output H has Im(zeta)<0. Its opposite-corner representative T(H) has Im(zeta)>0, the same positive R, and the conjugate matching. The previous fixed-(G,zeta) side construction is unique up to column permutations on this domain: its rational invariants, determinant square root, and cube root specify exactly those permutations. Therefore the positive-sheet constructor at the new corner reproduces T(H), up to the last-three-row/column permutations.

At R=0 the two shared sheet values already coincide. Thus the positive sheet alone has the same class coverage as the preceding two-sheet atlas. Applying the seed-only frame normalization afterward preserves the positive sheet.

Under the accepted coverage input and the prior H_cross inclusion,

\[
\boxed{\mathcal H_6=
\{[H_+(a,b,c,d)]:(a,b,c,d)\text{ is in the unchanged domain}\}
\;\dot\cup\;\{[S_6^{(0)}]\}.}
\]

**Important distinction:** H_+(a,b,c,d) and H_-(a,b,c,d) are not asserted to be equivalent at the same seed. A negative-sheet matrix is represented on the positive sheet at a generally different corner. Retaining a prescribed ordered corner still requires both sheets to enumerate both local candidates.

## 7. An exact example

Let omega be the positive-imaginary primitive cube root. The earlier exact matrix

\[
H=\begin{pmatrix}
1&1&1&1&1&1\\
1&1&\omega&\omega&\omega^2&\omega^2\\
1&\omega&1&\omega^2&\omega^2&\omega\\
1&-1&-1&1&-1&1\\
1&-\omega&-1&\omega^2&-\omega^2&\omega\\
1&-1&-\omega&\omega&-\omega^2&\omega^2
\end{pmatrix}
\]

has seed (1,omega,omega,1), g=9, R=243, and zeta=omega-1. Opposite-corner exchange gives seed

\[
(1,\omega^2,\omega,\omega),\qquad \zeta'=\omega^2-1.
\]

It is the same equivalence class, on the opposite reconstruction sheet. The inverse exchange therefore converts that negative-sheet presentation back to a positive-sheet one.

For the original corner the least-correlated pair is (1,2), in zero-based indices, in both directions. Ordering the first three rows and columns as (1,2,0) and dephasing changes the seed to

\[
(\omega,\omega^2,\omega^2,1).
\]

Both first row means are now zero. Each preferred Fourier power is rho=1, so q=0 and tau^3=u. The same example whose original coordinate cubics repeated now has an ordinary Fourier row in each adapted side. These statements are checked exactly over Q(i sqrt(3)).

## 8. Implementation and verification

Files:

* hadamard6_single_sheet.py — standalone mpmath constructor and corner transport.
* verify_hadamard6_single_sheet.py — exact SymPy identities and numerical regressions.
* hadamard6_compact_fourier.py — the unchanged preceding constructor, used only as a comparison.
* Hadamard6_Single_Sheet_Verification.txt — observed run output.

Usage:

```python
from hadamard6_single_sheet import from_angles
r = from_angles(['1.2','2.5','3.2','6.0'], dps=80)
H = r.matrix                 # retains the original input corner
H_adapted = r.adapted_matrix # the uniformly normalized Fourier frame
print(r.adapted_seed)
print(r.horizontal.variance, r.horizontal.rho)
```

There is no sheet argument in this covering constructor. The older constructor remains available when both completions of a prescribed corner are required.

The exact checks cover the three P_i norm identities, the scalar rewrite, the permanent/determinant descriptions of eta and chi, the conjugate-cube coefficient identities, the general rational corner involution, and the exact example.

An 80-decimal-digit run tested 100 strict-domain seeds and 100 corresponding negative-to-positive opposite-corner transports. Four previous boundary/repeated-coordinate examples were also tested. Observed maxima were:

| Diagnostic | Maximum |
|---|---:|
| Entry modulus | 4.13148737395204205e-77 |
| Full orthogonality | 3.55364842028769061e-76 |
| Comparison to previous positive-sheet constructor | 4.1593913066070906e-77 |
| Opposite-corner negative-to-positive comparison | 7.93145853874034261e-76 |
| Transported scalar identities | 2.24257008151741524e-75 |
| Cube norm identity | 1.07351201655916418e-77 |

Observed minima were n=0.795569129352965212, rho=0.495073926799413089 and |cube|=0.348341391250397534. The proved lower bounds, rather than those sample minima, are n>2/3, rho>1/3, and |cube|>1/(3 sqrt(3)).

These are floating-point regressions, not interval certificates. The constructor can require increased precision near old scalar boundary poles or g=0. A tiny negative R is clamped only as an explicitly documented floating-point boundary convention, not as an exact sign certificate. All global flatness and coverage claims retain the stated exact inputs.

Run:

```sh
python hadamard6_single_sheet.py 1.2 2.5 3.2 6.0 --dps 80
python verify_hadamard6_single_sheet.py
python verify_hadamard6_single_sheet.py --numerical --count 100 --dps 80
```
