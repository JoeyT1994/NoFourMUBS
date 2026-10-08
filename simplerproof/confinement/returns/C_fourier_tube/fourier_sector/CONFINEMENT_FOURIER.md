# Exact global confinement and all local minima on the affine Fourier family

## Scope and statement

This proves the requested confinement implication on the **entire** two-parameter affine Fourier family, its transpose, and all their Hadamard equivalents. Both phase parameters range over their full circles. It does not assume that an arbitrary order-six Hadamard belongs to these families, and consequently it does not prove the unrestricted confinement theorem.

Write

\[
H(x,y)=F_6\circ\exp\{i(xt_1+yt_2)\},\qquad x,y\in\mathbb R.
\]

The following statements hold.

**Theorem 1 (all 400 corners, exactly).** Put

\[
A=2x-y,\quad B=x+y,\quad C=x-2y=A-B,
\qquad S=|\sin A|+|\sin B|+|\sin C|.
\]

Then

\[
\boxed{M(H(x,y))=36S^2.}\tag{1}
\]

As polynomial types, 256 corners have invariant zero. The other 144 corners consist of the four types

\[
36(\sin A+\epsilon\sin B+\delta\sin C)^2,
\qquad (\epsilon,\delta)\in\{\pm1\}^2,
\tag{2}
\]

each occurring 36 times. Some of these types can coincide or vanish at special parameter values.

**Theorem 2 (global quantitative confinement).** If \(M=M(H(x,y))<144\), then

\[
\boxed{\nu(H(x,y))\le
\sqrt{\frac23}\arcsin\frac{\sqrt M}{12}.}\tag{3}
\]

The same bound holds for its transpose and every equivalent matrix. In fact, for both orientations,

\[
\boxed{d_F(H)\le
\sin\!\left(\frac16\arcsin\frac{\sqrt M}{12}\right).}\tag{4}
\]

In particular,

\[
M(H)<26\quad\Longrightarrow\quad
\nu(H)<\sqrt{\frac23}\arcsin\frac{\sqrt{26}}{12}
<\frac9{25}=0.36<0.55.\tag{5}
\]

The exact expression in (5) is approximately \(0.3583371793251961\), and the corresponding right side of (4) is approximately \(0.07308006387000105\). These decimals are descriptive only; the proof uses the exact expressions and a rational certificate for the strict bound \(9/25\).

**Theorem 3 (complete exclusion of nonglobal local minima in this sector).** Every affine Fourier-family matrix with \(M>0\) admits arbitrarily small Hadamard perturbations within that family that strictly decrease \(M\). The same holds for transposes and equivalents. Thus no such matrix is a local minimum of \(M\) on the full Hadamard set. Within these families all local minima are equivalent to \(F_6\) and have \(M=0\).

The full range in this sector is \(0\le M\le243\).

## 1. A useful indexing of the family

Let \(\zeta=e^{2\pi i/3}\). Use row labels \((p,r)\in\{0,1\}\times\mathbb Z_3\) and column labels \((c,q)\in\mathbb Z_3\times\{0,1\}\). A fixed row and column permutation gives

\[
H_{p,r;c,q}=(-1)^{pq}\zeta^{rc}z_c^p,
\quad (z_0,z_1,z_2)=(1,e^{ix},e^{iy}).\tag{6}
\]

Indeed the original row and column indices can be chosen as

\[
j=3p+2r\pmod6,\qquad k=4c+3q\pmod6.
\]

Then \(e^{2\pi ijk/6}=(-1)^{pq}\zeta^{rc}\). The original odd rows are precisely \(p=1\), and the original column pairs \(\{1,4\}\), \(\{2,5\}\) are \(c=1\), \(c=2\).

Equation (6) is a Hadamard for every unit \(z_1,z_2\). To check row orthogonality, sum over \(q\) first when the two parities differ, and over \(c\) when the parities agree. The verifier also checks every inner product exactly in a Laurent-polynomial ring.

## 2. Exact derivation of the corner formula

Calculations take place in the ring

\[
\mathbb Z[z_1^{\pm1},z_2^{\pm1},\zeta]/(\zeta^2+\zeta+1).
\tag{7}
\]

Complex conjugation sends \(z_j\) to \(z_j^{-1}\) and \(\zeta\) to \(\zeta^2\). For any 3-by-3 submatrix \(E\), form

