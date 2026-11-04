# A whole-pattern annulus certificate for one unresolved pattern of ball 815

## 1. What is proved

Let the first transition range over the entire supplied enclosure of H in
`815_6_17_43_30_37.json`, and let the six columns of the proposed second transition
range over the supplied phase balls with colours

\[
(9,15,23,25,43,51).
\]

**There is no mutually unbiased completing basis in this pattern.** The proof
uses one certificate for the original cell. It does not subdivide the four
coordinates of that cell, construct individual-column tube trees, or enumerate
tuples of column tubes.

The proof has two steps.

1. Every putative completion in the six wide phase balls would have its centered
   phase matrix within **0.009990101** in Frobenius norm of one explicitly recorded
   phase matrix. Its initial enclosing radius is larger than **0.8445**.
2. A scalar functional of the joint residual is strictly positive throughout the
   smaller cylinder, with certified lower margin
   \[
   0.0002305749698.
   \]
   Hence that cylinder contains no completion.

The center is an explicit rational-phase numerical proposal, not an asserted
exact family triple. No existence assertion about that center is used. The first
step really bridges the phase-width gap for this pattern, and the second step
excludes it without invoking the uniform family tube.

This is a local certificate for **one pattern**, not a whole-cell cover or an
arbitrary-completion theorem over the original ball. The claim is conditional on
the supplied enclosure of H and the colour enclosures being valid. It does not
replay the local tests (Stage C in the code), the enclosure itself (claim C1 in the
code), the chart reconstruction, or the complete-pattern enumeration.
Those dependencies are exactly the interface required to install the witness
in the existing whole-cell checker. There are no assumptions about the values
or success of the supplied numerical probes.

The executable verification consists of `check_815.py`, `certificate_815.json`,
and the original JSON record of the pattern. A 160-bit Arb run took approximately 9 seconds.
The resulting receipt is `receipt_815.json`.

## 2. Residuals, gauges and coordinates

All transition matrices below have unit-modulus entries, and the corresponding
unitary bases are divided by \(\sqrt6\). Write

\[
H_{ra}=e^{iq_{ra}},\qquad K_{rb}=e^{iy_{rb}}.
\]

Let \(F(q,y)\in\mathbb R^{66}\) consist of:

- the real and imaginary parts of \((K^\dagger K)_{ab}\), for \(a<b\), giving 30 real
  components,
- \(|(H^\dagger K)_{ab}|^2/6-1\), giving 36 real components.

Every physical completion is a zero of \(F\). Removing the independent mean
phase of each column does not change its zero set. The proof therefore uses the exact
Helmert injection \(E:\mathbb R^{30}\to\mathbb R^{36}\), comprising six copies
of the six-by-five matrix

\[
W_{rj}=\begin{cases}
1/\sqrt{(j+1)(j+2)},&0\le r\le j,\\
-(j+1)/\sqrt{(j+1)(j+2)},&r=j+1,\\
0,&r>j+1,
\end{cases}
\quad j=0,\dots,4.
\]

Thus \(E^TE=I\) and its image is the space of column-centered phases.

The witness records a phase matrix \(y_*\), a real invertible 30-by-30 matrix
\(T\), and a real 30-by-66 matrix \(B\). Their binary64 hexadecimal entries are
interpreted as exact dyadic rationals. The checker centers the columns of
\(y_*\) exactly. No numerical singular value decomposition is trusted.

Use coordinates

\[
y-y_*=ETz,\qquad z=(s,w)\in\mathbb R^{28}\oplus\mathbb R^2,
\quad S=\|s\|,\quad W=\|w\|.
\]

The names “strong” and “weak” are explanatory only: the proof requires just the
validated matrices and bounds. In particular \(T\) is not silently assumed to
be orthogonal. Arb verifies

\[
\|T\|,\ \|T^{-1}\|<1.00001002.
\]

The source phase balls therefore imply the enclosing coordinate radius

\[
\|z\|<0.844530408.
\]

## 3. Explicit handling of the whole H cell

The given enclosure is

\[
q=Q_0+Uu+\tfrac12H_2(u\otimes u)+X\xi,
\quad\|u\|\le r,\quad\|\xi\|\le\tau.
\]

Let \(q_*\) be the exact dyadic phase matrix recorded in the witness. The small
rounding/enclosure difference \(Q_0-q_*\) is included. Define

\[
e_H=\|Q_0-q_*\|+\tfrac12\|H_2\|r^2+\|X\|\tau,
\qquad D=\|U\|r+e_H.
\]

