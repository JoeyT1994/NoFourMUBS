# Polar-frame budgets: Gaussian phase radius 0.70

This supplements `EXTENDED_GRAPH_PROOF.md` and `BASIS_BUDGET_PROOF.md`. It uses the same independently regenerated 48 exact centers and all the previous necessary pair inequalities.

## Target configurations and quantitative statement

The exact verifier `verify_polar_budget.py` checks:

| Gaussian phase radius | Björck phase radius | Probability deficit epsilon |
|---:|---:|---:|
| 67/100 = 0.67 | 93/200 = 0.465 | 1/20000 |
| 27/40 = 0.675 | 23/50 = 0.46 | 1/20000 |
| 27/40 = 0.675 | 9/20 = 0.45 | 1/20000 |
| 7/10 = 0.70 | 2/5 = 0.40 | 1/2000 |
| 7/10 = 0.70 | 17/40 = 0.425 | 1/20000 |

For either certified row, any two orthonormal bases whose rays lie in the indicated ball union satisfy

`min_{i,j}|<k_i,l_j>|^2 <=1/6-epsilon`.

These are conditional ray-ball statements. The matrix-neighborhood radius is established separately by the global vector-cover certificate. For covers using the supplied quantized centers, subtract 1/1000 from each displayed radius.

## 1. Exact polar error identity

Let `A=UP` be the polar decomposition of an invertible center frame, with `U` unitary and `P=(A^*A)^(1/2)>0`. Its distance to the unitary group is

`d_A=||A-U||_F=||P-I||_F`.

For any unitary `K`, put `W=U^*K`. Direct trace expansion gives

`||K-A||_F^2-d_A^2=Tr((W-I)^*P(W-I))`.

Therefore

`||K-U||_F^2 <= (||K-A||_F^2-d_A^2)/sigma_min(A)`.

The phase-ball budget gives `||K-A||_F^2<=a_A^2=(1/6)sum_j r_(a_j)^2`. A label set with `a_A^2<d_A^2` is impossible. Otherwise, a large portion of its phase-ball error budget may already be required merely to correct the center frame's failure of orthogonality. The displayed identity accounts for this correction exactly.

## 2. Uniform exact constants for the nonorthogonal center frames

The radial pair graph has 52 possible six-label sets. Sixteen corresponding center frames are exactly unitary. The remaining 36 have Gram matrix satisfying

`(G-alpha I)(G^2-kappa G+(2/3)I)=0`,

`alpha=2/sqrt(3)`, `kappa=3-alpha`.

The verifier additionally checks the trace identity

`Tr(G^2-kappa G+(2/3)I)=2(alpha^2-kappa alpha+2/3)`.

The denominator on the right is nonzero. Thus the spectral projector for `alpha` has trace two. Since `Tr G=6`, the other two roots also have multiplicity two. Write those roots as `lambda_-,lambda_+`; they are distinct, positive, and obey

`lambda_-+lambda_+=kappa`, `lambda_-lambda_+=2/3`.

It follows that the polar distance squared is exactly

`d_A^2=12-4[sqrt(alpha)+sqrt(kappa+2sqrt(2/3))]`.

Exact rational radical enclosures prove

`d_A^2>151/625=0.2416`, `sigma_min(A)>7/10`.

For the singular-value bound, the script verifies that `49/100` lies to the left of the quadratic vertex and has strictly positive quadratic value; hence it is below `lambda_-`. The previous upper bound places every Gram eigenvalue below `49/36`.

Consequently every eigenvalue of `I-G` has absolute value below `51/100`.

## 3. An exact polynomial approximation of each polar frame

Let `q=51/100` and `N=12`. The convergent binomial series gives

`G^(-1/2)=sum_(n>=0) c_n(I-G)^n`,

`c_n=binom(2n,n)/4^n`, `0<c_n<=1`.

Define the degree-12 approximation

`R_N=sum_(n=0)^N c_n(I-G)^n`, `U_N=A R_N`.

Then

`||U_N-U||_F <=||A||_F q^(N+1)/(1-q)`