\[
q(E)=\frac{\operatorname{perm}(E)\det(E)^2}
{\prod_{i,j}E_{ij}}.
\]

The denominator is a unit monomial, so this is an exact Laurent polynomial. Expand its six permanent terms and six determinant terms. The 400 polynomials \(q(E)-\overline{q(E)}\), up to overall sign, are:

* the zero polynomial, 256 times;
* the following four polynomials, 36 times each:

\[
3\bigl[
(z_1^2z_2^{-1}-z_1^{-2}z_2)
\;\pm(z_1z_2-z_1^{-1}z_2^{-1})
\;\pm(z_1z_2^{-2}-z_1^{-1}z_2^2)
\bigr].\tag{8}
\]

The two signs vary independently. Since each parenthesis is \(2i\) times the corresponding sine, these are

\[
6i(\sin A\pm\sin B\pm\sin C).
\]

The square identity in the handoff transfers this list to the invariants of the same-row complementary corners. Complementation permutes the 400 corners. Thus (2) holds, and maximizing over the four signs gives (1): for any three real numbers \(a,b,c\),

\[
\max_{\epsilon,\delta\in\{\pm1\}}(a+\epsilon b+\delta c)^2
=(|a|+|b|+|c|)^2.
\]

There is also a direct check independent of the supplied square identity: `verify_fourier.py` constructs each corner's \(s,t,r,X,Y,Z,p,J,W,g,\eta,\chi,R\) from the definition and proves the Laurent identity

\[
R(E)=-\bigl(q(E^{\mathrm{col\,comp}})
-\overline{q(E^{\mathrm{col\,comp}})}\bigr)^2
\]

for all 400 corners. This exact finite calculation needs no floating-point arithmetic or interval library.

## 3. Every zero of the formula is explicitly Fourier-equivalent

Equation (1) vanishes exactly when

\[
2x_0-y_0=m\pi,\qquad x_0+y_0=n\pi
\quad (m,n\in\mathbb Z).
\]

Equivalently,

\[
x_0=\frac{m+n}{3}\pi,
\qquad y_0=\frac{2n-m}{3}\pi.\tag{9}
\]

This is a full lattice of Fourier points, not just the origin. Its explicit equivalence is useful for handling parameter wrapping.

Let \(k=m+n\), and evaluate (6) at (9). Then

\[
z_c^2=\zeta^{kc},\qquad c=0,1,2.
\]

Consequently there are signs \(\epsilon_c\in\{\pm1\}\) with

\[
z_c=\epsilon_c\zeta^{2kc}.
\]

For each \(c\) with \(\epsilon_c=-1\), swap its two columns \(q=0,1\). This multiplies the odd-parity entries of that column pair by \(-1\), removing \(\epsilon_c\). Then cyclically permute the three odd-parity rows by \(r\mapsto r+2k\). The result is (6) with all \(z_c=1\), which is equivalent to \(F_6\).

Thus every base point in (9) is Fourier-equivalent by explicit permutations. No qualitative appeal to MC1 is needed.

## 4. A global elementary angle lemma

**Lemma.** Let \(a,b\in[-\pi/2,\pi/2]\), and put

\[
S=|\sin a|+|\sin b|+|\sin(a-b)|,
\qquad t=\max\{|a|,|b|,|a-b|\}.
\]

If \(S<2\), then

\[
t<\frac\pi2,
\qquad S\ge2\sin t,
\qquad a^2-ab+b^2\le t^2.\tag{10}
\]

*Proof.* When \(a,b\) have the same sign, \(t\le\pi/2\). When they have opposite signs write their absolute values as \(u,v\in[0,\pi/2]\); then \(t=u+v\). If \(t\ge\pi/2\), concavity of sine on \([0,\pi]\), with fixed \(u+v=t\), gives

\[
\sin u+\sin v\ge1-\cos t.
\]

Hence

\[
S\ge1-\cos t+\sin t\ge2,
\qquad \pi/2\le t\le\pi,
\]

contrary to the hypothesis. In either sign case, order the three points \(0,a,b\) on the real line. Their two consecutive gaps \(u,v\) are nonnegative, have \(u+v=t\), and their three pairwise distances are \(u,v,t\). It follows that

