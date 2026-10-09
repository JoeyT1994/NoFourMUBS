# Sharp global Hessian constant for the horizontal phase equations

## Statement

Let \(Z\in\mathbb C^{6\times6}\) have entries of modulus one; orthogonality
is not assumed. For \(u,v\in\mathfrak h\), where \(\mathfrak h\) is the real
space of matrices with zero row and column sums, define

\[
Q_Z(u,v)_{ab}
=-\sum_{c=0}^5 Z_{ac}\overline Z_{bc}
(u_{ac}-u_{bc})(v_{ac}-v_{bc}),\qquad a<b.
\tag{1}
\]

Use the Frobenius norm on real phase matrices and the Euclidean norm on the
15 complex output entries, identified with 30 real coordinates. Then

\[
\boxed{\quad
\|Q_Z(u,v)\|\le\frac6{\sqrt5}\|u\|_F\|v\|_F.
\quad}
\tag{2}
\]

The constant \(6/\sqrt5\) is optimal for the class of all flat base matrices
\(Z\). Equality is achieved with an all-ones base matrix and a rank-one
horizontal phase direction. This is an unconditional analytic theorem.

The optimum over Hadamard base matrices alone could be smaller: the sharpness
example here is flat but is not Hadamard. The all-flat statement is exactly
what is needed to integrate the Hessian along phase segments between nearby
Hadamard matrices, whose intermediate points need not be Hadamard.

## 1. A sharp scalar fourth-moment inequality

### Lemma

For \(x\in\mathbb R^6\) satisfying \(\sum_i x_i=0\) and
\(\sum_i x_i^2=1\),

\[
\sum_i x_i^4\le\frac7{10}.
\tag{3}
\]

Equality occurs exactly, up to permutation and an overall sign, at

\[
x=\frac1{\sqrt{30}}(5,-1,-1,-1,-1,-1).
\tag{4}
\]

**Proof.** A maximum exists because the constraint set is compact. The
gradients of the two constraints are independent at every feasible point.
Lagrange multipliers therefore imply that all coordinates of a maximizer
are roots of

\[
p(t)=4t^3-2\lambda t-\mu.
\tag{5}
\]

There are at most three distinct coordinate values. Suppose there are
three, written \(a<b<c\). Then

\[
p(t)=4(t-a)(t-b)(t-c),\qquad a+b+c=0.
\]

The outer value \(a\) cannot occur twice. If two coordinates equal \(a\),
the vector that is 1 and −1 on those two coordinates and zero elsewhere is
tangent to both constraints. The constrained Hessian on that direction is

\[
2p'(a)=8(a-b)(a-c)>0,
\]

contradicting the second-order necessary condition for a maximum. The same
argument applies to \(c\). Thus \(a,c\) each occur once and \(b\) occurs
four times. The zero-sum constraint and the root sum give

\[
a+4b+c=0,\qquad a+b+c=0,
\]

so \(b=0\), \(c=-a\), and normalization gives
\(a^2=c^2=1/2\). The fourth moment is then \(1/2\), less than the value
\(7/10\) attained by (4). This cannot be a global maximum.

Consequently a maximizing vector has two distinct values, with
multiplicities \(k\) and \(6-k\), for \(1\le k\le5\). Solving the two
constraints gives

\[
a^2=\frac{6-k}{6k},\qquad
b=-\frac{k}{6-k}a,
\]

and hence

\[
k a^4+(6-k)b^4
=\frac6{k(6-k)}-\frac12.
\tag{6}
\]

The values for \(k=1,2,3,4,5\) are respectively
\(7/10,1/4,1/6,1/4,7/10\). This proves (3), and the equality cases are
exactly (4). QED.

## 2. The fourth-power row-distance bound

Let \(u\in\mathfrak h\) have norm one and write its row vectors as
\(r_0,\ldots,r_5\). They satisfy

\[
\sum_a r_a=0,\qquad \sum_a\|r_a\|^2=1.
\]

Let \(G=uu^T\) be their Gram matrix. It is real symmetric positive
semidefinite, satisfies \(G\mathbf1=0\), and has trace one. Expansion gives

\[
\sum_{a<b}\|r_a-r_b\|^4
=6\sum_a G_{aa}^2+1+2\operatorname{tr}(G^2).
\tag{7}
\]

For clarity, the identity for an arbitrary real symmetric \(G\), before
centering, is

\[
\begin{aligned}
\sum_{a<b}(G_{aa}+G_{bb}-2G_{ab})^2
={}&6\sum_aG_{aa}^2+(\operatorname{tr}G)^2
+2\operatorname{tr}(G^2)\\
&-4\sum_aG_{aa}\sum_bG_{ab}.
\end{aligned}
\tag{8}
\]

Now diagonalize

\[
G=\sum_j\lambda_j x_jx_j^T,
\qquad \lambda_j>0,\quad \sum_j\lambda_j=1,
\]

