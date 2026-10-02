# A commuting-pair four-parameter normal form for order-six Hadamards

## What is new, and what is assumed

The results of Mateo Cárdenes Wuttig and Joseph Tindall, *A Complete Classification of Complex Hadamard Matrices of Order Six*, supplied as `HadamardClassification(4).pdf`, are accepted as true. The global inputs remain Theorem 22 (coverage by product-regular frames except Tao and H_cross) and Supplemental Proposition S.11 (the matched lower-block norm identity).

This note further simplifies `Hadamard6_Mobius_Normal_Form.md`. Instead of solving for one coordinate and treating the other as a rational companion, it constructs two commuting 3-by-3 matrices whose joint eigenvectors are the desired phase columns.

The gains are substantive:

* No companion quotient, derivative denominator, or per-coordinate exceptional-point rule is required.
* Repeated coordinate roots are allowed, even simultaneously in both directions.
* On the strict two-sheet region, **one scalar inequality is the entire admissibility condition**.
* The full displayed domain contains the preceding Möbius domain and therefore still covers every non-Tao equivalence class.

The generic algebraic root count is **not** reduced: one common square root and one cubic-degree spectral problem per direction remain. This is not a proof that that count is minimal after arbitrary changes of the four parameters.

All matrices are unnormalized: entries have modulus one and HH† = 6I.

---

## 1. The four parameters and one scalar inequality

Choose a,b,c,d on the unit circle, and set

\[
E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix}.
\]

Form the two complementary Gram matrices

\[
G_h=6I-EE^\dagger,
\qquad
G_v=6I-E^T\bar E.
\]

Both have diagonal (3,3,3). The vertical convention is chosen so that C^T is a normalized row-Gram factor of G_v.

Using the horizontal matrix, define

\[
\Gamma=\operatorname{adj}G_h,
\qquad g=\det G_h,
\qquad \sigma=\operatorname{tr}\Gamma,
\]

\[
\boxed{\eta=g+36-2\sigma,}
\]

\[
\boxed{
\chi=\prod_{i=0}^2(\Gamma_{ii}-8)
       +2(\sigma-16)^2+(12-\sigma)g,
\qquad
\mathcal R=4g^2\eta-\chi^2.
}
\]

These are real. The same formulas evaluated on G_v give the same g, eta, chi, and R.

For a sheet epsilon = +1 or -1, set

\[
\boxed{\zeta=\frac{\chi+i\varepsilon\sqrt{\mathcal R}}{2g}.}
\]

Thus

\[
|\zeta|^2=\eta,
\qquad \zeta+\bar\zeta=\chi/g,
\qquad g\zeta^2-\chi\zeta+g\eta=0.
\]

Use zeta horizontally and its conjugate vertically.

### Strict-domain theorem

For every four-phase seed satisfying

\[
\boxed{\mathcal R(a,b,c,d)>0,}
\]

the construction below is defined and returns a complex Hadamard on either sheet. **There are no additional seed guards on this strict domain.**

The claim concerns this construction; it does not assert that a seed with R<=0 has no other exceptional fixed-corner completion.

### Why positivity is automatic

Let A=|det E|² and B=|perm E|². The preceding scalar identities give

\[
g=2A-3B,
\qquad \eta=A-2B,
\qquad g=2\eta+B.
\]

If R>0, then eta>0, so g>0. The eigenvalues of EE† are nonnegative and sum to 9; at most one can exceed 6. Therefore det(6I-EE†)>0 implies G_h>0. The transposed complement G_v has the same spectrum, so it too is positive definite.

Since Im(zeta) is nonzero and every diagonal cofactor Gamma_ii of a positive-definite matrix is positive,

\[
g+\zeta\Gamma_{ii}\ne0
\]

in either direction. These are the only nontrivial scalar denominators in the side construction.

---

## 2. A single universal side routine

All indices in this section are **0,1,2**.

Given a positive-definite Gram matrix

\[
G=\begin{pmatrix}
3&\bar s&\bar t\\
s&3&\bar r\\
t&r&3
\end{pmatrix},
\]

and its selected scalar zeta, compute Gamma=adj(G) and g=det(G).

Define the seed-only matrices

\[
F=\begin{pmatrix}
st&t&s\\
r&\bar s r&\bar s\\
\bar r&\bar t&\bar t\bar r
\end{pmatrix},
\]

