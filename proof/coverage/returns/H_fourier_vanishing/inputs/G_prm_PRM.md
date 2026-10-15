# PR-M: necessity from two completions of a half-Hadamard strip

Date: 2026-10-14. All matrices in this note are unnormalized: a phase Hadamard of order six satisfies `H H* = 6 I`.

## 0. Results and scope

The new argument uses the handoff's independently proved side-existence and **uniform, any-side matched-flatness** theorems. It does not use the classification paper's affine-minus necessity, generic-density argument, global product-regular escape, or classification of nonmatched exceptions.

**Theorem A — strict nonmatched converse (G2).** Let

\[
H=\begin{pmatrix}E&B\\ C&D\end{pmatrix},\qquad
E=\begin{pmatrix}1&1&1\\1&a&b\\1&c&d\end{pmatrix}
\]

be a dephased phase Hadamard, and suppose that the corner invariant satisfies `R(E)>0`. If the signatures of `B` and `C` are not conjugate, then `H` is monomially equivalent to the explicit Tao matrix in §5.3. This includes every strict seed, both sheet orientations, and failures of product-regular guards.

**Theorem B — guarded PR-M (G1).** On the physical, guarded product-regular locus with `omega_n<0`, a pairing whose forced block is flat must satisfy

\[
 m=\frac{U_v-\kappa(2u-U_h)}2,
 \qquad \kappa=\frac{\delta_v f_{6,h}}{\delta_h f_{6,v}}.
\tag{0.1}
\]

Consequently the plus-pairing norm remainder cannot be zero as an element of the specialized vertical coordinate algebra. At `omega_n=0`, the two affine prescriptions coincide; no exclusion of the coincident prescription is asserted.

**Theorem C — exact reach and density (G3).** Combining Theorem A with the handoff's independently proved critical-strip results gives `MatchedExactReach`, and hence the exact supplied statement `MatchedDensityReach`. The complete import list and the deduction, including replacements for the two elementary Fourier-algebra imports in the old coverage proof, are in §§1 and 7.

The decisive new reduction is:

> A strict nonmatched completion, compared with a matched completion having the **same three top rows**, produces a linear dependence among six rank-one coordinate effects. Complementary rank-three projections turn this dependence into a bipartition of the six columns into two orthogonal triples.

Thus the carrier contains a `3 x 3` Hadamard block. Such carriers are classified here by an elementary three-point Fourier calculation and an exact 81-case census. The continuous Fourier cases are eliminated by 400 Laurent identities, not by sampling.

These are paper proofs with exact algebraic certificates. No Lean port of the new geometric lemmas is claimed.

## 1. Exact import boundary

Paths below are relative to the supplied `reference/` directory. `imports.json` pins the exact bytes of these inputs. A byte hash records provenance; it is not a proof check.

### Inputs used by Theorem A

**I1.** `coverage/returns/F_side_existence/SIDE_EXISTENCE.md`, **§1, “The precise theorem,” equations (1)–(3)**: for either strict Gram datum and each root `z`, an actual normalized phase side with that Gram and signature `g z` exists.

**I2.** `coverage/returns/E_matched_flatness/FLATNESS.md`, **Theorem 1, “uniform matched flatness”**: for **any** actual sides `B,V` on conjugate roots, the forced block `D = -V^T E* G_h^{-1} B` is flat. In particular the existing horizontal side can be kept fixed. Merely knowing that some matched carrier exists would not, without a further side-fibre argument, justify this step.

**I3.** The same `FLATNESS.md`, **§2, “All divisors are valid throughout the strict domain,” and §3, “Actual-side formulas needed by both proofs”**: the strict-domain positivity, the actual-side invariant identities, and the three formulas for `lambda_j`. Their Laurent identities are checked by that return's `verify_structural.py`. We use only the explicit consequences recorded in §2 below, not an unproved assertion about side uniqueness.

The new proof does **not** import L2, `NONMATCHED_EXCEPTIONS.md`, `MATCHED_FLATNESS.md`'s old flatness theorem, or any global classification theorem. The coefficient formulas copied for §6 are definitions checked by new exact expansion, not theorem imports.

### Additional inputs used only for Theorem C

**I4.** `MinimalConstruction/Proofs/CRITICAL_STRIP_CLASSIFICATION.md`, **Theorem**: the listed scalar classification of an all-critical strip whose twenty blocks are invertible.

**I5.** `MinimalConstruction/Proofs/CRITICAL_P7_EXCLUSION.md`, **opening proved assertion**, and `CRITICAL_EQUI_CORRELATION_EXCLUSION.md`, **Theorem**: the two rational nonzero-`J` endpoints cannot occur in an all-critical carrier.

