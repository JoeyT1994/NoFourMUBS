# An explicit Fourier–radical four-phase normal form for order-six Hadamards

## Scope and exact inputs

The supplied paper, Mateo Cárdenes Wuttig and Joseph Tindall, *A Complete Classification of Complex Hadamard Matrices of Order Six*, is accepted as true. Its Theorem 22 supplies global product-regular coverage outside Tao and H_cross; its Supplemental Proposition S.11 supplies the essential lower-block norm identity. The extension to the larger strict/boundary domain is the preceding commuting-pair theorem. The new construction below reproduces those same side blocks by explicit scalar radicals.

The preceding `Hadamard6_Polynomial_Normal_Form.md` supplies the rational sheet-dependent side invariants and the degree-72 theorem for an ordered generic matrix over the original complex seed field. The optimality conclusion here is a consequence of that earlier theorem; it is not asserted to be a new independent proof of its good-reduction argument.

**New result.** General cubic solving and the finite search for a separating projection can both be removed. Every side is obtained by one nonzero square root, one nonzero cube root, and multiplication by the fixed 3-by-3 Fourier matrix. Repeated original phase coordinates are allowed. The new square-root and cube-root choices only permute columns. All cubic dependence of the full matrix is confined to two diagonal factors.

The four independent continuous parameters remain the original four seed phases. This is an explicit radical evaluation of their covering atlas, not a new rational parametrization by four different free coordinates.

All matrices are unnormalized: a Hadamard has phase entries and HH†=6I.

---

## 1. Seed, sheet, and unchanged domain

Choose a,b,c,d on the unit circle and set

\[
E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},
\qquad G_h=6I-EE^\dagger,
\qquad G_v=6I-E^T\bar E.
\]

For either Gram matrix write

\[
G=\begin{pmatrix}3&\bar s&\bar t\\s&3&\bar r\\t&r&3\end{pmatrix},
\qquad \Gamma=\operatorname{adj}G,
\qquad g=\det G.
\]

The explicit adjugate is

\[
\Gamma=\begin{pmatrix}
9-|r|^2&r\bar t-3\bar s&\bar s\bar r-3\bar t\\
\bar r t-3s&9-|t|^2&s\bar t-3\bar r\\
sr-3t&\bar s t-3r&9-|s|^2
\end{pmatrix}.
\]

Using G_h, define

\[
\sigma=\operatorname{tr}\Gamma_h,
\qquad \eta=g+36-2\sigma,
\]

\[
\chi=\prod_{i=0}^2(\Gamma_{h,ii}-8)+2(\sigma-16)^2+(12-\sigma)g,
\qquad \mathcal R=4g^2\eta-\chi^2.
\]

These same scalar values are obtained from G_v. Choose the sheet sign epsilon=±1 and put

\[
\boxed{\zeta=\frac{\chi+i\varepsilon\sqrt{\mathcal R}}{2g}.}
\]

Thus |ζ|²=η and ζ+bar(ζ)=χ/g. Use z=ζ horizontally and z=bar(ζ) vertically.

The strict domain remains exactly

\[
\boxed{(a,b,c,d)\in\mathbb T^4,\qquad\mathcal R>0.}
\]

It automatically implies g>0 and G_h,G_v positive definite. At the sheet boundary, the same construction is valid on

\[
g>0,\qquad\mathcal R\ge0,
\qquad \prod_i(g+\zeta\Gamma_{h,ii})
        \prod_i(g+\bar\zeta\Gamma_{v,ii})\ne0.
\]

No new guard is added below. This is not a statement about arbitrary exceptional completions at corners outside this domain.

For reference, positivity follows from the previously established identities

\[
g=2|\det E|^2-3|\operatorname{perm}E|^2,
\qquad\eta=|\det E|^2-2|\operatorname{perm}E|^2,
\]

so g=2η+|perm E|². If R>0 then η>0 and g>0. The three eigenvalues of EE† are nonnegative with sum nine, hence at most one exceeds six; their complementary product g>0 forces all complements positive.

---

## 2. The rational side invariants

Given G,z, set

