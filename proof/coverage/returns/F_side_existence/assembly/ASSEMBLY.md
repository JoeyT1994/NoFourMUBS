# Final Fourier assembly and signature: explicit polynomial proof

This module closes the final assembly once the Gram-to-constructor identities
in the companion algebra module have been established. Its additional algebra
consists of the integer-polynomial cofactor certificates in
`assembly_certificates.json`. The independent circuit verifier is
`verify_assembly.py`; it uses only Python's standard library, checks the stored
coefficients against the displayed circuits, and exits nonzero on failure.

No density, genericity, existence of an earlier side, or irreducibility
argument is used below. The universal actual-side identity in section 5 is
applied only **after** the constructed matrix has been proved unimodular.

## 1. Inputs from the Gram identities

Complex conjugates below are ordinary conjugates at a physical specialization.
In every certificate they are independent polynomial variables. The variables
called `mu` and `mubar`, for example, are completely independent when an
identity is checked.

Use the constructor notation of the question and set

\[
 m=1-|\nu|^2,\qquad v=\lambda _0\overline{\lambda _2}.
\]

The strict-domain and core modules supply the following, with no further
guard:

\[
\begin{gathered}
g>0,\quad n>0,\quad \rho>0,\quad |u|=|\lambda _0|=1,\\
\alpha=\mu^2-u\bar\mu,\qquad n=1-|\mu|^2,
\qquad \rho^2-n\rho+|\alpha|^2=0,\\
q=\alpha/\rho,\quad \sigma=u+\mu q,\\
\rho(c_-+q c_+)=\gamma,
\qquad 3\gamma=6\mu\nu-z\lambda _0,\\
3MM^*=G,\qquad
\nu\overline{c_+}+c_-\bar\nu+\sigma c_+\overline{c_-}=0.
\end{gathered}
\tag{1}
\]

The proof of the Gram identity uses the sigma norm proved next; there is no
cycle: the first three lines of (1) prove that norm independently, and the
core norm and cross-Gram identities then prove the fourth displayed matrix
identity. The last identity in (1) is the `y_flatness` consequence of the
core module's two explicit Gram auxiliary polynomials.

The matrix to assemble is

\[
M=\begin{pmatrix}
1&0&0\\
\mu&\sigma&q\bar\sigma\\
\nu&c_+\sigma&c_-\bar\sigma
\end{pmatrix}.
\]

## 2. The first nonconstant row needs no additional Gram calculation

Write \(A=\mu^2-u\bar\mu\),
\(\bar A=\bar\mu^2-\bar u\mu\), and
\(Q_\rho=\rho^2-(1-\mu\bar\mu)\rho+A\bar A\).
Put \(s_0=\rho u+\mu A\) and
\(\bar s_0=\rho\bar u+\bar\mu\bar A\).

The following identities are identities in five independent variables:

\[
s_0\bar s_0-\rho^3
=(\mu\bar\mu-\rho)
 \bigl(Q_\rho-\rho(u\bar u-1)\bigr),
\tag{2}
\]

\[
\mu\rho^2+A\bar\mu\rho+s_0\bar A
=\mu\bigl(Q_\rho-\rho(u\bar u-1)\bigr).
\tag{3}
\]

These are certificates `x_sigma_norm` and `x_flatness`, respectively. Since
\(s_0=\rho\sigma\) and \(\rho>0\), they give

\[
|\sigma|^2=\rho,
\qquad \mu+q\bar\mu+\sigma\bar q=0.
\tag{4}
\]

The equally small certificate `rho_q_norm` gives

\[
\rho(1+|q|^2)=n.
\tag{5}
\]

In particular \(\sigma\ne0\) and
\(\xi=\sigma^2/\rho\) has modulus one. Choose any complex cube root
\(w^3=\xi\). Taking moduli yields \(|w|^3=1\), hence \(|w|=1\).
Conjugation also gives \(\rho\bar w^3=\bar\sigma^2\).