**I6.** `MinimalConstruction/Proofs/CRITICAL_CORNER_REDUCTION.md`, **§ “A sum rule that applies to every fixed row triple,” equation (7)**: the sum of `p` over the twenty three-column corners of a complete three-row strip is `108`.

**I7.** `MinimalConstruction/Proofs/FOURIER_CRITICAL_LOCUS.md`, **the opening Fourier-family theorem and the exact finite proof**: an all-critical member of the Fourier family or its transpose is equivalent to `F6`.

The two Fourier-routing lemmas needed with I4–I7 are proved again in §7.1. In particular, the references in the old `FOURIER_ROUTING.md` to the classification paper's normal form and two-product equations are replaced by §5 of this note. The resulting coverage deduction is the argument in `STRICT_CORNER_COVERAGE.md`, Theorem MC1, now with this explicit import boundary.

**I8, only for identifying the Lean endpoint.** `lean/NoFourMUBs/Step2/Statements.lean`, definitions `MatchedExactReach`, `MatchedDensityReach`, and theorem `exactReach_implies_densityReach`. The set-theoretic deduction is also given directly in §7.3.

The new verifier does not replay the entire I1–I7 proof corpus. It does replay the supplied I3 structural identity verifier, retained byte-for-byte under `vendor/`. The remaining supplied mathematical inputs are explicitly separated from the new certificates.

## 2. Strict side fibres are finite

Write either side Gram as

\[
G=\begin{pmatrix}3&\bar s&\bar t\\s&3&\bar r\\t&r&3\end{pmatrix}.
\]

Put `X=|s|^2`, `Y=|t|^2`, `Z=|r|^2`, `p=X+Y+Z`, and

\[
\begin{aligned}
 J&=sr\bar t+\bar s\bar r t,\\
 g&=27-3p+J, &\eta&=9-p+J,\\
 \chi&=XY+XZ+YZ-XYZ-(p-9)(p-18)+(p-15)J,\\
 R&=4g^2\eta-\chi^2.
\end{aligned}
\]

The horizontal and vertical values agree. By I3, strictness gives `g>0`, `eta>0`, and

\[
\begin{aligned}
P_0&=rs^2+\bar r t^2+(3-Z)st,\\
P_1&=t\bar s^2+r^2\bar t+(3-Y)r\bar s,\\
P_2&=s\bar t^2+\bar r^2\bar s+(3-X)\bar r\bar t,\\
(c_0,c_1,c_2)&=(9-Z,9-Y,9-X),\\
|P_j|^2&=g^2+c_j\chi+c_j^2\eta
       =\frac{(2\eta c_j+\chi)^2+R}{4\eta}>0.
\end{aligned}
\tag{2.1}
\]

For an actual normalized phase side `A=(1;x;y)`, define

\[
\Psi(A)=\frac{\operatorname{perm}(A)\det(A)^2}{\prod_{ij}A_{ij}},
\qquad \Theta(A)=-\Psi(A)/g.
\]

Its possible values are precisely among the two distinct roots

\[
z_\pm=\frac{\chi\pm i\sqrt R}{2g}.
\tag{2.2}
\]

At fixed `G,z`, I3 determines

\[
\lambda_j=\frac{g+c_j\bar z}{\bar P_j},\qquad
U=\prod_jx_j=\lambda_0\bar\lambda_1,\qquad
V=\prod_jy_j=\lambda_0\bar\lambda_2.
\tag{2.3}
\]

The multisets of the `x` and `y` coordinates are the root multisets of the two cubics (with polynomial variable `q`)

\[
 q^3-sq^2+U\bar s q-U,
 \qquad q^3-tq^2+V\bar t q-V.
\tag{2.4}
\]

Indeed the second elementary symmetric function of three unit numbers is their product times the conjugate of their sum. Each multiset has at most six orderings. Consequently each `z` permits at most `36` normalized sides, and the complete normalized fibre at fixed strict `G` has at most `72` members. Repeated roots do not affect finiteness.

This is all the side rigidity needed below; no global parameterization or exact orbit uniqueness is assumed.

## 3. Different strict sheets cannot share a column

**Lemma 3.1 (two-column alternative).** Fix the Gram matrix of two normalized phase columns

\[
 (1,x_1,y_1)^T,\quad(1,x_2,y_2)^T.
\]

Either their unordered pair is uniquely determined, or there are infinitely many unordered pairs with that Gram.

**Proof.** The Gram determines

\[
s_2=x_1+x_2,\qquad t_2=y_1+y_2,
\qquad r_2=y_1\bar x_1+y_2\bar x_2.
\]

