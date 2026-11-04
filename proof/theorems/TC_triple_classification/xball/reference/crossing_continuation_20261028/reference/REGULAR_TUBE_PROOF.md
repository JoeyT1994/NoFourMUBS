# Route B: an explicit symmetry tube

**Status: PROVED from the supplied checkpoint's exact coercivity inequality (20), physical bound (11), and recognition argument §8.** No numerical singular value is needed for this theorem. The preceding symbolic certificate files are absent from the supplied archive, so their arithmetic has not been independently rerun here.

## Main theorem

Let `(H0,K0)` be a canonical cyclic lift (checkpoint (1), (12)) of a complementary two-circulant triple, with `gamma != 0`. All phases below are in **radians**. In the 55-dimensional dephased phase chart centered at this exact triple, every exact zero at Euclidean phase distance

\[
  \boxed{r<\rho(\gamma):=|\gamma|/540}
\]

is equivalent to a member of the continuous complementary-circulant family. More generally, use the orthogonal quotient norm obtained from 72 phase entries by quotienting common row phases and independent column phases; the same radius holds in that norm. The theorem applies after putting the point into an anchor with the stated order-three symmetry. For a cell described at another anchor, first bound the corresponding transition matrices in the symmetric anchor.

This is a sufficient radius, deliberately conservative. It is not a statement about a maximal tube or a separation distance from all possible unknown components.

## 1. An invariant Euclidean phase quotient

Let `V=R^(6x6) direct-sum R^(6x6)` and put

\[
 H(X)=H_0\circ e^{iX},\qquad K(Y)=K_0\circ e^{iY}.
\]

The gauge subspace consists of

\[
 G=\{(X,Y):X_{ij}=r_i+c_j,\quad Y_{ij}=r_i+d_j\}.
\]

It has real dimension 17. Work on `W=G^perp`, dimension 55, using the inherited Euclidean norm. Its projection is explicit: subtract the column mean from each matrix separately, then subtract from both matrices the common row mean

\[
 r_i=\frac1{12}\sum_j(X^{(1)}_{ij}+Y^{(1)}_{ij}).
\]

This projection is orthogonal, and changes the actual matrices only by allowed common row and independent column phases. In particular it preserves the zero set and contracts the Euclidean norm.

Let `g` cyclically permute the `s` index of both phase arrays, where columns are `(s,b) in Z_3 x Z_2`. This is orthogonal, preserves `G` and `W`, and preserves the exact triple zero set: in actual matrices the column permutation is compensated by a common diagonal ambient unitary. The moving space is the orthogonal complement of `Fix(g)` in `W` and has real dimension 40.

A zero fixed by this action has the actual order-three ray symmetry. No arbitrary triple is assumed to possess the symmetry; we prove fixedness inside the radius.

## 2. Use row orthogonality residuals

Use the 96 real residuals consisting of real and imaginary upper-triangle entries of `HH*` and `KK*`, followed by all 36 entries of `|H*K|^2-6`. Call this map `F=(A_nonlinear,B_nonlinear)`.

The supplied Python uses column orthogonality instead. The zero sets agree, and for every square unit-entry matrix the two orthogonality residual vectors have equal Euclidean norm, because `||HH*-6I||_F=||H*H-6I||_F` and all diagonal entries vanish. At a Hadamard center, the linearized Gram matrices are unitarily conjugate, so either formulation can be used to compute singular values. The proof below uses the row form to expose the cyclic decomposition.

## 3. Uniform gap for individual Hadamard equations

On the moving sector of one matrix write

\[
 X_{ta,sb}=\xi_{ta,b}\omega^s+\overline{\xi_{ta,b}}\omega^{-s},\qquad
 \xi_{ta,b}=p_{t,b}+(-1)^a q_{t,b}.
\]

Parseval gives

\[
 \|X\|^2=12\sum_{t,b}(|p_{t,b}|^2+|q_{t,b}|^2).
\]

Orthogonality to moving column gauges says `sum_t p_(t,b)=0` for each `b`. Set `r_t=x_t/x_(t+1)`. For the row pair `(t,a),(t+1,a')`, the derivative of row orthogonality is