For completeness, `x_product` proves the first row-product formula directly:

\[
\mu^3+\rho\sigma+\rho q^3\bar\sigma-3\mu\rho q=u.
\tag{6}
\]

It follows from (4), its conjugate, (5), and the definitions of \(n,q,\sigma\).
This formula is useful for auditing the constructor but is not needed for the
signature argument in section 5.

## 3. Entrywise unimodularity and Gram matrix

Let \(\omega^2+\omega+1=0\), with
\(\bar\omega=\omega^2\), and set

\[
F=(\omega^{jk})_{j,k=0}^2,
\qquad P(w)=\operatorname{diag}(1,\bar w,w),
\qquad S=MP(w)F.
\]

For a row \((a,b,c)\) of \(M\), write

\[
X_j=a+b\bar w\omega^j+cw\omega^{-j},
\qquad V=w(a\bar b+c\bar a)+\bar w^2b\bar c.
\]

The three certificates `fourier_flat_0`, `fourier_flat_1`,
`fourier_flat_2` verify

\[
|X_j|^2=|a|^2+|b|^2+|c|^2+
\omega^{-j}V+\omega^j\bar V.
\tag{7}
\]

Their only relations are \(\omega^2+\omega+1=0\) and \(w\bar w=1\).
The certificate `gate_to_fourier` proves

\[
\begin{split}
\rho w^2 V={}&\sigma^2(a\bar b+c\bar a)+\rho b\bar c\\
&+(\rho w^3-\sigma^2)(a\bar b+c\bar a)\\
&+\rho(w\bar w-1)(w\bar w+1)b\bar c.
\end{split}
\tag{8}
\]

The gate expression on the first line vanishes for all three rows of \(M\).
For the first row this is immediate. For a row of the form
\((a,c_+\sigma,c_-\bar\sigma)\), `row_gate` proves that expression equals

\[
\rho\sigma
\bigl(a\overline{c_+}+c_-\bar a+
\sigma c_+\overline{c_-}\bigr)
\tag{9}
\]

modulo \(\sigma\bar\sigma=\rho\). For the second row use
\(a=\mu,c_+=1,c_-=q\) and (4). For the third row use the final identity
of (1). Since \(\rho w^2\ne0\), (8) gives \(V=0\).

Every diagonal of \(G\) equals three. Thus \(3MM^*=G\) says that the
constant term of (7) is one for every row. Consequently all nine entries of
\(S\) are unimodular.

The nine `fourier_unitary_ij` certificates give \(FF^*=3I\).
Because \(|w|=1\), \(P(w)P(w)^*=I\); associativity then gives

\[
SS^*=MP(w)FF^*P(w)^*M^*=3MM^*=G.
\tag{10}
\]

The first row of \(M\) is \((1,0,0)\), so the first row of \(S\) is
\((1,1,1)\). This proves all side properties except the signature.

## 4. Permanent, determinant, and row-product audit

For independent Fourier coefficients

\[
x_j=\mu+A\omega^j+B\omega^{-j},\qquad
y_j=\nu+C\omega^j+D\omega^{-j},
\]

the certificates `fourier_row_product`, `fourier_permanent`,
`fourier_determinant`, and `fourier_determinant_square` prove

\[
\begin{aligned}
\prod_j x_j&=\mu^3+A^3+B^3-3\mu AB,\\
\operatorname{perm}(1;x;y)&=6\mu\nu-3(AD+BC),\\
\det(1;x;y)&=3(\omega^2-\omega)(AD-BC),\\
\det(1;x;y)^2&=-27(AD-BC)^2.
\end{aligned}
\tag{11}
\]

For our matrix,

\[
A=\sigma\bar w,\quad B=q\bar\sigma w,\quad
C=c_+\sigma\bar w,\quad D=c_-\bar\sigma w.
\]