If `s_2,t_2` are nonzero, the unordered `x` pair is determined by sum `s_2` and product `s_2/bar(s_2)`; similarly for `y`. There are only two pairings, and their correlations differ by

\[
(y_1-y_2)(\bar x_1-\bar x_2).
\]

If this is nonzero, the correlation selects one pairing. If it is zero, the two pairings are the same unordered column pair.

If `s_2=0,t_2!=0`, write `x_2=-x_1`. The unordered `y` pair is fixed. When `y_1!=y_2`, the equation `r_2=(y_1-y_2)bar(x_1)` determines the pairing up to a simultaneous swap. When `y_1=y_2`, necessarily `r_2=0`, and `x_1` is a free unit phase. This gives infinitely many unordered pairs. The case `s_2!=0,t_2=0` is symmetric.

If both sums vanish, write `x_2=-x_1`, `y_2=-y_1`; the correlation fixes `y_1 bar(x_1)`. Simultaneously rotating `x_1,y_1` through the unit circle gives infinitely many unordered pairs. These cases exhaust the possibilities. ∎

**Corollary 3.2.** Two normalized sides at a fixed strict Gram that share a column are column permutations of one another. In particular sides with different `Theta` share no column.

**Proof.** Remove the common column. Their remaining two-column Gram matrices agree. The infinite alternative in Lemma 3.1 would give infinitely many normalized three-column sides after reinserting the fixed column, contrary to §2. Therefore their remaining unordered pairs agree. Column permutations preserve `Psi`, and hence `Theta`. ∎

## 4. A strict nonmatched completion forces a Fourier subblock

### 4.1 Keep the top strip fixed

Let `H` satisfy the hypotheses of Theorem A. Put `V=C^T` and let `Theta(B)=z`. Since the roots are nonreal conjugates, nonmatching means

\[
\Theta(V)=z,
\]

not a third possibility. By I1 choose an actual vertical side `V_0` with root `bar(z)`. By I2 it gives a flat completion

\[
H_0=\begin{pmatrix}E&B\\C_0&D_0\end{pmatrix},\qquad C_0=V_0^T,
\tag{4.1}
\]

with **exactly the same** top three rows `T=[E B]`.

Both matrices are dephased. A common ray between their bottom-row bases would therefore give equal bottom rows, since the first coordinate is `1` in both. Their first three coordinates would then be a common column of `V` and `V_0`, forbidden by Corollary 3.2. Thus the two bottom-row bases have no shared ray.

Interpret adjoints of rows divided by `sqrt(6)` as unit vectors. Let

\[
 Q=T^*T/6,\qquad P=I-Q,\qquad W=\operatorname{ran}P.
\]

These are complementary rank-three orthogonal projections, and

\[
 Q_{jj}=P_{jj}=1/2\quad(1\leq j\leq6).
\tag{4.2}
\]

The two sets of bottom rows give orthonormal bases `b` and `b_0` of the same three-dimensional space `W`. Every coordinate of every basis vector has squared modulus `1/6`.

### 4.2 Six coordinate effects become linearly dependent

Let `D_b,D_b0` be the real spaces of Hermitian operators diagonal in these two bases. Their intersection is exactly the scalar operators. Indeed, any nonscalar Hermitian operator in dimension three has a one-dimensional eigenspace. If diagonal in both bases, that eigenspace would be a shared basis ray.

Their traceless parts therefore have a four-dimensional direct sum. The six effects

\[
F_j=P e_j e_j^*P\big|_W
\]

are orthogonal, for the real Hilbert–Schmidt inner product, to both traceless diagonal spaces: each basis expectation is `1/6`, and `tr(F_j)=1/2`. Since the real space of Hermitian operators on `W` has dimension nine, the span of the `F_j` has dimension at most five. There is a nonzero real vector `w` with

\[
 P D_w P=0,\qquad D_w=\operatorname{diag}(w_1,\ldots,w_6).
\tag{4.3}
\]

This is an exact dimension argument about finite-dimensional linear spaces, not a dimension count on an algebraic variety or a density assumption.

### 4.3 Complementarity forces anticommutation

From `P=I-Q` and (4.2),

\[
 |P_{jk}|^2=|Q_{jk}|^2\quad\hbox{for every }j,k.
\]

For real `w`, cyclicity of trace gives

\[
\|P D_wP\|_{HS}^2
 =\sum_{jk}w_jw_k|P_{jk}|^2
 =\sum_{jk}w_jw_k|Q_{jk}|^2
 =\|Q D_wQ\|_{HS}^2.
\]

Hence `Q D_w Q=0` too. Expanding (4.3) now gives

\[
 QD_w+D_wQ=D_w,
 \qquad (w_j+w_k)Q_{jk}=0\quad(j\ne k).
\tag{4.4}
\]

