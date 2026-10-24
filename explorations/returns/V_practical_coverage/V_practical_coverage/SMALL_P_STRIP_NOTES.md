# Quantitative strip statements near a 3-by-3 Hadamard block

These are auxiliary strip statements. They do **not** complete quantitative routing of a full order-six Hadamard into the Fourier families.

## 1. An off-critical side identity — PROVED / CERTIFIED

Let \(E\) have rows \((1;x;y)\), with three unit entries in each row, and \(\det E\ne0\). Put

\[
s=\sum x_j,\quad t=\sum y_j,\quad r=\sum\bar x_jy_j,
\quad X=|s|^2,\quad Y=|t|^2,\quad Z=|r|^2,
\]

\[
U=\prod x_j,\quad V=\prod y_j,\quad g=|\det E|^2,
\quad z=-\frac{\operatorname{perm}(E)\det E}{\overline{\det E}\,UV},
\quad \lambda_0=-\frac{\overline{\det E}\,UV}{\det E},
\quad \lambda_1=\lambda_0/U,\quad\lambda_2=\lambda_0/V.
\]

Then \(|\lambda_j|=1\), \(z\lambda_0=\operatorname{perm}E\), and

\[
\begin{aligned}
(g+(9-Z)z)\lambda_0&=P_0,\\
(g+(9-Y)z)\lambda_1&=P_1,\\
(g+(9-X)z)\lambda_2&=P_2,
\end{aligned}
\]

where the explicit polynomials are

\[
\boxed{P_0=st(3-Z)+s^2r+t^2\bar r,}
\]

\[
\boxed{\bar P_1=s\bar r(3-Y)+s^2\bar t+\bar r^2t,\qquad
\bar P_2=tr(3-X)+t^2\bar s+r^2s.}
\]

For example, the first left side is

\[
-UV\overline{\det E}^{\,2}+(9-Z)\operatorname{perm}E.
\]

Expansion on six independent unit phases gives the displayed (P_0); the other two follow similarly. `verify_small_p_strip.py` regenerates and checks all three Laurent identities exactly. No criticality, vanishing permanent, or nonzero lambda-denominator assumption is used. These formulas provide a legitimate starting point for off-critical error bounds; critical-only factorizations do not supply those bounds automatically.

## 2. Small (p) gives a nearby pair of 3-by-3 Hadamard blocks — PROVED

Let (T=(1;x;y)) be three orthogonal unimodular rows of length six, split into three-column halves (A,B). On (A), set (p=|s|^2+|t|^2+|r|^2). Suppose

\[
0\le p\le1/16.
\]

There are row and column phases and column permutations within the halves for which (T) lies within Frobenius distance

\[
\boxed{\sqrt{128p/45}}
\tag{SP1}
\]

of a strip

\[
[F_3,DF_3],\qquad D=\operatorname{diag}(1,e^{i\alpha},e^{i\beta}).
\]

### Proof

For any three unit numbers (u_j), let (a=\sum u_j), (P=\prod u_j), choose (\mu^3=P), and write (v_j=u_j/\mu). The elementary symmetric relation (e_2(u)=P\bar a) gives

\[
v_j^3-1=(a/\mu)v_j^2-\overline{(a/\mu)}v_j.
\]

Thus (|v_j^3-1|\le2|a|). Each (v_j) is within angular distance

\[
\delta(a)=\frac23\arcsin |a|
\]

of a cube root of unity. When (|a|\le1/4), these three roots must be distinct: a repeated-root triple has sum modulus at least (\sqrt3), while the total perturbation is at most (3\delta(a)\le2/\sqrt{15}); this is incompatible with (|a|\le1/4).

Apply this to (x) and (y) in the first half. After a column permutation, (x) is close to a phase multiple of ((1,\omega,\omega^2)). Every permutation of the three cube roots has the form (omega^{b+aj}), (a=\pm1). The same orientation for (y) would give

