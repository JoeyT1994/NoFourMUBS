# Collected second-order ray-bin certificate

This document describes the new bounds used by `verify_cover.py` for the radius-\(3/10\) certificate. The cover method and its integer interval arithmetic retain the complete closed five-phase partition from the earlier certificate; the bounds below are the additional ingredients. The earlier certificate is not used as proof data.

## 1. Geometric input and units

All phases are in radians. Write

\[
H=F_6\circ e^{i\delta},\qquad \delta\text{ horizontal},\qquad \|\delta\|_F\le\rho.
\]

Let \(T\) be the four-dimensional horizontal Fourier tangent space, \(N\) its horizontal orthogonal complement, and \(\delta=\eta+\nu\). The certificate requires

\[
\|\delta\|_F\le\rho=3/10,\quad
\|\nu\|_F\le n=49/1250,\quad
\max_i\|\delta_{:,i}\|_2\le r=1/5.
\]

These are inputs from the separately replayed, fresh Fourier geometry certificate. A stronger proved normal or column enclosure also suffices. No dephased reconstruction chart or prior MUB atlas is assumed.

For completeness, the displayed column radius follows from the orthogonal tangent/normal column covariance estimate

\[
\|\delta_{:,i}\|\le
\sqrt{(\rho^2-n^2)/3}+n/\sqrt2<1/5,
\]

provided \(n^2/\rho^2\le3/5\), as here. The normal estimate itself is a substantive geometric input; it must not be replaced by this last scalar comparison.

The orthonormal frame used by the exact checker is

\[
T_1=V_1/\sqrt2,\quad T_2=(V_1+2V_2)/\sqrt6,
\quad T_3=V_3/\sqrt2,\quad T_4=(V_3+2V_4)/\sqrt6,
\]

where \(V_1,\ldots,V_4\) are the horizontal natural Fourier generators, with Gram matrix consisting of two blocks \(\begin{pmatrix}2&-1\\-1&2\end{pmatrix}\). Their entries are rational multiples of \(1/6\). The numerical search's QR frame differs only by column signs; no QR calculation is trusted by the exact replay.

## 2. Sharper linear support

For a bin midpoint, retain the notation

\[
q_{ji}=e^{i(u_j-P_{F,ji})}/\sqrt6,
\quad S_i=\sum_jq_{ji},
\quad c_i=(|S_i|^2-1)/2,
\quad J_{ij}=-\operatorname{Im}(\overline S_iq_{ji}).
\]

Given any real witness \(y\), let \(C_{ji}=y_iJ_{ij}\). Each column of \(C\) sums to zero. Thus its horizontal projection has squared norm

\[
h^2:=\|\operatorname{proj}_{\rm hor}C\|_F^2
=\sum_{i,j}y_i^2J_{ij}^2-\frac16\|J^Ty\|_2^2.
\]

Let

\[
b=\|\operatorname{proj}_T C\|_F,
\qquad c_N=\|\operatorname{proj}_N C\|_F=\sqrt{h^2-b^2}.
\]

The first-order normal error is controlled by \(c_N\), rather than the full coefficient norm. More sharply, simultaneous constraints on the total increment and its normal part give

\[
|\langle C,\delta\rangle|\le\Lambda(C),
\]

\[
\boxed{
\Lambda(C)=
\begin{cases}
\rho h,& nh\ge\rho c_N,\\
\sqrt{\rho^2-n^2}\,b+n c_N,& nh<\rho c_N,
\end{cases}}
\]

Equivalently, maximize
\(b\sqrt{\rho^2-t^2}+c_Nt\) over \(0\le t\le n\). The unconstrained optimum occurs at \(t=\rho c_N/h\).

The exact checker only selects the second branch when directed intervals prove \(\rho^2c_N^2>n^2h^2\). Otherwise it uses the always valid full-ball bound \(\rho h\). It also takes the minimum with the always valid bound \(\rho b+n c_N\). Thus an uncertain branch comparison cannot cause an incorrect rejection.

The bound for the bin displacement remains

\[
a\sum_{j>0}|(J^Ty)_j|,\qquad a=\pi/M.
\]

All earlier scalar and weighted first-order tests use this sharper physical-increment support.