Also, taking the trace of (4.3) yields `sum_j w_j=0`.

### 4.4 The column graph is connected at a strict corner

Define a graph on the six columns by joining `j,k` when `Q_jk!=0`. Each connected component supports a diagonal block of the projection `Q`; its trace equals half its number of vertices. Its size is therefore even.

A component of size two would be a rank-one Gram block and its two columns of `T` would be proportional. We next exclude even the existence of any proportional pair of columns in a strict strip.

Since the first row of `T` is all ones, proportional columns are equal, say to `v`. Their contribution `2vv*` has eigenvalue six along `v`, because `||v||^2=3`. The identity `TT*=6I` then forces each of the remaining four columns to be orthogonal to `v`. Row phase multiplication makes `v=(1,1,1)^T`. Each remaining column is a normalized phase triple with sum zero, so it is one of

\[
 f_1=(1,\omega,\omega^2)^T,
 \qquad f_2=(1,\omega^2,\omega)^T,
 \qquad \omega^2+\omega+1=0.
\]

The tight-frame identity forces exactly two copies of each of `v,f_1,f_2`. A three-column subblock `B` is consequently either singular or consists of one copy of each and satisfies `BB*=3I`.

The singular case contradicts `g>0`. In the other case its Gram has `g=27`, `eta=9`, `chi=-162`, and `R=0`, also a contradiction. Thus a strict strip has no proportional columns.

A disconnected graph on six vertices with all components even has a component of size two. Therefore this graph is connected.

### 4.5 Extract two orthogonal triples

By (4.4), a nonzero value of `w` propagates along every edge with its sign reversed. Connectedness implies all `w_j` have one common positive absolute value, with signs `+` and `-`. The zero sum gives three vertices of each sign. Vertices of the same sign have `Q_jk=0` when distinct.

The corresponding three columns of `T` are pairwise orthogonal phase columns of length `sqrt(3)`. Each sign class therefore gives a `3 x 3` phase Hadamard subblock of `H`.

**Conclusion of §4.** Every strict nonmatched completion contains an order-three Hadamard submatrix. No product guard, coordinate simplicity, continuity assumption, or sector classification has been used.

## 5. Classify the Fourier-block carriers and finish G2

### 5.1 Elementary block normalization

Every order-three phase Hadamard is equivalent to

\[
F=(\omega^{ij})_{0\leq i,j<3}.
\]

To see this, dephase it. Each noninitial row has zero sum and is a permutation of `(1,omega,omega^2)`; row orthogonality chooses the opposite orientation for the other row.

Move the subblock from §4 to the upper left and make it `F`. The other three blocks are also order-three Hadamards, by the block Gram identities of `H`. Permutations of the rows of `F` can be absorbed into column monomials: every permutation of three indices is `i -> a i+b` modulo three, and

\[
\omega^{(ai+b)j}=\omega^{bj}\omega^{i(aj)}.
\]

Thus operations only on the last three columns put the upper-right block in the form `D_v F`; independently, operations only on the last three rows put the lower-left block in the form `F D_w`. Common phases normalize

\[
v=(1,p,q),\quad w=(1,r,s),\quad
D_v=\operatorname{diag}v,\quad D_w=\operatorname{diag}w.
\]

Top–bottom orthogonality uniquely forces

\[
H(v,w)=\begin{pmatrix}
F&D_vF\\
FD_w&-\frac13FD_wF^*D_vF
\end{pmatrix}.
\tag{5.1}
\]

All four parameters are unit phases. This proves the normal form here; it is not an invocation of the classification paper.

### 5.2 Exact three-point Fourier flatness criterion

All indices in this subsection are modulo three. Define

\[
\widehat v_k=\sum_{l=0}^2v_l\omega^{kl},\qquad
A_k=\widehat v_k\overline{\widehat v_{k-1}},\qquad
\alpha_m=w_m\bar w_{m+1}=(\bar r,r\bar s,s)_m.
\]

The lower-right entry in (5.1) is

\[
D_{ij}=-\frac13\sum_m\omega^{im}w_m\widehat v_{j-m}.
\tag{5.2}
\]

For fixed `j`, let `z_m=w_m widehat(v)_{j-m}`. Parseval gives `sum_m |z_m|^2=9`. The three Fourier magnitudes of `z` are all equal to three exactly when its nonconstant autocorrelation vanishes:

\[
 \sum_mz_m\bar z_{m+1}
 =\sum_m\alpha_m A_{j-m}=0.
\]

The other nonconstant autocorrelation is its conjugate. Hence **all nine** entries of `D` are unit exactly when the cyclic convolution `alpha*A` is zero. Since `widehat(A)_0=0`, Fourier transformation gives the two equations

