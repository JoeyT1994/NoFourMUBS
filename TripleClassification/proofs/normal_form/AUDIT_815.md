# Independent audit of the 815 pattern checker

The implementation `joint/check_815.py` was reviewed independently of its proposer. Its mathematical argument is sound, conditional on the stated input H normal form and six colour balls. It is a certificate for the supplied six-colour pattern, not a Stage-C completeness replay or an all-pattern cell certificate.

## 1. Coordinates and linear terms

The Helmert injection E is orthonormal on the six centred column-phase spaces. K is represented by `Ystar+ETu`, with 28 strong and two weak coordinates. T need not be exactly orthogonal: both T and its inverse receive verified norm bounds. The reference phases and all proposed preconditioners are arbitrary exact binary data; no numerical root or exact inverse is assumed.

The H displacement is split into `Uw+h`, with `||w||<=r` and a verified norm bound on h that includes reference-rounding, the quadratic model, and its normal remainder. The total H phase bound D is retained.

The residual has 30 real K Gram equations and 36 mixed-modulus equations. Its mixed H derivative has the checked sign `+Im(conj(C) conj(H) K)/3`. The ridge representation contains 90 Gram ridges and 90 mixed ridges, with the latter having cosine coefficient 1/3. Thus `F0=Craw*1`, `J_K=Sraw*A`, and the inverse defect `B*Sraw*A-I` are the correct quantities.

The omitted H dependence is bounded by the global Hessian estimates

\[
\tfrac12\|D_H^2F\|D^2\le\sqrt6D^2,
\qquad \|D_HD_KF\|D\|ETu\|\le2D\|T\|\|u\|.
\]

Both terms appear in the group bounds. The B-preconditioned H linear term is split according to the correlated carrier U and its normal remainder; no corresponding term is omitted.

## 2. Tensor flattening certificates

For n total degree and k weak slots, let `ns=n-k`, `nw=k`. The homogeneous residual tensor has coefficients

\[
\sum_\ell d_{i\ell}
 a_{S,\ell}^{\otimes ns}\otimes a_{W,\ell}^{\otimes nw}.
\]

The coefficient multiplying `s^ns w^nw` is divided by `ns! nw!`, as in the checker, because the binomial factor cancels the n! Taylor denominator.

The output flattening has Gram matrix

\[
D\bigl(K_S^{\circ ns}\circ K_W^{\circ nw}\bigr)D^T.
\]

Flattening along one strong slot gives

\[
A_S^T\bigl((D^TD)\circ K_S^{\circ(ns-1)}
                   \circ K_W^{\circ nw}\bigr)A_S,
\]

and the weak analogue is the expression implemented in the checker. These formulas are exact by expanding the sums over the remaining tensor indices.

A bound from an input-slot flattening is sufficient: pair the output with a unit vector and apply the spectral norm to the singled input vector and the tensor product of that output test vector with the remaining inputs. Duality then bounds the output norm. It is not necessary to use only the output flattening.

The period-four derivative signs `[C,S,-C,-S]` are correct. The degree-eight truncation remainder uses the ninth derivative of a real sine/cosine ridge, whose absolute value is bounded globally by `sqrt(C^2+S^2)`. Therefore the implemented `amplitude*|t|^9/9!` bound requires no exponential factor or small-angle assumption.

All proposed norm bounds must be positive before using a Gram-shift check. This was flagged during review: `b^2 I-G` positive definite alone would also accept a negative b. The supplied proposal has positive bounds throughout (the smallest tensor bound is 0.00020564); explicit positivity guards were added to the final checker and the certificate was independently replayed successfully.

## 3. Product-colour support

In centred phase coordinates, the six source balls imply `z_c in dc_c + ball(rho_c)` and `u=T^-1 z`. For a proposed multiplier p on the strong coordinates and one of the 64 unit weak directions d,

\[
d\cdot u_W-p\cdot u_S
\le (T^{-T}(-p,d))\cdot dc
 +\sum_c\rho_c\|(T^{-T}(-p,d))_c\|.
\]

Adding `||p|| s` gives the implemented directional weak bound. One of the 64 directions lies within pi/64 of a nonzero weak vector, so dividing the maximum directional bound by `cos(pi/64)` bounds its norm. Each of the six multiplier plans is independently valid; taking the minimum of their resulting upper bounds is sound.

## 4. Scalar rectangle cover and final exclusion

The initial square `[0,R]^2` contains the possible strong and weak norms. Every dyadic split retains both closed children. The four pruning rules are sound:

* the rectangle misses the initial norm ball;
* its weak lower endpoint exceeds the product-colour upper bound at its strong upper endpoint;
* a norm lower endpoint exceeds the corresponding residual upper bound at the rectangle's upper corner;
* its upper corner already lies strictly inside the target radius.

All residual coefficients are nonnegative bounds, making upper-corner evaluation valid. The weak-cap functions are nondecreasing in the strong norm. A budget failure raises an error, so a completed traversal covers every possible zero.

Finally the separating functional retains both correlated H linear terms, its K-coordinate linear term, and the complete scalar remainder

\[
\|\nu\|\left(\sqrt6D^2+2DR+3R^2\right).
\]

Here `R=||T||*target` is the physical K phase radius. The resulting strictly positive lower bound on `nu F` excludes a zero throughout the localized set. No existence claim about the expansion point is needed.

No missing Taylor term, tensor factor, phase-gauge factor, or rectangle-coverage case was found in this review.
