# Centre-specific and interval-uniform regular family tubes

## 1 A fully normalized theorem

**PROVED.** Let p be an exact complementary-circulant MUB triple at a symmetric anchor, with gamma nonzero. Use the unweighted 96 real residuals of the original `triples.py`, phase entries in radians, and the horizontal Euclidean space E obtained by orthogonal projection of the 72 phase entries modulo common row and independent column gauges.

Let P be the corresponding orthogonal order-three phase action, Q the orthogonal projector onto its moving subspace in E, and Jp the full 96-by-72 derivative at p. Suppose a certified number sigma0>0 satisfies

\[
\|J_p v\|_2\ge\sigma_0\|v\|_2\qquad(v\in\operatorname{im}Q).
\]

Then every exact zero at horizontal phase displacement x with

\[
\boxed{\|x\|_2<\sigma_0/60}
\]

has the same balanced order-three symmetry and therefore has known triple type. The constant 60 is the proved global Hessian bound for the specified unweighted residuals. With a differently scaled equation vector, recompute or rescale the singular-value and Hessian bounds consistently.

**Proof.** Both x and Px are zeros. Their difference h=(P-I)x is in the moving space, and their joining segment stays within the radius-||x|| ball. The mean-value formula gives `sigma0 ||h|| <= 60 ||x|| ||h||`. Strict inequality forces h=0. This gives an actual physical symmetry, to which recognition applies. No normal graph or rank-53 complete-intersection assertion is used.

If the conclusion needs to be specifically the continuous family rather than either known type, it suffices additionally to have `||x||<|gamma|/(2sqrt6)`, by the correlation variation estimate in the preceding continuation. At the gamma=1 example below this additional restriction is much weaker than the certified tube radius.

## 2 A verified radius of 0.025 at the gamma one reference

Take the exact construction parameters

\[
a=(1,i,i),\qquad b=(1,1,-1).
\]

Their correlations are exactly 1 and -1. The canonical lift gives an exact triple with gamma=1.

The standalone interval-and-integer verifier constructs this lift by rigorously enclosed radicals and reconstructs its 96-by-72 Jacobian. The moving projector Q is rational. In each 36-entry H or K block it is

\[
Q=(I_6-\mathbf1\mathbf1^T/6)\otimes(I_6-C),
\]

where C averages the three columns in each cyclic orbit. It has rank20 in each block and therefore rank40 in total.

A stored rational 72-by-96 preconditioner C0 satisfies

\[
\|C_0\|_2<13/20,
\qquad
\|Q-C_0J_pQ\|_2<10^{-4}.
\]

The operator norm bound is proved by an exact integer positive-definiteness test, using fraction-free elimination on `(13/20)^2 I-C0 C0^T`. The derivative enclosure and defect are checked independently with directed intervals and integer matrix products. The numerical singular value is not an input to acceptance.

Thus

\[
\|J_pv\|\ge\frac{1-10^{-4}}{13/20}\|v\|>
\frac32\|v\|\qquad(v\in\operatorname{im}Q),
\]

and the theorem gives

\[
\boxed{r<\frac1{40}=0.025.}
\]

This is **PROVED from the exact canonical construction**, with its derivative bound independently certified. NumPy was used only to discover the saved rational preconditioner. Verification uses the standard library and does not import supplied project code.

## 3 Uniform certification over a parameter interval

Let Lambda parameterize exact family references p(lambda) in one common anchor and labeling. Require the same phase action P and the same moving projector Q throughout Lambda. Represent the references and their derivatives in one coherent horizontal phase and equation frame. Any additional rephasing must be propagated into the Jacobian and preconditioner: independent column rephasings can rotate the real and imaginary Gram-residual coordinates. Suppose an interval matrix enclosure [J] contains every Jp(lambda), and a fixed preconditioner C0 has bounds

\[
\kappa\ge\|C_0\|_2,
\qquad
\delta\ge\sup_{\lambda\in\Lambda}
\|Q-C_0J_{p(\lambda)}Q\|_2<1.
\]

Then the explicit uniform choice

\[
\boxed{\sigma_\Lambda=(1-\delta)/\kappa,
\qquad r_\Lambda=(1-\delta)/(60\kappa)}
\]

is valid at every reference in Lambda. For v=Qv, `||v|| <= ||(Q-C0JQ)v||+||C0Jv||`, which proves the derivative bound; the preceding symmetry proof is then uniform.

There are two simple ways to verify delta without differentiating a singular-vector basis:

1. Directly interval-evaluate `Q-C0[J]Q` and bound its Frobenius norm, or use a sharper validated spectral bound.
2. Choose a rational midpoint matrix Jc, certify `e0>=||Q-C0JcQ||`, and bound `eJ>=sup ||Jp(lambda)-Jc||`. Then `delta=e0+kappa eJ` is sufficient.

The second method is implemented in `family_interval_check.py` for the saved gamma=1 preconditioner. It accepts a complete 96-by-72 interval Jacobian enclosure and a requested rational lower bound on sigma. It verifies the interval arithmetic implication; the user must supply the valid family enclosure.

The input keys are `lower` and `upper`, each a 96-by-72 array of exact decimal or rational strings, and `sigma_lower=[numerator,denominator]` with positive integers. The checker re-verifies the saved preconditioner and uses its rational-midpoint defect bound `e0=1/100000`; this is distinct from the more conservative `1/10000` bound for the exact reference. A successful result reports `PROVED CONDITIONAL MATRIX BOUND` and the resulting radius. A failed sufficient inequality reports `INCONCLUSIVE` with no certified radius; it does not assert that the family lacks a tube. Malformed or reversed intervals are rejected.

**Verified example.** Let `Jc` be the saved rational Jacobian midpoint and enclose every entry by `Jc_ij ± 1/1000`. Request `sigma_lower=[7,5]`. The enclosure error satisfies `eJ²=6912/10^6=108/15625`, and the exact sufficient comparison passes, proving the uniform tube radius

\[
\boxed{r<7/300=0.023333\ldots.}
\]

This is a valid enclosure for all exact references in the same canonical anchor/action whose horizontal phase distance from the gamma-one reference is at most `1/100000`: the global Jacobian Lipschitz bound gives entrywise change at most `60/100000=0.0006`, and the certified exact-reference-to-`Jc` error is below `10^-8`, so the total is below `0.001`. Widening every interval to `Jc_ij ± 1/100` makes this check inconclusive, as required. These checks use temporary enclosures generated from the saved midpoint, without a separate large fixture.

A cruder theorem follows without an interval derivative calculation. If all references in Lambda lie within horizontal phase distance d of one certified reference p0, the same P,Q apply, and the Jacobians use the coherent phase and equation frame just specified, then Weyl's inequality and the global derivative bound give

\[
\sigma_\Lambda\ge\sigma_0-60d.
\]

Use this only when its right side is positive. Direct interval evaluation often keeps more structure than this coarse Lipschitz subtraction.

## 4 Align a whole cell coherently

The following operations are part of the enclosure proof, rather than a numerical fit:

1. Put the cell and the exact family reference at the same anchor. For example, reanchoring at H sends the non-anchor unit-entry matrices to `H*` and `H*K/sqrt6`, up to a chosen basis order. Propagate their interval enclosures through actual coherent matrix multiplication.
2. Use one common row permutation/rephasing for both matrices and independent column permutations/rephasings. Fix the selected permutations throughout the cell, or split into finitely many cases.
3. Enclose the arguments of the entrywise ratios to the reference, choosing compatible integer phase windings. If a branch cut cannot be resolved uniformly, subdivide or retain separate winding cases.
4. Apply the exact orthogonal horizontal projector. It can only decrease Euclidean phase norm. Shared dephasing alone need not be an isometry, and a change of anchor is not automatically an isometry.

For an ordinary 55-phase box with relative intervals `[ell_j,u_j]`, the sufficient check is

\[
\sum_j\max(|\ell_j|,|u_j|)^2<r_\Lambda^2.
\]

Include a reference enclosure's uncertainty in these bounds. A small residual of a fitted reference is not a certified distance to an exact family point.

For the common correlated carrier in the user's all-K cells, retain

\[
x=c+Lw+e,\qquad\|w\|\le r_w,\quad\|e\|\le e_0.
\]

If W is the horizontal projector, then

\[
\|Wx\|\le\|Wc\|+\|WL\|_{2\to2}r_w+e_0
\]

is a safe enclosure. Keeping the shared carrier for H and all K columns is often much tighter than replacing every phase entry by an independent interval. More accurate interval optimization of the quadratic form is also valid.

For a family interval, it is enough to construct a certified reference selection lambda=lambda(w) with values in Lambda and to enclose the correlated difference from p(lambda(w)). The uniform singular-value bound then applies pointwise. Merely observing that a phase box intersects a family interval does not show that the whole box lies in its tube.

## 5 Coverage obligation

The tube predicates classify their entire represented zero sets. A global family neighborhood or a whole atlas ball still needs an exhaustive cover. Preserve the existing exact tree/accounting checks and replay the original-to-phase inclusion at the new radii. These mathematical bounds do not by themselves enlarge a previously accepted w-coordinate core receipt.