\[
 \widehat\alpha_1\widehat A_1=0,
 \qquad\widehat\alpha_2\widehat A_2=0.
\tag{5.3}
\]

Here, with the same positive-exponent Fourier convention,

\[
\begin{aligned}
\widehat A_1&=3(q+\omega/p+\omega^2p/q),\\
\widehat A_2&=3(p+\omega q/p+\omega^2/q),\\
\widehat\alpha_1&=1/r+\omega r/s+\omega^2s,\\
\widehat\alpha_2&=1/r+\omega^2r/s+\omega s.
\end{aligned}
\tag{5.4}
\]

The identities for `widehat(A)` are independently regenerated as Laurent polynomials by `verify_fourier.py`. Equations (5.2)–(5.3) also give the complete paper derivation of the criterion.

### 5.3 Exhaust all zero allocations

If `widehat(A)_1=widehat(A)_2=0`, then `A=0`. The three adjacent products defining `A` force at most one Fourier coefficient of `v` to be nonzero. Fourier inversion and `v_0=1` give `v=(1,omega^k,omega^{2k})`, a Fourier character. Permuting the right three columns then transforms (5.1) to

\[
\begin{pmatrix}F&F\\FD_w&-FD_w\end{pmatrix}.
\tag{5.5}
\]

If instead `widehat(alpha)_1=widehat(alpha)_2=0`, then `alpha` is constant. Its product is one, so the constant is a cube root of unity, and `w` is a Fourier character. Permuting the bottom rows gives

\[
\mathcal F(p,q)=\begin{pmatrix}F&D_vF\\F&-D_vF\end{pmatrix}.
\tag{5.6}
\]

These are the two transposed Fourier families.

The remaining allocations in (5.3) are mixed: one `widehat(A)` and one `widehat(alpha)` vanish. Each parenthesis in (5.4) is a sum of three unit numbers whose product is one. Three unit numbers summing to zero are a common phase times the three cube roots of unity; their product being one forces that common phase to be a cube root too. Thus, in either mixed allocation,

\[
p,q,r,s\in\{1,\omega,\omega^2\}.
\]

There are exactly 81 tuples left to consider, with no continuous residue. The standard-library verifier constructs (5.1) over `Q(omega)` for every tuple. Its complete census is:

| Cases | Number | Exact acceptance test |
|---|---:|---|
| `v` a character | 27 | Unit entries and exact Hadamard Gram; reduction (5.5) |
| `w` a character, `v` not a character | 18 | Unit entries and exact Hadamard Gram; reduction (5.6) |
| Neither character, flat | 18 | Explicit Tao equivalence, checked entry by entry |
| Nonflat | 18 | A stored lower-right entry has squared modulus `0` or `3`, not `1` |

The Tao representative is `S=(omega^{e_ij})`, with

\[
e=\begin{pmatrix}
0&0&0&0&0&0\\
0&0&1&1&2&2\\
0&1&0&2&2&1\\
0&1&2&0&1&2\\
0&2&2&1&0&1\\
0&2&1&2&1&0
\end{pmatrix}.
\tag{5.7}
\]

For each of the 18 Tao cases, `certificates/fourier_census.json` supplies row and column permutations. If their permuted matrix is `M`, the verifier checks

\[
\frac{M_{00}M_{ij}}{M_{i0}M_{0j}}=S_{ij}
\quad\text{for every }i,j.
\tag{5.8}
\]

Thus the certificate gives the phases as well as the permutations; no orbit membership is accepted from a numerical distance or a label.

### 5.4 Every corner of either Fourier family is matched

`Psi` is unchanged by row or column permutations, row or column phase multiplication, and transposition. For example a row phase contributes once to the permanent, twice to the squared determinant, and three times to the denominator. Also `Psi(bar A)=bar(Psi(A))`.

For every three-element row set `I` and column set `J` of the **generic** family (5.6), the verifier checks the Laurent identity

\[
 \Psi\big(\mathcal F(p,q)[I,J^c]\big)
 =\overline{\Psi\big(\mathcal F(p,q)[I^c,J]\big)}.
\tag{5.9}
\]

This is `20 x 20 = 400` identities in `Z[omega][p,p^{-1},q,q^{-1}]`; no parameter values are sampled. The entry-product denominators are unit Laurent monomials, so every division is valid on the entire phase torus, including singular blocks. `certificates/fourier_matching.json` retains the common polynomial at each corner, with at most ten nonzero terms.

Transposition exchanges the two sides in (5.9), and conjugating the equality gives the corresponding statement for (5.5). Monomial invariance transports the assertion to every equivalent representative and every ordering/dephasing of its corners. At a strict corner, (5.9) is exactly conjugate side-signature matching.