All norms use outward upper bounds. The verifier proves

\[
D<0.003206464006.
\]

The following operator norm bounds are certified by positive definiteness of
\(b^2I-A^TA\), or \(b^2I-AA^T\), using outward LDL factorization.

| Matrix | Certified upper bound |
|---|---:|
| \(T,T^{-1},X\) | 1.00001002 |
| \(U\) | 1.02403781 |
| \(H_2\) | 1.29679242 |
| \(B_s\) | 0.79612996 |
| \(B_w\) | 12.02017896 |
| \(B_sF_H(q_*,y_*)\) | 1.40985558 |
| \(B_wF_H(q_*,y_*)\) | 1.23628760 |
| \(B_sF_H(q_*,y_*)U\) | 0.15971239 |
| \(B_wF_H(q_*,y_*)U\) | 0.03175915 |

Here \(B_s\) and \(B_w\) are respectively the first 28 and final two rows of
\(B\). The particularly small last bound matters: replacing the recorded
four-dimensional H motion by an isotropic phase ball before applying the
preconditioner would lose it.

### Universal derivative bounds

For the residual convention above, at every phase point,

\[
\|F_{HH}\|\le2\sqrt6,\qquad
\|F_{HK}\|\le2,\qquad
\|F_{KK}\|\le6. \tag{1}
\]

These are the bounds used in the supplied localization proof, but they do not
require the reference point to solve the equations. To check them directly,
write each mixed residual as

\[
\frac13\sum_{r<t}\cos(-q_{ra}+y_{rb}+q_{ta}-y_{tb}).
\]

For two row directions \(d,e\), its second derivative has absolute value at
most

\[
\frac13\sum_{r<t}|d_r-d_t||e_r-e_t|
\le 2\|d\|\|e\|.
\]

Summing squares over the six K-column indices that share one H column gives
\(2\sqrt6\). For one H and one K direction the sum over these indices factorizes and
gives 2. For a K-overlap component, the Hessian is a sum of products of the two
column-difference directions. Cauchy--Schwarz gives a squared bound of 12 for
the entire real/imaginary overlap vector: use
\(\max_{a<b}\|z_a-z_b\|^2\le2\|z\|^2\) and
\(\sum_{a<b}\|z_a-z_b\|^2\le6\|z\|^2\).
Combining this with the mixed contribution 24 gives \(\sqrt{12+24}=6\).

## 4. A general anisotropic annulus lemma

Put

\[
G(z)=BF(q_*,y_*+ETz).
\]

Let \(G_s,G_w\) be its two output blocks, and let \(L=DG(0)-I\). For each
block \(a\in\{s,w\}\), define

\[
\eta_a=\|B_aF(q_*,y_*)\|
 +r\|B_aF_H(q_*,y_*)U\|
 +e_H\|B_aF_H(q_*,y_*)\|
 +\sqrt6\|B_a\|D^2,
\]

\[
\beta_a=\|L_a\|+2\|B_a\|D\|T\|.
\]

Suppose nonnegative functions \(P_a(S,W)\) bound the nonlinear remainder
\(G_a(z)-G_a(0)-(DG(0)z)_a\). Every zero of the full residual in the H cell then
satisfies

\[
\boxed{
S\le\eta_s+\beta_s\sqrt{S^2+W^2}+P_s(S,W),\qquad
W\le\eta_w+\beta_w\sqrt{S^2+W^2}+P_w(S,W).
} \tag{2}
\]

**Proof.** Taylor expansion in H at \((q_*,y_*)\), followed by the mixed
variation along the segment from \(y_*\) to \(y\), gives

\[
\begin{aligned}
\|B_a(F(q,y)-F(q_*,y))\|
\le{}&r\|B_aF_HU\|+e_H\|B_aF_H\|\\
&+\sqrt6\|B_a\|D^2
 +2\|B_a\|D\|ETz\|.
\end{aligned}
\]

At a zero, subtract the identity linear term from \(BF(q_*,y)\), use
\(\|ETz\|\le\|T\|\|z\|\), and take the two block norms. This proves (2).
No injectivity assumption, root existence assertion, or initial near-K
hypothesis was used. ∎

For this witness the verified constants satisfy

\[
\begin{array}{ll}
\eta_s<0.000528097858,&\beta_s<0.005105575279,\\
\eta_w<0.000409820498,&\beta_w<0.077085314741.
\end{array} \tag{3}
\]

## 5. Sharp Taylor bounds without enormous tensors

### Exact Fourier compression

At fixed \(q_*\), every component of \(G\) is a trigonometric polynomial of
linear functions of \(z\). It has the exact representation

