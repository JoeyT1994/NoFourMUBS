# Exact uniform ray cover for the Fourier phase ball of radius 3/20

## Certified conclusion

Let \(F_{jk}=\exp(2\pi i jk/6)\), and let

\[
H=F\circ e^{i\delta},\qquad H H^*=6I,
\qquad\delta\text{ horizontal},\qquad\|\delta\|_F\le\rho=3/20.
\]

Here horizontal means every row sum and every column sum of the real phase increment is zero. All norms and radii in this document are in **radians**, with no division of the Frobenius phase norm by 6.

**CERTIFIED.** Every unit vector unbiased to both the standard basis and \(H/\sqrt6\) lies in one of the following 48 phase balls:

- labels 0 through 11: radius \(399/1000\) about the quantized Gaussian centers;
- labels 12 through 47: radius \(299/1000\) about the quantized Björck centers.

The centers are the explicit integer phase vectors in `data/quantized48.json`, divided by 12288 and multiplied by \(2\pi\). A phase ball of radius \(s\) about a center \(v\) consists of

\[
\left\{\lambda e^{i(v+x)}/\sqrt6:
|\lambda|=1,\quad \sum_jx_j=0,\quad\|x\|_2\le s\right\}.
\]

The companion graph certificate proves that each quantized center is within mean-free phase distance \(1/1000\) of its corresponding exact algebraic ray. Thus these balls lie inside the exact-ray balls of radii \(2/5\) and \(3/10\) used by that certificate. The combined package supplies one shared `data/quantized48.json`; the driver also compares the center hashes reported by both verifiers.

No assertion that the 48 exact rays exhaust the Fourier-unbiased rays is assumed. The finite cover independently checks the complete five-phase torus. In particular, its proof does not use the earlier MUB atlas, an old Fourier record, a chart-ball exclusion, or a prior no-quartet computation.

## The fresh Fourier geometry certificate

`verify_geometry.py` constructs \(A=2J_0^TJ_0\) exactly as a 36-by-36 integer matrix, where \(J_0\) is the derivative at zero of the 15 complex row-orthogonality sums. Real and imaginary parts are treated as 30 real equations. The only cosine data used are

\[
2\cos(k\pi/3)=(2,1,-1,-2,-1,1).
\]

The script verifies

\[
A(A-6I)(A-18I)(A-24I)=0,
\]

and

\[
\operatorname{tr}((A-6I)(A-18I)(A-24I))=-2592\cdot15.
\]

Since \(A\) is symmetric, its spectrum is contained in \(\{0,6,18,24\}\), and the trace identity says its zero eigenspace has dimension 15.

Let the four dephased tangent generators be

\[
V_{ij}=\mathbf1_{i\text{ odd}}f(j\bmod3)
      +\mathbf1_{j\text{ odd}}g(i\bmod3),
\quad f=(0,a,b),\quad g=(0,c,d).
\]

Project each generator horizontally. Their entries are integer multiples of \(1/6\). The script verifies that they lie in \(\ker A\), are horizontal, and have Gram matrix

\[
G=\begin{pmatrix}2&-1&0&0\\-1&2&0&0\\0&0&2&-1\\0&0&-1&2\end{pmatrix}.
\]

The 11-dimensional gauge space of row-plus-column constant matrices is also checked to lie in the kernel. Thus the horizontal kernel is exactly this four-dimensional tangent space \(T\). On its horizontal orthogonal complement \(N\),

\[
\boxed{\|J_0\nu\|_2\ge\sqrt3\|\nu\|_F.}
\]

For each column, the verifier checks all principal minors of \(G/3-C\) are nonnegative, where \(C\) is that column's tangent-generator Gram matrix. This proves the exact column operator bound

\[
\boxed{\|\eta_{:,i}\|_2\le\|\eta\|_F/\sqrt3\qquad(\eta\in T).}
\]

### Analytic normal remainder

**PROVED.** Write \(\mathcal O(\delta)\) for the 15 complex orthogonality sums, with Euclidean norm on their real and imaginary parts. For any centered six-vector \(v\),

\[
\sum_{i<j}(v_i-v_j)^4
=6\sum_i v_i^4+3\|v\|_2^4\le8\|v\|_2^4.
\]

The inequality follows from \(v_i^2\le(5/6)\|v\|_2^2\). Cauchy--Schwarz over row pairs, followed by Minkowski and Cauchy--Schwarz over columns, gives the global horizontal-input Hessian bound

\[
\|D^2\mathcal O\|_{2,2\to2}\le2\sqrt2.
\]

Decompose an actual Hadamard increment as \(\delta=\eta+\nu\), with \(\eta\in T\), \(\nu\in N\). Since \(\mathcal O(0)=\mathcal O(\delta)=0\), Taylor's formula yields

\[
\sqrt3\|\nu\|_F\le\|J_0\nu\|
=\|\mathcal O(\delta)-\mathcal O(0)-J_0\delta\|
\le\sqrt2\|\delta\|_F^2.
\]

Therefore