### 5.5 Finish Theorem A

Section 4 places a strict nonmatched carrier in the normal form (5.1), after equivalence and possibly choosing a different corner. Section 5.3 puts this carrier in a Fourier family, its transpose, or the Tao orbit. The Fourier alternatives are impossible because §5.4 proves matching at **every** one of their corners, including the original strict corner. Therefore the carrier is Tao. This proves Theorem A on the full strict domain. ∎

## 6. Derive guarded PR-M and handle ramification

### 6.1 Exact bridge, including the discriminant sign

We distinguish the paper's product-quadratic coefficient `f6` from the Gram constants `c_j`. In either direction set

\[
\delta_p=Z-Y=c_1-c_0,\quad
f_6=P_1\bar P_0,\quad
L=g^2+c_0c_1\eta+c_0\chi.
\]

From (2.3), without guessing a sheet label,

\[
 u(z)=\frac{\lambda_0}{\lambda_1}
      =\frac{L+g\delta_p z}{f_6}.
\tag{6.1}
\]

Let the paper's quadratic, before normalization, be

\[
Q_u(u)=(1+X)f_6u^2+f_3u+(1+X)f_0.
\]

`verify_bridge.py` reconstructs `f6,f3,f0` from the explicit companion polynomials and proves

\[
\begin{aligned}
f_0&=\bar f_6,\\
f_3&=-(1+X)(2L+\delta_p\chi),\\
f_6 Q_u(u(z))
 &=(1+X)g\delta_p^2\,(gz^2-\chi z+g\eta),\\
(2L+\delta_p\chi)^2-4|f_6|^2&=-\delta_p^2R.
\end{aligned}
\tag{6.2}
\]

The third line gives an explicit cofactor for the reduction by the actual-side quadratic. The verifier checks its constant and linear remainders separately; the quadratic coefficient is immediate. The source coefficient definitions are `paper_body.tex`, the horizontal product quadratic and its displayed `U_h,V_h`, and `supp_body.tex`, `eq:supp-A-explicit`, `eq:supp-B-explicit`. Their expanded data are also retained in `certificates/product_bridge.json`.

In particular, writing `U` for the sum of the product roots,

\[
 U=\frac{2L+\delta_p\chi}{f_6},\qquad
 2u(z)-U=\frac{g\delta_p}{f_6}(2z-\chi/g),
\tag{6.3}
\]

and the real normalized discriminant satisfies the exact identity

\[
 \boxed{\ \omega_{\rm n}=|U|^2-4
       =-\frac{\delta_p^2R}{|f_6|^2}.\ }
\tag{6.4}
\]

These identities are checked in six independent Gram variables. They are not consequences of a generic physical specialization. On a guarded physical lift, `g>0`, `f6!=0`, and `delta_p!=0`. Thus `omega_n<0` implies `R>0`, while `omega_n=0` implies `R=0`.

Using equality of `g,chi` in the two directions, (6.3) shows that conjugate signature roots give

\[
 2m-U_v=-\frac{\delta_v f_{6,h}}{\delta_h f_{6,v}}(2u-U_h),
\]

whereas equal signature roots give the plus sign. The nonzero slopes and `R>0` make these alternatives distinct.

### 6.2 No Tao frame is product regular

A dephased frame of a matrix equivalent to Tao has entries in `mu_3`. Indeed arbitrary row and column phases cancel in dephasing, leaving quotients of four entries of (5.7).

We prove a slightly stronger elementary statement. Let `A=(1;x;y)` be any invertible `3 x 3` phase matrix with all entries in `mu_3`. If the three `x` coordinates are distinct, then

\[
 \left|\sum_j y_j\bar x_j\right|^2
 =\left|\sum_jy_j\right|^2;
\tag{6.5}
\]

that is, its companion determinant `delta_p` vanishes.

After reordering columns the `x` coordinates are `(1,omega,omega^2)`. If `y` is constant or proportional to `x`, invertibility fails. If its entries are all distinct, the only other orientation is a multiple of `bar x`, for which both sides of (6.5) are zero. Otherwise `y` has two equal entries `beta` and one different entry `gamma`. Both `|2 beta+gamma|^2` and `|gamma-beta|^2` equal three; the latter is the squared modulus of `sum y_j bar x_j`, because `sum x_j=0`. This proves (6.5).

Consequently every such invertible side has either a repeated coordinate-cubic root or zero companion determinant. Both violate the displayed product-regular guards. This argument applies already to the horizontal side of any dephased Tao frame.