Hence
\(AD+BC=\rho(c_-+qc_+)=\gamma\), using only the norms of
\(\sigma,w\) and the mixed symmetric core identity. The certificate
`permanent_sheet` then gives the required exact value

\[
\pi:=\operatorname{perm}S=z\lambda _0.
\tag{12}
\]

The optional determinant check `det_M` combines the definitions of
\(c_+,c_-\) with (5) and (4) to prove \(\det M=\delta\). Therefore

\[
\det S^2=-27\delta^2,
\qquad |\det S|^2=g.
\tag{13}
\]

The second equality also follows directly from (10) and \(\det G=g\).
The gate cubic certificates `gate_cubic_A`, `gate_cubic_B`, and
`gate_pair_product` combine (11) with the cube-root equations to give the
row-product expressions printed in the reference constructor. Equation (6)
then identifies the first nonconstant row product as \(u\).

The signature proof below avoids a separate identity for the second
nonconstant row product, and therefore never divides by \(\nu\) or
\(c_+\). This is useful at their allowed zero loci.

## 5. Signature without recovering individual row products

This step is a simplification of the reference proof. It needs only the
already proved phase entries, the permanent (12), and the \(\lambda _0\)
relation. In particular it does not need to infer any identity from an
existing physical side before the construction is proved flat.

For an arbitrary normalized phase side \(X=(1;x;y)\), put

\[
h=\det X,\quad \pi=\operatorname{perm}X,\quad
p=\prod_j x_j\prod_j y_j.
\]

Let \(s=\sum x_j\), \(t=\sum y_j\), and
\(r=\sum y_j\bar x_j\). The certificate `phase_side_Laurent0` proves

\[
h^2=p\bigl(c_0\bar\pi-\overline{P_0}\bigr),
\qquad c_0=9-|r|^2.
\tag{14}
\]

This certificate expands the full polynomial in the **twelve independent
variables** \(x_j,\bar x_j,y_j,\bar y_j\), with explicit cofactors of
the six polynomials \(x_j\bar x_j-1\) and \(y_j\bar y_j-1\).
It is an independent polynomial verification of the universal actual-side
identity; it neither imports the reference identity as an assumption nor
uses a phase sample. The largest cofactor in the entire assembly module has
only 32 terms.

Apply (14) to the constructed \(S\), now known to be a phase side. Equation
(10) and the first row normalization identify its \(s,t,r\) with those of
the prescribed \(G\). Thus the \(P_0,c_0\) in (14) are precisely the
constructor quantities. Write \(L=\lambda _0\). Since

\[
L\overline{P_0}=g+c_0\bar z,
\qquad \pi=zL,\qquad L\bar L=1,
\]

multiplication of (14) by \(L\) gives

\[
Lh^2=-gp.
\tag{15}
\]

For auditability, certificate `signature_h2` gives the following cofactor
identity, where \(H_2,p,P,\Pi,L,\bar L,g,z,\bar z,c\) are independent:

\[
\begin{split}
LH_2+gp={}&L\bigl(H_2-p(c\Pi-P)\bigr)
-p(LP-g-c\bar z)\\
&+pcL(\Pi-\bar z\bar L)+pc\bar z(L\bar L-1).
\end{split}
\tag{16}
\]

Unimodularity also gives \(p\bar p=1\); this is checked with explicit
telescoping cofactors by `phase_total_product_unit`. Consequently

\[
T(S)=-\pi h^2\bar p=-zLh^2\bar p=gz.
\tag{17}
\]

The final inference itself has certificate `signature_final`:

\[
-\pi H_2\bar p-gz
=-H_2\bar p(\pi-zL)-z\bar p(LH_2+gp)+gz(p\bar p-1).
\tag{18}
\]

This proves the requested signature without requiring \(g\) or \(z\)
to be divided out at this stage. The normalized intrinsic quantity called
\(\Theta\) in the reference equals \(T/g\), so its value is \(z\);
the Lean `sideSignature` is \(T\), not \(\Theta\).

