# A compact covariance–Fourier radical form for order-six Hadamards

## Result and scope

The Fourier–radical side construction simplifies to a two-term cube radicand,

\[
\boxed{T=u\rho+\mu\alpha,}
\]

followed by one perfectly conditioned (up to its overall scale) 2-by-2 linear system. The second row product, the second row's centered quadratic moment, the pivot \(h\), and division by \(h\) or a third power of a determinant radical disappear.

There is no reduction in the number of variable radicals: the full matrix still uses one shared sheet square root, one determinant square root per side, and one cube root per side. Nor is there an enlargement of the seed domain. This is an exact simplification of the existing Fourier–radical construction, with a different safe ordering convention for the Fourier modes.

### Inputs retained from the preceding work

The supplied paper by Mateo Cárdenes Wuttig and Joseph Tindall, *A Complete Classification of Complex Hadamard Matrices of Order Six*, is accepted as true. Its Theorem 22 gives product-regular coverage outside Tao and H_cross; Supplemental Proposition S.11 gives the lower-block norm identity. The previously derived commuting-pair and Fourier–radical notes give the extended domain, its inclusion of H_cross, and the rational side invariants used below.

The new identities in this note are proved directly for any invertible 3-by-3 phase block. Therefore, wherever the previous construction supplies a side, this routine supplies the identical side up to column permutation. Global soundness and coverage are inherited through this exact equivalence, not inferred from numerical residuals. The prior Galois-degree theorem is not needed for the new proof.

Matrices are unnormalized: \(|H_{ij}|=1\), \(HH^\dagger=6I_6\). Divide by \(\sqrt6\) for a unitary.

## 1. The four seeds and the shared sheet

Choose \(a,b,c,d\in\mathbb T\), and put

\[
E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},
\quad G_h=6I_3-EE^\dagger,
\quad G_v=6I_3-E^T\bar E.
\]

For a Gram matrix write

\[
G=\begin{pmatrix}3&\bar s&\bar t\\s&3&\bar r\\t&r&3\end{pmatrix},
\qquad \Gamma=\operatorname{adj}G,\qquad g=\det G.
\]

Its adjugate is explicitly

\[
\Gamma=\begin{pmatrix}
9-|r|^2&r\bar t-3\bar s&\bar s\bar r-3\bar t\\
\bar r t-3s&9-|t|^2&s\bar t-3\bar r\\
sr-3t&\bar s t-3r&9-|s|^2
\end{pmatrix}.
\]

Using the horizontal Gram matrix, define

\[
\sigma=\operatorname{tr}\Gamma_h,\qquad
\eta=g+36-2\sigma,
\]
\[
\chi=\prod_{i=0}^2(\Gamma_{h,ii}-8)+2(\sigma-16)^2+(12-\sigma)g,
\qquad \mathcal R=4g^2\eta-\chi^2.
\]

The vertical calculation gives the same four real scalars. Choose \(\varepsilon\in\{+1,-1\}\), and let

\[
\boxed{\zeta=\frac{\chi+i\varepsilon\sqrt{\mathcal R}}{2g}.}
\]

The strict domain is simply \(\mathcal R>0\). It implies \(g>0\) and positive definiteness of both complementary Gram matrices. The permitted sheet boundary is

\[
g>0,\quad \mathcal R\geq0,\quad
\prod_i(g+\zeta\Gamma_{h,ii})
\prod_i(g+\bar\zeta\Gamma_{v,ii})\ne0.
\]

No new guard is required by this note. Use \(z=\zeta\) for the horizontal side and \(z=\bar\zeta\) for the vertical side.

## 2. Rational side data

For either \((G,z)\), form

\[
\begin{aligned}
P_0&=rs^2+\bar r t^2+(3-|r|^2)st,\\
P_1&=t\bar s^2+r^2\bar t+(3-|t|^2)r\bar s,\\
P_2&=s\bar t^2+\bar r^2\bar s+(3-|s|^2)\bar r\bar t.
\end{aligned}
\]

With indices 0,1,2 set

\[
\lambda_i=\frac{P_i}{g+z\Gamma_{ii}},\qquad
u=\frac{\lambda_0}{\lambda_1},\qquad
\Pi=z\lambda_0.
\]

The \(\lambda_i\) are phases. For the side \(X=(1;x;y)\), \(u=\prod_jx_j\) and \(\Pi=\operatorname{perm}X\). The product \(\prod_jy_j\) is no longer needed explicitly.

