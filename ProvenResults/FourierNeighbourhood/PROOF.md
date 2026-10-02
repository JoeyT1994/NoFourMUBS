# Proof of RESULT D2

All vectors below are in complex dimension six. Indices for matrix entries
are 0,...,5. All probabilities are normalized probabilities, not raw
Hadamard amplitudes. The only computer-assisted premise is the finite
integer/rational certificate checked by the included `verify.py`.

## 1. Physical domain and equivalences

A physical carrier is `U=H/sqrt(6)` with `|H_rj|=1` and `HH†=6I`.
Set `q=(1+i sqrt(3))/2` and `F_rj=q^(rj)/sqrt(6)`.
For unit vectors set `P_v=vv†` and

`D(v,u)=||P_v-P_u||_op=sqrt(1-|v†u|^2)`.

The identity follows by restricting the difference of projectors to the
span of `u,v`; it includes coincident or orthogonal rays. Also

`D(v,u) <= ||v-u||_2`,                                      (1)

because `2-2 Re(v†u) - (1-|v†u|^2)=|1-v†u|^2>=0`.

For every density matrix `P_x` of a unit pure vector,

`|Tr((P_v-P_u)P_x)| <= D(v,u)`.                             (2)

Changing both rays in a probability therefore changes it by at most the
sum of their projector distances.

Let `M` range over all row monomial unitaries and `sigma` over all column
permutations, and define `d_F(U)` as in RESULT.md. The row-monomial group
is a finite union of compact tori, and the column permutations are finite,
so the minimum is attained. Multiplying `U`, the quartet, and the anchor
by the same `M†` preserves all hypotheses and the sixteen-error sum; the
standard-basis probabilities are merely permuted. Column permutations
likewise preserve their six-term sum. Hence it suffices to work with a
matching for which

`max_j D(U_j,F_j)<=d`.                                    (3)

The defining domain can be written entirely in raw matrix entries. A
matching is a row permutation `pi`, column permutation `sigma`, and six
phases `alpha_r`; its distance is at most `d` exactly when, for all `j`,

`|sum_r conj(H_rj) alpha_r q^(pi(r)*sigma(j))|^2`
`                                      >=36(1-d^2)`.       (4)

Together with `HH†=6I`, `|H_rj|=|alpha_r|=1`, this gives explicit equations
and inequalities for the claimed physical domain. Every permutation is
allowed: no unproved finite-template coverage is being assumed. Column
phases disappear from (4).

We use the constants

`delta=1/1024`, `rho=1/50`, `tau_o=1/25`, `tau_b=1/24`.

## 2. Exhaustive confinement of nearly Fourier-flat rays

### 2.1 The exact six physical residuals

A standard-flat ray has a representative `v=z/sqrt(6)` with `z_0=1` and
`|z_r|=1`. The dephasing is always possible because its first coordinate
is nonzero. Define

`R_j(z)=|sum_r q^(-rj)z_r|^2-6`
`      =2 Re sum_(i<k) q^(j(k-i)) z_i conj(z_k)`             (5)
`      =36 (|F_j†v|^2-1/6)`.

The factor 36 is important: both `F_j` and `v` have normalization
`1/sqrt(6)`. The six diagonal terms in the squared sum give exactly 6.
Equation (5) follows by pairing conjugate off-diagonal terms.

`data/field_coefficients.json` lists all 6 by 15 pair coefficients as
`(a+i sqrt(3)b)/2`. The verifier reconstructs them from the physical
Fourier matrix, proves the sixth-root multiplication table and column
orthogonality exactly, and checks that the supplied coefficient file
agrees. No fitted residual function is accepted.

Let `T_delta` be the set of standard-flat rays for which all six
`|R_j|<=36 delta`. We prove:

**Confinement lemma.** Every ray in `T_delta` is at projector distance
strictly less than `rho` from at least one of the 48 exact rational
standard-flat centers in `data/centers.json`.

