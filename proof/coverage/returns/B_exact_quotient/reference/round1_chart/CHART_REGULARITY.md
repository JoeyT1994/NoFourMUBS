# Actual analytic four-seed families for the low-M reconstruction provider

## Statement and scope

Assume the formula-validity statement of F7 on the open seed domain and
its coverage statement **restricted to the target region**
\(0<M(H)<26\). Every Hadamard in that region lies, up to a fixed
equivalence, in a real analytic four-parameter family of Hadamards whose
four seed entries are the parameters. The differential of this family
has rank four. More generally, the local statement applies to every
matrix actually represented by the stated provider on such an open
seed domain. It does **not** claim that the entire Hadamard variety is a
manifold near the point.

The restriction matters: F7's literal coverage of *every* non-Fourier
matrix is inconsistent with F6's assertion that Tao's matrix is
isolated. A rank-four provider cannot cover an isolated equivalence
class. Tao has \(M=243\), so that particular inconsistency does not
affect the stipulated low-M application. This note proves no replacement
global coverage theorem; the precise restricted coverage remains an
input.

The pointwise sign choice for the auxiliary `dF` in `side()` is an
artificial branch cut. It can be replaced locally by a fixed analytic
square-root branch and a signed `dF`, while retaining a positive
denominator. Switching the sign changes only a permutation of the three
complementary columns, or rows on the vertical side.

This supplies actual feasible arcs for the descent test in
`COMPACTNESS_AND_DESCENT.md`, including at points where a particular
canonical sign convention is not differentiable.

## 1. Strict positivity removes the genuine denominators

Let \(E\) be a physical corner with \(R(E)>0\), and write
\(G=6I-EE^*\). Physicality gives \(G=BB^*\succeq0\). In the notation of
the handoff, \(g=\det G\), and \(R>0\) forces \(g\ne0\). Hence
\(G\succ0\), so

\[
g>0,\qquad 9-X>0,\quad9-Y>0,\quad9-Z>0.
\tag{1}
\]

The same statements hold for \((6I-E^*E)^T\). The invariant quantities
\(p,J,\chi\) are identical for the horizontal and vertical sides of a
unit-entry corner; this is verified as an exact Laurent identity by
`verify_chart.py`.

Set

\[
z=\frac{\chi+i\sqrt R}{2g},\qquad
c_0=9-Z,\quad
P_0=rs^2+\bar r t^2+(3-Z)st.
\]

Direct expansion gives

\[
\begin{aligned}
|P_0|^2
&=Z(X-Y)^2+(3-Z)^2XY+J^2+(3-Z)(X+Y)J\\
&=g^2+c_0\chi+c_0^2\eta
=|g+c_0\bar z|^2.
\end{aligned}
\tag{2}
\]

There are two cyclic versions. In particular \(P_j\ne0\): otherwise
the nonzero imaginary part of \(z\) would imply \(c_j=0\), and the real
part would then imply \(g=0\). Consequently the three quantities

\[
\lambda_j=\frac{g+c_j\bar z}{\overline{P_j}}
\]

are well defined and have modulus one. For the vertical side the
conjugated root has the same properties.

There are useful quantitative bounds. The complementary-permanent
identities in `../mc1/` give \(R\le2g^3\), and positive definiteness with
diagonal entries 3 gives \(g\le3c_j\), by taking a Schur complement.
Therefore

\[
\boxed{
g\ge(R/2)^{1/3},\qquad
c_j\ge g/3,\qquad
|P_j|^2\ge\frac{c_j^2R}{4g^2}\ge\frac R{36}.
}
\tag{3}
\]

Thus every \(R\ge\varepsilon>0\) region has explicit lower bounds for
these denominators. Their possible smallness is quantitatively tied to
\(R\to0\).

## 2. Exact side identities

Use the `side()` notation, renaming its \(u\) as \(u_0\) to distinguish
it from a horizontal phase matrix:

\[
\begin{gathered}
u_0=\lambda_0\bar\lambda_1,\qquad
\mu=s/3,\quad\nu_0=t/3,\quad n=1-|\mu|^2,\\
k=r/3-\nu_0\bar\mu,\qquad
\alpha=\mu^2-u_0\bar\mu,\qquad
\gamma=2\mu\nu_0-z\lambda_0/3,\\
\delta^2=\frac g{27}\lambda_0\bar\lambda_1\bar\lambda_2.
\end{gathered}
\]

The radicand for \(\delta\) is nonzero and
\(|\delta|^2=g/27\). Put

\[
D=\Re\left[\frac{27}{g}(n\gamma-2\alpha k)\bar\delta\right],
\quad
\rho=\frac{n+D}{2},\quad q=\alpha/\rho,\quad
\sigma=u_0+\mu q.
\tag{4}
\]

The supplied sign convention chooses \(\delta\) so \(D\ge0\). It gives
\(\rho\ge n/2>0\). Its output has

\[
\boxed{
\rho^2-n\rho+|\alpha|^2=0,\quad
|\sigma|^2=\rho,\quad
|q|^2=\frac{n-\rho}{\rho},\quad
|\xi|=1,
}
\tag{5}
\]

where \(\xi=\sigma^2/\rho\). Here is a derivation that uses only the
validity of the supplied reconstruction, rather than assuming smoothness
of its image.

The second row of its side block has Fourier coefficients

\[
\mu,\quad x=\sigma/w,\quad y=q\bar\sigma w,
\qquad |w|=1,\quad
w^3=\sigma^2/|\sigma|^2.
\]

Its entries have modulus one by F7. Also \(\sigma\ne0\), since otherwise
that row would be constant of modulus \(|\mu|<1\). The vanishing
nonconstant Fourier coefficient of its squared moduli gives

\[
\mu\bar x+x\bar y+y\bar\mu=0
\quad\Longrightarrow\quad
\mu+q\bar\mu+\bar q\sigma=0.
\tag{6}
\]

Insert \(\sigma=u_0+\mu q\), multiply by \(\rho^2\), and use

\[
\alpha\bar\mu+\bar\alpha u_0=-n\mu.
\]

The result is
\(\mu(\rho^2-n\rho+|\alpha|^2)=0\). For \(\mu\ne0\) this proves the
first identity of (5). Points with \(\mu\ne0\) are dense in the open
seed domain: \(\mu=-(1+a+b)/3\), or its vertical analogue, is a
nonzero real analytic function. The positive-root quantity \(\rho\)
is continuous across the sign cut, since it uses the absolute value of
a locally continuous signed \(D\). The identity therefore holds also
at \(\mu=0\).

Writing \(m=|\mu|^2\), expansion gives

\[
|\sigma|^2
=1+\frac{m|\alpha|^2}{\rho^2}
 +\frac{m^2-m-|\alpha|^2}{\rho}.
\]

Subtracting \(\rho\) and multiplying by \(\rho^2\) gives
\((m-\rho)(\rho^2-n\rho+|\alpha|^2)\), proving the other statements.
This derivation is replayed symbolically in `verify_chart.py`.

For

\[
c_+=\frac{k-\delta\bar q}{n},\qquad
c_-=\frac{kq+\delta}{n},\qquad
M_{\rm side}=\begin{pmatrix}
1&0&0\\
\mu&\sigma&q\bar\sigma\\
\nu_0&c_+\sigma&c_-\bar\sigma
\end{pmatrix},
\]

the determinant is especially simple:

\[
\det M_{\rm side}
=\frac{|\sigma|^2(1+|q|^2)}n\delta
=\delta.
\tag{7}
\]

Consequently

\[
n\ge g/27,\qquad \rho\ge g/54,
\qquad |\sigma|\ge\sqrt{g/54},\qquad
|\det M_{\rm side}|=\sqrt{g/27}.
\tag{8}
\]

No division by an unproved nonzero side determinant is necessary.

## 3. The two auxiliary signs are exactly column reflections