\[
G(z)=\sum_{\ell=1}^{180}
\{c_\ell\cos(a_\ell\cdot z)+d_\ell\sin(a_\ell\cdot z)\}. \tag{4}
\]

There are 90 overlap ridges, one per unordered pair of K columns and row. There
are 90 mixed ridges, one per K column and unordered pair of rows. The six H
column indices in a mixed ridge have the same linear K phase and are summed
into its coefficient. This compression is exact, not a truncation.

Write \(a_\ell=(a_{\ell,s},a_{\ell,w})\). The order-\(n\) derivative tensor
with \(n-k\) strong arguments and \(k\) weak arguments is

\[
\mathcal T_{a,n,k}
=\sum_\ell v_{a,n,\ell}\otimes
 a_{\ell,s}^{\otimes(n-k)}\otimes a_{\ell,w}^{\otimes k},
\]

where \(v_n\) cycles through \(c,d,-c,-d\) with \(n\bmod4\).
For every \(2\le n\le8\) and \(0\le k\le n\), the witness supplies an upper
bound \(h_{a,n,k}\) for this tensor's multilinear norm.

### Gram certificates for the tensor norms

A multilinear tensor norm is bounded by the operator norm of any matrix
flattening. Let

\[
K_s(\ell,m)=a_{\ell,s}\cdot a_{m,s},\qquad
K_w(\ell,m)=a_{\ell,w}\cdot a_{m,w},
\]

and put the coefficient vectors \(v_{a,n,\ell}\) in the columns of \(V\).
The Gram matrix of the output flattening is

\[
V\,[K_s^{\circ(n-k)}\circ K_w^{\circ k}]\,V^T. \tag{5}
\]

If a strong input is used as the row axis, its Gram matrix is

\[
A_s^T[(V^TV)\circ K_s^{\circ(n-k-1)}\circ K_w^{\circ k}]A_s. \tag{6}
\]

The weak-axis formula is analogous. Here powers and \(\circ\) are entrywise,
and the rows of \(A_s,A_w\) are the corresponding feature vectors.

The checker rebuilds the selected Gram matrix in Arb and proves
\(h^2I-\mathrm{Gram}>0\) by LDL. There are **84** such certificates. Their
matrices have at most 28 rows, even for eighth-order derivatives. The 84 exact
rational upper bounds, together with their selected flattenings, are explicitly
listed under `tensors` in `certificate_815.json`.

### Rigorous ninth-order tail

For \(S,W\ge0\), set

\[
u_\ell=\|a_{\ell,s}\|S+\|a_{\ell,w}\|W.
\]

For output component \(i\), the ninth-order remainder of ridge \(\ell\) has
absolute value at most

\[
\sqrt{c_{i\ell}^2+d_{i\ell}^2}\,u_\ell^9/9!.
\]

This follows directly from the scalar Taylor theorem: every derivative of
\(c\cos t+d\sin t\) has magnitude at most \(\sqrt{c^2+d^2}\). Thus a valid
block remainder is

\[
R_a(S,W)=
\left[\sum_{i\in a}
 \left(\sum_\ell\sqrt{c_{i\ell}^2+d_{i\ell}^2}\,u_\ell^9/9!\right)^2
\right]^{1/2}.
\]

The function used in (2) is

\[
\boxed{
P_a(S,W)=\sum_{n=2}^{8}\sum_{k=0}^{n}
\frac{h_{a,n,k}}{(n-k)!\,k!}S^{n-k}W^k+R_a(S,W).
} \tag{7}
\]

Every coefficient in (7) is nonnegative, so the function is increasing in both
nonnegative arguments. The degree-eight expansion is used only in a rigorous
upper bound, and the ninth-order tail is retained.

## 6. The six colour balls give a much sharper weak-radius bound

The product geometry of the six column balls is indispensable. Replacing them
by one enclosing ball loses the successful certificate.

In Helmert coordinates, write the six balls as

\[
\|x_j-d_j\|\le r_j,\quad j=0,\dots,5,\qquad x=Tz.
\]

The checker constructs their exact centers \(d_j\) and enlarges their radii
outward to include the printed Arb enclosure errors.

Let \(n\in\mathbb R^2\) have unit norm and choose any
\(p\in\mathbb R^{28}\). Define

\[
a=T^{-T}(-p,n).
\]

Then

\[
\begin{aligned}
n\cdot w
&=a\cdot x+p\cdot s\\
&\le a\cdot d+\sum_jr_j\|a_j\|+\|p\|S.
\end{aligned} \tag{8}
\]