For an independent finite check, `verify_cubic_guards.py` exhausts all 729 normalized cubic phase sides: 279 are singular; 324 are invertible with repeated `x` coordinates; the remaining 126 are invertible with simple `x` coordinates and `delta_p=0`. This is a superset of all Tao sides, not a sample of selected Tao frames.

### 6.3 Necessity and the meaning of the plus residual

Suppose a guarded physical pairing with `omega_n<0` had flat forced `D` and used the plus prescription. The parent Gram equations and the forced-block formula give `HH*=6I`, so flatness of `D` makes the assembled matrix an actual phase Hadamard. Equations (6.3)–(6.4) make it a strict nonmatched carrier. Theorem A makes it Tao, contradicting §6.2. Thus the only flat prescription is (0.1), proving G1.

For clarity, the classification paper's norm remainder is an element of the vertical cubic algebra, not just one chosen scalar row value. Under a guarded physical specialization its three evaluations are

\[
 \prod_{j=1}^3|D_{ij}|^2-1\qquad(i=1,2,3).
\]

The fixed-Gram block equations give `DD*=6I-CC*`, hence `sum_j |D_ij|^2=3`, whether or not `D` is flat. Explicitly, `C*C=6I-E*E`, `BB*=G_h`, and `D=-CE*G_h^{-1}B`; the identity `I+E*G_h^{-1}E=6(6I-E*E)^{-1}` proves this assertion. The inverses exist on the guarded locus. If this norm remainder were zero in the specialized algebra, all three row products would be one. Equality in the arithmetic–geometric mean inequality would make all nine entries unit. The preceding contradiction therefore proves that the specialized plus remainder `F_+` is nonzero. This does **not** assert that every individual row evaluation of that remainder is nonzero.

Equivalently, the full nonnegative residual

\[
 \sum_{ij}(|D_{ij}|^2-1)^2
\]

is strictly positive for a guarded physical plus pairing with distinct product roots. No uniform positive numerical lower bound is claimed.

### 6.4 Product ramification

At a guarded physical point with `omega_n=0`, (6.4) gives `R=0`. Equation (6.2) shows the two product roots coincide, so

\[
 u=U_h/2,\qquad m=U_v/2.
\]

Both affine signs give this same pair. The necessity statement becomes an equality of coincident prescriptions, not an exclusion. In particular `F_+` is not asserted to remain nonzero there. The strict proof in §§2–5 is not extended across ramification by an unsupported continuity claim. ∎

## 7. Derive the exact reach required by Lean

### 7.1 Two Fourier-routing lemmas, without a classification import

**Singular minor route.** A singular `3 x 3` phase matrix has proportional rows or proportional columns. At rank two, write a third row as a linear combination of two independent rows. Unless it is proportional to one of them, their three unit coordinate ratios satisfy a nonconstant real affine equation on the circle, which has at most two solutions. Two column ratios coincide, giving proportional columns. Rank at most one is immediate.

For a singular minor of `H`, take the row case. Orthogonality and the triangle inequality phase the two complete rows into

\[
(1,1,1;1,1,1),\qquad(1,1,1;-1,-1,-1).
\]

Every other row sums to zero in each half, and is therefore `(alpha f_e; beta f_d)`, with `e,d` one of the two nonconstant Fourier orientations. Two rows can agree in the left orientation only if they agree in the right orientation; otherwise their inner product has exactly one nonzero term of modulus three. The converse holds too. Each orientation class is two-dimensional, so four orthogonal rows force two rows of each type. Permuting the right half aligns the types. Phasing rows and using their orthogonality gives opposite right phases in each type, yielding (5.6). The column case follows by transposition.

**Geometric-progression row route.** Suppose three complete rows can be phased into `(1;x;bar x)`. Orthogonality gives `sum x_j=sum x_j^2=0`. Unit-root reciprocity then gives `e1=e2=e4=e5=0` for their six elementary symmetric functions. Their polynomial is

\[
 t^6-e_3t^3+e_6.
\]

Its roots split into two equilateral triples, including multiplicities. Reordering columns and phasing rows puts these rows in `[F,D_vF]` with `v=(1,u,u^{-1})`. Using only bottom-row monomial operations as in §5.1, normalize `C` to `F D_w`; this leaves both `F` and the displayed `D_v F` unchanged. In (5.4),

\[
\widehat A_1=3\omega^2(u^3-1)/u,
\qquad\widehat A_2=-3\omega(u^3-1)/u^2.
\]

If `u^3!=1`, both are nonzero, so (5.3) forces `w` to be a character and gives (5.6). If `u^3=1`, `v` is a character and gives (5.5). Thus this route also lands in the two Fourier families. No Tao case or parameter-count argument is needed here.

### 7.2 Strict-corner coverage from the named critical inputs

