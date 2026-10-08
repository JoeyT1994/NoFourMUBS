# Exact exclusion of regular single-active low minima

## 1. Polynomial critical values

Regard the defining expression for the corner invariant as a polynomial
\(\mathscr R(X,Y,Z,J)\) in four independent real variables. Set

\[
\begin{aligned}
p&=X+Y+Z,& W&=XY+XZ+YZ-XYZ,\\
g&=27-3p+J,& \eta&=9-p+J,\\
\chi&=W-(p-9)(p-18)+(p-15)J,
&\mathscr R&=4g^2\eta-\chi^2.
\end{aligned}
\]

**Theorem 1.** The only real stationary points of \(\mathscr R\) having
positive value are the three permutations of

\[
(X,Y,Z,J)=(1,1,5,-2/3).
\]

Their common value is \(1024/27\), and all have a negative second derivative
in the \(J\) direction:

\[
\mathscr R_{JJ}=-32.
\]

In particular, \(\mathscr R\) has no stationary point with
\(0<\mathscr R<26\), and no local minimum of positive value at all.
This polynomial statement does not assume that its variables come from a
Hadamard matrix.

### Proof

Differentiation gives

\[
\begin{aligned}
\mathscr R_X&=-4g(g+6\eta)-2\chi\chi_X,\\
\mathscr R_J&=4g(g+2\eta)-2\chi(p-15),\\
\mathscr R_X-\mathscr R_Y&=-2\chi(Y-X)(1-Z),
\end{aligned}\tag{1}
\]

with the cyclic analogues of the last identity. At a positive stationary
value, \(g\ne0\) and \(\eta>0\). If \(\chi=0\), the first two stationary
equations would imply both \(g+6\eta=0\) and \(g+2\eta=0\), a
contradiction. Thus \(\chi\ne0\).

The difference identities imply that either \(X=Y=Z\), or two of the three
variables are equal to one. To see the second alternative, if \(X\ne Y\)
then \(Z=1\); one of the other two difference identities forces \(X=1\)
or \(Y=1\).

**Equal-variable case.** Put \(X=Y=Z=x\), \(J=j\), and
\(A=-j+x^2-3x\). Exact factorization gives

\[
\begin{aligned}
\mathscr R&=-A^2(-4j+x^2+18x-27),\\
\mathscr R_X&=-2A(-3jx+j+x^3+13x^2-45x+27),\\
\mathscr R_J&=6A(-2j+x^2+4x-9).
\end{aligned}\tag{2}
\]

Positive value forces \(A\ne0\). The last equation gives
\(j=(x^2+4x-9)/2\); substitution into the middle equation leaves
\((x-1)(x-5)(x-9)=0\). At these three roots the values of
\(\mathscr R\) are respectively \(0,-1024,0\), so none is positive.

**Two variables equal to one.** By symmetry put \(X=Y=1\), \(Z=x\),
\(J=j\), and \(A=-j+x-3\). Here

\[
\begin{aligned}
\mathscr R&=-A^2(-4j+x^2-6x-3),\\
\mathscr R_X=\mathscr R_Y=\mathscr R_Z
&=-2A(-jx-j+2x^2-12x+6),\\
\mathscr R_J&=2A(-6j+x^2-4x-9).
\end{aligned}\tag{3}
\]

Again \(A\ne0\). Consequently \(j=(x^2-4x-9)/6\), and the remaining
equation again reduces to \((x-1)(x-5)(x-9)=0\). The three values are
\(0,1024/27,0\). At the middle root \(j=-2/3\), and differentiating
(3) gives \(\mathscr R_{JJ}=-32\). This proves the theorem.

## 2. The exact Gram-coordinate Jacobian

For a dephased corner

\[
E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix},
\qquad (a,b,c,d)=(e^{i\theta_1},\ldots,e^{i\theta_4}),
\]

let \(s,t,r\) be the entries of \(6I-EE^*\) specified in the prompt.
Write \(\tau=sr\overline t\), so \(J=2\Re\tau\), and let

\[
\Gamma(\theta)=(X,Y,Z,J).
\]

**Theorem 2.** The real angular Jacobian satisfies the exact identity

\[
\boxed{\quad
\det D\Gamma=4\Im(\tau)\Im q(E),
\quad
(\det D\Gamma)^2=(4XYZ-J^2)\mathscr R(X,Y,Z,-J).
\quad}\tag{4}
\]