\[
J=\begin{pmatrix}
0&-\Gamma_{20}&-\Gamma_{10}\\
-\Gamma_{21}&0&-\Gamma_{01}\\
-\Gamma_{12}&-\Gamma_{02}&0
\end{pmatrix}.
\]

Set

\[
\ell_i=g+\zeta\Gamma_{ii},
\qquad
\boxed{W_{ij}=\frac{(F\Gamma+\zeta J)_{ij}}{\ell_i}.}
\]

There is no matrix inversion here, only division of each row by one scalar. Its diagonal entries satisfy

\[
|W_{00}|=|W_{11}|=|W_{22}|=1.
\]

Let w be the first row of W, and let e_x=(0,1,0), e_y=(0,0,1). Form

\[
\boxed{
M=
\begin{pmatrix}
e_x\\
(-W_{12}w-W_{10}e_x+e_y)/W_{11}\\
w
\end{pmatrix},
\qquad
N=
\begin{pmatrix}
e_y\\
w\\
(-W_{21}w+e_x-W_{20}e_y)/W_{22}
\end{pmatrix}.
}
\]

The remaining divisions are by phases, hence never by zero.

### Extracting the side block

Take the common right eigenvectors of M and N. Normalize each so that its first entry is 1. They are

\[
v_j=(1,x_j,y_j)^T,
\qquad j=1,2,3,
\]

and the side block is

\[
\boxed{\mathfrak S(G,\zeta)=(v_1\ v_2\ v_3).}
\]

No extra phase choice is required for the eigenvectors, because the first-coordinate normalization fixes it.

A concrete single-eigensolver implementation is:

1. Among kappa=0,1,2,3, choose one for which M+kappa N has three distinct eigenvalues.
2. Diagonalize that one 3-by-3 matrix and normalize its eigenvectors as above.

At least one of the four choices always works. Changing kappa or the eigenvector ordering only permutes the three resulting columns; it is not an additional continuous parameter or a different completion branch.

---

## 3. The complete matrix

Set

\[
B=\mathfrak S(G_h,\zeta),
\qquad
C=\mathfrak S(G_v,\bar\zeta)^T.
\]

The four-parameter normal form is

\[
\boxed{
H_\varepsilon(a,b,c,d)=
\begin{pmatrix}
E&B\\
C&-CE^\dagger(\operatorname{adj}G_h)B/g
\end{pmatrix}.
}
\]

On the strict domain R>0, this always satisfies

\[
|H_{ij}|=1,
\qquad HH^\dagger=6I_6.
\]

There is no final flatness acceptance test in the mathematical definition. The implementation's residual checks detect unresolved floating-point calculations; they are not substitutes for the theorem.

### Boundary domain

The same formula also works when

\[
g>0,\qquad \mathcal R\ge0,
\]

provided

\[
\boxed{
\prod_{i=0}^2(g+\zeta\Gamma_{h,ii})
\prod_{i=0}^2(g+\bar\zeta\Gamma_{v,ii})\ne0.
}
\]

At R=0 the two sheet scalars coalesce. No coordinate-cubic simplicity assumption is added, even there.

This does **not** assert that scalar boundary poles or g=0 are removable at every fixed corner. Global class coverage is obtained through the permitted choice of frame.

---

## 4. Why the side construction works

### 4.1 The multiplication algebra

For a normalized phase block X=(1;x;y), the three row functions 1,x,y form a basis of functions on its columns. Applying the bilinear relation in all three possible row normalizations gives

\[
xy=W_{00}+W_{01}x+W_{02}y,
\]

\[
y=W_{10}x+W_{11}x^2+W_{12}xy,
\]

\[
x=W_{20}y+W_{21}xy+W_{22}y^2.
\]

Consequently M and N are precisely the matrices for multiplication by x and y in the basis (1,x,y).

To obtain W directly from the Gram data, normalize the i-th row to the constant function by column phasing, and denote its bilinear constant by lambda_i. The invariant from the preceding note is

\[
\Theta(X)=
-\frac{\operatorname{perm}(X)(\det X)^2}
{|\det X|^2\prod_{ij}X_{ij}},
\]

and perm(X_normalized)=lambda_i*zeta in every such normalization.

If E_ii denotes the matrix with its only nonzero entry, 1, at (i,i), the three linear identities are