\[
 3i(P_0+efP_1+eU+fV),\qquad e=(-1)^a,\ f=(-1)^{a'},
\]

where

\[
 P_0=p_{t,0}-p_{t+1,0},\quad
 P_1=r_t(p_{t,1}-p_{t+1,1}),
\]
\[
 U=q_{t,0}-r_tq_{t+1,1},\quad
 V=r_tq_{t,1}-q_{t+1,0}.
\]

The four signs form a Walsh transform. All unordered row pairs in different coordinate pairs are included exactly once by `t=0,1,2`; within-pair moving derivatives vanish. Consequently

\[
 \|AX\|^2=36\sum_t\left(
 |\Delta p_{t,0}|^2+|\Delta p_{t,1}|^2+
 |q_{t,0}-r_tq_{t+1,1}|^2+
 |r_tq_{t,1}-q_{t+1,0}|^2\right).
\]

The `p` part is the triangle Laplacian and has eigenvalue 3 after removing constants. For the `q` part set

\[
 q_{t,0}=f_t a_{t,0},\quad q_{t,1}=\overline f_t a_{t,1},\qquad
 f_t=x_{t-1}/x_{t+1}.
\]

Its energy becomes the graph Laplacian of the six-cycle with edges `(t,0)--(t+1,1)` and `(t+1,0)--(t,1)`. Its eigenvalues are `0,1,1,3,3,4`. Therefore

\[
 \boxed{\|An\|\ge\sqrt3\,\|n\|\quad(n\perp\ker A)}.
\]

For `K`, the row factors `u_t,v_t` merely multiply each row-pair derivative by a unit phase, so the identical estimate applies. Thus it holds for both matrices together.

The moving kernel of `A` is exactly the checkpoint's four-real-dimensional `(z,w)` sector, and its phase norm is

\[
 \|k(z,w)\|^2=72(|z|^2+|w|^2).
\]

## 4. Convert the exact Gram inequality into a full moving gap

The coherent mixed derivative along that kernel has a positive-frequency coefficient `i M(z,w)` on each three-point simultaneous cyclic orbit. Hence

\[
 \|Bk(z,w)\|^2=6\|M(z,w)\|^2.
\]

Using checkpoint (20),

\[
 \|Bk\|\ge\beta\|k\|,\qquad
 \beta^2=\frac{3125}{2592}|\gamma|^2.
\]

The norm of `B` on the *whole* phase space at an exact triple satisfies

\[
 \|B\|\le12\sqrt2.
\]

Indeed, with `C=H* K`, every entry of `C` has modulus `sqrt6`, while

\[
 \|DC[X,Y]\|_F\le\sqrt6(\|X\|+\|Y\|)\le\sqrt{12}\|(X,Y)\|,
\]

and `B[X,Y]=2 Re(conj(C) circ DC[X,Y])`.

For a moving `v=n+k`, with `n perp ker A`, use `a=sqrt3`, `b=12sqrt2`, `u=||Av||`, `v_b=||Bv||`. Then

\[
 \|n\|\le u/a,\qquad
 \|k\|\le(v_b+(b/a)u)/\beta.
\]

The operator norm of this triangular inverse is bounded by its Frobenius norm. Therefore the full moving derivative `J=DF(0)` obeys

\[
 \|Jv\|\ge\sigma\|v\|,\qquad
 \sigma^2\ge\frac{a^2\beta^2}{a^2+b^2+\beta^2}
 =\frac{9375|\gamma|^2}{754272+3125|\gamma|^2}.
\]

Since checkpoint (11) gives `|gamma|^2<3/2`,

\[
 754272+3125|\gamma|^2<758959.5<759375=81\cdot9375.
\]

Thus

\[
 \boxed{\|Jv\|>|\gamma|\|v\|/9\quad\text{for every nonzero moving }v.}
\]

This step matters: the checkpoint's estimate for `M` alone does **not** immediately lower-bound the entire moving derivative. The uniform `A` gap and bound on `B` control cancellation from directions off the individual-Hadamard tangent space.

## 5. A global second derivative bound

In the full 72-phase Euclidean norm,

\[
 \boxed{\|D^2F(\theta)[u,v]\|\le60\|u\|\|v\|\quad\text{for all real phase arrays }\theta.}
\]

A transparent bound is actually `sqrt3468<60`.

For one row-orthogonality complex entry, its second derivative has modulus at most `||u_i-u_k|| ||v_i-v_k||`. Summing over unordered row pairs and using the complete-graph identity

\[
 \sum_{i<k}\|u_i-u_k\|^2\le6\|u\|^2
\]

together with `max_(i<k)||u_i-u_k||^2 <= 2||u||^2`, gives squared operator bound 12 for the two matrices' orthogonality residuals together: apply the maximum bound to u and the complete-graph sum to v, then add the H and K blocks.

For a mixed entry, put `d_r=Y_(r,i)-X_(r,j)`. It is a sum of `2 cos(d_r-d_s+constant)` over `r<s`, plus a constant. Its second derivative has modulus at most

\[
 12\|d_u\|\|d_v\|
 \le24\sqrt{a_j^2+b_i^2}\sqrt{c_j^2+d_i^2},
\]

where `a_j,b_i` are the column norms of the two arrays of `u`, and `c_j,d_i` those of `v`. Summing squares over `i,j` uses

\[
 \sum_{ij}(a_j^2+b_i^2)(c_j^2+d_i^2)
 \le6(\sum_j a_j^2+\sum_i b_i^2)
       (\sum_j c_j^2+\sum_i d_i^2).
\]

Thus the mixed bound is `24sqrt6`, and the combined bound is `sqrt(12+(24sqrt6)^2)=sqrt3468<60`. Restriction to the orthogonal gauge slice cannot increase it.

## 6. Quantitative fixedness lemma and the radius

**Lemma.** Suppose a differentiable zero set is invariant under an orthogonal linear finite-order action `g`, `F(0)=0`, `DF` is `L`-Lipschitz, and `DF(0)` has lower bound `sigma` on the moving space. Every zero `x` with `||x||<sigma/L` is fixed by `g`.

**Proof.** Both `x` and `gx` are zeros. Put `h=(g-I)x`; it belongs to the moving space. The segment from `x` to `gx` is contained in the radius-`||x||` Euclidean ball. Hence

\[
 0=F(gx)-F(x)=DF(0)h+
 \int_0^1[DF(x+th)-DF(0)]h\,dt,
\]

so `sigma ||h|| <= L ||x|| ||h||`. Strict inequality of radii gives `h=0`.

Apply this with the preceding `sigma>|gamma|/9` and `L=60`. Every zero inside `|gamma|/540` is cyclic, so the recognition theorem makes it a known triple.

It in fact belongs to the continuous family. For two exact triples at phase distance `r`, their unit-entry third transitions obey

\[
 \|H'^*K'/\sqrt6-H_0^*K_0/\sqrt6\|_F\le\sqrt2 r.
\]

For cyclic triples, let `a',a` be the unit-entry coefficients of the top-left circulant. Then

\[
 |\gamma(a')-\gamma(a)|\le2\sqrt3\|a'-a\|\le2\sqrt6 r.
\]

At `r<|gamma|/540` this cannot reach zero. Recognition's exceptional dependent/product case requires zero correlation, and is excluded.

## 7. Box certificate

Choose an exact family center in the appropriate symmetric anchor. Choose unwrapped relative phase intervals `[ell_j,u_j]` for the 55 independent coordinates in radians. A simple sufficient test is

\[
 R^2=\sum_{j=1}^{55}\max(|\ell_j|,|u_j|)^2,
 \qquad \boxed{540R<\underline\gamma},
\]

where `underline gamma>0` is a rigorous lower bound on the center's correlation modulus. Then **every exact triple represented by that entire box is in the continuous family**. A box need not contain any triple for this implication to be valid.

For a sharper test, embed the phase box into 72 arrays and apply the explicit orthogonal gauge projection. If its center and half-widths are `c,h`, then

\[
 R\le\|P_W E c\|+\|h\|
\]

is safe; direct interval evaluation of the projected coordinates can improve it. Using an approximate numerical center requires a certified distance `epsilon` from an exact center; replace `R` by `R+epsilon`. A small residual alone is not such a certificate.

Multiple exact centers can cover a cell; one may split a cell and apply different centers to each part. For basis permutations, form and enclose the other transition matrices before checking the radius; the raw original phase distance is not automatically unchanged by a change of anchor.

## 8. Product and crossing

### Isolated product

If the full 55-variable Jacobian at an exact product representative has certified smallest singular value `sigma_p>0`, the same `L=60` gives the explicit isolated-zero radius

\[
 \boxed{r<\sigma_p/30}.
\]

Proof: for a nonzero zero, `sigma_p r <= ||F(x)-Jx|| <=30r^2`. A numerical singular value must be replaced by a rigorous lower bound before this becomes a certificate.

### Crossing

The rank-51 statement and leading ideal `(ac,ad,bc,bd)` alone do not provide a numerical crossing radius. The supplied brief explicitly says the prior exact local verifier is missing. One must supply or reproduce quantitative Lyapunov-Schmidt elimination and the exact branch straightening used by that verifier.

A checkable crossing certificate can have this form. Eliminate 51 normal variables by a validated implicit map on a 4-dimensional kernel ball, then flatten the two known transverse solution surfaces to the planes `v=0` and `u=0`, with `u,v in R^2`. The reduced residual vanishes identically on both planes and therefore factors exactly as

\[
 g(u,v)=A(u,v)\,(u_1v_1,u_1v_2,u_2v_1,u_2v_2)^T.
\]

For instance, entries of `A` are double integrals of mixed second derivatives, so their interval bounds can be checked from the reduced map. If a certified left inverse `L0` at the origin satisfies

\[
 \sup_{(u,v)\in B_r}\|I-L_0A(u,v)\|<1,
\]

then `A(u,v)` is injective throughout that ball and every reduced zero has `u=0` or `v=0`. Together with the validated elimination/straightening domains, this is a certified crossing radius.

No radius at `gamma=0` follows from the regular tube formula: it tends to zero. Once a crossing radius is certified, cover an inner crossing neighborhood by that certificate and cover the compact remainder of the continuous family, where `|gamma|` has a positive lower bound, by finitely many regular tubes. Gluing is a finite coverage check, not an additional classification theorem.