Define the two means, a positive variance, and a covariance:

\[
\mu=s/3,\qquad \nu=t/3,\qquad
n=1-|\mu|^2>0,\qquad
k=r/3-\nu\bar\mu.
\]

Only two centered algebraic moments are needed:

\[
\boxed{\alpha=\mu^2-u\bar\mu,\qquad
\gamma=2\mu\nu-\Pi/3.}
\]

These are scaled quantities: \(\alpha\) and \(\gamma\) here equal the corresponding quantities in the preceding Fourier–radical note divided by nine. The old second-row moment \(\beta\) is not formed.

## 3. One square root, one two-term cube root, one linear step

Take

\[
\boxed{\delta^2=\frac{g\lambda_0}{27\lambda_1\lambda_2}.}
\]

This is the preceding block-determinant radical divided by nine. It is nonzero because \(|\delta|^2=g/27\).

Calculate

\[
d_F=\frac{n\gamma-2\alpha k}{\delta}.
\]

On the stated physical domain this number is real. Choose the sign of \(\delta\) so that \(d_F\geq0\); at equality either sign works. Put

\[
\boxed{\rho=\frac{n+d_F}{2},\qquad
T=u\rho+\mu\alpha.}
\]

Choose any cube root \(f_+^3=T\), and calculate

\[
\boxed{
f_-=\frac{\alpha}{f_+},\qquad
g_+=\frac{kf_+-\delta\overline{f_-}}{n},\qquad
g_-=\frac{kf_-+\delta\overline{f_+}}{n}.
}
\]

Finally, with \(\omega=e^{2\pi i/3}\), set

\[
F_3=\begin{pmatrix}1&1&1\\1&\omega&\omega^2\\1&\omega^2&\omega\end{pmatrix},
\]
\[
\boxed{
\mathcal C(G,z)=
\begin{pmatrix}
1&0&0\\
\mu&f_+&f_-\\
\nu&g_+&g_-
\end{pmatrix}F_3.
}
\]

Equivalently, the two nonconstant rows are

\[
x_j=\mu+f_+\omega^j+f_-\omega^{-j},\qquad
y_j=\nu+g_+\omega^j+g_-\omega^{-j},\quad j=0,1,2.
\]

There is no \(h\), no division by \(h\), and no division by \(\delta^3\). There is also no special branch for a zero row mean or a repeated coordinate.

### Nonvanishing and the choice of orientation

The quantities have the exact meanings

\[
n=|f_+|^2+|f_-|^2,\quad
d_F=|f_+|^2-|f_-|^2,\quad \rho=|f_+|^2.
\]

Consequently the automatic orientation gives

\[
\boxed{\rho\geq n/2>0,\qquad |T|^2=\rho^3,
\qquad |f_+|\geq\sqrt{n/2}.}
\]

The full 2-by-2 centered covariance matrix has determinant \(g/27\) and its other diagonal entry is at most one. Thus \(n\geq g/27\), giving

\[
|f_+|\geq\sqrt{g/54},\qquad
|T|\geq(g/54)^{3/2}.
\]

These are mathematical nonvanishing bounds, not uniform numerical-conditioning claims near the old scalar boundaries or the shared sheet collision.

The two-term radicand is equal to the previous radicand for the same Fourier orientation. Our new automatic convention can reverse that orientation to select the larger first-row coefficient; this only permutes columns.

## 4. Assemble the whole Hadamard

Set

\[
B=\mathcal C(G_h,\zeta),\qquad
C=\mathcal C(G_v,\bar\zeta)^T,
\]

and use the unchanged block completion

\[
\boxed{
H=\begin{pmatrix}
E&B\\
C&-CE^\dagger\Gamma_hB/g
\end{pmatrix}.
}
\]

This has exactly the same unordered sides, and hence the same completed matrices up to the last-three-row and last-three-column permutations, as the preceding Fourier–radical formula.

The shared sign \(\varepsilon\) retains its reconstruction-sheet meaning. Multiplying a side cube root by \(\omega\) only cycles that side's columns. Reversing the determinant orientation exchanges the positive and negative Fourier modes. No extra continuous parameters are introduced.

### Optional: retain the two diagonal cubic factors

Writing \(\tau=f_+\), define