\[
\boxed{W_{i,*}(G+\zeta E_{ii})=F_{i,*}.}
\]

Solving this rank-one update gives

\[
W_{ii}=(F\Gamma)_{ii}/(g+\zeta\Gamma_{ii}).
\]

For i!=j and k the remaining index, the elementary cofactor identity

\[
\Gamma_{ii}(F\Gamma)_{ij}-(F\Gamma)_{ii}\Gamma_{ij}
=-g\Gamma_{ki}
\]

gives exactly W=(row-scaled)(F Gamma+zeta J).

### 4.2 Exact identities

The formulas satisfy, modulo g*zeta²-chi*zeta+g*eta=0,

\[
\boxed{
MN=NM,\qquad MGM^\dagger=G,\qquad NGN^\dagger=G,
}
\]

\[
\boxed{\operatorname{tr}M=s,\qquad\operatorname{tr}N=t.}
\]

The algebra closes in the fixed basis I,M,N:

\[
MN=W_{00}I+W_{01}M+W_{02}N,
\]

with the other two multiplication rules supplied by the displayed equations for x² and y².

These identities can be derived on the generic fixed-Gram fiber and then cleared of denominators. The accompanying verifier also checks them directly over independent formal conjugate variables s,S,t,T,r,R. For the metric identities it uses zeta#=chi/g-zeta, exactly as required by the scalar quadratic. They are polynomial identities, not conclusions inferred from numerical testing.

### 4.3 Joint eigenvectors are automatically phase columns

Because G>0, the matrices

\[
G^{-1/2}MG^{1/2},\qquad G^{-1/2}NG^{1/2}
\]

are commuting unitaries. They admit a common eigenbasis, and every common eigenvalue pair (x_j,y_j) lies on the two-torus.

The first rows of M and N are e_x and e_y. Thus a common eigenvector v satisfies

\[
v_2=x_jv_1,\qquad v_3=y_jv_1
\]

in one-based vector coordinates. If v_1 were zero, the whole vector would be zero. It can therefore be normalized uniquely to (1,x_j,y_j)^T.

A joint eigenspace cannot have dimension two: some nonzero vector in it would have first coordinate zero. Hence the joint eigenpairs are distinct and the three normalized vectors form an invertible matrix X.

Metric unitarity gives

\[
G=X\operatorname{diag}(w_1,w_2,w_3)X^\dagger,
\qquad w_j>0.
\]

Its first column gives

\[
\sum_jw_j=3,\qquad\sum_jw_jx_j=s,\qquad\sum_jw_jy_j=t.
\]

The trace identities give sum(x_j)=s and sum(y_j)=t. Therefore

\[
X(w-\mathbf 1)=0.
\]

Since X is invertible, all w_j=1. We have proved

\[
\boxed{XX^\dagger=G,\qquad |X_{ij}|=1.}
\]

This argument does not need either x_j or y_j separately to be distinct.

### 4.4 Four separating pencils suffice

For each of the three pairs of distinct joint eigenpairs, a collision

\[
x_i+\kappa y_i=x_j+\kappa y_j
\]

forbids at most one value of kappa. If y_i=y_j, then x_i!=x_j and it forbids none. Thus at most three values are bad. One of 0,1,2,3 must separate all three pairs.

### 4.5 Relation to the old cubic

\[
\det M=W_{00}/W_{11},\qquad\det N=W_{00}/W_{22}.
\]

Since M is G-unitary and has trace s,

\[
\det(zI-M)=z^3-sz^2+u\bar s z-u,
\qquad u=W_{00}/W_{11}.
\]

Thus the old coordinate cubic has not been incorrectly discarded. It is the characteristic polynomial of M, which is allowed to have repeated eigenvalues. N separates the corresponding phase columns.

---

## 5. Why the lower-right block is flat

The side Gram identities imply H†H=6I for the forced fourth block. As in the preceding notes and the supplied paper, this alone does not establish entrywise flatness.

Use the accepted paper's Supplemental Proposition S.11. On the common generic domain the present construction gives exactly the same side blocks and conjugate-invariant matching as the Möbius construction. The lower-block norm identity is therefore the same identity.

There is now a particularly clean algebra in which to specialize it. Each side algebra is

\[
\mathcal A=\operatorname{span}\{I,M,N\}.
\]