The centers need not be zeros of (5). No enumeration or regularity theorem
for the exact common-unbiased rays enters this lemma.

### 2.2 Complete phase charts, including seams

For each bit vector `b in {0,1}^5`, use the closed chart

`z_0=1`,
`z_(i+1)=(-1)^(b_i)(1+i t_i)^2/(1+t_i^2)`, `-1<=t_i<=1`.   (6)

For a phase with nonnegative real part, choose the positive chart; for
one with nonpositive real part, choose the negative chart. A pure imaginary
phase lies on chart seams and is included in both relevant charts. Thus
the 32 closed cubes cover the whole five-torus. The point `-1` and every
endpoint are included; the denominator in (6) is always at least 1.

`data/cover.bin.gz` encodes a full binary midpoint tree rooted at
`[-1,1]^5` in each chart. A split replaces one closed interval `[a,b]` by
`[a,(a+b)/2]` and `[(a+b)/2,b]`. Their union is the parent, including the
shared boundary. There are no omitted/default/unresolved leaves.

A leaf either proves that no point in its box belongs to `T_delta`, or
proves that the entire box lies in one of the stated center neighborhoods.

### 2.3 Certified exclusion inequality on a box

Write a box as a product of closed intervals `[a_i,b_i]`, with midpoint
`m_i`. In its chart the phase function is `phi_i(t)=2 atan(t)+pi b_i`.
Every phase deviation from the midpoint is bounded by

`r_(i+1)=(b_i-a_i)/(1+min_(t in [a_i,b_i]) |t|^2)`,
`r_0=0`.                                                  (7)

Indeed `|phi_i'(t)|=2/(1+t^2)`, and the maximum distance to the midpoint
is `(b_i-a_i)/2`. Formula (7) is a bound for angular deviations, not an
unjustified linearization of the rational chart.

For the supplied integer multiplier `lambda=(lambda_0,...,lambda_5)`, put

`h(z)=sum_j lambda_j R_j(z)`
`    =2 Re sum_(i<k) W_ik z_i conj(z_k)`,
`W_ik=sum_j lambda_j q^(j(k-i))`.

At the box midpoint let `y_ik=W_ik z_i conj(z_k)`. The phase gradient gets
contributions `-2 Im(y_ik)` at `i` and `+2 Im(y_ik)` at `k`.
The elementary remainder inequality

`|exp(i u)-1-i u|<=u^2/2` for real `u`

follows by twice integrating the second derivative, whose modulus is 1.
It gives, throughout the box,

`h(z) >= h(z_mid) - sum_(i=1)^5 |grad_i h| r_i`
`                  - sum_(i<k) |W_ik| (r_i+r_k)^2`.         (8)

The exclusion leaf is accepted only if a rigorous lower bound in (8) is
**strictly greater** than `36 delta sum_j |lambda_j|`.
If all six residual bounds held, their weighted sum would be at most
that threshold by the triangle inequality. Therefore the whole closed
box is excluded. Individual signed residual tests are the special case
of a positive or negative coordinate multiplier.

### 2.4 Certified inclusion inequality on a box

Each center is encoded by five signs and five rational parameters `p/q`
in (6), with its first raw component equal to 1. Thus all center entries
are exact rational complex numbers of modulus one. Write its raw vector
as `c`, and its unit vector as `u=c/sqrt(6)`.

For every point of a box,

`|z_i-c_i| <= |(z_mid)_i-c_i|+r_i`,

using `|exp(i alpha)-exp(i beta)|<=|alpha-beta|`. Consequently, if

`sum_i (|(z_mid)_i-c_i|+r_i)^2 < 6 rho^2`,                 (9)

then `||z/sqrt(6)-u||_2<rho`. Equation (1) gives the claimed projector
bound. This is the inclusion leaf test. It does not presuppose that a
ray in the box is near a true isolated zero.

### 2.5 Integer interval implementation and coverage acceptance