\[
\begin{aligned}
P_0&=rs^2+\bar r t^2+(3-|r|^2)st,\\
P_1&=t\bar s^2+r^2\bar t+(3-|t|^2)r\bar s,\\
P_2&=s\bar t^2+\bar r^2\bar s+(3-|s|^2)\bar r\bar t,
\end{aligned}
\]

\[
\lambda_i=\frac{P_i}{g+z\Gamma_{ii}},
\qquad
u=\frac{\lambda_0}{\lambda_1},\qquad
v=\frac{\lambda_0}{\lambda_2},\qquad
\Pi=z\lambda_0.
\]

For the reconstructed side X=(1;x;y), these are

\[
u=\prod_jx_j,\qquad v=\prod_jy_j,\qquad\Pi=\operatorname{perm}X.
\]

Each λ_i, u, and v is a phase. Their denominators are precisely the already stated scalar guards.

---

## 3. One universal Fourier–radical side routine

Let

\[
\omega=e^{2\pi i/3},\qquad
F_3=\begin{pmatrix}1&1&1\\1&\omega&\omega^2\\1&\omega^2&\omega\end{pmatrix}.
\]

Define three centered moments

\[
\boxed{
\alpha=s^2-3u\bar s,\qquad
\beta=t^2-3v\bar t,\qquad
\gamma=2st-3\Pi.
}
\]

Take a square root

\[
\boxed{\Delta^2=\gamma^2-4\alpha\beta
                  =\frac{3g\,uv}{\lambda_0}.}
\]

The second expression is especially useful for evaluation: its modulus is 3g>0. Select its sign so that

\[
|\gamma+\Delta|\ge|\gamma-\Delta|,
\qquad h=\frac{\gamma+\Delta}{2}.
\]

Ties may be resolved arbitrarily. This guarantees

\[
\boxed{|h|\ge |\Delta|/2=\sqrt{3g}/2>0.}
\]

Now calculate the nonzero cube radicand

\[
\boxed{
T=\frac{
 u h^2(h-\alpha r)+v\alpha^2(h\bar r-\alpha)
 -\frac1{27}(hs-\alpha t)^3
}{\Delta^3}.
}
\]

Choose **any** cube root τ³=T. The side block is the explicit matrix

\[
\boxed{
\mathcal F(G,z)=
\begin{pmatrix}
1&0&0\\
s/3&\tau&\alpha/(9\tau)\\
t/3&\beta\tau/h&h/(9\tau)
\end{pmatrix}F_3.
}
\]

Equivalently, for j=0,1,2,

\[
\boxed{
\begin{aligned}
x_j&=s/3+\tau\omega^j+\frac{\alpha}{9\tau}\omega^{-j},\\
y_j&=t/3+\frac{\beta\tau}{h}\omega^j+\frac{h}{9\tau}\omega^{-j}.
\end{aligned}}
\]

Every reconstructed x_j,y_j is a phase and X X†=G. The intermediate τ generally is **not** a phase.

No coordinate cubic, cubic discriminant, separating-projection search, polynomial interpolation, per-root quotient, eigensolver, or matrix inverse is required.

### An optional lower-degree expression for T

The implementation above uses the product formula, but one can also compute

\[
d_0=\frac{1}{g}\left[
(s^2-2u\bar s)\Gamma_{02}
+s\Gamma_{12}+(s\bar r-u\bar\Pi)\Gamma_{22}\right]
\]

and use

\[
\boxed{T=\frac{2s^3-9u|s|^2+27u+3d_0\Delta}{54}.}
\]

The subscript denotes the coefficient of y in x², not another parameter. This expression remains valid when that coefficient vanishes. The exact verifier checks its equality with the product formula.

---

## 4. Why the radical formula works

This is a universal fact about invertible affine three-point configurations, not a special ansatz for Hadamards.

Let an existing normalized side X have phase rows x,y. Its unique Fourier expansion is

\[
x_j=s/3+A\omega^j+B\omega^{-j},
\qquad
y_j=t/3+C\omega^j+D\omega^{-j}.
\]

Here A,B,C,D are Fourier coefficients, not the blocks of the full 6-by-6 matrix. Invertibility of X is equivalent to AD−BC≠0.