## 3. Exact midpoint Hessian

For each Fourier column, define

\[
f_i(t)=\frac12\left(\left|\sum_jq_{ji}e^{it_j}\right|^2-1\right).
\]

Its real symmetric Hessian at zero is

\[
\boxed{(H_i)_{jk}=\operatorname{Re}(q_{ji}\overline{q_{ki}})
-\mathbf1_{j=k}\operatorname{Re}(\overline S_iq_{ji}).}
\]

Every \(H_i\) annihilates the all-ones vector. Let \(\mathcal H\) be the 36-by-36 block-diagonal matrix whose column blocks are \(y_iH_i\), and let \(T_i\) denote the six-by-four restriction of the orthonormal tangent frame to column \(i\). Set

\[
H_{xx}=\sum_i y_iH_i,
\quad H_{xT}=\sum_i y_iH_iT_i,
\quad H_{TT}=\sum_i T_i^Ty_iH_iT_i.
\]

For a bin displacement \(x\) and a physical increment \(\delta=\eta+\nu\), the second-order term of \(\sum_i y_if_i(x-\delta_{:,i})\) is bounded in absolute value by

\[
\begin{aligned}
\mathcal Q(y)={}&\frac{a^2}{2}\sum_{j,k>0}|(H_{xx})_{jk}|
+a\rho\sum_{j>0}\|(H_{xT})_{j,:}\|_2
+\frac{\rho^2}{2}\|H_{TT}\|_{\rm op}\\
&+n\rho\|P_N\mathcal HT\|_F
+an\sum_{j>0}\|P_N\mathcal HE_j\|_2
+\frac{n^2}{2}\|\mathcal H\|_{\rm op}.
\end{aligned}
\]

Here \(E_j\) is the 36-component vector that inserts coordinate \(j\) of the shared ray displacement into each of the six columns. The zeroth coordinate of the original box displacement is zero. The invariance \(H_i\mathbf1=0\) permits this box displacement to replace its mean-free version in every occurrence of \(x\), which justifies the sums over \(j,k>0\).

The checker upper-bounds \(\|H_{TT}\|_{\rm op}\) by the smaller of its Frobenius norm and its maximal absolute row sum. It bounds \(\|\mathcal H\|_{\rm op}\) by the smaller of the maximal block Frobenius norm and the maximal absolute block row sum. These bounds are valid for symmetric matrices, including indefinite matrices and witnesses with mixed signs.

## 4. Projection identities used in the checker

Put \(A_i=y_iH_iT_i\), so \(\sum_iA_i=H_{xT}\) and \(T^T\mathcal HT=H_{TT}\). Because each \(H_i\) annihilates constants, horizontal projection only subtracts the mean across columns. Therefore

\[
\boxed{
\|P_N\mathcal HT\|_F^2
=\sum_i\|A_i\|_F^2-\frac16\|H_{xT}\|_F^2-\|H_{TT}\|_F^2.}
\]

Similarly,

\[
\boxed{
\|P_N\mathcal HE_j\|_2^2
=\sum_i\|y_iH_ie_j\|_2^2
-\frac16\|H_{xx}e_j\|_2^2
-\|(H_{xT})_{j,:}\|_2^2.}
\]

These are identities, not estimates of cancellation between floating-point norms. The exact checker evaluates the entire right side with outward integer intervals. For the square root it may replace a negative lower endpoint by zero, since the quantity is a squared norm; it retains the outward upper endpoint.

## 5. Cubic remainder

For a centered six-vector \(t\),

\[
\sum_{j<k}(t_j-t_k)^2=6\|t\|^2,
\qquad\sum_{j<k}(t_j-t_k)^4\le8\|t\|^4.
\]

Expanding the pairwise phase terms in \(f_i\) through degree two gives

\[
|R_{3,i}|\le\frac1{36}\sum_{j<k}|t_j-t_k|^3.
\]

There are two useful bounds. First, for \(t=x-\delta_{:,i}\),

\[
\max_{j,k}|t_j-t_k|\le2a+\sqrt2r.
\]

Second, Cauchy--Schwarz with the two displayed pair-difference moments gives

\[
\sum_{j<k}|t_j-t_k|^3\le4\sqrt3\|t\|^3.
\]