\[
L(G,z)=\begin{pmatrix}
1&0&0\\
\mu&1&\alpha\\
\nu&\dfrac{k\rho-\delta\bar\alpha}{n\rho}
&\dfrac{k\alpha+\delta\rho}{n}
\end{pmatrix},
\qquad D(\tau)=\operatorname{diag}(1,\tau,\tau^{-1}).
\]

Because \(\bar\tau=\rho/\tau\),

\[
\mathcal C(G,z)=L(G,z)D(\tau)F_3.
\]

All entries of \(L\) require only the quadratic-stage data. The previous full Fourier factorization remains valid with these shorter \(L_h,L_v\):

\[
H=
\begin{pmatrix}I_3&0\\0&F_3D_v\end{pmatrix}
\begin{pmatrix}
E&L_h\\L_v^T&-L_v^TE^\dagger\Gamma_hL_h/g
\end{pmatrix}
\begin{pmatrix}I_3&0\\0&D_hF_3\end{pmatrix}.
\]

These are computational factors, not Hadamard-equivalence operations or a restriction to a circulant family.

## 5. Proof by three Fourier identities

Let \(X=(1;x;y)\) be any invertible phase block supplied by the previous construction. Write its unique Fourier expansion as

\[
x_j=\mu+A\omega^j+B\omega^{-j},\qquad
y_j=\nu+C\omega^j+D\omega^{-j}.
\]

In this section \(A,B,C,D\) denote scalar Fourier coefficients, not the 3-by-3 blocks of \(H\).

### Identity 1: the centered moments and determinant

Elementary Fourier multiplication and Parseval give

\[
\alpha=AB,\quad \gamma=AD+BC,\quad
n=|A|^2+|B|^2,\quad k=C\bar A+D\bar B.
\]

Furthermore,

\[
\det X=-3i\sqrt3(AD-BC).
\]

The preceding bilinear constants obey

\[
\lambda_0=-uv\frac{\overline{\det X}}{\det X},\qquad
u=\lambda_0/\lambda_1,\qquad v=\lambda_0/\lambda_2.
\]

Since \(g=|\det X|^2\), the new square radicand equals \((AD-BC)^2\). A column reversal lets us take \(\delta=AD-BC\).

### Identity 2: the Fourier power is rational after that square root

Direct expansion gives

\[
n\gamma-2\alpha k
=(|A|^2-|B|^2)(AD-BC).
\]

Therefore \(d_F=|A|^2-|B|^2\). Choosing its nonnegative sign selects \(|A|\geq|B|\), and \(\rho=|A|^2\).

### Identity 3: the cube is only two terms

Since the three \(x_j\) are phases with product \(u\), they satisfy

\[
x_j^3-3\mu x_j^2+3u\bar\mu x_j-u=0.
\]

Divide by \(x_j\), and use \(x_j^{-1}=\bar x_j\):

\[
x_j^2-3\mu x_j+3u\bar\mu=u\bar x_j.
\]

Comparing the \(\omega^{-j}\) Fourier coefficients yields

\[
A^2-\mu B=u\bar A.
\]

Multiplying by \(A\) proves the decisive identity

\[
\boxed{A^3=u|A|^2+\mu AB=u\rho+\mu\alpha.}
\]

Thus any selected cube root differs from the actual \(A\) by a cube root of unity. This cyclically permutes the columns, and \(B=\alpha/A\) is recovered automatically.

### The other row is linear

The two equations

\[
C\bar A+D\bar B=k,\qquad AD-BC=\delta
\]

are the 2-by-2 system

\[
\begin{pmatrix}\bar A&\bar B\\-B&A\end{pmatrix}
\begin{pmatrix}C\\D\end{pmatrix}
=\begin{pmatrix}k\\\delta\end{pmatrix}.
\]

Its determinant is \(n>0\). Its solution is precisely

\[
C=(Ak-\bar B\delta)/n,\qquad
D=(Bk+\bar A\delta)/n.
\]

Moreover the coefficient matrix times its adjoint is \(nI_2\). Its two singular values are both \(\sqrt n\), so the system has condition number one. The scale \(\sqrt n\) can still become small near a singular Gram matrix.

This reconstructs the actual phase block, up to a column permutation. Applying the same argument in both directions establishes exact equivalence with the preceding full construction. It does not attempt to infer final-block flatness from orthogonality alone.

## 6. Repeated coordinates and zero coefficients

### Repeated coordinates require no branch

The coordinate cubic of \(x\) has the exact discriminant