This bound is valid for every chosen \(p\), so no numerical optimizer needs to
be trusted. The numerical optimizer merely proposes useful vectors.

Use the exact 64 directions

\[
n_j=(\cos(2\pi j/64),\sin(2\pi j/64)).
\]

For every nonzero \(w\), at least one of these directions makes an angle at
most \(\pi/64\) with it. If the corresponding right sides of (8) are
\(a_j+b_jS\), then

\[
\boxed{W\le\frac{\max_j(a_j+b_jS)}{\cos(\pi/64)}.} \tag{9}
\]

The witness provides six independent sets of these 64 dual proposals. The
minimum of the six valid upper bounds is again valid. All direction vectors,
support coefficients, and the cosine denominator are recomputed in Arb.
As an indication of the gain, the numerical design bound at \(S=0.087\) is
about 0.61783, and the coarse enclosing-ball bound is about 0.704. The acceptance
path uses (8)--(9) afresh, not these rounded illustrative values.

## 7. Exhaustive annulus verification

Starting from the square \([0,R]^2\), where \(R\) is the verified initial
coordinate radius, the checker splits only the two **norm variables** \(S,W\).
This is neither an H-cell tree nor a K-phase tree.

A closed rectangle \([S_-,S_+]\times[W_-,W_+]\) is discharged by one of:

1. \(S_-^2+W_-^2>R^2\),
2. \(W_-\) exceeds the valid colour support upper bound at \(S_+\),
3. \(S_-\) exceeds the first right side of (2) evaluated at \((S_+,W_+)\),
4. \(W_-\) exceeds the second right side of (2) evaluated there,
5. \(S_+^2+W_+^2<(0.00999)^2\).

Monotonicity of the right sides proves the validity of tests 2--4. The splits
are closed midpoint bisections, so every boundary is retained. Unresolved
rectangles cause failure, and there is no numerical acceptance at the depth limit.

The verified run used **247 nodes, 124 leaves, and maximum depth 14**:

| Discharge | Leaves |
|---|---:|
| Outside the initial ball | 12 |
| Strong residual inequality | 82 |
| Outside the product of colour balls | 12 |
| Weak residual inequality | 17 |
| Inside the target ball | 1 |

Consequently every putative zero obeys

\[
\|z\|<0.00999,
\qquad
\|y-y_*\|<1.00001002\times0.00999
=0.0099901000998<1/100. \tag{10}
\]

## 8. A positive separating residual finishes the exclusion

The witness gives an exact dyadic vector \(\nu\in\mathbb R^{66}\). Define
\(J_H=F_H(q_*,y_*)\) and \(J_z=D_zF(q_*,y_*+ETz)|_{z=0}\).
For every point satisfying the H enclosure and \(\|z\|\le t=0.00999\), (1)
implies

\[
\begin{aligned}
\nu^TF(q,y)\ge{}&\nu^TF(q_*,y_*)
-r\|\nu^TJ_HU\|-e_H\|\nu^TJ_H\|
-t\|\nu^TJ_z\|\\
&-\|\nu\|\{
\sqrt6D^2+2D\|T\|t+3\|T\|^2t^2\}.
\end{aligned} \tag{11}
\]

The verifier evaluates the right side directly, with no assumed normalization
of \(\nu\). It obtains

\[
\boxed{\nu^TF(q,y)>0.0002305749698>0.}
\]

Since every completion has \(F=0\), this contradicts (10). The supplied
pattern is empty. ∎

## 9. Reproduction and integration

From the package that holds `joint/` and `source/`, with `python-flint` installed, run

```bash
python joint/check_815.py \
  --input source/TC_tail_20261101/data/blocking_cells/815_6_17_43_30_37.json \
  --proposal joint/certificate_815.json \
  --output joint/receipt_815.json
```

Adjust the source path to where that data is unpacked. The checker requires only
`python-flint` and the Python standard library. Search scripts in this directory
use NumPy/SciPy, but are not part of the acceptance path.

The proposed production hook is a single pattern witness containing the
preconditioner, reference phases, tensor norm bounds, and support duals. It must
be run after the production checker rebuilds and binds the same enclosure and
six colour balls. It can then replace the per-column trees and joint tuple
search for this pattern. It cannot stand in for the other 1,023 patterns listed
in the source cell's cover. This result therefore demonstrates an inexpensive
whole-pattern bridge, with an actual successful Arb replay, but does not by
itself quantify the reduction in the complete 815 tree or prove a whole-ball
classification theorem.
