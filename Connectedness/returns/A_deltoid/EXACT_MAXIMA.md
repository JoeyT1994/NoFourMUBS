# Exact candidate maxima and certified neighborhoods

## Scope

The calculations below prove that the proposed algebraic seed is correct, that
its orbit has exactly 18 points, that all 18 points are strict nondegenerate
local maxima of the stated structural invariant, and that explicit neighborhoods
contain no further stationary points. **They do not by themselves prove that
these exhaust the positive local maxima.** Global exclusion of other stationary
maxima is supplied by the companion proofs DELTOID_REDUCTION.md and
TWO_BOUNDARY.md; the present module supplies their exact endpoint data.

The self-contained acceptance verifier is `exact_maxima.py`. It uses Python
integers and `fractions.Fraction` only, and reconstructs the complete Laurent
polynomial from the defining structural circuit. The supplied Fourier file is
an optional comparison, never an assumption needed for acceptance.

Run:

```sh
python3 exact_maxima.py
```

Or, from the handoff root, compare the supplied file as well:

```sh
python3 output/exact_maxima.py --fourier toolkit/rfourier.json
```

The verifier explicitly rejects optimized Python execution (`python -O`), so
its acceptance assertions cannot be silently disabled.

## 1. Exact seed and invariant value

Let

\[
 q=\frac{1+i\sqrt{15}}4=e^{i\alpha},\qquad
 \alpha=\arccos(1/4),\qquad
 \theta_*=(\alpha,2\alpha,-\alpha,-2\alpha).
\]

Thus \(q\bar q=1\). In the field \(\mathbb Q[t]/(t^2+15)\), with
\(t=i\sqrt{15}\), all evaluations are exact rational pairs. At this point the
structural quantities are

| Quantity | Exact value |
|---|---:|
| \(X,Y\) | \(9/4\) |
| \(Z\) | \(9/16\) |
| \(p\) | \(81/16\) |
| \(J\) | \(27/8\) |
| \(W\) | \(1215/256\) |
| \(g\) | \(243/16\) |
| \(\eta\) | \(117/16\) |
| \(\chi\) | \(-5103/64\) |
| \(R\) | \(1594323/4096=3^{13}/2^{12}\) |

For the regenerated Laurent polynomial
\(R(\theta)=\sum_k c_k e^{ik\cdot\theta}\), differentiation gives

\[
 \partial_j R(\theta_*)
 =i\sum_k c_k k_j q^{k\cdot(1,2,-1,-2)}=0
 \quad (j=1,2,3,4).
\]

The verifier computes each complete field sum and checks exact equality to zero.
The coefficient dictionary contains 2,083 nonzero terms; it is regenerated
directly from \(s,t,r,X,Y,Z,p,J,W,g,\eta,\chi\), using Laurent convolution.
This avoids relying on floating-point values or on the supplied expansion.

## 2. Exact Hessian and eigenvalues

In the coordinate order \((\theta_1,\theta_2,\theta_3,\theta_4)\),

\[
 D^2R(\theta_*)=\frac{59049}{2048}
 \begin{pmatrix}
 -80&40&78&-39\\
 40&-46&-39&6\\
 78&-39&-80&40\\
 -39&6&40&-46
 \end{pmatrix}.
\]

Write the integer matrix as \(\begin{pmatrix}A&B\\B&A\end{pmatrix}\).
On the symmetric and antisymmetric subspaces it acts as, respectively,

\[
 A+B=\begin{pmatrix}-2&1\\1&-40\end{pmatrix},\qquad
 A-B=\begin{pmatrix}-158&79\\79&-52\end{pmatrix}.
\]

Consequently its four eigenvalues are

\[
 \frac{59049}{2048}(-21\pm\sqrt{362}),\qquad
 \frac{5\cdot59049}{2048}(-21\pm\sqrt{362}).
\]

Since \(362<21^2\), all four are negative. In particular, \(\theta_*\) is
a strict nondegenerate local maximum. The verifier also independently checks
Sylvester's criterion using exact determinants of all four leading principal
submatrices.