\[
\|\eta\|\le\rho,\qquad
\|\nu\|\le\sqrt{2/3}\rho^2,\qquad
\|\delta_{:,i}\|\le\rho/\sqrt3+\sqrt{2/3}\rho^2.
\]

For \(\rho=3/20\), the exact checker uses the convenient rational upper bounds

\[
\boxed{r_F=r_H=3/20,\qquad n=147/8000,\qquad r_{\rm col}=21/200.}
\]

Hereafter write \(r=r_{\rm col}\). Their validity is checked by rational squaring in both replay scripts. This argument needs only that the input matrix is Hadamard and has the stated small horizontal phase increment. It does not require an implicit chart or a classification of nearby Hadamards.

## Exhaustive phase bins

Every flat unit vector has the form \(e^{i\beta}/\sqrt6\). Remove its global phase so \(\beta_0=0\), and cover the remaining five phases by closed bins

\[
\prod_{j=1}^5[2\pi b_j/M,2\pi(b_j+1)/M].
\]

The initial resolution is \(M=12\), so all \(12^5=248832\) bins are included. Refinement replaces a bin by all 32 children at resolution \(2M\). No symmetry reduction or omission is made.

For midpoint \(u\), write the vector phases as \(u+x\), up to a scalar, where \(x\) is the mean-free version of a displacement with zeroth coordinate zero and other coordinates in \([-a,a]\), \(a=\pi/M\). Convexity on this cube gives

\[
\|x\|_2\le X=\sqrt{29/6}\,a,\qquad
\|x\|_1\le\Lambda=5a,\qquad
\|x\|_\infty\le I=3a/2.
\]

The exact replay traverses every initial bin and every selected child. Each node has precisely one of three outcomes: covered by a verified label, discarded by one of the verified inequalities below, or subdivided into all 32 children. The final level has no subdivided nodes. Closed bins preserve coverage on all bin and torus boundaries.

## Verified single-vector inequalities

For a midpoint \(u\), put

\[
q_{ji}=e^{i(u_j-2\pi ji/6)}/\sqrt6,\quad S_i=\sum_jq_{ji},
\]

\[
c_i=(|S_i|^2-1)/2,\quad
J_{ij}=-\operatorname{Im}(\overline{S_i}q_{ji}).
\]

If an actual vector in the bin is unbiased to \(H/\sqrt6\), then
\(S'_i=\sum_jq_{ji}e^{i(x_j-\delta_{ji})}\) has \(|S'_i|=1\).

### Direct inequalities

Since \(F/\sqrt6\) is unitary,

\[
\|S'-S\|_2\le X+\rho,\qquad
|S'_i-S_i|\le\Lambda/\sqrt6+r.
\]

Thus either of the following strict inequalities discards a bin:

\[
\bigl||S_i|-1\bigr|>\Lambda/\sqrt6+r,
\]

\[
\sum_i(|S_i|-1)^2>(X+\rho)^2.
\]

These are certificate codes 1--6 and 7, respectively.

### Weighted tangent-support inequality

Let \(y\in\mathbb R^6\) be arbitrary. Define

\[
N_y=\left(\sum_{i,j}y_i^2J_{ij}^2\right)^{1/2},\qquad
G_y=\max_j\left|\sum_i y_i\overline{S_i}q_{ji}\right|.
\]

Let \(B^Ty\) denote the projection onto \(T\) of the 36-component coefficient matrix \((y_iJ_{ij})_{ji}\), expressed in any orthonormal tangent frame. Any feasible bin satisfies

\[
\boxed{|y\cdot c|\le
 a\sum_{j>0}|(J^Ty)_j|+\rho\|B^Ty\|_2+nN_y+\mathcal E(y),}
\]

where

\[
\begin{aligned}
\mathcal E(y)=\frac12\Big[&
\min\{\|y\|_\infty(X+\rho)^2,\|y\|_1(X+r)^2\}\\
&+\min\{G_yX^2,\|S\circ y\|_2 I X\}\\
&+\frac{2X}{\sqrt6}\min\{\|S\circ y\|_2\rho,\|S\circ y\|_1r\}\\
&+\frac1{\sqrt6}\min\{\|S\circ y\|_\infty\rho^2,
\|S\circ y\|_1r^2\}\Big].
\end{aligned}
\]

To derive it, expand the squared modulus to first order, divide by two, and bound the squared increment plus the exponential remainder. For the latter, split
\(e^{ix}e^{-i\delta}-1-i(x-\delta)\) into its pure-\(x\), pure-\(\delta\), and cross terms. Use \(|e^{it}-1|\le|t|\), \(|e^{it}-1-it|\le t^2/2\), and the vector/column bounds above. The linear normal term is bounded by \(nN_y\). The tangent term uses the **same** four-dimensional tangent coefficients across the six columns. Each row of \(J\) sums to zero, so its action on centered \(x\) equals its action on the original five-coordinate box displacement.

The component case \(y=e_i\) gives the particularly simple valid bound

\[
|c_i|\le a\sum_{j>0}|J_{ij}|+\rho\|B^Te_i\|+n\|J_{i,:}\|+
\frac12(1+|S_i|/\sqrt6)(X+r)^2.
\]