where the \(x_j\) are orthonormal and each is perpendicular to
\(\mathbf1\). The function

\[
\mathcal F(G)=6\sum_aG_{aa}^2+1+2\operatorname{tr}(G^2)
\]

is convex on the real symmetric matrices: apart from its constant term,
it is a sum of squares with positive coefficients. Therefore

\[
\begin{aligned}
\mathcal F(G)
&\le\sum_j\lambda_j\mathcal F(x_jx_j^T)\\
&=\sum_j\lambda_j\left(6\sum_a(x_j)_a^4+3\right)\\
&\le6\cdot\frac7{10}+3=\frac{36}{5}.
\end{aligned}
\tag{9}
\]

This proves

\[
\sum_{a<b}\|r_a-r_b\|^4\le\frac{36}{5}.
\tag{10}
\]

The convexity step loses nothing at the maximum: a rank-one Gram matrix
\(G=xx^T\) with \(x\) as in (4) attains equality. It is realizable by
\(u=xy^T\) with any real unit vector \(y\perp\mathbf1\), so both
horizontal conditions can be satisfied.

## 3. Quadratic and bilinear Hessian bounds

Since \(|Z_{ac}\overline Z_{bc}|=1\), the triangle inequality in (1) gives

\[
|Q_Z(u,u)_{ab}|
\le\sum_c(u_{ac}-u_{bc})^2
=\|r_a-r_b\|^2.
\]

For unit \(u\), equation (10) yields

\[
\|Q_Z(u,u)\|^2\le\frac{36}{5}.
\]

Scaling proves the quadratic estimate for arbitrary \(u\).

The same constant applies bilinearly. For real unit \(u,v\), symmetry and
polarization give

\[
\begin{aligned}
\|Q_Z(u,v)\|
&\le\frac14\left(\|Q_Z(u+v,u+v)\|
+\|Q_Z(u-v,u-v)\|\right)\\
&\le\frac{6}{4\sqrt5}
\left(\|u+v\|^2+\|u-v\|^2\right)
=\frac6{\sqrt5}.
\end{aligned}
\]

Scaling \(u,v\) separately proves (2).

For sharpness take \(Z_{ac}=1\) and \(u=xy^T\) with (4) and
\(y=(1,-1,0,0,0,0)/\sqrt2\). Then \(u\in\mathfrak h\) and
\(\|u\|_F=1\). Exactly five Hessian output entries are nonzero; each is
\(-6/5\). Therefore

\[
\|Q_Z(u,u)\|^2=5(6/5)^2=36/5.
\]

## 4. Direct conditioning consequences

Let \(J_P\) denote the horizontal Jacobian at the flat phase base
\(e^{iP}\). Integrating (2) along a horizontal phase segment gives

\[
\boxed{\quad
\|J_{P+v}-J_P\|_{\mathrm{op}}
\le\frac6{\sqrt5}\|v\|_F.
\quad}
\tag{11}
\]

If a 21-dimensional space \(N\subset\mathfrak h\) satisfies
\(\|J_P\nu\|\ge\sigma\|\nu\|\), then on the full horizontal phase
ball of radius \(r\),

\[
\|J_{P+v}\nu\|\ge
\left(\sigma-\frac6{\sqrt5}r\right)\|\nu\|,
\qquad \nu\in N.
\tag{12}
\]

Courant–Fischer gives the same lower bound for the 21st singular value,
ordered from largest to smallest.

At a Fourier-family base, the exact supplied spectrum has
\(\sigma_{21}=\sqrt3\). Consequently

\[
\sigma_{21}(J_{P+v})
\ge\sqrt3-\frac6{\sqrt5}\|v\|_F.
\tag{13}
\]

The right side is positive for \(\|v\|_F<\sqrt{15}/6\). For radius
\(r=0.08=2/25\), it is

\[
\sqrt3-\frac{12}{25\sqrt5}>\frac{1517}{1000}.
\tag{14}
\]

For any supplied atlas normal certificate with \(\sigma\ge1.70=17/10\)
and radius at most \(0.08\), the propagated normal bound improves to

\[
\frac{17}{10}-\frac{12}{25\sqrt5}>\frac{297}{200}=1.485.
\tag{15}
\]

Equation (15) is a conditional consequence for an actual certified record;
it does not independently certify the missing atlas or its coverage.
Likewise, (13) is a full-matrix horizontal phase-radius statement, not a
four-seed radius statement. If the physical matrix is known to have rank
21, its 21st singular value is its smallest nonzero singular value.

## Verification

Run `python verify_sharp_hessian.py`. The standard-library-only verifier
checks the universal polynomial identities (8) and the scalar pair-distance
identity, all five rational two-value cases in the scalar maximization,
the exact equality example, polarization, and the rational bounds in
(14)–(15). Every acceptance decision uses integers or rational numbers.
The analytic maximum argument and convexity proof are supplied above; the
script does not replace them.