\[
S=\sin u+\sin v+\sin t\ge2\sin t,
\]

using

\[
\sin u+\sin v-\sin(u+v)
=4\sin(u/2)\sin(v/2)\sin((u+v)/2)\ge0.
\]

If \(t=\pi/2\), the same bound gives \(S\ge2\), so the inequality is strict. Finally,

\[
a^2-ab+b^2=u^2+uv+v^2=t^2-uv\le t^2.
\]

This proves the lemma. \(\square\)

## 5. Global phase wrapping and the horizontal norm

For arbitrary \(x,y\), choose integers \(m,n\) so that

\[
a=(2x-y)-m\pi\in[-\pi/2,\pi/2],\qquad
b=(x+y)-n\pi\in[-\pi/2,\pi/2].\tag{11}
\]

Absolute sines are unchanged by this reduction. In particular \(\sin(x-2y)\) reduces to \(\pm\sin(a-b)\), so the same \(S\) occurs in (1) and (10).

Choose \((x_0,y_0)\) from (9) using these integers. Then

\[
\delta x=x-x_0=\frac{a+b}{3},\qquad
\delta y=y-y_0=\frac{2b-a}{3}.\tag{12}
\]

The raw phase difference from this Fourier-equivalent base point is

\[
V_{p,r;c,q}=p v_c,\qquad (v_0,v_1,v_2)=(0,\delta x,\delta y).
\]

Its horizontal projection is

\[
U_{p,r;c,q}=(p-\tfrac12)(v_c-\bar v),\qquad
\bar v=\frac{\delta x+\delta y}{3}.\tag{13}
\]

Subtracting row and column means is exactly a permitted diagonal rephasing. Row and column permutations preserve horizontality and its Frobenius norm. Therefore \(U\) provides a valid witness for \(\nu\), with

\[
\begin{aligned}
\nu(H)^2&\le\|U\|_F^2\\
&=2(\delta x^2-\delta x\delta y+\delta y^2)\\
&=\frac23(a^2-ab+b^2).
\end{aligned}\tag{14}
\]

If \(M<144\), then \(S=\sqrt M/6<2\). The lemma and monotonicity of sine on \([0,\pi/2]\) give

\[
\sqrt{a^2-ab+b^2}\le t
\le\arcsin(S/2)
=\arcsin(\sqrt M/12).
\]

This proves (3). Transposition preserves horizontality and the Frobenius norm, and \(F_6^T=F_6\), so it also proves (3) for the transposed family. Equivalence invariance then gives every stated equivalent matrix.

Notice that the proof has optimized over a global lattice of exact Fourier points before taking the phase norm. It does not apply a small-angle branch at the original parameter origin.

### Exact rational certification of the numerical threshold

Let \(b_0=9/25\) and \(t_0=\sqrt{3/2}\,b_0\), so \(t_0^2=243/1250<1\). The elementary Taylor inequality \(\sin t\ge t-t^3/6\) on \([0,1]\) gives

\[
\sin^2t_0\ge
\frac{243}{1250}\left(1-\frac{81}{2500}\right)^2
>\frac{26}{144}.
\]

The exact positive margin in the last inequality is

\[
\frac{102051407}{70312500000}>0.
\]

Thus

\[
\sqrt{\frac23}\arcsin\frac{\sqrt{26}}{12}<\frac9{25}<\frac{11}{20}.
\]

The verifier checks these rational inequalities exactly.

## 6. Direct projector-distance estimate

Set

\[
L=\max(v_0,v_1,v_2)-\min(v_0,v_1,v_2)
=\max\{|\delta x|,|\delta y|,|\delta x-\delta y|\}.
\]

From (12) and the definition of \(t\),

\[
L=\tfrac13\max\{|a+b|,|2b-a|,|2a-b|\}\le\frac{2t}{3}.\tag{15}
\]

Let \(m_v\) be the midpoint of the smallest interval containing \(v_0,v_1,v_2\). Compare \(H\) with its Fourier-equivalent base matrix after multiplying all odd-parity rows of the latter by \(e^{im_v}\). For a column in group \(c\), the normalized inner-product modulus is

\[
\left|\frac{1+e^{i(v_c-m_v)}}2\right|
=\cos\frac{v_c-m_v}{2}.
\]