This is a free rank-three algebra on the displayed scalar domain: the first rows of I,M,N are the three standard basis vectors. Its multiplication table has only the scalar denominators already listed. The horizontal–vertical tensor product is correspondingly free of rank nine.

The lower-block entry is a bilinear element of the two algebras, and its horizontal norm is the determinant of multiplication by that element. Thus the paper's generic norm identity specializes in this fixed basis without dividing by an individual coordinate discriminant or Vandermonde. At a physical point the joint spectrum identifies the algebra with three scalar evaluations, so the norm equals the product of the corresponding three lower-block entries.

Consequently

\[
\prod_j|D_{ij}|^2=1.
\]

Block orthogonality gives sum_j |D_ij|²=3. Equality in the arithmetic–geometric mean inequality forces each |D_ij|²=1. This proves full flatness, including repeated-coordinate points and permitted scalar-sheet collisions.

---

## 6. Exact repeated-coordinate example

Let omega²+omega+1=0, Im(omega)>0, and take

\[
(a,b,c,d)=(1,\omega,\omega,1).
\]

The data are

\[
g=9,\qquad\eta=3,\qquad\chi=-27,
\qquad\mathcal R=243>0,
\qquad\zeta=\omega-1.
\]

The horizontal multiplication matrices simplify to

\[
M=\begin{pmatrix}
0&1&0\\-1&-1&0\\-\omega&\omega^2&\omega^2
\end{pmatrix},
\qquad
N=\begin{pmatrix}
0&0&1\\-\omega&\omega^2&\omega^2\\-1&0&-1
\end{pmatrix}.
\]

Each individual coordinate has a repeated value. The joint eigenvectors give

\[
B=\begin{pmatrix}
1&1&1\\
\omega&\omega^2&\omega^2\\
\omega^2&\omega^2&\omega
\end{pmatrix}.
\]

Here det(zI-M)=(z-omega)(z-omega²)². Nevertheless M+2N has distinct eigenvalues, and no companion repair is needed.

With conjugate matching, one ordering of the full result is

\[
\boxed{
H=\begin{pmatrix}
1&1&1&1&1&1\\
1&1&\omega&\omega&\omega^2&\omega^2\\
1&\omega&1&\omega^2&\omega^2&\omega\\
1&-1&-1&1&-1&1\\
1&-\omega&-1&\omega^2&-\omega^2&\omega\\
1&-1&-\omega&\omega&-\omega^2&\omega^2
\end{pmatrix}.
}
\]

The vertical coordinate cubic is (p+1)²(p+omega), also repeated. Direct exact calculation gives HH†=6I. Thus both old coordinate-simplicity requirements can fail strictly inside R>0 while the new construction remains regular.

This is a Karlsson-sector completion: it visibly contains the 2-by-2 Hadamard block formed by rows 1,4 and columns 1,2. It is **not** Tao's isolated matrix, although its upper-left corner is the same corner used in the paper's Tao example. The fixed corner has different permissible side pairings.

---

## 7. Boundary-guard coverage and the global class statement

Here is the additional check that prevents the new recipe from silently losing the old charts.

For one direction, the old numerator factors are

\[
P=rs^2+\bar r t^2+(3-|r|^2)st,
\]

\[
Q=t\bar s^2+r^2\bar t+(3-|t|^2)r\bar s,
\]

and the third pivot factor is

\[
Q_y=s\bar t^2+\bar r^2\bar s+(3-|s|^2)\bar r\bar t.
\]

They are exactly the three diagonal entries of F Gamma. The norm identities give

\[
|P|=|g+(9-|r|^2)\zeta|,
\quad |Q|=|g+(9-|t|^2)\zeta|,
\quad |Q_y|=|g+(9-|s|^2)\zeta|.
\]

The preceding Möbius domain has P Q!=0 and a simple selected x cubic. Suppose its third new denominator vanished. Then Q_y=0 and zeta=-g/(9-|s|²) is real. Row phasing allows s,t to be nonnegative real. P!=0 then forces s,t,r to be nonzero.

The equation Q_y=0 and its conjugate imply

\[
s(t^2-|r|^2)(r-\bar r)=0.
\]

If r is real, modulo Q_y=0 one has

\[
s^2\big((9-s^2)^2\eta-g^2\big)
=(9-s^2)^2(s^2-t^2)(r^2-s^2).
\]