Suppose the other root \(\rho'=n-\rho\) is positive. Then \(q\ne0\).
Replace \(\delta\) by \(-\delta\), so \(D\) changes sign. The new side
quantities satisfy

\[
q'=1/\bar q,\qquad
\sigma'=u_0+\mu/\bar q.
\]

Equation (6) and its conjugate imply

\[
\sigma'\bar q=q^2\bar\sigma.
\tag{9}
\]

Indeed, the difference between the two sides equals (6), after expansion
of \(\sigma\), minus \(q\) times its conjugate. Put

\[
A=q/\bar q,\qquad |A|=1,
\qquad
J_2=\begin{pmatrix}1&0&0\\0&0&1\\0&1&0\end{pmatrix}.
\]

Direct substitution gives the exact identities

\[
M'_{\rm side}=M_{\rm side}J_2\operatorname{diag}(1,A,\bar A),
\qquad
\xi'=A^3/\xi.
\tag{10}
\]

Choose the new cube root as \(w'=A/w\). Since
\(J_2F_3=F_3J_2\), the reconstructed side block satisfies

\[
\begin{aligned}
B'
&=M'_{\rm side}\operatorname{diag}(1,\bar w',w')F_3\\
&=M_{\rm side}\operatorname{diag}(1,\bar w,w)F_3J_2
=BJ_2.
\end{aligned}
\tag{11}
\]

Other cube-root choices add a cyclic column permutation. The vertical
version gives a row permutation of its complementary block. Since the
last block is reconstructed by

\[
D_{\rm block}=-C E^*\operatorname{adj}(G)B/g,
\]

these permutations propagate consistently to the full matrix. They fix
the original top-left seed block.

## 4. Construction of a genuine local analytic provider

At a fixed physical seed with \(R>0\), all quantities before the
\(\delta\) square roots are real analytic and all their denominators
are nonzero, by sections 1–2. Choose a local analytic square root for
each nonzero \(\delta^2\), agreeing at the central seed with the
positive-\(D\) choice. Keep this branch fixed instead of applying the
pointwise sign rule.

At the central seed, \(\rho\ge n/2>0\); hence the signed formula for
\(\rho\) remains positive on a sufficiently small neighborhood. If
\(D\) changes sign there, sections 2–3 identify the result with the
supplied valid provider by complementary permutations. If the original
\(q\) vanishes, \(D=n>0\), so its sign cannot change in a sufficiently
small neighborhood and no reflection comparison is needed.

The side quantity \(\xi\) is nonzero, so choose a local analytic cube
root agreeing with the desired value at the central seed. Every other
root choice is a complementary cyclic permutation. Both sides and the
last block are therefore real analytic, and every reconstructed matrix
is Hadamard by F7 and (11).

The top-left corner remains

\[
E(\theta)=\begin{pmatrix}
1&1&1\\1&e^{i\theta_1}&e^{i\theta_2}\\
1&e^{i\theta_3}&e^{i\theta_4}
\end{pmatrix}.
\]

Its four phase derivatives are independent. Thus the full matrix-valued
map has differential of rank four. For an arbitrary \(0<M(H)<26\), the
restricted coverage input from F7
supplies a maximal positive corner and an equivalence to this provider;
apply that fixed equivalence to obtain the claimed family through \(H\).

This proves the statement at the start. It removes auxiliary sign cuts
as an obstruction to a local descent argument; it does not prove that a
decreasing direction always exists.

## Inputs, verification, and limits

The Hadamard reconstruction on its open seed domain and its coverage in
the target region are used as the restricted F7 input described above.
Physical Gram positivity is elementary. The strengthened bounds (3)
also use the exact complementary-minor/permanent identities proved by
the companion `mc1` work. All displayed side algebra is checked by
`verify_chart.py`, which requires SymPy and uses exact arithmetic.

The neighborhood in section 4 is existential. A finite interval cover
must still enclose its chosen analytic branches and certify a positive
signed \(\rho\) on every individual provider box. No global box cover or
global exclusion of the five-active-gradient stationary systems is
contained in this result.