All dyadic endpoints are stored implicitly as integers divided by
`GRID=2^40`. All mathematical interval computations use integer endpoints
with scale `SCALE=2^64`; Python integers are unbounded. For a rational
number, the lower endpoint uses floor division and the upper endpoint
uses ceiling division. Signed interval multiplication takes all four
endpoint products before outward division. Complex multiplication is
built from these real interval operations.

The exact irrational root is enclosed by

`floor(sqrt(3 SCALE^2))/SCALE <= sqrt(3)`
`                      <= (floor(sqrt(3 SCALE^2))+1)/SCALE`.

Integer square roots also bound complex moduli outward. A combined
coefficient `(a+i sqrt(3)b)/2` has exact squared modulus
`(a^2+3b^2)/4`; this is used instead of a dependency-sensitive interval
estimate. All gradient terms, remainders, phase radii, and the right side
of each test are rounded in the unfavorable direction. Mathematical
acceptance contains no floating-point operations. Floats used for elapsed
clock time in the report have no role in accepting a certificate.

The verifier checks every opcode, every exact midpoint split, the complete
32-root forest, exhaustion of both byte streams, all multiplier records,
all strict leaf inequalities, and the supplied metadata. The full run is:

| Item | Exact count |
|---|---:|
| Closed charts | 32 |
| Nodes | 779,312 |
| Binary branches | 389,640 |
| Leaves | 389,672 |
| Exclusion leaves | 386,907 |
| Inclusion leaves | 2,765 |
| Stored six-integer dual multipliers | 116,723 |
| Maximum tree depth | 44 |
| Center labels represented | 48 |

The identity `leaves=branches+32` is checked in addition to structural
traversal; counts alone would not prove coverage. Every possible point
in every chart lies in a leaf. Exclusion leaves contain no point of
`T_delta`; inclusion leaves satisfy (9). This proves the confinement
lemma over the entire torus, including all chart and box boundaries.

## 3. Exact finite incompatibility certificate

For center unit vectors `u_a`, define the exact rational probabilities

`p_ab=|sum_r conj(c_ar)c_br|^2/36`.

Construct two undirected graphs on the 48 labels:

- an orthogonality edge when `p_ab<=tau_o=1/25`;
- an unbiasedness edge when `|p_ab-1/6|<=tau_b=1/24`.

These are deliberately relaxed graphs. A retained edge need not describe
an exactly orthogonal or exactly unbiased pair of center rays. This can
only add possible configurations, not remove physical ones.

The verifier reconstructs every `p_ab` with exact Fractions and compares
the full graph to `data/compatibility_graph.json`. It finds 318
orthogonality edges and 288 unbiasedness edges, and neither graph has a
loop. Each anchor label has 12 unbiasedness neighbors. For each of the
48 possible anchor labels, it tests all `binomial(12,4)=495` four-element
subsets of those neighbors against all six quartet orthogonality edges.
All 23,760 tests fail to form a four-clique.

For additional separation checks, every pair probability is more than
`1/250` away from the orthogonality cutoff; every absolute unbiasedness
error is more than `1/125` away from its cutoff. These strict margins are
checked exactly but are not required to replace any graph edge test.
There are 144 orthogonal triangles among the anchor-neighbor subgraphs;
we therefore do **not** claim a three-ray-plus-anchor exclusion.

If two physical rays with center labels `a,b` are orthogonal, (2) bounds
`p_ab<2rho=tau_o`, so their labels have an orthogonality edge. A repeated
label is impossible, since the graph has no orthogonality loop. If their
physical probability is `1/6`, their labels have an unbiasedness edge
because `2rho<tau_b`. Thus any exact 4+1 consisting of rays in `T_delta`
would give one of the graph configurations exhaustively rejected above.
Overlapping center neighborhoods cause no difficulty: choose any allowed
label for each ray, and the same necessary edge conditions follow.