For every physical corner and same-row complementary phase block `B`, the universal actual-side identities give

\[
 R(E)=4(\operatorname{Im}\Psi(B))^2\geq0.
\tag{7.1}
\]

The identity is polynomial after multiplication by a unit entry-product monomial, and holds for singular blocks as well. Alternatively it follows by continuity from invertible phase blocks. Thus absence of a strict corner means that every corner is critical.

Suppose an all-critical `H` is not equivalent to `F6`. By §7.1 and I7 it has no singular `3 x 3` minor and no geometric-progression triple of complete rows. Apply I4 to any three-row strip. After I5 excludes the two rational nonzero-`J` endpoints, each of its twenty corners has one of three values:

\[
 p=0,\qquad p=5,\qquad
 p=p_*:=9-\frac4{1+\kappa^2},
\]

where `kappa>0` satisfies `3 kappa^3+kappa^2+kappa-1=0`.

The cubic has none of its possible rational roots `+/-1,+/-1/3`, and so is irreducible over the rationals. Thus `kappa` has degree three. The number `p_*` is irrational: if it were rational, the displayed formula would make `kappa^2` rational, giving degree at most two.

Let `n0,n5,n*` count the twenty corners of these types. By I6,

\[
 n_0+n_5+n_*=20,\qquad 5n_5+p_* n_*=108.
\]

Irrationality forces `n*=0`; but then `5n5<=100`, a contradiction. Therefore every carrier not equivalent to `F6` has a strict corner. This rederives the needed direction of MC1 with exactly the imports in §1. Neither PR-M nor global product-regular reach is used.

### 7.3 Exact reach, orientation, and closure

Take a class not in the Tao orbit and choose a representative `H`. If it is equivalent to `F6`, it is in the singleton Fourier class. Otherwise §7.2 supplies a strict corner. Move it to the leading position and dephase, obtaining an equivalent `K`.

Theorem A excludes a nonmatched pairing there. Its side signatures are therefore conjugate. If the horizontal signature is

\[
 (\chi+i\sqrt R)/2,
\]

then `Matched s K` holds exactly in the handoff's convention. If it is the negative-imaginary root, conjugate the entire dephased carrier and seed. The invariants are unchanged, the horizontal signature becomes the positive root, and `Matched (bar s) (bar K)` holds. Thus the original carrier is equivalent to the conjugate of a matched one.

This proves, with the quantifiers of `Statements.lean`,

\[
\begin{split}
\forall H\notin\operatorname{TaoOrbit},\quad
&H\cong F_6\\
&\text{or }\exists s,K:\operatorname{Matched}(s,K)
   \text{ and }(H\cong K\text{ or }H\cong\bar K).
\end{split}
\]

That is `MatchedExactReach`. In particular each non-Tao quotient class already belongs to

\[
 (\{[F_6]\}\cup\mathrm{MatchedClasses})
 \cup\mathrm{ConjugateMatchedClasses},
\]

not merely to its closure. Inclusion in the closure gives the precise `MatchedDensityReach` statement. This is also the supplied Lean theorem `exactReach_implies_densityReach`.

No matched-class continuity, connectedness, generic density, L2 uniqueness, or new boundary limit argument is needed for this final deduction. ∎

## 8. What is and is not certified by the new replay

Run `python3 verify_all.py` from this directory. Only the Python standard library is required. All mathematical acceptance checks use integers, exact fractions, the relation `omega^2+omega+1=0`, or exact Laurent coefficients. Running under `python -O` is rejected because assertions are proof checks.

The replay regenerates and compares:

1. The 81 Fourier normal-form cases, including all 18 explicit Tao equivalences and all 18 nonflat witnesses.
2. The generic three-point Fourier coefficient identities and all 400 all-corner matching identities for the two-parameter family; transposition is handled by the paper identity in §5.4.
3. Eight generic product-bridge identities, including the discriminant sign and the explicit quadratic cofactor reduction.
4. All 729 cubic phase sides establishing the Tao guard obstruction.
5. The supplied I3 structural Laurent identities, through the byte-for-byte retained `vendor/verify_structural.py`.

The side-fibre argument, the two-column rigidity alternative, the projection/diagonal-algebra argument, normal-form exhaustion, and the global coverage deduction are mathematical proofs in this note. A successful replay does not by itself formalize those arguments or reprove the imported critical-strip theorems.

Remaining integration work is to port these lemmas and the supplied mathematical inputs to the project's exact Lean statements, and to review the new paper argument independently. This return does not claim a newly compiled unconditional `no_four_mubs_main`; it supplies the missing PR-M/strict-converse/reach argument at the paper-plus-certificate level, with the trust boundary above.
