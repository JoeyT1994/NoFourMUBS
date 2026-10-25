# Larger fixed ray balls: a quantitative obstruction for two bases

## Result and scope

All vector phase norms below are in radians, after removing a scalar phase. Let the 48 exact algebraic centers be the six Gaussian chirps, six conjugate Gaussian chirps, and 36 Björck rays constructed by `base_48.py`. They are the same independently generated centers used in return X; no classification of the complete Fourier unbiased set is assumed.

For the principal configuration assign phase-ball radii

`r_G=111/200=0.555` to the 12 Gaussian centers,

`r_B=101/200=0.505` to the 36 Björck centers.

**PROVED with CERTIFIED finite checks.** If `K=(k_1,...,k_6)` and `L=(l_1,...,l_6)` are two orthonormal bases whose twelve rays belong to this union of 48 balls, then

`min_{i,j} |<k_i,l_j>|^2 <=1/6-1/1000=497/3000`.

In particular they cannot be mutually unbiased. This is a two-basis obstruction. It does not assert that one further common unbiased ray is impossible throughout these larger balls.

The exact replay also proves:

| Gaussian radius | Björck radius | Deficit below 1/6 |
|---:|---:|---:|
| 111/200 = 0.555 | 101/200 = 0.505 | 1/1000 |
| 223/400 = 0.5575 | 101/200 = 0.505 | 1/4000 |
| 11/20 = 0.55 | 51/100 = 0.51 | 1/1000 |
| 11/20 = 0.55 | 1/2 = 0.50 | 1/250 |

The quantized centers of denominator 12288 cycles are at mean-free phase distance less than 1/1000 from the exact centers, as regenerated and proved by `base_48.py`. Thus a vector-cover certificate can use each displayed radius minus 1/1000 around the quantized center. A cover using any smaller radii also suffices.

## 1. Pair notation

For two centers `c,d` with unit-modulus entries, put

`Q_j=conj(c_j)d_j`, `S=sum_j Q_j`.

For actual vectors in the two phase balls, remove scalar phases and write their relative phase displacement as `x`, with

`||x||_2<=r`, `r=r_c+r_d`.

Their actual normalized inner product is

`S(x)/6`, where `S(x)=sum_j Q_j exp(i x_j)`.

All pair radii used in this certificate are smaller than 6/5.

## 2. Stronger orthogonality tests

The direct test is

`|S|<=sqrt(6) r`.

It is necessary for actual orthogonality, since `|S(x)-S|<=sqrt(6)r`.

For a sharper radial test, expand

`S(x)=S+i sum Q_j x_j+R`, `|R|<=r^2/2`.

If `S(x)=0`, multiply by `conj(S)` and take real parts. Cauchy--Schwarz gives the necessary inequality

`|S|^2 <= r sqrt(sum_j Im(conj(S)Q_j)^2)+|S|r^2/2`.

The certificate retains an orthogonality edge only when neither of these tests rules it out. It uses upper rational enclosures for the right sides and lower rational enclosures for the left sides, so uncertain cases would be retained.

The resulting graph has **462 edges and exactly 52 six-cliques** for each configuration in the table. These 52 cliques are possible label sets of perturbed orthonormal bases. They are not asserted to be 52 actual bases, nor to exhaust bases as matrices.

Two vectors in one label cannot be orthogonal, since `6>sqrt(6)(2 max r_j)`. Therefore every actual orthonormal basis gives six distinct labels and hence one of these six-cliques.

## 3. A universal sine bound at an orthogonal center pair

Suppose `S=0`. For `||x||<=r<pi`,

`|S(x)|/6 <= sin(r/sqrt(6))`.

To prove this, the normalized constant vector and the normalized vector with entries `conj(Q_j)` are orthogonal. The squared projection of the normalized vector `(exp(i x_j))` onto the latter is therefore at most one minus its squared projection onto the former.

Moreover `t -> cos(sqrt(t))` is convex for `0<=t<pi^2`: its second derivative has the sign of `sin(v)-v cos(v)`, whose derivative is `v sin(v)>0` on `(0,pi)`. Jensen's inequality gives

`Re((1/6)sum exp(i x_j)) >= cos(sqrt((1/6)sum x_j^2)) >= cos(r/sqrt(6))>0`.

This proves the asserted sine bound. It is stronger than the linear phase Lipschitz bound at the radii needed here.

The exact verifier evaluates the following rational upper bound on its square, valid because `r/sqrt(6)<1`:

`P_sine(r)=(r^2/6)(1-r^2/36+r^4/4320)^2`.

This follows from the alternating degree-five sine upper polynomial.

## 4. A stronger bound for three antipodal pairs

Suppose the six entries of `Q` can be partitioned exactly into

`q_1,-q_1,q_2,-q_2,q_3,-q_3`, `|q_a|=1`.

Write `q_a=exp(i phi_a)`, and define

`C2=sum_a q_a^2`, `C4=sum_a q_a^4`,

`a=(19/80)|C2|`, `b=(23/960)|C4|`.

Then

`|S(x)| <= r^2+C`,

with the always valid constant

`C=251/320+a+b`.

There are sharper special cases:

- If `C2=0`, use `C=251/320+b`.
- If `C4=0`, use `C=251/320+a`.
- If `Re(C2^2 conj(C4))=0` and neither vanishes, use `C=251/320+sqrt(a^2+4b^2)`.

The verifier detects antipodal pairings and all these special cases by exact algebraic equality, not by numerical thresholds.

### 4.1 Scalar inequality underlying the bound

For `0<=A<=1`,

`sup_d {2A |sin d|-2d^2} <= A^2/2-A^4/40`.

For `A=0` this is immediate. For `A>0`, a positive maximum is attained with `0<d<1`; for `|d|>=1` the expression is nonpositive. The maximizing positive `d` satisfies `A cos d=2d`, so

`7A/16 <= d <= A/2 <=1/2`.

The lower bound uses `cos d>=1-d^2/2>=7/8`. The degree-five sine bound gives

`sin d<=d-(79/480)d^3`.

Hence the maximum is at most

`A^2/2-(79/240) A(7A/16)^3 <=A^2/2-A^4/40`.

The final rational coefficient comparison is checked exactly by the script.

For any real `t,x,y`, set `m=(x+y)/2` and `d=(x-y)/2`. The preceding scalar inequality gives

`cos(t+x)-cos(t+y)-(x^2+y^2) <= f(t+m)-2m^2`,

where

`f(s)=sin^2(s)/2-sin^4(s)/40`.

Writing `u=sin^2(s)`, one has

`f''(s)=1-(23/10)u+(2/5)u^2<=1`.

Thus

`f(t+m)-2m^2 <= f(t)+f'(t)m-(3/2)m^2 <=f(t)+f'(t)^2/6`.

Also `|f'(t)|<=|sin(2t)|/2`. Consequently

`cos(t+x)-cos(t+y) <=x^2+y^2+h(t)`,

`h(t)=(2/3)sin^2(t)-(23/120)sin^4(t)`.

Its Fourier form is

`h(t)=251/960-(19/80)cos(2t)-(23/960)cos(4t)`.

### 4.2 Summing the three pairs

Apply the preceding inequality to the real part of `exp(-i theta) S(x)` for each antipodal pair, and sum. The total quadratic penalty is at most `r^2`, so

`|S(x)| <=r^2+max_theta [251/320-(19/80)Re(exp(-2i theta)C2)-(23/960)Re(exp(-4i theta)C4)]`.

The generic and vanishing-coefficient bounds follow immediately. In the quadrature case, a shift of angle reduces the nonconstant part to

`a cos u +/- b sin(2u)`.

Cauchy--Schwarz bounds its absolute value by `sqrt(a^2+4b^2)`, since

`cos^2(u)+cos^2(u)sin^2(u)<=1`.

This proves all stated constants.

For an orthogonal Gaussian/conjugate-Gaussian center pair, the exact identities give `|C2|^2=|C4|^2=3` and the quadrature condition. The constant is therefore

`C=251/320+sqrt(541/3072)`.

This is the crucial improvement allowing Gaussian radii substantially above 1/2.

## 5. The quantitative finite graph argument

Fix a configuration and its claimed gap `epsilon`. Construct a second graph of retained label pairs as follows. Initially retain every ordered pair, **including loops**. Delete a pair only when its center inner product is exactly zero and either the sine bound or antipodal bound certifies

`|S(x)|^2/36 <1/6-epsilon`

throughout the two balls.

All retained nonloop graphs in the table have 846 edges. Of the 282 deleted unordered pairs, 48 use an antipodal `C2=0` bound, 18 use the quadrature bound, 126 use the generic antipodal bound, and 90 use the universal sine bound.

For each of the 52 orthogonality six-cliques `A` and each of the 52 orthogonality six-cliques `B`, the verifier regenerates a pair `(i,j) in A x B` deleted by this low-overlap test. Thus all **2704 ordered clique pairs** have a certified low-overlap witness. The test includes overlapping label sets and does not assume the two bases have distinct labels across them.

Any two actual bases in the ball union produce such label sets. Their witness pair has overlap probability at most `1/6-epsilon`. This proves the quantitative theorem.

## 6. Arithmetic, replay, and remaining interface

Run

`python3 verify_extended_graph.py`

with `base_48.py` and `quantized48.json` in the same directory. Only the standard library is used. The verifier imports the independently replayed center identities, then reconstructs every new pair bound, all 52 cliques, and all 2704 witnesses for each configuration. All acceptance decisions use exact rational arithmetic and isolated algebraic embeddings. No numerical sweep enters the proof.

The algebraic field is represented by `Q[b,i]` with positive `b^4=3/4`. Algebraic square roots needed for norm bounds are enclosed using integer square-root isolation with an explicit rational upper endpoint. A failed or inconclusive pair bound retains the edge.

**CERTIFIED:** the larger phase-ball obstruction and the probability gaps in the table.

**NOT ESTABLISHED by this component:** the matrix-neighborhood radius `rho` for which every `I,H`-unbiased ray belongs to these larger balls. That is the vector-cover certificate's independent obligation. When that cover is available, the theorem immediately excludes `QuartetEdge H` uniformly for its full `H` domain.