## 4. Transfer to every quartet over a carrier

Assume (3) with `d<=delta`. Every ray `k` standard-flat and flat in `U`
satisfies, by (2),

`||F_j†k|^2-1/6| <= d <= delta` for all `j`.

Hence every such ray, not just rays in a previously selected third basis,
belongs to `T_delta` and has a center label. An exact anchor satisfying
both reference flatness conditions does too. All four retained rays and
the anchor therefore satisfy the hypotheses of the graph obstruction.
This proves Theorem D2.1.

This step supplies the missing joint-frame control. It does not assert
that quartets move continuously with the carrier, have a bounded number
of branches, or extend to six rays. Even infinitely many rays or singular
branches inside a center neighborhood would be handled by the same
labeling and graph argument.

## 5. The actual sixteen-probability energy bound

Fix an arbitrary admissible quartet and any unit pure vector `w`. Let
`e=sqrt(E41(U,K;w))`. Each of the sixteen absolute probability errors is
at most `e`. Flatten only the magnitudes of `w`:

`v_r=exp(i arg(w_r))/sqrt(6)`.

At a zero coordinate choose an arbitrary unit phase. Both `v` and `w`
are unit vectors. For every coordinate,

`(|w_r|-1/sqrt(6))^2`
` = (|w_r|^2-1/6)^2/(|w_r|+1/sqrt(6))^2`
` <=6 (|w_r|^2-1/6)^2`.

The denominator is nonzero, including at `w_r=0`. Summing and using (1),

`D(v,w)<=||v-w||_2<=sqrt(6)e`.                            (10)

No purity or reference-flatness condition has been discarded: `w` is the
original arbitrary pure anchor, and (10) quantifies the alteration used
to feed the phase-torus cover.

By (2), every probability changes by at most `sqrt(6)e` when `w` is
replaced by `v`. Thus

`||F_j†v|^2-1/6| <= d+(1+sqrt(6))e`.                       (11)

Suppose, for contradiction, `e<=(delta-d)/4`. Since `1+sqrt(6)<4`, (11)
is at most `delta`, so the confinement lemma labels `v` as well as all
four retained rays. The retained quartet still forces an orthogonality
four-clique among its labels. Each of its probabilities against `v`
differs from `1/6` by at most `(1+sqrt(6))e`. Changing to both centers
adds less than `2rho`. Therefore its center error is strictly less than

`2rho+4e <=2rho+delta < 1/24=tau_b`,                       (12)

where the last inequality is an exact rational check:
`1/25+1/1024<1/24`.

Consequently the anchor label and four quartet labels again make a
forbidden graph configuration. This contradiction proves

`e>(delta-d)/4`, and hence
`E41(U,K;w)>((delta-d)/4)^2`.                              (13)

At `d=delta`, the contradiction applies to `e=0` and still proves exact
exclusion. On the closed half-ball `d<=delta/2`, (13) gives
`E41>(delta/8)^2=1/67108864`. All sixteen actual errors appear in this
argument. There is no completed third basis and no use of `E_full`.

## 6. An explicit varying carrier family, including a strict boundary limit

Set `omega=q^2`, let `F3=(omega^(rj))` be unnormalized, and for real `x`
set

`zeta=(1+i x)^2/(1+x^2)`, `A=diag(1,zeta,1)`,
`H(x)=[[F3,A F3],[F3,-A F3]]`.                             (14)

Since `|zeta|=1` and `F3 F3†=3I`, direct block multiplication gives
`H(x)H(x)†=6I`, and every entry has unit modulus. These are physical
carriers for every real parameter, with no vanishing denominator.

At `x=0`, (14) is `F2 tensor F3`. Its exact equivalence to the raw `F6`
uses the CRT maps

`row (a,r) -> 3a+2r mod 6`: `[0,2,4,3,5,1]`,
`column (s,j) -> 3s+4j mod 6`: `[0,4,2,3,1,5]`.