Vieta and the permanent identity give

\[
\alpha=9AB,\qquad \beta=9CD,
\qquad\gamma=9(AD+BC).
\]

Consequently

\[
\gamma^2-4\alpha\beta=81(AD-BC)^2.
\]

The two square-root choices correspond to the two orientations of the column ordering. Reversing that ordering interchanges A with B and C with D. Orient the ordering so that

\[
\Delta=9(AD-BC),\qquad h=9AD.
\]

The chosen nonzero h makes A and D nonzero. Define the centered linear projection

\[
L_j=\frac{h x_j-\alpha y_j-(hs-\alpha t)/3}{\Delta}.
\]

Substitution gives the crucial simplification

\[
\boxed{L_j=A\omega^j.}
\]

Thus the general cubic has become the **pure cube** L³=A³.

To compute A³ from the symmetric data, use

\[
\prod_j(p x_j+q y_j)
=u p^3+ur p^2q+v\bar r p q^2+v q^3.
\]

For p=h, q=−α, write

\[
a=hs-\alpha t,
\quad
c=u h^2(h-\alpha r)+v\alpha^2(h\bar r-\alpha).
\]

The second elementary symmetric function b of these three projected values obeys a²=3b, because h²−γh+αβ=0. Centering therefore yields

\[
\prod_j(hx_j-\alpha y_j-a/3)=c-a^3/27.
\]

Division by Δ³ proves T=A³. In particular, T is nonzero. Any selected τ differs from A by a cube root of unity; this merely shifts j cyclically.

Finally,

\[
B=\frac{\alpha}{9A},\qquad
C=\frac{\beta A}{h},\qquad
D=\frac{h}{9A},
\]

which gives the displayed reconstruction.

### Determinant interpretation of the discriminant

Since det F_3=−3i√3,

\[
\det X=-3i\sqrt3(AD-BC)=-i\Delta/\sqrt3.
\]

Hence the general affine identity is

\[
\boxed{\gamma^2-4\alpha\beta=-3(\det X)^2.}
\]

For a phase block, the constant coefficient λ_0 in xy=λ_0+linear terms has the Cramer-rule expression

\[
\lambda_0=-uv\frac{\overline{\det X}}{\det X}.
\]

Indeed, factor x_jy_j from column j of the numerator determinant det(xy;x;y), and interchange the last two rows. With g=|det X|², this gives

\[
-3(\det X)^2=3g uv/\lambda_0.
\]

Thus the new discriminant is an oriented **block determinant**, not the discriminant of one selected phase coordinate. It cannot vanish on an invertible side, even if x or y repeats.

### Quantitative nonvanishing

Every Fourier coefficient of a phase row has modulus at most one. Since h=9AD and |D|≤1,

\[
\boxed{\frac{\sqrt{3g}}{18}\le|\tau|\le1.}
\]

Equivalently, |T|≥(√(3g)/18)³. These estimates explain why the new denominators cannot introduce an extra coordinate-collision boundary. They are not a uniform conditioning claim as g or the earlier scalar denominators tend to zero.

---

## 5. The whole matrix and the two diagonal cubic factors

Apply the side routine with (G_h,ζ) and (G_v,bar ζ):

\[
B=\mathcal F(G_h,\zeta),\qquad
C=\mathcal F(G_v,\bar\zeta)^T.
\]

Then

\[
\boxed{H=\begin{pmatrix}E&B\\C&-CE^\dagger\Gamma_hB/g\end{pmatrix}.}
\]

The side blocks equal those of the previous construction up to independent column permutations, which become last-three-column and last-three-row permutations of H. Thus the same lower-block flatness theorem applies. Orthogonality alone is not being substituted for the paper's norm identity.

For a more compact factorization, put

\[
L_\nu=\begin{pmatrix}
1&0&0\\
s_\nu/3&1&\alpha_\nu/9\\
t_\nu/3&\beta_\nu/h_\nu&h_\nu/9
\end{pmatrix},
\qquad
D_\nu=\operatorname{diag}(1,\tau_\nu,\tau_\nu^{-1}),
\quad\nu=h,v.
\]

Then