Since \(|v_c-m_v|\le L/2\), its projector distance is at most \(\sin(L/4)\). Equations (10) and (15) give

\[
d_F(H)\le\sin(L/4)\le\sin(t/6)
\le\sin\!\left(\tfrac16\arcsin(\sqrt M/12)\right).
\]

For \(H^T\), rephase the rows of the Fourier base by \(e^{iv_c/2}\). The phase residual in a column of parity \(p\) is \((p-1/2)v_c\). Its six values lie in an interval of width \(L/2\); after a column rephasing all lie in \([-L/4,L/4]\). The real part of their average unit phase is at least \(\cos(L/4)\), yielding the same bound. This proves (4) for both orientations.

## 7. Every non-Fourier point in the family admits descent

The expression \(S\) is periodic under \(A\mapsto A+\pi\) and \(B\mapsto B+\pi\), and symmetric under swapping \(A,B\). We may therefore analyze the closed triangle

\[
0\le B\le A\le\pi.
\]

Use \(u=B\), \(v=A-B\). This becomes

\[
u\ge0,\qquad v\ge0,\qquad u+v\le\pi,
\]

and

\[
S(u,v)=\sin u+\sin v+\sin(u+v).\tag{16}
\]

In the interior its Hessian satisfies

\[
w^T\nabla^2S\,w
=-\sin u\,w_1^2-\sin v\,w_2^2
-\sin(u+v)(w_1+w_2)^2<0
\]

for every nonzero \(w\). If the gradient is nonzero, the direction \(-\nabla S\) decreases \(S\) to first order. If the gradient vanishes, negative definiteness gives decrease in every nonzero direction to second order. The critical-point equations are

\[
\cos u+\cos(u+v)=0,\qquad
\cos v+\cos(u+v)=0.
\]

Since cosine is injective on \((0,\pi)\), these imply \(u=v\); the sole interior solution is \(u=v=\pi/3\). It is the strict maximum, where \(S=3\sqrt3/2\) and \(M=243\).

On every open edge of the triangle, (16) is \(2\sin s\), with \(0<s<\pi\). If \(s\ne\pi/2\), move along the edge in the direction that decreases it; if \(s=\pi/2\), every sufficiently small nonzero edge displacement decreases it. The three vertices are exactly the zero points, already shown explicitly Fourier-equivalent.

Every parameter perturbation used above produces a nearby Hadamard by (6), and \(M=36S^2\) decreases whenever \(S>0\) decreases. This proves Theorem 3, including at the boundaries between phase triangles. The inverse linear map from \((A,B)\) to \((x,y)\) is nonsingular, so all such parameter perturbations are available locally in the original family.

In the confined region \(M<144\), a particularly simple strict descent path is available: after (11)–(12), use

\[
H_\lambda=H(x_0+\lambda\delta x,
y_0+\lambda\delta y),\qquad0\le\lambda\le1.
\]

All three absolute residual angles are below \(\pi/2\). For a nonzero residual, \(M(H_\lambda)\) strictly increases with \(\lambda\). Thus this path decreases \(M\) continuously to zero as \(\lambda\) decreases to zero.

## Inputs and verification status

Inputs used are the definitions of the Fourier family, Hadamard equivalence, \(R\), \(M\), \(\nu\), and \(d_F\) in the handoff, and elementary trigonometry. The supplied square identity F2 provides a concise derivation of the corner correspondence, but the verification script independently proves that correspondence directly from the definition of \(R\) in this family. No other fact F1–F8, local computer-assisted theorem, numerical sample, or global classification of order-six Hadamards is required.

Run, from this directory:

```sh
python3 verify_fourier.py
```

The script checks the Hadamard equations, the complete Laurent-polynomial classification, all 400 direct invariant identities, and the exact rational constant. `explore_exact.py` contains the small exact Laurent-ring implementation and can also be run by itself to print the five polynomial types and their multiplicities.

**Remaining global gap.** This argument excludes the complete affine Fourier family and its transpose from the hypothetical non-Fourier local minima in the confinement reformulation. No argument here forces an arbitrary Hadamard with \(M<26\), or an arbitrary local minimum there, into either family. That classification or a separate exclusion for the rest of the Hadamard set remains open in this result.