## 3. The 144 exact maps and their orbit

Associate the seed with the exponent-vector array

\[
 Q=\begin{pmatrix}
 0&0&0\\0&e_1&e_2\\0&e_3&e_4
 \end{pmatrix}.
\]

For every row permutation, column permutation, optional transpose and optional
conjugation, apply those operations to this array and dephase it by

\[
 Q'_{ij}=Q_{ij}+Q_{00}-Q_{i0}-Q_{0j}.
\]

Reading \(Q'_{11},Q'_{12},Q'_{21},Q'_{22}\) gives the four rows of an
integer matrix \(L\). Thus each map in the prompt is exactly
\(\theta\mapsto L\theta\pmod{2\pi}\). The verifier checks that all 144
matrices are distinct and that each has determinant \(\pm1\).

For every one of these matrices it verifies the coefficient identity

\[
 \sum_k c_k z^{L^Tk}=\sum_k c_k z^k.
\]

It follows that \(R(L\theta)=R(\theta)\) on the entire torus. This is a
polynomial identity, not a test at selected points. Each map is a local
diffeomorphism, so it carries strict nondegenerate maxima to strict
nondegenerate maxima.

The 18 orbit points are \(\alpha v\pmod{2\pi}\), where

| | \(v\) | | \(v\) |
|---:|---|---:|---|
| 1 | \((-4,-2,-2,-1)\) | 10 | \((1,-1,-1,1)\) |
| 2 | \((-2,-4,-1,-2)\) | 11 | \((1,-1,2,-2)\) |
| 3 | \((-2,-1,-4,-2)\) | 12 | \((1,2,-1,-2)\) |
| 4 | \((-2,-1,2,1)\) | 13 | \((1,2,2,4)\) |
| 5 | \((-2,2,-1,1)\) | 14 | \((2,-2,1,-1)\) |
| 6 | \((-1,-2,-2,-4)\) | 15 | \((2,1,-2,-1)\) |
| 7 | \((-1,-2,1,2)\) | 16 | \((2,1,4,2)\) |
| 8 | \((-1,1,-2,2)\) | 17 | \((2,4,1,2)\) |
| 9 | \((-1,1,1,-1)\) | 18 | \((4,2,2,1)\) |

Each integer vector occurs exactly eight times among the 144 maps. To make
distinctness modulo \(2\pi\) rigorous without any irrationality assumption,
the verifier computes every complex coordinate \(q^{v_j}\) in
\(\mathbb Q(i\sqrt{15})\) and checks that the 18 four-tuples are pairwise
distinct. It also checks their values and gradients directly.

### All lifts of the candidate trace pairs

This additionally closes the finite-lift step if a separate global argument
classifies the possible maxima in terms of normalized even and odd permutation
products. Choose a cube root \(\rho^3=abcd\) and set

\[
 (e_1,e_2,e_3)=(ad,b,c)/\rho,\qquad
 (o_1,o_2,o_3)=(bc,d,a)/\rho.
\]

Both triples have product one. Conversely any two product-one triples give
the unique seed

\[
 (a,b,c,d)=\left(\frac{e_1}{o_2},\frac{o_1}{e_3},
                         \frac{o_1}{e_2},\frac{e_1}{o_3}\right),
 \qquad \rho=e_1o_1.
\]

Multiplying both triples by a common cube root of unity leaves this seed
unchanged. For the candidate trace pair, the multisets of powers of \(q\)
are \(\{q^2,q^{-1},q^{-1}\}\) and
\(\{q^{-2},q,q\}\). There are three orderings of each. The nine resulting
seeds, and the nine obtained after exchanging the two multisets, are exactly
the 18 orbit vectors above. The verifier checks this equality of finite sets
using integer exponent arithmetic.

## 4. Explicit neighborhoods with unique stationary points

### Base cube

Let \(C_*\) be the angular cube

\[
 C_*=\{\theta_*+h:\|h\|_\infty\le1/200\}.
\]

**Theorem.** Throughout \(C_*\), \(D^2R\) is negative definite and
\(R>388\). The only stationary point in \(C_*\) is \(\theta_*\).

