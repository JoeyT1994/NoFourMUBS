# Independent review of the exceptional critical-point modules

## Regular invariant critical points

**Verdict: correct.** Independently reviewed the classification and replayed `../global/verify_critical_invariants.py` successfully.

For positive `R`, the case `chi=0` cannot be stationary: the `X` and `J` derivative equations would force `g+6 eta=g+2 eta=0`, contradicting `eta>0`. Otherwise, the derivative differences force all invariant variables equal or two equal one. The exact substitutions leave only permutations of `(X,Y,Z,J)=(1,1,5,-2/3)` as positive stationary points, with `R=1024/27` and `R_JJ=-32`.

The Laurent determinant, squared Jacobian and complementary-sign identities also passed independent replay.

## Nontransverse double-zero stratum

**Verdict: correct.** Independently read `../critical/DOUBLE_ZERO.md`, inspected `verify_double_zero.py`, and replayed that verifier successfully.

The full Gram quotient uses nonzero signed radii and a local Bargmann phase. All radii are necessarily nonzero on `Q=0,R>0`; otherwise `J=0` would give `R=Q=0`. The changes between six input phases and seed-plus-gauge coordinates, and between six Cartesian Gram coordinates and quotient-plus-gauge coordinates, are locally invertible. The equivariance in the two gauge directions gives the claimed block determinant reduction `det D Psi = gamma q`, with nonvanishing analytic `gamma`.

The rank-at-least-two argument is valid: two stationary nonzero pairwise row-norm gradients would make the corner row/column equivalent to a real sign matrix. Its exact sixteen-case enumeration has positive value only 256. Otherwise two independent pair-norm gradients can be exposed in disjoint seed-angle pairs.

The Cayley factor reductions are exhaustive. Even sign changes and coordinate permutations act transitively on the pairs of distinct factors. A single factor has no critical zero in the open physical domain. The double intersection reduces to `y=-x`, `x^2=z(z+3)/(z-1)`, and physical Gram positivity leaves exactly `-3<z<0`.

Away from `z=-1`, where the corner value is 256, the spatial Hessian has one positive and one negative direction, the phase entry is positive, and its radical is exactly the tangent to the double curve. The rank-three and rank-two arguments correctly force that radical into the actual differential image. No unproved lifting or Gram-factorization uniqueness is used.

The critical-value resultant and its uniform sign on `[0,26]` passed exact replay. This closes precisely the nontransverse double-zero branch identified in the statement; it is not, by itself, the transverse branch or a multi-partition minimax theorem.

## Combined one-partition theorem: logical assembly

The proof in `../critical/ONE_PARTITION.md` correctly requires that the **entire** active set belong to one four-block partition. This permits the particular maximal provider guaranteed by restricted F7 to be used without assuming that an arbitrary chosen corner supplies the same local image. Inactive corners have a strict finite gap. A nonzero single active gradient, or strict separation of the two complementary active gradients from zero, then gives a common decreasing Hadamard arc through the certified analytic provider.

This assembly remains conditional on all listed component certificates and on the explicitly restricted F7 coverage input. It does not claim that cross-partition active-gradient balances have been excluded.
