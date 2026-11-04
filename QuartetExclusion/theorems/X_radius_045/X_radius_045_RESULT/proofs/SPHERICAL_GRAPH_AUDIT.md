# Independent audit of the spherical cross-Gram estimate

**Verdict: the spherical estimate and its implementation in `work/x2_graph/verify_polar_budget.py` are sound.** The scalar probability-to-modulus conversion and the handling of overlapping label sets are also consistent. This is a focused mathematical audit; the graph's own exact replay supplies its finite enumerations and algebraic comparisons.

## Normalization and phase alignment

Let A and B be exactly unitary center frames, with entries of modulus `1/sqrt(6)`, and let K and L be actual unitary bases assigned to these frames. Suppose every column assigned to A has mean-free phase distance at most `r_A`, and every column assigned to B has distance at most `r_B`. The radii used in the production configuration are `r_G=67/100` and `r_B=93/200` radians.

Each actual column may be multiplied by its own scalar phase so its entrywise phase errors relative to its assigned center have squared sum at most the corresponding radius squared. This changes neither unitarity nor any cross-Gram modulus. Relabeling the six columns to match the chosen center frame also preserves those quantities.

For the A/K pair, call the resulting 36 real phase errors `x_ij`. Then

`sum_(i,j) x_ij² <= 6*r_A²`,

and each `|x_ij|<=r_A<pi`. Since `t -> cos(sqrt(t))` is convex on `[0,pi²)` and decreasing there, Jensen's inequality gives

`Re Tr(A^*K)/6 = (1/36)sum_(i,j) cos(x_ij)`

`>= cos(sqrt((1/36)sum x_ij²)) >= cos(r_A/sqrt(6))`.

The normalization is essential: both A and K have Frobenius norm `sqrt(6)`, so the displayed trace is their real unit-sphere inner product. Their real spherical angle is at most `r_A/sqrt(6)`. The same argument applies to B and L.

## Cross-Gram comparison

The matrices `X=KA^*` and `Y=LB^*` are unitary, have Frobenius norm `sqrt(6)`, and are within spherical angles `r_A/sqrt(6)` and `r_B/sqrt(6)` of the identity. The spherical triangle inequality gives

`angle(X,Y) <= (r_A+r_B)/sqrt(6)`.

All radii here are small enough that this sum is below pi. The Euclidean chord therefore obeys

`||X-Y||_F <= 2sqrt(6) sin((r_A+r_B)/(2sqrt(6)))`.

Multiplication on the left by `K^*` and on the right by B shows

`K^*(X-Y)B = A^*B-K^*L`.

Unitary invariance of the Frobenius norm yields exactly the claimed estimate

`||K^*L-A^*B||_F <= 2sqrt(6) sin((r_A+r_B)/(2sqrt(6)))`.

No independence or disjointness of the two label sets was assumed. The same argument covers coincident and overlapping sets. It does require each center frame in this branch to be exactly unitary and the phase radius to be uniform within that frame; the verifier checks both prerequisites before applying this branch.

## Exact polynomial and deficit conversion

For `s=r_A+r_B`, the degree-five alternating sine upper bound is

`2sqrt(6) sin(s/(2sqrt(6))) <= s(1-s²/144+s⁴/69120)`.

The coefficients `1/144` and `1/69120` follow by direct substitution into `x-x³/6+x⁵/120`. The checker verifies `s²<24`, so the sine argument is below one and the alternating remainder has the required sign.

Suppose all actual cross probabilities satisfy `p_ij>=1/6-epsilon`. Each row sums to one. Writing `d_j=p_ij-1/6` and `z_j=d_j+epsilon`, one has `z_j>=0`, `sum z_j=6epsilon`, and

`sum_j d_j²=sum_j z_j²-6epsilon² <=30epsilon²`.

Across six rows, the squared probability deviation is at most `180epsilon²`. Since

`|sqrt(p)-1/sqrt(6)| <=sqrt(6)|p-1/6|`,

the modulus matrix lies within `sqrt(1080)epsilon<33epsilon` of the constant-modulus matrix. Thus an exact center-modulus distance exceeding the spherical budget plus `33epsilon` proves that at least one actual cross probability is below `1/6-epsilon`. The production choice `epsilon=1/20000` is consistent with this implication.

The other branch compares actual unitary bases to polar frames of the nonunitary center frames and includes the polynomial polar approximation error. The spherical replacement affects only the branch with zero approximation error. It does not assert that a perturbed Hadamard has exactly sixteen compatible third bases; the finite objects being counted are possible sets of six center labels.

## Scope

The graph result is conditional on every column of both candidate bases belonging to a certified exact-center phase ball. A separate exhaustive vector cover supplies that condition for the actual Hadamard neighborhood. The quantized-center cover must use radii smaller by `1/1000`; the planned `.45` cover uses `.669` and `.464`, matching `.67` and `.465` after the certified quantization error.

Combining a complete cover with this graph result excludes two further mutually unbiased bases K and L. It does not exclude one further basis K, and it does not claim global nonexistence of quartets outside the certified neighborhood.