`< e_N=(5/2) q^13/(1-q)`.

Here `||A||_F=sqrt(6)<5/2`, since every center column is normalized. The bound is approximately 0.000806. The exact terminating rational is written in the replay receipt. Exactly unitary center frames instead use `U_N=A` and error zero.

All polynomial matrices are computed exactly in the same algebraic field as the centers. To avoid adjoining `sqrt(6)`, the script stores `sqrt(6) U_N`; cross-Gram matrices then require only division by six.

## 4. Whole-basis comparison using the polar centers

For a label set `A`, let

`b_A=sqrt((a_A^2-d_lower)/s_lower)`,

where `(d_lower,s_lower)=(151/625,7/10)` for a mixed center frame and `(0,1)` for an exactly unitary center frame. The preceding identity proves that every compatible actual unitary basis is within Frobenius distance `b_A` of the exact polar frame.

For two label sets, the actual cross-Gram differs from the polynomial polar cross-Gram `U_(N,A)^* U_(N,B)` by at most

`b_A+b_B+e_A+e_B+e_A e_B`.

The first two terms compare the actual unitary bases with their exact unitary polar frames. The remaining terms compare the two exact polar frames with their polynomial approximations.

Let

`D_N=|| |U_(N,A)^*U_(N,B)|-(1/sqrt(6))ones ||_F`.

As in the preceding basis-budget proof, if every actual cross probability were at least `1/6-epsilon`, its modulus matrix would be within `33epsilon` of the constant modulus matrix. Thus it suffices to certify

`D_N>b_A+b_B+e_A+e_B+e_A e_B+33epsilon`.

The script computes a rational lower bound for `D_N^2`, upper bounds every term on the right, and compares their squares.

## 4.1 A sharper spherical bound for exactly unitary center frames

When both center frames are exactly unitary and the radii are uniform within each basis, the verifier uses the sharper bound

`||K^*L-A^*B||_F <=2sqrt(6) sin((r_A+r_B)/(2sqrt(6)))`.

Indeed, after aligning column phases, the 36 entrywise phase errors between `K` and `A` have total squared norm at most `6r_A^2`, and each individual error has magnitude below pi. The function `t -> cos(sqrt(t))` is convex on `[0,pi^2)`. Jensen gives

`Re Tr(A^*K)/6 >=cos(r_A/sqrt(6))`.

Thus the angle between the real unit-sphere vectors `A/sqrt(6)` and `K/sqrt(6)` is at most `r_A/sqrt(6)`. The same is true for `B,L`. Apply the spherical angle triangle inequality to the unitary matrices `KA^*` and `LB^*`, both of Frobenius norm `sqrt(6)`, through the identity matrix. Their Euclidean chord is exactly `||K^*L-A^*B||_F`, up to unitary left/right multiplication. This proves the displayed bound. All angles involved are smaller than pi, as verified by the radius bounds.

For exact arithmetic the script uses the rational degree-five upper polynomial

`2sqrt(6) sin(s/(2sqrt(6))) <=s(1-s^2/144+s^4/69120)`, `s=r_A+r_B`.

It checks `s^2<24`, so the sine argument is below one and the alternating upper polynomial applies. The vector phase errors also satisfy the Jensen domain because every label radius is below pi.

This improvement is decisive for `r_G=0.675`, `r_B=0.46`: the improved cross-Gram budget is approximately `1.12487350`, below the smallest relevant center modulus distance `1.12765346`. The old additive budget would have been `1.135`.

## 5. Exhaustive assembly and replay

For every ordered pair of feasible six-label sets, including overlaps, either a pointwise sine/antipodal witness proves the low cross probability, or the polynomial polar budget proves it. No assumption of twelve distinct labels is used.

Run

`python3 verify_polar_budget.py`.

It imports and replays the preceding exact verifiers. All center identities, spectral identities, polynomial coefficients, necessary pair graphs, label cliques, and cross-pair comparisons are regenerated. Every acceptance comparison uses exact integer/rational arithmetic and rigorous algebraic root enclosures. Numerical polar decompositions used during exploration do not enter the verifier.