Since \(\|t\|\le X+r\), where \(X=\sqrt{29/6}\,a\), the total weighted cubic remainder is bounded by

\[
\boxed{
\mathcal R_3(y)\le
\min\left\{\frac{2a+\sqrt2r}{6},
\frac{\sqrt3}{9}(X+r)\right\}
\mathcal B(y),}
\]

\[
\mathcal B(y)=
\|y\|_1X^2
+2X\min\{\|y\|_2\rho,\|y\|_1r\}
+\min\{\|y\|_\infty\rho^2,\|y\|_1r^2\}.
\]

The Frobenius bound \(\rho\) is used whenever a remainder sums over columns. No per-column radius is incorrectly substituted for it.

## 6. The new rejection inequality

Every feasible vector in the bin satisfies

\[
\boxed{
|y\cdot c|\le
 a\sum_{j>0}|(J^Ty)_j|+\Lambda(C)
 +\mathcal Q(y)+\mathcal R_3(y).}
\]

A strict reverse inequality rejects the entire closed bin. Certificate code 15 stores a rational witness \(y\) with denominator \(2^{20}\). The checker regenerates the complete midpoint Hessian and all the quantities above with directed integer intervals; it does not trust a stored norm, eigenvalue, or numerical margin.

This collected expansion preserves the cancellation inside the second derivative of the squared modulus. The previous separate exponential and squared-increment bounds remain available as additional rejection tests, but they are no longer the only control of the physical quadratic terms.

## 7. Cover data and replay contract

The radius-\(3/10\) discovery data use the 48 quantized centers of denominator 12288, with phase radii \(277/500=0.554\) for the first 12 labels and \(63/125=0.504\) for the remaining 36. The extended graph certificate uses the corresponding exact centers with radii \(111/200=0.555\) and \(101/200=0.505\), and independently proves that the quantization costs less than \(1/1000\) in mean-free phase norm.

The finite proof data contain:

| Resolution | Nodes | Label-covered | Subdivided |
|---:|---:|---:|---:|
| 12 | 248,832 | 0 | 40,944 |
| 24 | 1,310,208 | 360 | 13,164 |
| 48 | 421,248 | 84,840 | 4,364 |
| 96 | 139,648 | 116,296 | 0 |

Every remaining node is rejected by a replayed necessary inequality. Total nodes: 2,119,936. There are 98,644 code-15 witnesses. **CERTIFIED PASS.** The complete exact replay checked all 2,119,936 nodes and all 98,644 code-15 witnesses, with zero unfinished leaves, in 653.9 seconds in the present environment. The result is recorded in `cover_data/replay_receipt.json`. Numerical generation of the proof data is not itself used as evidence of validity.

The checker requires only the Python standard library and is invoked with `python3 -I verify_cover.py`. Its `cover_data` directory must be beside it. Arithmetic is directed at integer scale \(2^{48}\), with rigorous Machin/Taylor trigonometric tables. Every claimed rejection, every label containment, the complete set of 32 children at each subdivision, and the absence of unfinished leaves are checked explicitly.

A complete combined replay must also establish the geometric input in Section 1, replay the extended label graph, and compare its ordered quantized centers against those used by this cover. The larger-radius graph conclusion concerns **two additional orthonormal bases**. The stronger radius-\(0.15\) no-one-additional-ray conclusion must not be inferred for radius \(0.30\) from this extended graph.


## 8. Quartet exclusion supplied by the extended graph

The separate exact extended-graph certificate proves that, for the exact 48-center phase balls of radii 0.555 and 0.505, two orthonormal bases drawn from those balls have a cross transition probability at most 1/6 minus 1/1000. It checks every admissible pair of six-label orthogonality cliques, including overlapping label sets. Accordingly, after the complete cover above and the center-list equality check, any two additional orthonormal bases unbiased to the standard and Fourier-near bases fail mutual unbiasedness.

This is the exact logical configuration required to negate `QuartetEdge H`: one genuine third basis is allowed, while two further mutually unbiased bases are excluded. It proves a closed phase quotient radius of 3/10 when combined with the separately verified geometry and extended graph. This report makes no claim that 3/10 is the maximal possible exclusion radius.
