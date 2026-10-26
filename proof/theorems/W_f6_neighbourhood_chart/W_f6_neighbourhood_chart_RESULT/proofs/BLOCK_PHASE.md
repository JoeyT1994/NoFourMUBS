# Certified lower-right phase remainder on the full chart domain

**CERTIFIED.** Throughout the radius-\(1/5\) horizontal tangent ellipsoid in `CHART_CERTIFICATE.md`, every lower-right entry has

\[
\boxed{\left|H_{ij}(p)-F_{6,ij}e^{iV_{ij}(p)}\right|<\frac{109}{500}=0.218,
\qquad 3\le i,j\le5.}
\]

Here \(V\) is the original dephased tangent phase matrix,

\[
V_{ij}=\mathbf1_{i\ {\rm odd}}f(j\bmod3)
      +\mathbf1_{j\ {\rm odd}}g(i\bmod3),
\quad f=(0,a,b),\quad g=(0,c,d).
\]

Consequently, for the continuous phase lift equal to the Fourier phase at the origin,

\[
\boxed{|Q_{ij}(p)-P_{F,ij}-V_{ij}(p)|<\frac{11}{50}=0.22
\quad(3\le i,j\le5).}
\]

The corresponding bound for every entry outside the lower-right block is \(153/10000=0.0153\), directly from the side-system certificate; many of these entries have exactly zero remainder.

## Replay

From this proofs directory, run `python3 -I ../scripts/verify_block_phase.py`. The script uses the standard library, regenerates the cubic predictor, and proves all new inequalities with exact rational / \(\mathbb Q(\sqrt3)\) arithmetic. It writes `../certificates/block_phase.json`. Its dependence on the previously verified tube is explicit: `../scripts/verify_chart.py` should also be replayed. Runtime for this additional step is about two seconds.

## Proof

Let \(D_{\rm tan}=F_{6,[3:6],[3:6]}\circ e^{iV_{[3:6],[3:6]}}\), and write

\[
R=CE^*+D_{\rm tan}B^*,\qquad W=(B^*)^{-1}.
\]

Since \(D_{\rm block}=-CE^*W\),

\[
D_{\rm block}-D_{\rm tan}=-RW.
\]

Each entry of \(R\) is a sum of six unit-modulus exponentials. Replace the side phase solutions by their certified cubic predictors. The verifier expands these six exponentials through total degree six in \(z\), checks that the constant and linear coefficients cancel exactly, and bounds the remaining homogeneous tensors and exponential remainders using precisely the methods described in `CHART_CERTIFICATE.md`.

The vertical predictor is the horizontal one under
\((z_1,z_2,z_3,z_4)\mapsto(z_3,z_4,z_1,z_2)\). The normal-seed cubic predictor is invariant under this swap, which is checked exactly.

The effects of the actual tube errors are bounded using \(|e^{is}-e^{it}|\le|s-t|\). If \(w\) is the seven-component tube vector and the bottom row is indexed by \(i=3,4,5\), the residual perturbation is bounded by

\[
\begin{aligned}
e_{i0}&=w_{1+i-3}+w_{4+i-3},\\
e_{i1}&=e_{i0}+w_1+w_2+w_3,\\
e_{i2}&=e_{i0}+w_4+w_5+w_6+w_0.
\end{aligned}
\]

The resulting exact bounds are smaller than the following displayed decimal upper bounds:

| Bottom row | \(|R_{i0}|\) | \(|R_{i1}|\) | \(|R_{i2}|\) | \(\|R_{i,:}\|_2\) |
|---|---:|---:|---:|---:|
| 3 | 0.012567 | 0.027848 | 0.043245 | 0.052948 |
| 4 | 0.016636 | 0.018246 | 0.024887 | 0.035057 |
| 5 | 0.023597 | 0.020830 | 0.032000 | 0.044885 |

For each column of \(W\),

\[
\|W_{:,j}\|_2^2=(W^*W)_{jj}=((B^*B)^{-1})_{jj}.
\]

Because every column of \(B\) has squared norm three, the appropriate principal two-by-two Gram determinant is at most nine. Thus

\[
\|W_{:,j}\|_2\le\frac3{|\det B|}.
\]

Using the previously certified determinant lower bound exceeding \(0.7293286034\), the three rowwise uniform chord bounds are respectively smaller than

\[
0.217793,\qquad0.144201,\qquad0.184628.
\]

The exact verifier compares its unrounded rational bounds to \(109/500\), and all pass.

For two unit-modulus complex numbers with principal phase difference \(\theta\), the chord length is \(2|\sin(\theta/2)|\). The rational inequality

\[
2\sin(11/100)\ge2\left(\frac{11}{100}-\frac{(11/100)^3}{6}\right)
>\frac{109}{500}
\]

therefore proves \(|\theta|<11/50\). Since the chord bound is everywhere strictly less than two, the principal phase error varies continuously. It is zero at the origin, so it agrees with the continuous phase lift across the connected ellipsoid.