\[
\boxed{
H=
\begin{pmatrix}I_3&0\\0&F_3D_v\end{pmatrix}
\begin{pmatrix}
E&L_h\\
L_v^T&-L_v^T E^\dagger\Gamma_hL_h/g
\end{pmatrix}
\begin{pmatrix}I_3&0\\0&D_hF_3\end{pmatrix}.
}
\]

**All cube-root dependence is confined to D_h and D_v.** The middle matrix requires only the seed and three quadratic radicals.

These are computational factors. They are not claimed to be unitary individually, are not standard Hadamard-equivalence operations, and do not restrict H to a Fourier or four-circulant-block family.

One further exact identity follows immediately:

\[
\boxed{\det H=\frac{72\Delta_h\Delta_v}{g}.}
\]

To check it, block column exchange and a Schur complement give det H=−216 det B det C/g. Substituting det B=−iΔ_h/√3 and det C=−iΔ_v/√3 gives the result. Since |Δ_h|=|Δ_v|=√(3g), it has modulus 216, as required.

---

## 6. Radical choices are only column permutations

Multiplication τ by ω sends column j to column j+1. Thus the three cube-root choices make a cyclic permutation.

Where both square-root orientations have nonzero pivots, changing Δ to −Δ and taking

\[
\tau' = \alpha/(9\tau)
\]

interchanges the positive and negative Fourier modes, sending j to −j. Any other cube root on that orientation differs by a cyclic permutation. The square and cube choices therefore generate exactly the S3 column relabelings of the side.

At a zero Fourier coefficient, one orientation may have h=0; the automatic larger-pivot choice selects the other orientation. This does not discard a Hadamard class or create an exceptional point in the construction.

Applied horizontally and vertically, these operations only permute the last three full columns and last three full rows. The separately chosen shared sign epsilon is still the genuine reconstruction sheet label. There are no additional continuous parameters.

---

## 7. Exact repeated-coordinate example

Take (a,b,c,d)=(1,ω,ω,1), with ζ=ω−1. Then

\[
g=9,\qquad\eta=3,\qquad\chi=-27,
\qquad\mathcal R=243>0.
\]

The horizontal side has s=t=−(2+ω), u=v=ω², and

\[
\alpha=\beta=-3,\qquad\gamma=3.
\]

Choose

\[
\Delta=3i\sqrt3,
\qquad h=3(1+\omega),
\qquad T=-\frac{i}{3\sqrt3},
\qquad\tau=\frac{1-\omega}{3}.
\]

The Fourier formula returns, up to column ordering,

\[
\begin{pmatrix}
1&1&1\\
\omega&\omega^2&\omega^2\\
\omega^2&\omega^2&\omega
\end{pmatrix}.
\]

The original x cubic has a repeated root, but the new discriminant is −27, not zero. No projection search or repeated-root repair occurs. The exact verifier checks this example over Q(i√3).

It also checks a phase block with a genuinely vanishing Fourier coefficient,

\[
X=\begin{pmatrix}1&1&1\\1&\omega&\omega^2\\1&1&-1\end{pmatrix},
\]

where one h orientation vanishes but the selected opposite orientation reconstructs the block exactly.

---

## 8. Exact algebraic cost over the original seed field

Let F=C(a,b,c,d). The previous note proved that the field generated by a generic ordered reconstructed matrix has degree 72 over F; over the sheet field K=F(ζ), the two ordered cubic splitting fields have group S3×S3 and degree 36.

The present formula constructs the matrix in the tower

\[
F\subset F(\zeta)\subset F(\zeta,\Delta_h,\Delta_v)
\subset F(\zeta,\Delta_h,\Delta_v,\tau_h,\tau_v),
\]

using degrees at most

\[
\boxed{2\cdot2\cdot2\cdot3\cdot3=72.}
\]

There is no extraneous radical extension. Conversely, the output matrix recovers all the radicals:

\[
\zeta=-\frac{\operatorname{perm}(B)(\det B)^2}
 {g\prod_{ij}B_{ij}},
\qquad
\Delta_h=i\sqrt3\det B,\qquad
\Delta_v=i\sqrt3\det C,
\]

and