The left side vanishes. Thus either t²=s² or r²=s², making respectively the Q or P denominator vanish as well, a contradiction.

If r is nonreal, |r|²=t² and

\[
s(r+\bar r)=(s^2-3)t.
\]

Using |zeta|²=eta then gives

\[
(t^2-1)(t^2-s^2)=0.
\]

The second factor again makes all relevant denominators equal and zero. Hence t²=|r|²=1. In the chosen gauge,

\[
s(r+\bar r)=s^2-3,
\]

and the old x cubic factors exactly as

\[
\boxed{q_x(z)=(z-\bar r)\left(z-\frac{s-\bar r}{2}\right)^2.}
\]

This contradicts its simplicity. Therefore the third denominator cannot vanish anywhere in the preceding Möbius domain. The vertical argument is identical.

In particular, the new domain contains all paper product-regular points and the prior explicit H_cross seed. Theorem 22 of the accepted paper therefore supplies every non-Tao class.

Tao remains separate. The preceding note's exact 400-corner invariant census shows that in 360 corners its two side blocks have equal nonreal Theta, rather than conjugate Theta. In its other 40 corners the side Gram matrices are 3I and zeta=-3; all three scalar denominators g+zeta Gamma_ii=27-27 vanish. Since Theta is invariant under phasing, row/column permutations, and transposition, this covers every frame.

Therefore

\[
\boxed{
\mathcal H_6=
\{[H_\varepsilon(a,b,c,d)]:\text{the displayed strict or boundary domain holds}\}
\;\dot\cup\;\{[S_6^{(0)}]\}.
}
\]

This is a globally covering four-phase atlas, not an injective fundamental domain and not a claim to list every exceptional completion of every fixed seed.

---

## 8. Verification and implementation

Files:

* `hadamard6_spectral.py`: standalone mpmath constructor. It forms no coordinate cubics or companions; it uses one separating-pencil eigendecomposition per side and explicit 3-by-3 cofactors.
* `verify_hadamard6_spectral.py`: exact generic polynomial identities, boundary-coverage identities, exact matrix examples, and optional high-precision regression.
* `hadamard6_spectral_verification.txt`: numerical/exact-example run output.

The generic symbolic checks use independent formal conjugate variables and exact polynomial pseudo-remainders modulo g*zeta²-chi*zeta+g*eta. They check both trace identities, every commutator entry, the multiplication-algebra closure identity, both metric-unitarity identities, the compact scalar formulas, and the three rank-one-update formulas.

Exact examples include H_cross, the simultaneous zero-imbalance seed, and the new example with repeated horizontal and vertical coordinate cubics. The boundary-coverage factorization is also checked symbolically.

At 80 decimal digits, both sheets were evaluated at 100 admissible random seeds (200 matrices), with an independent comparison to the preceding Möbius constructor. Observed maxima were:

| Quantity | Maximum observed residual |
|---|---:|
| Entry modulus | 1.16881348597e-77 |
| HH†-6I, entrywise | 4.47832568628e-77 |
| Commutator | 7.12026895472e-78 |
| Metric unitarity | 7.32640588323e-77 |
| Difference from Möbius constructor | 2.2135846762e-76 |

Both sheets of four explicitly selected boundary/repeated-coordinate examples also passed numerical checks. These are floating-point checks, not interval certificates. The global flatness and coverage claims retain the stated exact inputs from the accepted paper.

Run:

```sh
python hadamard6_spectral.py --example repeated
python hadamard6_spectral.py --example hcross
python verify_hadamard6_spectral.py --numerical --count 100
# Optional comparison, with hadamard6_mobius.py alongside these files:
python verify_hadamard6_spectral.py --numerical --compare-old --count 100
```

The full symbolic checks can take approximately one to two minutes. `--skip-symbolic` skips those generic checks but retains the exact coverage identities and exact examples.

## Bottom line

\[
\boxed{\text{four phases}\ \longrightarrow\ \text{one shared square root}\
\longrightarrow\ \text{two }3\times3\text{ spectral problems}\
\longrightarrow\ H.}
\]

The improvement is not a concealed reduction in polynomial degree. It is the elimination of all coordinate-companion singularities and all extra strict-domain guards, with a direct positive-metric proof that the reconstructed eigenvectors are phase columns.
