# D2 — carrier-only confinement and exhaustive 4+1 exclusion near F6

**Status: PROVED, computer-assisted, on an explicitly bounded physical domain.**
This is a new global necessary distance inequality for a hypothetical 4+1,
not a proof of global 4+1 emptiness and not a covering of the entire strict
`a=-1, R>0` seed domain.

## 1. Strongest statement

Let `F[r,j] = exp(pi i rj/3)/sqrt(6)`, with indices 0 through 5. For unit
vectors write `P_v = vv†`. Define the Fourier-orbit carrier distance

`d_F(U) = min_(M, sigma) max_j ||P_(U_j) - P_(M F_(sigma(j)))||_op`,

where `M` ranges over every row monomial unitary and `sigma` over every
permutation of the six carrier columns. Row operations act on the **whole**
configuration, not just its carrier. The minimum is attained.

**Theorem D2.1.** For every physical order-six carrier `U` with

`d_F(U) <= 1/1024`,

and for **every** orthonormal quartet `k_1,...,k_4` satisfying

`|(k_i)_r|^2 = |U_j† k_i|^2 = 1/6` for all `i,r,j`,

there is no unit pure ray `w` satisfying

`|w_r|^2 = |U_j†w|^2 = |k_i†w|^2 = 1/6` for all `r,j,i`.

Equivalently, any genuine physical 4+1 must obey the new necessary bound

**`d_F(U) > 1/1024`.**

No completion, balance, shared symmetry, root-count bound, or choice of a
third basis is assumed. In fact the proof works for any unitary carrier in
this distance domain, even without requiring its entries to be flat.

**Theorem D2.2: actual sixteen-probability certificate.** Define

`E41(U,K;w) = sum_r (|w_r|^2-1/6)^2`
`           + sum_j (|U_j†w|^2-1/6)^2`
`           + sum_i (|k_i†w|^2-1/6)^2`.

For every quartet in Theorem D2.1, every unit pure `w`, and any exhibited
matching whose maximum projector distance is `d <= 1/1024`,

**`E41(U,K;w) > ((1/1024 - d)/4)^2`.**

One may take `d=d_F(U)`. Consequently, throughout the entire closed
carrier domain `d_F(U) <= 1/2048`, simultaneously for all such quartets
and all pure anchors,

**`E41(U,K;w) > 1/67108864 = 2^(-26)`.**

This concerns the actual sixteen probabilities. It does not use the
already disproved unconditional `E_full > 1/18` route.

## 2. What supplies coverage, rather than another reference point

The certificate covers **every** standard-flat ray whose six Fourier
probabilities differ from `1/6` by at most `1/1024`. Every common-flat ray
for a carrier in the stated domain belongs to this set after the common
monomial matching. An exact covering forest confines all such rays to
48 explicitly supplied rational-center neighborhoods of projector radius
`1/50`. These centers are **not assumed to be exact solutions**; no assertion
that there are exactly 48 roots or branches is used.

The forest has 32 closed phase charts, 389,672 certified leaves, and no
unresolved boxes. For the exact relaxed compatibility graph of its 48
labels, all 23,760 candidate anchor/four-neighbor choices fail quartet
orthogonality. Thus every possible carrier–quartet–anchor frame in the
stated domain is covered, including quartets that are not subsets of any
selected six-ray basis.

This is the addition beyond round one: the carrier alone is now confined
by an explicit inequality, and **every admissible quartet** over that
carrier is controlled. Round one's joint-frame distance hypothesis is
not silently replaced by a carrier-distance hypothesis; the new all-ray
cover proves the missing implication.

## 3. Explicit positive-dimensional strict example and its limit

Let `omega=exp(2 pi i/3)`, `F3=(omega^(rj))`,
`zeta(x)=(1+i x)^2/(1+x^2)`, and `A(x)=diag(1,zeta(x),1)`. The raw carriers

`H(x) = [[F3, A(x)F3], [F3, -A(x)F3]]`

are physical for every real `x`. For every `|x|<=1/2048`, all their
admissible quartets satisfy the uniform energy gap above. The exact
matched squared column distances are zero for the first three columns
and `8 x^2/[9(1+x^2)]` for the other three.

The ordered rows `(0,5,1)` and columns `(0,3,2)` give the already-dephased
corner seeds

`(a,b,c,d)=(-1,omega,zeta(x),omega^2)`,

with

`R=576 x^2(1-x^2)^2/(1+x^2)^4`.

Thus the punctured interval is in strict `a=-1, R>0`, and its `R=0`
limit `x=0` is covered as well. The family varies through infinitely many
Hadamard equivalence classes, not merely gauge presentations of `F`.

This is an explicitly covered interval of physical carriers, **not** a
claim to have identified an entire maximal algebraic component.

> **Import note (26 September 2026).** `H(x)` is the Fourier-family matrix
> `N(zeta(x),1)` of [FourierBlocks](../FourierBlocks/FourierBlockClassification.md);
> its upper-left block is `F3`. These carriers are therefore already excluded
> by Jaming et al. The family shows that the distance domain contains
> infinitely many classes, but not that it contains carriers outside the
> published exclusions. See [README.md](README.md#what-d2-adds-beyond-the-published-exclusions)
> and `nonvacuity.py` for a carrier that is outside them.

## 4. Sheets, guards, and remaining scope

The main domain is defined directly on completed physical carriers. The
proof is independent of reconstruction sheets. For **either** fixed-corner
sheet `epsilon=+,-`, its output is excluded whenever
`d_F(H_epsilon/sqrt(6))<=1/1024`. It uses no opposite-corner substitution,
no extra divisor guard, and no discarded ray-chart boundary.

Crucially, membership of one sheet at particular seeds does **not** assert
membership of the other sheet at those same seeds. The explicit `H(x)`
example constructs actual carriers; it does not classify the other
completion of each displayed corner. Both sheets are covered within the
stated carrier domain, but no whole two-sheet seed cylinder is claimed.

Still uncovered: carriers with `d_F(U)>1/1024`, including any such outputs
on either strict sheet, and physical boundary strata outside this distance
domain. There is no proof that all compatible configurations must enter
this domain. The full global target remains unresolved.

## 5. Acceptance

`python3 verify.py` independently reconstructs the physical coefficients,
checks all 389,672 leaves with exact outward integer intervals, rebuilds
the rational graph, and checks every candidate four-clique. Its mathematical
acceptance uses only the Python standard library and no floating-point
arithmetic. A full run takes about one minute.

`python3 verify_seed_family.py` separately checks the displayed family and
strict-corner formulas in exact symbolic arithmetic. Eleven additional
regression/mutation tests are in `tests/`.