\[
|r|\ge3-3\delta(s)-3\delta(t)\ge3-4/\sqrt{15}>1/4,
\]

which is impossible. Hence (y) has the opposite orientation. The squared distance of this half from a row-phased (F_3) is at most

\[
3\delta(s)^2+3\delta(t)^2
\le\frac{64}{45}(|s|^2+|t|^2)\le\frac{64p}{45},
\]

using (arcsin u\le4u/\sqrt{15}) for (0\le u\le1/4). The complementary half has correlations ((-s,-t,-r)), so it has the same bound. A common row phasing makes the first target half (F_3), leaving a diagonal (D) on the second. Adding the squared errors proves (SP1).

## 3. The exact (p=0) strip is quantitatively close to a geometric strip — PROVED / CERTIFIED

When (p=0), the preceding normalization is exact:

\[
T=[F_3,\operatorname{diag}(1,e^{i\alpha},e^{i\beta})F_3].
\]

Put (X=2\beta-\alpha), (Y=\alpha+\beta), (Z=X-Y=\beta-2\alpha). Its twenty corner discriminants consist of two zeros and eighteen copies of

\[
\boxed{576\sin^2(X/2)\sin^2(Y/2)\sin^2(Z/2).}
\tag{SP2}
\]

The exact twenty-corner census is checked by `verify_small_p_strip.py`, using the top-three-row strip of the transposed Fourier family. The factorization follows from

\[
\sin X-\sin Y-\sin(X-Y)
=-4\sin(X/2)\sin(Y/2)\sin((X-Y)/2).
\]

If every corner satisfies (R\le\varepsilon\le576), then at least one of the three sine factors has absolute value at most

\[
\delta=(\varepsilon/576)^{1/6}.
\]

The strip therefore lies, up to row and column phases, within Frobenius distance

\[
\boxed{\arcsin((\varepsilon/576)^{1/6})}
\tag{SP3}
\]

of a strip which becomes ((1;u;\bar u)) after row relabelling and column phasing. For (\varepsilon=10^{-3}), (SP3) is less than (0.110).

To verify the distance claim, each zero factor is one of the linear conditions

\[
\alpha+\beta=0,\quad \beta-2\alpha=0,\quad 2\beta-\alpha=0
\pmod{2\pi}.
\]

These respectively assert (xy=1), (y=x^2), or (x=y^2) on the full strip, giving the geometric form after relabelling. Let (l\in[-\pi,\pi]) be the residual of the selected linear condition. Then (|l|/2\le\arcsin\delta). Adjusting the two diagonal phases by ((a,b)) to satisfy that condition costs at most (l^2/4) in the quadratic form (a^2+b^2-ab): take ((a,b)=(-l/2,-l/2)), ((l/2,0)), or ((0,-l/2)), respectively.

Explicit row and column phase centering gives strip squared distance at most (a^2+b^2-ab). Indeed, for (q=(0,a,b)) on the rows and (r=(0,0,0,1,1,1)) on the columns, the centered relative phases are ((q_i-\bar q)(r_j-1/2)), whose squared sum is exactly that quadratic form. This proves (SP3).

## 4. Remaining obstruction — NOT ESTABLISHED

These statements do not provide:

- a useful uniform transfer of the small original corner signatures through the perturbation in (SP1);
- a quantitative full-matrix Fourier-routing theorem for a nearly geometric strip;
- off-critical error bounds for the zero-J mixed-corner factorization on (0<p\le9/2).

In particular, (SP1) and (SP3) cannot simply be combined as though the nearby canonical strip inherited the original bound (R\le\varepsilon). A generic signed-signature Lipschitz bound has constant 144 per corner in entry Frobenius distance, and this produces an error too large for the desired global margin. The exact zero-J identities must not be used off their hypothesis locus without a proved remainder estimate.

These are useful quantitative inputs for a later proof, but a practical global outer-region margin remains unproved here.
