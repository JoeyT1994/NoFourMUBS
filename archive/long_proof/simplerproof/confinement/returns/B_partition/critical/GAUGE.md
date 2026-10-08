# A sharpened projector-to-horizontal-phase gauge

## The result

For an order-six complex Hadamard matrix (in fact, for any matrix with
unit-modulus entries), set

\[
s=\sqrt{1-r^2},\qquad b=2\left(1-3s+\frac2s\right).
\]

For \(0<r<\sqrt5/3\),

\[
\boxed{\quad d_F(H)\le r\quad\Longrightarrow\quad
\nu(H)\le
\frac{\arcsin(\sqrt b/2)}{\sqrt b/2}
\sqrt{72(1-s)}.\quad}
\tag{1}
\]

The value at zero is understood by continuity. Exact rational checks give

\[
\begin{aligned}
d_F(H)\le0.0914&\implies\nu(H)<0.54995<0.55,\\
d_F(H)\le0.09141&\implies\nu(H)<0.549999<0.55.
\end{aligned}
\tag{2}
\]

Thus the proposed sufficient projector radius **0.0914 is valid**. It does
not follow from the printed F3 formula, but it does follow from the
stronger elementary estimate proved here.

## Proof

The Fourier equivalence orbit is compact: it is the image of finitely many
products of compact diagonal-unitary tori. Consequently the infimum in
the definition of \(d_F\) is attained. Choose an attaining Fourier
equivalent and transform it to \(F\), applying the same row and column
operations to \(H\). Align each column by a scalar phase so that its
entrywise ratios \(z_1,\ldots,z_6\) with the corresponding Fourier column
have real sum

\[
S=\sum_{i=1}^6z_i\ge6s,\qquad |z_i|=1.
\]

For each entry \(z_i\), the other five entries imply \(|S-z_i|\le5\).
Squaring and using \(S>0\) gives

\[
\Re z_i\ge\frac{S^2-24}{2S}
\ge3s-\frac2s.
\tag{3}
\]

The second inequality holds because \(S/2-12/S\) is increasing. Hence

\[
|z_i-1|^2\le b,
\qquad
\sum_i|z_i-1|^2=12-2S\le12(1-s).
\tag{4}
\]

The stated range of \(r\) makes \(s>2/3\), so \(b<4\). Choose principal
phases \(z_i=e^{i\theta_i}\), \(|\theta_i|<\pi\). The function
\(\arcsin x/x\) increases on \([0,1)\), so (4) gives

\[
|\theta_i|
\le\frac{\arcsin(\sqrt b/2)}{\sqrt b/2}|z_i-1|.
\]

Summing its square over all 36 entries yields the square of (1). Finally
let \(P\) be orthogonal projection onto matrices with zero row and column
sums. The phase matrix \(u=P\theta\) is horizontal, its norm is no larger
than \(\|\theta\|\), and the discarded row-plus-column phases are allowed
equivalences. Therefore \(\nu(H)\le\|u\|\), proving (1).

No Hadamard orthogonality equation was needed in this proof.

## Exact numerical certificate

All final numerical inequalities are checked by `verify_gauge.py`, which
uses only Python integer arithmetic and `fractions.Fraction`.

For a short hand-checkable majorant at \(r=457/5000\), use

\[
s_0=\frac{995814259}{10^9}<\sqrt{1-r^2},\qquad
q=\frac{1-3s_0+2/s_0}{2}.
\]

The Taylor coefficients of \(\arcsin\sqrt q/\sqrt q\) are
\(a_j=\binom{2j}{j}/[4^j(2j+1)]\), with \(a_j\le1/6\) for \(j\ge1\).
Consequently

\[
\nu(H)^2\le
72(1-s_0)\left(1+\frac{q}{6(1-q)}\right)^2
<\left(\frac{54995}{100000}\right)^2.
\]

Both comparisons are rational. The radius 0.09141 uses five Taylor terms
plus the positive geometric tail \(q^6/(1-q)\).

## Correction to the original F3 numbers

F3 simplifies to

\[
\rho(r)=2\sqrt6\arcsin\sqrt{3(1-\sqrt{1-r^2})}.
\]

Its inverse, on the small-radius branch relevant here, is

\[
r_0(y)^2=1-\left(\frac{5+\cos(y/\sqrt6)}6\right)^2.
\]

Exact alternating cosine-series bounds establish

\[
0.0913784975325<r_0(0.55)<0.0913784975326.
\]

In particular the original estimate gives

\[
\begin{aligned}
0.5500091004&<\rho(0.09138)<0.5500091006,\\
0.5501302414&<\rho(0.0914)<0.5501302416.
\end{aligned}
\]

Thus neither of those two radii establishes \(\nu\le0.55\) through F3
alone. Equations (1)–(2) repair that implication without altering F4.

## Inputs and status

This is an unconditional elementary metric theorem. It uses the definitions
of \(\nu\), \(d_F\), and equivalence; it uses none of F1–F8. Its numerical
comparisons are finite exact rational computations. It proves a useful
terminal condition, **not global confinement into that condition**.