### Optional recovery of the second row-product identity

All three identities labelled (3) in `SIDE_FIBER.md` can also be recovered
without an additional Gram expansion. Write \(U_X=\prod x_j\) and
\(V_Y=\prod y_j\) for the actual constructed row products. Equation (6)
and the Fourier product formula give \(U_X=u\). Since
\(u=L\overline{\lambda _1}\), \(v=L\overline{\lambda _2}\), the chosen
square root satisfies

\[
27L\delta^2=guv.
\]

Together with \(h^2=-27\delta^2\), this gives
\(Lh^2=-guv\). Comparing with (15) and using \(g>0\) yields
\(p=uv\). Now \(p=U_XV_Y=uV_Y\) and \(|u|=1\), so \(V_Y=v\).
The certificates `determinant_phase`, `actual_total_product`, and
`actual_y_product` give the three explicit linear-combination identities.
Finally the second-row instance of the Fourier product and gate cubic
certificates gives

\[
\nu^3+\rho c_+^3\sigma+\rho c_-^3\bar\sigma
-3\nu\rho c_+c_-=v.
\]

This derivation only cancels \(g\) and the unit \(u\). In particular it
remains valid at \(\nu=0\) and \(c_+=0\). It is optional for the target
signature theorem, whose shorter proof is already complete in (17).

## 6. Exact translation to the horizontal and vertical targets

For the horizontal side use

\[
G_h=6I-EE^*,\qquad z_+=\frac{\chi+i\sqrt R}{2g},
\qquad B=S(G_h,z_+).
\]

Equations (10), (17), and the first-row and modulus conclusions show

\[
B\in\mathrm{horizontalCandidates}(E),
\qquad 2T(B)=\chi+i\sqrt R.
\]

For the vertical construction the Gram given to the *row-normalized* side
routine must be

\[
G_v=(6I-E^*E)^T=6I-E^T\bar E.
\]

The scalar invariants of \(G_v\) agree with those of \(G_h\), as proved
by the strict-domain/invariant module. Choose the **negative** sheet for
that routine:

\[
Y=S(G_v,z_-),\qquad
z_-=\frac{\chi-i\sqrt R}{2g}=\bar z_+,
\qquad C=Y^T.
\]

Then \(C\) has unimodular entries and first column equal to one. Moreover

\[
C^*C=\bar Y Y^T=(YY^*)^T=G_v^T=6I-E^*E.
\]

The determinant, permanent, and total-entry product are unchanged by
transpose. The corresponding polynomial identities are
`transpose_determinant`, `transpose_permanent`, and
`transpose_total_product`. Hence \(T(C)=T(Y)=gz_-\), giving

\[
C\in\mathrm{verticalCandidates}(E),
\qquad 2T(C)=\chi-i\sqrt R.
\]

Transpose itself does **not** conjugate the signature. The negative sign
comes from selecting \(z_-\) before transposing. The factor of two in
both Lean targets follows from \(T=gz\), not \(T=z\); certificate
`target_scaling` records this elementary substitution.

## 7. Branch and divisor audit

Nothing in this assembly divides by \(d_F\), \(\mu\), \(\nu\),
\(c_+\), or \(c_-\). The only scalar cancellations are the strict-domain
positive values \(n,\rho\), the already known nonzero root \(w\), and
fixed nonzero integers. At \(d_F=0\), either allowed sign of \(\delta\)
has \(\rho=n/2>0\). All polynomial identities still apply, and every cube
root of \(\xi\) gives a valid side. Therefore this proof includes the
equal-magnitude branch and every strict seed.

The actual-side Laurent identity is universal and has been re-certified
independently. No formula error was found in the final Fourier assembly or
in the stated horizontal/vertical scaling. The proof above deliberately
does not address lower-block flatness, density, or the global no-four-MUB
conclusion: those are outside side existence.