Their exponent product is `3as+2rj mod 6`, which is precisely the tensor
product entry. These identities are checked in `verify.py`.

Relative to these matched columns at `x=0`, the first three column
projectors do not change. For each of the other three, the normalized
inner product is `(2+zeta)/3`; consequently

`D_j^2=1-|2+zeta|^2/9=8x^2/[9(1+x^2)]<=x^2`.             (15)

Every `|x|<=1/2048` therefore lies in the closed half-ball, proving the
stated uniform energy bound for all quartets over the whole interval.
The cross-ratio from rows 0,1 and columns 0,3 is `zeta(x)`. The finite set
of all matrix cross-ratios is invariant under Hadamard equivalence. On
this interval `zeta(x)` is injective, so any one equivalence class can
occur at only finitely many parameters. In particular, the continuum
in (14) is not merely a gauge orbit of a reference matrix.

The ordered corner with rows `(0,5,1)` and columns `(0,3,2)` is

`E=[[1,1,1],[1,-1,omega],[1,zeta,omega^2]]`.                (16)

For clarity, the invariant calculation uses exactly the supplied seed
conventions. Set `G=6I3-EE†`, `s=G_10`, `t=G_20`, `r=G_21`,
`X=|s|^2`, `Y=|t|^2`, `Z=|r|^2`,
`p=X+Y+Z`, `J=2 Re(s r conj(t))`, `W=XY+XZ+YZ-XYZ`, and

`g=27-3p+J`, `eta=9-p+J`,
`chi=W-(p-9)(p-18)+(p-15)J`, `R=4g^2 eta-chi^2`.

Direct substitution into (16) yields

`g=12(x^2+sqrt(3)x+1)/(1+x^2)`,
`eta=4(x^2+sqrt(3)x+1)/(1+x^2)`,
`chi=-24[2x^4+3sqrt(3)x^3+6x^2+3sqrt(3)x+2]/(1+x^2)^2`,
`R=576x^2(1-x^2)^2/(1+x^2)^4`.                            (17)

These are independently checked symbolically by `verify_seed_family.py`,
along with every entry modulus, all carrier orthogonality identities,
(16), and all six column distances. For `0<|x|<=1/2048`, (17) is strictly
positive, and `a=-1`. The endpoint/limit `x=0` has `R=0` but is included
directly by the physical-carrier proof; no strict reconstruction formula
has to be evaluated there.

## 7. Scope of sheet and boundary coverage

The main theorem quantifies over completed physical matrices, not over
one reconstruction chart. It therefore applies to either fixed-corner
sheet whenever that sheet's actual output satisfies (4). There is no
sheet reversal or frame change that is claimed to preserve `a=-1`.
Membership of one sheet does not prove membership of the other sheet
at the same seeds. In particular, (14)-(17) exhibit actual covered strict
carriers, not an exhaustion of all completions of (16).

Every boundary of the stated physical distance domain is included in
exact exclusion. Every phase-chart seam and dyadic boundary is included
in the confinement cover. Physical `R=0` or other reconstruction-singular
matrices inside the stated domain are included without additional guards.
Boundaries and either sheet **outside** the distance domain remain
uncovered. No uniform truncation away from `R=0` is used or asserted.

## 8. Dependencies and proof objects

The proof above is self-contained given the finite exact acceptance run.
It does not depend on external classifications of Fourier-unbiased rays,
the prior completion/exhaustion assumptions, or round one's fixed-reference
SOS matrices. The numerical search was used only to suggest 48 cluster
locations and the forest. The saved rational centers, every box split,
every integer multiplier, and the complete graph are returned. Acceptance
never reruns discovery and does not trust its asserted number of roots.

The optional symbolic check uses SymPy; the main coverage and graph
acceptance uses only Python integers, Fractions, integer square roots,
and standard-library file decoding. This is a reproducible
computer-assisted proof, not a formal proof-assistant certification.