To prove this, expand each Hessian entry in its centered Taylor polynomial
through degree four. For a multi-index \(\beta\), its coefficient is the
exact algebraic number

\[
 -\frac{i^{|\beta|}}{\beta!}
 \sum_k c_k k_i k_j k^\beta q^{k\cdot(1,2,-1,-2)}.
\]

The verifier performs the cancellations in these field sums before taking
absolute values. Even-degree coefficients are rational, and odd-degree
coefficients are rational multiples of \(\sqrt{15}\); the upper bound
\(\sqrt{15}<4\) makes every coefficient bound rational.

The maximum over rows of the sum of absolute coefficients at each homogeneous
degree is bounded by

\[
 \begin{split}
 B_1&=4113747/512,\\
 B_2&=1371531123/4096,\\
 B_3&=470301957/1024,\\
 B_4&=57479177961/16384.
 \end{split}
\]

For real \(x\), the integral Taylor remainder of \(e^{ix}\) through degree
four has modulus at most \(|x|^5/5!\). Since \(|q|=1\), the maximum row-sum
remainder of the Hessian is therefore bounded by \(B_5r^5\), where

\[
 B_5=\frac1{5!}\max_i\sum_k |c_k k_i|\|k\|_1^6
 =21471757176/5.
\]

At \(r=1/200\),

\[
 \|D^2R(\theta_*+h)-D^2R(\theta_*)\|_2
 \le\|D^2R(\theta_*+h)-D^2R(\theta_*)\|_\infty
 \le\sum_{m=1}^5 B_mr^m
 =\frac{159309806298741573}{3276800000000000}<49.
\]

The first norm inequality holds because the Hessian difference is real
symmetric. On the other hand, using \(\sqrt{362}<191/10\),

\[
 -\lambda_{\max}(D^2R(\theta_*))
 >\frac{59049}{2048}\frac{19}{10}>54.
\]

Hence the Hessian remains negative definite. For two distinct critical points
in this convex cube, integrating the negative quadratic form along their
joining segment would give
\((x-y)\cdot(\nabla R(x)-\nabla R(y))<0\), a contradiction. Existence is
already supplied by the exact point \(\theta_*\).

Finally, \(\nabla R(\theta_*)=0\) and Taylor's theorem imply

\[
 |R(\theta_*+h)-R(\theta_*)|
 \le2r^2\left(5\frac{59049}{2048}\frac{401}{10}
                    +\sum_{m=1}^5B_mr^m\right)<\frac13.
\]

In particular \(R>388\) throughout the cube. All inequalities here are
checked by exact rational comparisons in the verifier.

### Every orbit point

For each map \(L\), the image \(L C_*\) is a parallelepiped containing
exactly one stationary point, namely \(L\theta_*\). Indeed, the Hessians
are related by congruence, using the exact invariance \(R\circ L=R\).

The verifier checks that \(L^{-1}\) belongs to the same list of maps and that
\(\|L^{-1}\|_\infty\le4\). Consequently every angular cube

\[
 \{L\theta_*+h:\|h\|_\infty\le1/800\}
\]

lies in \(L C_*\), has \(R>388\), and contains exactly one stationary
point. Angular lifts are taken locally, or equivalently modulo \(2\pi\).

## 5. How global exhaustion is supplied

The present module establishes the exact candidates, their full finite orbit,
and the local neighborhoods. Global exhaustion is supplied separately by
`DELTOID_REDUCTION.md` and `TWO_BOUNDARY.md`: the first forces every positive
local maximum to have both normalized traces on the deltoid boundary, and the
second classifies that entire boundary stratum and excludes its extra positive
stationary branch by an explicit increasing direction. Together with the
exact candidate Hessians and complete lift enumeration above, those notes
prove Claim A.

The neighborhoods also allow any independent global interval cover to
terminate when a box lies in one of the 18 cubes or larger mapped
parallelepipeds. Such a cover is not required by the analytical proof in the
companion notes. Numerical ascent alone, or the local results of this module
alone, would not prove global exhaustion.
