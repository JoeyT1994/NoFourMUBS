# A fixed 48-ray obstruction with phase radii 0.4 and 0.3

## The precise conditional obstruction — PROVED / CERTIFIED

Let `C={c_0,...,c_47}` be the 48 unscaled unit-entry vectors generated below. Set `t_j=2/5=0.4` radians for the 12 Gaussian centers and `t_j=3/10=0.3` radians for the 36 Björck centers. Define the projective phase balls

`B_j={lambda c_j .* exp(i x)/sqrt(6): |lambda|=1, sum x_i=0, ||x||_2<=t_j}`.

**Quantitative theorem.** If `v_1,...,v_6` are an orthonormal basis in this union and `w` is any unit vector in the union, then

`min_j |<v_j,w>|^2 <=8/75=1/6-3/50`.

Thus the guaranteed deficit from the unbiased probability `1/6` is the explicit uniform margin `3/50=0.06`.

In particular, there do not exist seven unit vectors `v_1,...,v_6,w` in the union of these 48 balls such that `v_1,...,v_6` are an orthonormal basis and `w` is unbiased to every `v_i`.

Consequently, for any Hadamard `H`, if every vector unbiased to both `I` and `H/sqrt(6)` belongs to this union, then `QuartetEdge H` is false. This conclusion excludes a completed MUB triple plus one further common unbiased ray, which is stronger than excluding two further bases.

This theorem does **not** assert that one unbiased partner basis cannot exist: the 16 center bases below are genuine partners of the Fourier matrix.

## Exact centers

Put

`q=exp(pi i/3)`, `zeta=exp(pi i/6)`,

`d=(1-sqrt(3))/2+i sqrt(sqrt(3)/2)`.

The three seed sequences are

`g_j=zeta^(j^2)`, its complex conjugate, and

`b=(1,i d,-d,-i,-conj(d),i conj(d))`.

For each seed, apply the 36 combinations

`v_j=seed_{j-s mod6} q^(m j)`, `0<=s,m<6`,

and divide by the first entry. Remove exact duplicates, keeping the order of first appearance. This gives six Gaussian, six conjugate-Gaussian, and 36 Björck vectors, in that order. Within the Gaussian orbits the order is modulation `m=0,...,5`; within the Björck orbit it is lexicographic `(s,m)`.

The verifier checks all entries have modulus one, the first entry is one, all 48 vectors are distinct, and every unnormalized Fourier sum has squared modulus six. Thus all centers are exactly unbiased to both standard and Fourier bases.

No completeness theorem for the exact Fourier solutions is needed for the conditional obstruction. A separate global bin cover establishes the required containment for the perturbed `H`.

## The robust orthogonality graph

For two vectors in balls `B_i` and `B_j`, choose their scalar phases compatibly. Their normalized inner products differ from the center inner product by at most

`(1/6) sum_k |exp(i(x_k-y_k))-1| <= ||x-y||/sqrt(6) <= (t_i+t_j)/sqrt(6)`.

Consequently actual orthogonality requires

`|sum_k conj(c_i,k)c_j,k|^2 <=6(t_i+t_j)^2`.

These thresholds are `96/25` for Gaussian/Gaussian, `147/50` for Gaussian/Björck, and `54/25` for Björck/Björck pairs. The verifier also checks that the resulting graph is identical to the graph for uniform radius `9/25=0.36`, whose threshold is `1944/625`.

The verifier constructs the graph using this threshold. All comparisons are separated strictly from the threshold by exact rational intervals. It obtains 390 undirected edges.

Two orthogonal vectors cannot be assigned the same label: the center sum would be six, while `36>24 max_j(t_j)^2`. Thus an actual orthonormal basis gives a six-clique of this graph.

The exact exhaustive search obtains **exactly 16 six-cliques**. It additionally verifies two facts:

1. Every one of those six-cliques is an exact orthogonal basis at the centers.
2. For every such clique `A` and every center label `j`, there is an `i in A` with exact center inner product zero.

Suppose an additional vector `w` in label `j` were unbiased to an actual basis with label clique `A`. Choose the exact zero witness `i` from the second assertion. The corresponding actual overlap satisfies

`|<v_i,w>| <=(t_i+t_j)/sqrt(6)<=4/(5sqrt(6))<1/sqrt(6)`,

because the largest sum of two label radii is `4/5<1`. Squaring gives `min_i |<v_i,w>|^2 <=(4/5)^2/6=8/75`. The exact subtraction `1/6-8/75=3/50` is also checked by the verifier. This proves the quantitative theorem and contradicts unbiasedness.

The replay receipt lists all 16 cliques and a zero witness for every one of the 16*48 clique/label pairs. These lists are regenerated and checked, rather than trusted as input.

## Quantized centers for the global cover

The input `data/quantized48.json` supplies candidate phase centers with denominator `Q=12288` cycles. These are witnesses, not assumed approximations.

The verifier proves independently that every noninitial phase differs from its exact algebraic center by less than `1/3000` radians, and the initial phase difference is zero. Centering the resulting real phase error does not increase its Euclidean norm, so the quantized center is at mean-free phase distance less than

`sqrt(5)/3000<1/1000`

from the exact center.

Therefore a global cover by radius `399/1000` balls about the 12 quantized Gaussian centers and radius `299/1000` balls about the 36 quantized Björck centers implies the required cover by the exact-center balls. The robust graph theorem then applies directly. Alternatively, a uniform quantized radius `359/1000` implies the uniform exact radius `9/25`, for which the same graph is also certified.

## Arithmetic and replay

Run

`python3 -I scripts/verify_48_graph.py`

from the package root. The script reads the shared `data/quantized48.json`. Only Python's standard library is used.

The exact algebraic arithmetic uses the positive real number `b=sqrt(sqrt(3)/2)` satisfying `b^4=3/4`. Real algebraic coefficients are represented in `Q[b]` with basis `1,b,b^2,b^3`; complex coefficients add an independent imaginary part. The polynomial `4X^4-3` is Eisenstein at 3, so this representation distinguishes field elements exactly. Its positive real embedding is enclosed by a rational interval obtained from integer fourth-root isolation.

Graph decisions evaluate exact algebraic squared overlaps in that rational interval. No floating-point operation decides an edge or a proof claim.

For the quantized-center check, rational alternating-series bounds for Machin's identity

`pi=16 atan(1/5)-4 atan(1/239)`

certify a compact decimal rational enclosure of pi. The identity follows from the tangent addition formulas and the fact that the indicated angle lies in `(0,pi/2)`. Degree-40 complex exponential Taylor polynomials and explicit integral-remainder bounds enclose every required root of unity. A chord estimate then proves the angular error: the verifier shows each chord is shorter than

`a-a^3/24 <=2 sin(a/2)`, `a=1/3000`.

All comparisons are rational. Printed or separately supplied numerical arrays were used only to propose the integer quantized-center indices.

## Scope

**CERTIFIED:** the center identities, the 390-edge graph, its 16 six-cliques, all zero-overlap witnesses, and the quantized-to-exact center distance.

**PROVED:** the robust graph theorem and its conditional implication for `QuartetEdge H`.

**NOT ESTABLISHED by this component alone:** that every `I,H`-unbiased ray for all `d([H],[F6])<=rho` lies in the specified phase balls. That is the global vector-cover component's obligation.