\[
\tau_h=\frac13\sum_{j=0}^2B_{2,j+1}\omega^{-j},
\qquad
\tau_v=\frac13\sum_{j=0}^2C_{j+1,2}\omega^{-j},
\]

where the last two formulas use one-based matrix positions. These are just the positive Fourier coefficients of the second row of B and C^T. Thus the radical field equals the field of the ordered matrix, and generically the total tower degree is exactly 72.

**Precise optimality statement.** For an ordered generic matrix retaining the fixed dephased corner, constructions over the original complex seed field using rational operations and adjunctions of degree at most two or three require at least three quadratic and two cubic adjunctions. The degree 72=2³3² forces those multiplicities; the displayed formula attains them.

This is not a minimum arithmetic-operation count. It is not a statement about formulas using arbitrary higher roots, transcendental encodings, or different four free parameters. In particular, a successful reparametrization of the underlying four-dimensional family could change the relevant base field.

---

## 9. Coverage and limitations

The new side formula applies everywhere on the preceding strict and permitted boundary domains, since Δ,h,T are automatically nonzero there. It reproduces exactly the same unordered side blocks. It therefore retains the preceding H_cross inclusion and every product-regular chart. By the accepted paper's Theorem 22,

\[
\mathcal H_6=\{[H_\varepsilon(a,b,c,d)]:\text{the stated domain holds}\}
\;\dot\cup\;\{[S_6^{(0)}]\}.
\]

Tao remains the separately supplied isolated matrix. This is a covering atlas, not an injective fundamental domain. The scalar boundary poles and singular complementary Gram matrices have not been declared removable. The new result is an explicit, globally valid radical evaluation on the already proved chart, not an enlargement past those remaining boundaries.

---

## 10. Reproducible verification

The standalone constructor `hadamard6_fourier_radicals.py` requires mpmath. It invokes no polynomial root solver or eigensolver, and forms no matrix inverse.

The exact script `verify_hadamard6_fourier_radicals.py` checks the following symbolically:

* the centered-moment and determinant identities for an arbitrary affine three-point configuration;
* the pure-cube projection and its nonzero-orientation reconstruction;
* orientation reversal and the alternate cube expression;
* the exact repeated-coordinate example and a zero-Fourier-coefficient example.

Its optional numerical regression compares both sheets at 100 strict-domain random seeds (200 matrices), plus both sheets of four named boundary/repeated-coordinate examples (8 more matrices), at 80 decimal digits. It also checks all six radical branches on 20 selected sides (120 reconstructions) against column permutations.

Observed maxima from the included run:

| Quantity | Maximum absolute residual |
|---|---:|
| Entry modulus | 7.008453192659652e-78 |
| HH†−6I, entrywise | 4.025230189978541e-77 |
| Side Gram identity | 1.817165636488491e-77 |
| Centered discriminant identity | 3.420307057266251e-76 |
| Full determinant formula | 2.366174378221240e-76 |
| Difference from prior polynomial constructor, after permutations | 4.860976209882254e-77 |
| Radical-branch permutation comparison | 9.604454566815322e-78 |

These floating-point checks are supplementary, not interval certificates. They are not the proof of global coverage or lower-block flatness. Inputs near a remaining scalar boundary can require more precision; the constructor reports unresolved cases rather than treating a small numerical residual as a proof of membership.

Run:

```sh
python hadamard6_fourier_radicals.py --example repeated --dps 80
python verify_hadamard6_fourier_radicals.py
python verify_hadamard6_fourier_radicals.py --numerical --count 100 --dps 80
# With the previous constructor alongside:
python verify_hadamard6_fourier_radicals.py --numerical --compare-old --count 100 --dps 80
```

## Bottom line

\[
\boxed{\text{four seed phases}\ \longrightarrow\
\text{three square roots and two cube roots}\ \longrightarrow\
\text{one fixed Fourier factorization}\ \longrightarrow H.}
\]

Only the shared sheet sign changes the reconstruction candidate; the side radical choices only relabel rows and columns. The two cubic extensions have not disappeared, but they are now isolated as two scalar cube roots and attain the exact algebraic cost of the original seed coordinates.