Codes 8--13 check this inequality. Code 14 supplies a rational vector \(y\), with denominator \(2^{20}\), and verifies the full weighted inequality. Numerical least squares was used only to propose these witnesses; the exact checker independently evaluates every claimed rejection. The method is valid for every real \(y\), so no optimality claim for the proposals is needed.

### Exact tangent projection

No numerical QR frame enters the checker. If \(V_1,\ldots,V_4\) are the four horizontal natural tangent generators above and

\[
g_k=\langle(y_iJ_{ij})_{ji},V_k\rangle_F,
\]

then

\[
\|B^Ty\|^2=g^TG^{-1}g
=\frac{(g_1+g_2)^2}{2}+\frac{(g_1-g_2)^2}{6}
 +\frac{(g_3+g_4)^2}{2}+\frac{(g_3-g_4)^2}{6}.
\]

All generator entries are integer multiples of \(1/6\). The formula is evaluated with directed integer intervals.

## Verified label containment

Let a quantized label center have phase indices \(v_j\in\mathbb Z/12288\mathbb Z\). Every bin midpoint also has integral indices at this denominator, since \(2M\) divides 12288 at each of the four levels. Take the componentwise integer wrap \(d_j\) of midpoint minus center into the half-period interval. Its mean-free phase norm is exactly

\[
\frac{2\pi}{12288}
\sqrt{\sum_jd_j^2-\frac{(\sum_jd_j)^2}{6}}.
\]

A label assignment is accepted only if a directed upper bound for this distance plus \(X\) is strictly below the label radius \(399/1000\) or \(299/1000\). Integer wrapping changes only the global phase and integer periods, so this verifies containment of the complete closed bin.

## Exact arithmetic and replay

Run:

```sh
python3 -I scripts/verify_geometry.py
python3 -I scripts/verify_cover.py
```

Run these commands from the package root. `verify_cover.py` reads the package's `data` directory and writes its receipt to `certificates/cover.json`. It requires only the standard library. The interval scale is \(2^{48}=281474976710656\). Interval endpoints are integers, with every product, quotient, square, and square root rounded outward using integer division or integer square roots.

The checker encloses \(\pi\) by Machin's identity

\[
\pi=16\arctan(1/5)-4\arctan(1/239),
\]

using 60-term rational alternating series and their next-term remainder bounds. At each bin resolution it constructs the requisite Fourier exponential table from interval sine/cosine Taylor series. The omitted term is bounded by \(\pi^{72}/72!<2^{-48}\), which is checked as a rational inequality. There is no floating-point acceptance threshold or empirical rounding-error estimate.

The compressed proof data contain only node codes and rational support witnesses. They are not trusted assertions: every rejection, every containment, every child set, and the exhaustion of all leaves is checked again. The verifier also rejects malformed counts, labels, witnesses, or an unfinished tree. Floating-point conversion occurs only in progress-time displays and has no role in any acceptance.

### Exact replay result

**CERTIFIED PASS**, approximately 126 seconds in the current environment:

| Resolution \(M\) | Nodes checked | Covered by labels | Rejected by verified inequalities | Subdivided |
|---:|---:|---:|---:|---:|
| 12 | 248,832 | 0 | 238,680 | 10,152 |
| 24 | 324,864 | 0 | 316,620 | 8,244 |
| 48 | 263,808 | 4,848 | 246,624 | 12,336 |
| 96 | 394,752 | 197,484 | 197,268 | 0 |
| **Total** | **1,232,256** | **202,332** | **999,192** | **30,732** |

Subdivided nodes are internal nodes, not additional leaves; their 32 children appear in the next row. The final tree has zero unprocessed leaves. The table totals count all nodes processed across levels.

## Combining the cover with the independent graph certificate

The exact graph certificate on the 48 algebraic centers uses radius \(2/5\) for the first 12 centers and \(3/10\) for the other 36. It proves:

1. Any six orthogonal vectors in the covered phase balls must have six distinct labels and form one of the 16 retained six-cliques.
2. For each such clique and each of the 48 possible labels for a further vector, some clique-center is exactly orthogonal to that label's center.

If \(k_j\) and \(\ell\) are the corresponding actual normalized vectors, this exact zero at the centers gives

\[
|\langle k_j,\ell\rangle|
\le\frac{r_j+r_\ell}{\sqrt6}\le\frac{4/5}{\sqrt6},
\]

and therefore

\[
\boxed{|\langle k_j,\ell\rangle|^2\le\frac8{75}
=\frac16-\frac3{50}.}
\]

Thus any third unbiased basis and any further ray unbiased to the first two bases have a transition probability at least \(3/50\) below the mutually unbiased target \(1/6\). In particular, the third basis cannot have even one further ray unbiased to all three bases. This proves the desired absence of a fourth basis on the full closed radius-\(3/20\) neighborhood.

The graph statement is a separate exact finite certificate, not an assertion inferred from the numerical phase cover. A combined driver must replay both and compare their quantized-center lists. Equivalence invariance then transfers the conclusion from the aligned horizontal lift \(H=F\circ e^{i\delta}\) to the phase quotient ball about \([F]\).
