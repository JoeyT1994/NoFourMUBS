# Draft analytic model estimates through radius 1/10

This is a scoped research input, not an admitted physical theorem. No radius-1/10 exclusion or new Lean admission is asserted. The supplied radius-1/40 packet remains unchanged. The rational consequences are checked by `model_radius_01_guards.py`; a Lean proof must still bind the analytic estimates to physical matrices and all finite/normalization operations.

Let `rho = max_j |u_j| <= r = 1/10`, where the selected dephased corner is the stationary Fourier corner with its four free phases perturbed by `u`. Each nontrivial side-row sum `S` has `|S| <= 2 rho`, from the unit-circle exponential Lipschitz estimate and cancellation at the Fourier seed. The inner product of the two corresponding rows of the selected corner has modulus at most `4 rho`.

## Nonsingular side chart and an explicit Lipschitz bound

For any unit anchor `z`, put `a = S conjugate(z)-1`, `t = |a|`, and

`k(t) = sqrt(t^(-2)-1/4)`.

Then `4/5 <= 1-2 rho <= t <= 1+2 rho <= 6/5`, and

`k(t)^2 >= (5/6)^2 - 1/4 = 4/9`.

Thus the chart's reciprocal and positive square root are nonsingular. Solving the sum and the two unit-modulus equations gives the two remaining normalized entries exactly as

`a(1/2 - i k(t)), a(1/2 + i k(t))`, in either order.

The derivative satisfies

`|k'(t)| = 2 / (t^2 sqrt(4-t^2))`.

The square of its denominator is `t^4(4-t^2)`. Its derivative is `2 t^3 (8-3t^2)>0` on `[4/5,6/5]`, since `3(6/5)^2 < 8`. Therefore

`|k'(t)|^2 <= 4 / ((4/5)^4 (4-(4/5)^2)) < (12/7)^2`.

The mean-value estimate gives `|k(t)-k(1)| <= (12/7)|t-1| <= (24/7)rho`. At the Fourier center, `a=-1` and each multiplier `1/2 +/- i k(1)` has modulus one. Hence each of the two normalized side entries differs from its corresponding Fourier root by at most

`|a+1| + |a| |k(t)-k(1)| <= [2 + (6/5)(24/7)]rho = (214/35)rho`.

Write `M=214/35`.

## Exhaustive opposite orientation and block invertibility

If the two nontrivial normalized side rows use the same Fourier order, their first entries both equal one. Each of the other two products in their inner product differs from one by at most `2 M rho`, because the actual entries and their Fourier comparison entries are unit. Their inner product consequently has modulus at least

`3 - 4 M rho >= 3 - 4 M/10 = 97/175 > 2/5 >= 4 rho`.

This contradicts physical block orthogonality, whose selected-corner inner-product bound is `4 rho`. The margin at `r=1/10` is exactly `27/175`. Thus both side blocks use opposite orders. Permuting the remaining two columns or rows independently restores the convention of the supplied completion model.

The normalized side matrix `K` differs from its Fourier matrix in only four entries, each by at most `M rho`. Its operator-norm difference is at most its Frobenius norm, hence at most `2 M rho`. Consequently

`sigma_min(K) >= sqrt(3) - 2 M rho > 5/3 - 214/175 = 233/525 > 0`.

The inverse exists uniformly. The earlier stronger lower bound `sigma_min(K)>1` is unnecessary for the physical reconstruction identity. The same argument applies to the transposed side matrix. Therefore the physical lower block is uniquely represented by

`T = - C E* Z (K*)^(-1)`

with the same factors, transpose, and dephasing conventions as the supplied packet. This does not imply that every auxiliary model matrix is physical.

## Anchor half-plane without a closeness estimate

Any three unit phases contained in a closed semicircle have a sum of modulus at least one. To see this, choose ordered angle lifts `alpha <= beta <= gamma` with `gamma-alpha <= pi` and put `x=beta-alpha`, `y=gamma-beta`. Then `x,y>=0`, `x+y<=pi`, and

`|exp(i alpha)+exp(i beta)+exp(i gamma)|^2`
`= 3+2(cos x+cos y+cos(x+y))`
`= 1+8 cos(x/2) cos(y/2) cos((x+y)/2) >= 1`.

If all three entries of a physical side row had negative real part, they would lie in the left semicircle and violate `|S|<=1/5<1`. Thus at least one entry has nonnegative real part. Select it as the first anchor by permuting the three external columns. The external rows give the corresponding independent choice for the transposed side. Subsequent ordering of the other two entries does not change the chosen anchors.

This preserves the corner and allows the same anchor domains `arg(z),arg(x) in [-pi/2,pi/2]`, with the other two anchors unrestricted. It avoids the failed radius-.1 estimate `1/2-8rho>0`.

## Optional side-factor pruning constant

The supplied six-coefficient discrepancy argument gives `(12+24sqrt(3))rho+112rho^2`. Since `sqrt(3)<7/4`, at `rho<=1/10` this is less than

`[12+24(7/4)+112/10]rho = (326/5)rho < 66rho`.

Thus a future checker may use the explicit constant 66 in place of 64 when applying that already-regenerated six-coefficient identity. Changing only the source radius while retaining the constant 64 at .1 is not justified by this bound.

## Native width and formal boundaries

The estimates above are for the exact physical target radius `1/10`. A future native checker needs a separately checked outward width, scalar source bound, arithmetic guard, all local contractions, and a complete global phase cover. None is supplied here at .1. The scalar and inverse estimates do not make a failed interval enclosure into an exclusion. In particular, the current finite certificate still requires every terminal to be replayed at its claimed radius.