The companion identity

\[
\mathscr R(X,Y,Z,-J)=4(\Im q(E))^2
\tag{5}
\]

holds for every unimodular \(E\), without a completion hypothesis. If
\(E\) belongs to a Hadamard and \(B\) is its same-row complementary block,
F2 identifies (5) with \(R(B)\).

### Exact verification

Work in the Laurent polynomial ring in \(a,b,c,d\), with conjugation
replacing each variable by its inverse. The verifier constructs \(s,t,r\)
and \(q(E)\) directly. It then checks

\[
\det\left[v\partial_v(X,Y,Z,J)\right]
=-(\tau-\overline\tau)(q(E)-\overline{q(E)}).
\]

The four factors of \(i\) from angular differentiation multiply to one.
Since each difference on the right is twice \(i\) times the corresponding
imaginary part, this is the first equality in (4). Squaring and using
\(4(\Im\tau)^2=4XYZ-J^2\) and (5) gives the second equality.
The finite Laurent identities and all the polynomial factorizations in
Theorem 1 are checked exactly by `verify_critical_invariants.py`.

## 3. Application to an actual Hadamard local minimum

Assume the supplied reconstruction coverage F7 on the target sublevel
\(0<M<26\). Use the analytic seed germ justified in
`../critical/CHART_REGULARITY.md`; no assertion that the entire Hadamard
set is a smooth manifold is required.

Choose a maximal corner \(E\), and suppose:

1. The only maximal corners are \(E\) and its opposite block \(D\) in the
   corresponding \(3+3\) partition.
2. \((4XYZ-J^2)R(B)>0\), where \(B\) is the same-row complement of \(E\).

F2 gives \(R(E)=R(D)\) identically on the feasible germ. All other corners
have a strict gap at the point, so the same pair remains maximal in a
neighborhood. Hence \(M=R(E)=\mathscr R\circ\Gamma\) there.
By (4), \(\Gamma\) is a local coordinate map. A local minimum of \(M\)
would therefore be a positive local minimum of \(\mathscr R\), contrary
to Theorem 1.

For \(M<26\) this gives a first-order descent direction. Since
\(\nabla\mathscr R\ne0\) and \(D\Gamma\) is invertible, take

\[
v=-(D\Gamma)^{-1}\nabla\mathscr R.
\]

Along the actual analytic seed arc in this direction,
\(D R(E)[v]=-\|\nabla\mathscr R\|^2<0\). The inactive-corner gap
makes this a descent of \(M\) as well.

More generally the same argument works whenever all active corner
functions have the same gradient as the selected corner in the seed
germ. The displayed two-corner condition is a directly identifiable
sufficient case.

## 4. The explicitly remaining strata

Consequently an exterior local minimum below 26 must evade the preceding
test through at least one of:

- a tie involving another corner beyond the opposite pair;
- \(J^2=4XYZ\), equivalently \(\Im(sr\overline t)=0\);
- \(\mathscr R(X,Y,Z,-J)=0\), equivalently \(\Im q(E)=0\).

These are whole algebraic loci, not isolated seed points. They cannot be
discarded. In particular, the first singular locus includes maximizing
corners of the Fourier family near \(F\).

There is a further necessary inequality for every maximal seed, involving
only the four Gram invariants. With \(u=9-p\),

\[
\mathscr R(J)-\mathscr R(-J)
=4J\left[2J^2+(u+6)W-u(u-6)(u-9)\right]\ge0.
\tag{6}
\]

The equality is an exact polynomial identity; the inequality is the
maximality comparison against \(B\). It is included in the verifier.
Neither the sign of \(J\) alone nor the sign of the bracket alone is
implied.

## Inputs and limits

Theorems 1 and 2 use only the explicit invariant definition and exact
polynomial arithmetic. The Hadamard application uses **F2** and the
**target-region coverage of F7**, together with the analytic germ proved
in the accompanying chart note. F4 is needed only when combining this
reduction with the exterior-minimum argument in the main report.

The active-tie and singular cases are not eliminated by Theorems 1--2
of this module. The companion calculations in `../critical/`,
`../critical_exceptions/`, `CAYLEY_SMOOTH.md`, and
`../mc1/complement_minimax/` close every such case when the entire active
set lies in one partition. The assembled statement is
`../critical/ONE_PARTITION.md`. Cross-partition gradient balances remain
unresolved, so the complete package is not a proof of global confinement.