\[
\operatorname{Disc}(z^3-sz^2+u\bar s z-u)
=-27u^2d_F^2.
\]

Thus repeated coordinates correspond to \(d_F=0\). Our construction simply uses \(\rho=n/2>0\), so no denominator vanishes.

At the earlier seed \((a,b,c,d)=(1,\omega,\omega,1)\), one horizontal side has

\[
n=2/3,\quad \alpha=-1/3,\quad \gamma=1/3,
\quad k=-1/3,\quad \delta=i/\sqrt3,
\quad d_F=0,\quad \rho=1/3.
\]

The two-term formula gives

\[
T=-i/(3\sqrt3),
\]

and reproduces the preceding repeated-coordinate block.

### A zero old pivot in the newly preferred orientation

Consider the actual phase block

\[
X_0=\begin{pmatrix}
1&1&1\\
1&\omega&i\omega^2\\
1&\omega&\omega^2
\end{pmatrix}.
\]

Its Fourier coefficients are

\[
A=(2+i)/3,\quad B=(i-1)\omega/3,\quad C=1,\quad D=0.
\]

Here \(|A|^2=5/9>|B|^2=2/9\), so this is our preferred orientation. But the old pivot \(h=9AD\) is zero in this orientation. The old automatic prescription would reverse modes; the new one has no reason to do so.

Our quantities are

\[
n=7/9,\quad d_F=1/3,\quad \rho=5/9,\qquad
\boxed{T=(2+11i)/27.}
\]

The linear step returns \(C=1,D=0\) exactly. This is a demonstration about a side block, not a claim of an additional equivalence class or an enlarged global seed domain.

### A zero mean also needs no branch

When \(\mu=0\), \(\alpha=0\). A phase triple with zero sum is a phased Fourier row, so after the preferred orientation \(\rho=1\), \(f_-=0\), and the same formula gives \(T=u\). There is no 0/0 repair.

## 7. Verification and files

The exact verifier checks:

* Laurent identities for arbitrary nonzero coordinate triples, with formal conjugation interpreted as inversion;
* the two-term cube identity, variance/covariance identities, and oriented block determinant;
* the amplitude identity and 2-by-2 reconstruction as polynomial identities;
* the coordinate discriminant, the repeated-coordinate example, a zero old pivot, a zero mean, and an exact H_cross completion.

The full symbolic tests completed successfully. A separate 80-decimal-digit run, using random generator seed 20260920, tested both sheets of 100 admissible seeds (200 matrices), both sheets of four earlier boundary/repeated-coordinate examples (8 matrices), and 240 radical-branch reconstructions.

Observed maxima:

| Quantity | Maximum absolute residual |
|---|---:|
| Entry modulus | 7.930895512692323e-78 |
| HH† minus 6I, entrywise | 3.728564568561771e-77 |
| Side Gram identity | 2.673923086320990e-77 |
| \(|T|^2-\rho^3\) | 2.597386729253136e-77 |
| Difference from prior form after permutations | 1.190908432425068e-77 |
| Radical-branch permutation comparison | 1.283869988789264e-77 |

These are floating-point regression diagnostics, not interval certificates. They do not independently establish the inherited global theorems. No runtime or global numerical-conditioning improvement is claimed.

Files:

* `hadamard6_compact_fourier.py`: standalone mpmath constructor;
* `verify_hadamard6_compact_fourier.py`: SymPy identities and optional numerical comparison;
* `hadamard6_fourier_radicals.py`: unchanged preceding constructor, included for comparison;
* `Hadamard6_Compact_Fourier_Verification.txt`: actual test output.

Example:

```python
from hadamard6_compact_fourier import from_angles
result = from_angles(['1.2', '2.5', '3.2', '6.0'], sheet=1, dps=80)
H = result.matrix
print(result.horizontal.rho)
print(result.horizontal.cube)
```

Run verification:

```sh
python verify_hadamard6_compact_fourier.py
python verify_hadamard6_compact_fourier.py --numerical --count 100 --dps 80
```

## Bottom line

The earlier cube radicand involved a cubic product expansion, a centering subtraction, and division by a determinant cubed. It is replaced by

\[
\boxed{T=u\rho+\mu\alpha.}
\]

A positive Fourier power replaces the old nonzero mixed pivot, and the second row is reconstructed by a scaled-unitary 2-by-2 solve. The radical count and the domain are unchanged; the actual side formula is shorter and permits zero mixed pivots without changing its arithmetic structure.
