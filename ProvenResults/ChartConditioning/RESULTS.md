# Global conditioning and a two-class small-R boundary reduction for the order-six MUB campaign

## Status and scope

This packet contains three proved reductions, plus their corollaries:

1. **A global ten-chart conditioning theorem.** For any fixed three rows of any order-six complex Hadamard, one of ten unordered three-plus-three column splits makes all four blocks uniformly invertible: their squared singular values lie strictly between 1/4 and 23/4. This includes R=0 and singular corners in the original frame.
2. **An explicit off-family inverse estimate at the full F6 orbit.** In a dephased phase cube of radius 1/40 about F6, the maximum corner invariant obeys M(H) >= 4 rho^2. No assumption that H belongs to the Fourier family is made. The signed invariant map has rank 25 even on the full phase torus, before imposing orthogonality.
3. **A maximal-corner boundary exclusion.** In a dephased phase cube of radius 1/1250 about F6, only two of the six F6 seed classes can be positive-R maximal corners. All 220 corners in the other four classes are excluded as maximizers. With the archive's accepted strict-corner coverage, these four classes are absent from the global small-R endpoint set of the strict D0 domain.

These results do **not** prove that four MUBs do not exist. They do not certify the campaign's remaining branch cells. In particular, the global onset threshold that takes a small-M carrier into the explicit F6 matrix neighborhood is not computed here.

The algebraic assertions in results 2 and 3 have been replayed with exact integer/rational arithmetic by `verify.py`. The global capacity argument in result 1 and the compactness corollaries are analytic proofs, not conclusions inferred from sampling.

### Archive inputs used

The relevant sources in the supplied `NoFourMUBS(1).zip` are:

- `WhatWeWanttoProve/NOTATION.md` and `T1_corner_R_lower_bound.md`;
- `WhatWeWanttoProve/T2_fourier_neighbourhood.md`;
- `ProvenResults/CornerBounds/PROOF.md` and its verifier;
- `ProvenResults/FourierNeighbourhood/SeedLifting/NEAR_F6_CLOSURE.md`;
- `ProvenResults/FourierNeighbourhood/SeedLifting/EXTENDED_ANALYTIC_RADII.md`;
- `NumericalCampaign/REDUCTION.md` and `MinimalConstruction/ASSUMPTIONS.md`.

The complementary-corner square identity is an existing archive result, not claimed as new here. Its normalization and Laurent identity are independently regenerated in the supplied verifier because the later constants depend on them.

The two global corollaries that use strict-corner coverage are marked **conditional**. None of the three main local/global quantitative theorems uses the positive-sheet reconstruction, completion uniqueness, MUB balance, or a shared diagonal symmetry.

## 1. Notation

All Hadamards are raw matrices:

    |H_ij| = 1,       H H* = 6 I.

For a three-by-three corner E, use the archive definitions. Let G=6I-EE*, with off-diagonal entries s=G_21, t=G_31, r=G_32, and put

    X=|s|^2, Y=|t|^2, Z=|r|^2,
    p=X+Y+Z,
    J=2 Re(s r conjugate(t)),
    W=XY+XZ+YZ-XYZ,
    g=27-3p+J,
    eta=9-p+J,
    chi=W-(p-9)(p-18)+(p-15)J,
    R(E)=4g^2 eta-chi^2.

The maximum over all 400 positional corners is

    M(H)=max_c R_c(H).

A physical maximal corner means R(E)=M(H). A strict physical maximal corner additionally has M(H)>0. D0 is the archive's reconstruction-domain version of this condition.

Write zeta=exp(i pi/3) and F6_ij=zeta^(ij), with indices 0,...,5. A dephased phase perturbation is

    H_ij = zeta^(ij) exp(i u_ij),
    u_0j=u_i0=0,
    rho=max_{1<=i,j<=5}|u_ij|.

All local radii below concern these **full-matrix phase coordinates**, not the four seed coordinates. Confusing these two radii would invalidate their application to a branch cell.

## 2. Global ten-chart conditioning

### Theorem 1

Fix any three rows I of a complex Hadamard H of order six. There is an unordered split of the six columns into S and S-complement, each of size three, such that, in the block partition

    H = [ E  B ]
        [ C  D ],

with E=H[I,S], all four blocks Q satisfy

    |det Q|^2 >= 27/10,
    1/4 < lambda_min(Q Q*) <= lambda_max(Q Q*) < 23/4.

Consequently,

    ||Q^(-1)||_2 < 2,
    kappa_2(Q) < sqrt(23).

There are only ten unordered choices of S. The row half can be fixed in advance. The theorem is valid for every physical H, including F6, Tao, and R=0 cases. It does not require the chosen corner to be strict or maximal.

### Proof: a complementary-minor capacity bound

Normalize the chosen rows:

    V=H[I,:]/sqrt(6),       V V*=I_3.

Let v_j be the columns of V. Flatness gives ||v_j||^2=1/2 for every j. Define

    p(x)=det(sum_{j=1}^6 x_j v_j v_j*)
        =sum_{|S|=3} d_S product_{j in S} x_j,
    d_S=|det V_S|^2.

The second equality is Cauchy-Binet. Thus p is homogeneous, multiaffine, and has nonnegative real coefficients. It is real stable: if every x_j has positive imaginary part, the imaginary Hermitian part of the matrix inside the determinant is positive definite, so that matrix is invertible.

Set P=p^2. It is homogeneous of degree six, with degree at most two in each variable, nonnegative coefficients, and the same stability property.

Its capacity is

    Cap(P)=inf_{x_j>0} P(x)/(x_1 ... x_6)=1.                 (2.1)

Indeed, p(1,...,1)=1. The function

    y -> log P(exp(y_1),...,exp(y_6)) - sum_j y_j

is convex, being a log-sum-exp minus a linear function. Its derivative at zero in coordinate j is

    2 d/dx_j log p(1)-1 = 2 ||v_j||^2-1 = 0.

Hence zero is a global minimum and its value is zero. This proves (2.1).

For completeness, the special capacity-to-coefficient bound needed here is elementary. For any intermediate stable polynomial Q, freeze all but one variable at positive values. The remaining univariate polynomial has nonpositive real roots. If it has degree two, write it as

    a t^2+b t+c,       a,b,c>=0,       b^2>=4ac.

Then

    Q'(0)=b >= (b+2 sqrt(ac))/2
               = (1/2) inf_{t>0} Q(t)/t.                 (2.2)

If its degree is one, the same statement holds without the factor 1/2. Degree zero cannot occur when the relevant capacity is positive. Differentiation followed by setting that variable to zero preserves nonnegative coefficients and stability, or gives the zero polynomial; the positive capacity bound rules out the zero case. Stability preservation follows from the usual univariate derivative/limit closure, or directly by the standard stable-polynomial closure theorem.

Apply (2.2) successively. Five eliminations each lose at most a factor two, and the final one-variable linear polynomial loses none. Therefore

    [x_1 ... x_6] P >= 2^(-5) Cap(P)=1/32.

This is the degree-two special case of Gurvits's stable-polynomial capacity theorem [1]; the preceding argument supplies the specific version used here.

But

    [x_1 ... x_6]p^2 = sum_{|S|=3} d_S d_(S-complement).

There are twenty ordered triples S, so one complementary pair obeys

    d_S d_(S-complement) >= 1/640.

Returning to raw blocks,

    |det E|^2 |det B|^2 >= 6^6/640 = 729/10.              (2.3)

Each three-by-three phase matrix Q has |det Q|^2<=27 by the determinant inequality applied to its three rows of norm sqrt(3). Equation (2.3) therefore gives

    |det E|^2 >=27/10,       |det B|^2 >=27/10.           (2.4)

### Proof: converting the product to a uniform spectral gap

Let lambda_1,lambda_2,lambda_3 be the eigenvalues of EE*. Since

    EE*+BB*=6I,

we have 0<=lambda_i<=6 and sum_i lambda_i=9. Set t_i=lambda_i-3. Then

    sum_i t_i=0,
    product_i (9-t_i^2)=|det E|^2 |det B|^2 >=729/10.    (2.5)

For fixed t_1, concavity of log(9-t^2) on (-3,3) and t_2+t_3=-t_1 give

    product_i (9-t_i^2)
      <=(9-t_1^2)(9-t_1^2/4)^2.

The expression on the right decreases with |t_1|. At |t_1|=11/4 it is

    (23/16)(455/64)^2 = 4761575/65536 <729/10.

Thus (2.5) forces |t_i|<11/4 for every i, proving

    1/4<lambda_i<23/4.

The remaining blocks inherit the same two spectra. Specifically,

    C*C=6I-E*E,
    D*D=6I-B*B.

Hence C has the same squared singular values as B, and D has the same squared singular values as E. This proves all assertions. QED.

### Corollary 1.1: a uniform nonsingular complementary Gram exists

In the selected chart,

    g(E)=det(6I-EE*)=|det B|^2 >=27/10.

Thus a vanishing complementary Gram determinant is never an unavoidable property of the physical carrier: it can always be removed by one of ten auxiliary column partitions, with the row half unchanged.

This does **not** prove that the selected chart has R>0, that it is a D0 chart, or that the radical side constructor is nonsingular there. For example, F6 still has M=0. The useful conclusion is a uniform linear-algebraic working chart, not a replacement for strict-corner coverage.

### Corollary 1.2: completion is uniformly Lipschitz once three blocks are matched

Let H and H0 be physical Hadamards in the same partition, and choose the partition so that H0 satisfies Theorem 1. Define

    e_E=||E-E0||_F, e_B=||B-B0||_F, e_C=||C-C0||_F,
    e=(e_E^2+e_B^2+e_C^2)^(1/2).

Then

    ||D-D0||_F <=2 sqrt(6)(e_E+e_B+e_C) <=6 sqrt(2) e,   (2.6)
    ||H-H0||_F <=sqrt(73) e.                             (2.7)

To prove this, subtract C*D=-E*B and C0*D0=-E0*B0, keeping the inverse at the well-conditioned reference:

    C0*(D-D0)=-(E-E0)*B-E0*(B-B0)-(C-C0)*D.

Every block of a physical raw Hadamard has operator norm at most sqrt(6), while ||(C0*)^(-1)||_2<2. The triangle inequality yields (2.6); sum the four squared block errors to obtain (2.7).

For normalized matrices,

    ||H/sqrt(6)-H0/sqrt(6)||_F <=sqrt(73/6) e.           (2.8)

This also bounds the largest normalized-column Euclidean error and the largest operator-norm distance between corresponding rank-one column projectors. If each of the 27 entries of E,B,C is within epsilon of its reference, then the right side of (2.8) is at most

    3 sqrt(73/2) epsilon <19 epsilon.

No 1/sqrt(R) or small-g denominator appears. The hypothesis requires a **common simultaneous matching of E, B and C**. Seed proximity alone does not provide that matching, and the archive's counterexample to unrestricted seed lifting is not contradicted.

## 3. Signed corner invariants and an explicit off-family inverse

### 3.1 The signed functions

For a three-row, three-column block, divide each column by its entry in the first selected row. Write its columns as

    (1, exp(i x_j), exp(i y_j))^T,       j=0,1,2,
    z_j=y_j-x_j.

For ordered i!=j, let a<b be the two indices other than i, and c<d the two indices other than j. Put

    epsilon_ij=sgn(2a,2b,2c+1,2d+1,2i,2j+1).

Define

    q=sum_{i!=j} epsilon_ij
          sin(x_b-x_a) sin(y_d-y_c) sin(z_i-z_j),
    f=8q.                                                (3.1)

An overall change of sign in f is harmless. Let L(E) be the six-by-six Laurent matrix whose two columns for index j are

    (x,-1/x,0,0,-y/x,x/y)^T,
    (0,0,y,-1/y,y/x,-x/y)^T,

where here x=exp(i x_j), y=exp(i y_j). The archive's square identity, with its normalization independently checked in `verify.py`, states

    R(p,-J,W)=-det L(E)^2=f(E)^2.                         (3.2)

For a physical H, if E and B use the same three rows and complementary column triples, row orthogonality gives

    R(E)=f(B)^2.                                          (3.3)

Thus, if f(H) denotes the vector of all 400 signed block functions,

    M(H)=||f(H)||_infinity^2.                             (3.4)

It is essential to keep the signs while linearizing. Squaring first makes the differential of every R_c vanish at F6 and hides the rank used below.

### Theorem 2: explicit full-matrix inverse at F6

For any dephased phase matrix H=F6 entrywise-multiplied by exp(iu), with rho=||u||_infinity<=1/40,

    ||f(H)||_infinity >=2 rho.                           (3.5)

This first assertion does not require orthogonality. Consequently, for any physical Hadamard in that cube,

    M(H)>=4 rho^2.                                       (3.6)

Also, for any dephased phase perturbation, without a small-radius restriction,

    ||f(H)||_infinity<=432 rho.                          (3.7)

The same statements hold around the entire monomial orbit after applying a common row/column transformation and dephasing into the stated coordinates. These are not claims about four-seed cubes.

### Proof and exact coefficient certificate

Expanding the three sine factors in (3.1) gives 48 Laurent terms. At F6 their roots of unity belong to Z[zeta], with zeta^2=zeta-1. In the lexicographic order of the 25 free phases, define the real differential

    A=Df(0),       A is a 400-by-25 integer matrix.

The verifier constructs it directly from (3.1), with no interpolation. It proves

    rank A=25.

Set

    B=(A^T A)^(-1) A^T.

Exact rational arithmetic gives

    BA=I_25,
    ||B||_(infinity -> infinity)=2630/10593<1/4.          (3.8)

A common denominator for B is 207453312; the complete integer numerator and A are in `certificate.json`.

The useful nonlinear estimate is obtained **after applying B and combining equal frequencies**. Bounding each of the 400 functions separately before this cancellation gives much poorer constants. The exact estimate is

    ||B f(u)-u||_infinity <=6 rho^2+456 rho^3+500 rho^4.  (3.9)

Here are the exact quantities behind (3.9). For each frequency ell, write the real function Bf as a sum of cosine and sine terms. Combine all coefficients for the same ell. The verifier first sums the actual quadratic Hessian before taking absolute values; it then uses

    |sin t-t|<=|t|^3/6,
    |cos t-1+t^2/2|<=|t|^4/24,
    sqrt(3)<7/4.

The resulting rational upper bounds on the quadratic, cubic and quartic coefficients are respectively

    161665/28248 <6,
    4827593/10593 <456,
    761942741/1525392 <500.

These are bounds on whole neighborhoods, not fitted Taylor coefficients.

For rho<=1/40,

    6rho+456rho^2+500rho^3
      <=0.4428125<1/2.

Equations (3.8)-(3.9) therefore imply

    rho <=(1/4)||f(u)||_infinity+(1/2)rho,

which proves (3.5), then (3.6) by (3.4).

For (3.7), expand each signed function as

    f_c(u)=i sum_k c_k zeta^(p_k) exp(i ell_k.u).

Its constant value at F6 is zero. Since |exp(it)-1|<=|t|,

    |f_c(u)|<=rho sum_k |c_k| ||ell_k||_1.

The largest of the 400 integer sums is exactly 432. QED.

### Corollary 2.1: the global quadratic exponent is fixed

This corollary uses the accepted strict-corner coverage statement:

> If a physical H is not equivalent to F6, some corner has R>0.

Define delta(H) by minimizing the full dephased phase radius about the canonical F6 over row and column permutations of H, followed by global dephasing. Arbitrary diagonal unitary gauges disappear under that dephasing. There are finitely many relevant frames; delta is continuous, is zero precisely on the F6 orbit, and is at most pi.

Then there is a positive constant c such that **every** physical H satisfies

    c delta(H)^2 <= M(H) <=432^2 delta(H)^2.              (3.10)

The upper bound follows from (3.7) in a minimizing frame. For delta<=1/40, the lower bound holds with c=4 by Theorem 2. On the compact set delta>=1/40, strict-corner coverage makes M strictly positive. If its minimum is mu>0, take

    c=min(4,mu/pi^2).

If that compact set is empty, take c=4. QED.

This is stronger than merely knowing that some unspecified modulus m(eta) exists: the local vanishing exponent is exactly quadratic, uniformly over all physical deformation directions, not just along the Fourier family. However, mu is not evaluated here. Equation (3.10) therefore does **not** supply the campaign with a numerical global small-R threshold.

## 4. Four F6 corner classes cannot be strict maximal endpoints

### 4.1 Linearized physical constraints

For rows a<b, the first-order orthogonality equation at F6 is

    sum_{j=0}^5 zeta^((a-b)j) (u_aj-u_bj)=0.             (4.1)

Write each root as A+B zeta with A,B integers. Separating its two real coefficients gives a 30-by-25 integer matrix L. The exact certificate gives

    rank L=21,
    dim ker L=4.

A rational/integer basis matrix N for ker L is provided in `certificate.json`. The signed invariant differential remains injective on this tangent space:

    rank(A N)=4.

For a block-indexed signed function f_c, call the corresponding complementary R-corner stationary when

    A_c N=0.                                             (4.2)

The adjective concerns the signed invariant restricted to physical first-order directions. It does not assert that the entire matrix is stationary or that every R-corner has the same higher-order behavior.

### 4.2 Exact classification of all 400 corners

A dephased F6 seed has entries zeta raised to four integers. Classify these seeds under the 72 row/column rephasings, permutations, and transpose operations used for the six-class seed atlas. The enumeration is exact modulo six.

| Class | Representative, in units of pi/3 | Number of positional corners | A_c N |
|---|---|---:|---|
| 1 | (4,5,0,3) | 144 | nonzero |
| 2 | (0,2,3,0) | 72 | zero |
| 3 | (0,2,3,2) | 72 | zero |
| 4 | (1,2,2,4) | 36 | nonzero |
| 5 | (2,4,4,2) | 28 | zero |
| 6 | (0,0,2,4) | 48 | zero |

The counts label **R-corners**. In the sine expansion the columns are the complementary triple, as required by (3.3). Failing to complement those columns would misidentify the seed classes.

Thus there are 220 stationary corners and 180 nonstationary ones. These counts are not counts of branch cells and should not be used to claim a percentage reduction in campaign runtime.

### Theorem 3: quantitative maximal-corner exclusion

Let H be physical and in a dephased phase cube about F6 satisfying

    0<rho<=1/1250.

Then no stationary corner from classes 2,3,5,6 can attain M(H). Every maximal corner belongs to class 1 or class 4, relative to the limiting F6 matrix in the same frame.

More quantitatively, every stationary signed function obeys

    |f_c(H)|<=2496 rho^2,                                (4.3)

whereas

    max_c |f_c(H)|>=2rho.                                (4.4)

Hence stationary R-corners vanish to fourth order in the full-matrix displacement while the maximum is bounded below at second order.

### Proof

The physical equations give a uniform bound on the nonlinear error in (4.1). Let delta_j=u_aj-u_bj. Since u_i0=0, delta_0=0; the other five differences have modulus at most 2rho. Subtracting the exact F6 orthogonality equation and using

    |exp(it)-1-it|<=t^2/2

gives

    |sum_j zeta^((a-b)j) delta_j|<=10rho^2.

For a complex number w=A+B zeta, each of the two real coefficients A,B has modulus at most (2/sqrt(3))|w|. Therefore

    ||Lu||_infinity<=12rho^2.                            (4.5)

Choose the 21 independent rows Ls listed in the certificate and define

    C=Ls^T (Ls Ls^T)^(-1).

Then Ls C=I and

    u=(I-C Ls)u+C Ls u,
    (I-C Ls)u belongs to ker L.

For stationary c, condition (4.2) therefore implies

    A_c u=A_c C Ls u.

The exact norm computation over all 220 stationary corners is

    max_c ||A_c C||_1=40.                                (4.6)

Thus |A_c u|<=480rho^2 by (4.5).

Independently, use the exponential remainder directly in the 48-term Laurent expansion. It gives

    |f_c(u)-A_c u|
       <=(1/2) sum_k |c_k| ||ell_k||_1^2 rho^2.

The maximum of this half-sum over the stationary corners is exactly 2016. Combining it with (4.6) proves (4.3).

Theorem 2 gives (4.4). A stationary maximizer would force

    2rho<=2496rho^2,
    rho>=1/1248,

contrary to rho<=1/1250. QED.

This proof is uniform over all physical perturbations, including singular or nonsmooth branches. It does not assume that every first-order tangent is integrable, or that the local Hadamard variety is a smooth four-dimensional manifold.

### Corollary 3.1: a two-class global small-R endpoint set

This corollary uses accepted strict-corner coverage, as in Corollary 2.1.

Consider any sequence of strict physical maximal pairs (H_n,c_n) such that

    R_(c_n)(H_n)=M(H_n)>0,
    M(H_n)->0.

After passing to a subsequence, globally dephasing, and applying fixed row/column permutations, H_n tends to F6. There are finitely many corner positions, so c_n can also be fixed on a subsequence. By Theorem 3, its limiting F6 seed must belong to class 1 or class 4.

Therefore:

> The only F6 seed classes that can occur as endpoints of the strict maximal-corner domain are (4,5,0,3) and (1,2,2,4), including their allowed frame orbits.

In particular, the nearly-F3 class (2,4,4,2) and the nearly-rank-one-pair class (0,0,2,4) are not genuine endpoints of the positive-R D0 search. The same is true of the other two stationary classes.

To prove the convergence assertion, work in the compact space of dephased phase Hadamards. Every subsequential limit H0 has M(H0)=0 by continuity; accepted strict-corner coverage makes H0 equivalent to F6. Normalize that limiting matrix to the canonical F6 and apply Theorem 3. No boundary reconstruction formula or uniqueness assumption is used. QED.

### Corollary 3.2: a global necessary seed restriction, with an uncomputed radius

Let S_stat be the finite set of F6 seeds in the four stationary frame classes. There exists tau>0 such that the seed theta of **every strict physical maximal corner** satisfies

    dist_infinity(theta,S_stat)>=tau.                    (4.7)

The distance is circular phase distance. To prove this, suppose otherwise. A sequence of strict maximal seeds approaching S_stat has R(theta_n)->0, hence M(H_n)->0. The preceding compactness argument would produce a stationary maximal F6 endpoint, contradicting Theorem 3.

Equation (4.7) is a restriction on the whole strict physical maximal domain, not an exclusion of one numerical example. Nevertheless, tau is not computed. The explicit radius 1/1250 is a **matrix radius**, and must not be substituted for tau. Thus (4.7) does not by itself license deletion of a production-width seed cube.

### A useful warning about the two surviving classes

The verifier also computes the derivative of the four corner seed phases on ker L. For every corner in either surviving class this derivative has rank three, not four.

Consequently, the present results do not justify an ordinary nonsingular four-seed inverse-function argument at F6. A hidden tangent direction remains for each surviving seed map. This is a concrete reason to retain signed invariant information or side matching rather than assuming that a well-conditioned block automatically removes the seed reconstruction fold.

## 5. Consequences for the planned proof campaign

### 5.1 Replace intrinsic singular-Gram analysis with a finite auxiliary-chart cover

For matrix completion and perturbation estimates, one can now work with ten exhaustive auxiliary column partitions for any fixed row half. On at least one partition, all inverse norms are less than two and g>=27/10. There is a proved coverage theorem, not a numerically chosen collection of good frames.

Keep the original maximal corner and its D0 inequalities. An auxiliary well-conditioned chart is not necessarily maximal, strict, or canonical. With that distinction maintained, the block completion estimate (2.8) gives a uniform way to turn simultaneously matched side enclosures into a matrix tube.

This removes the need for a separate *linear-algebraic* completion argument at g=0. It does not eliminate the need to enumerate or match the physical side blocks.

### 5.2 Treat four zero-endpoint classes as D0 exclusions

The four stationary classes should be handled by proving that they are outside the strict maximal domain, rather than by developing quartet-exclusion tubes for arbitrary completions all the way down their boundaries.

Theorem 3 supplies an explicit matrix-space certificate for this exclusion, and Corollary 3.1 proves that there are only two possible strict small-R endpoint classes. Turning this into a production prune still needs a certified way to place a seed cell's physical completions into the matrix neighborhood, or a direct interval version of the maximal-corner comparison.

Thus it is legitimate to simplify the *endpoint analysis* to two classes, but not to remove the four entire finite-width seed regions without a further coverage argument.

### 5.3 Use the signed map, not 400 squared invariants, for the F6 inverse

The signed map is linearly nondegenerate at F6. This gives a rigorously controlled square-root inverse in the **scalar invariant M**, not an uncontrolled square-root loss in the seed error. It establishes the correct global vanishing exponent under strict coverage.

Once a physical carrier is known to lie in the matrix cube, the estimate

    rho <=sqrt(M(H))/2

is off-family and does not require first approximating it by a Fourier-family carrier. That removes an unnecessary family-classification step for carriers whose full-matrix entry bounds are already available.

### 5.4 What is still required for no four MUBs

The packet does not provide any of the following:

- a numerical global m such that M(H)<m forces entry into the explicit F6/Fourier tube;
- a numerical tau for the seed-domain gap (4.7);
- exhaustive common side matching for the surviving branch cells;
- a certificate for every remaining positive-R quartet candidate.

In particular, the existing fact that an exact Fourier-family pair cannot extend to four MUBs [2] is not enough by itself to replace the missing quantitative entry-to-tube step. The archive's neighborhood exclusions and branch/cluster certificate mechanisms remain necessary inputs.

The most focused remaining task is now a **quantitative confinement/coverage argument**, while preserving the two roles of corners: the original D0 maximizer and a uniformly invertible auxiliary working chart. The new theorems remove boundary types and conditioning losses; they do not assert that the remaining coverage has been completed.

## 6. Verification assets and reproducibility

Run:

    python verify.py

The only nonstandard dependency is SymPy. The verifier:

1. checks the rational constants in the capacity/spectral argument;
2. regenerates the 48-term sine determinant and independently checks the universal Laurent square identity;
3. constructs all 400 differentials and proves BA=I exactly;
4. derives the rational nonlinear coefficient bounds by combining exact frequencies and Hessian terms;
5. constructs the exact physical tangent equations;
6. enumerates all six classes and checks the two uniform stationary constants, 40 and 2016;
7. records the seed tangent ranks to prevent an unjustified inverse-function conclusion.

All accumulations use arbitrary-precision Python integers or SymPy rationals. There are no floating-point rank tests, randomized sampling claims, or fixed-width integer overflow dependencies.

`certificate.json` contains the full matrices A, B, L, N, C, all 400 class assignments, and the exact constants. `verification_receipt.txt` and `verification_receipt.json` contain the completed replay output. The analytic proofs are in this document; the verifier does not purport to replace them.

## References

[1] L. Gurvits, *Van der Waerden/Schrijver-Valiant like Conjectures and Stable (aka Hyperbolic) Homogeneous Polynomials: One Theorem for All*, arXiv:0711.3496 (2007). The capacity bound in Section 2 is a special case; its application to complementary three-column minors and the explicit spectral constants are derived here.

[2] P. Jaming, M. Matolcsi, P. Mora, F. Szollosi, M. Weiner, *A generalized Pauli problem and an infinite family of MUB-triplets in dimension 6*, arXiv:0902.0882 (2009). Used only for context about the Fourier-family exclusion; none of Theorems 1-3 assumes it.

[3] Supplied research archive `NoFourMUBS(1).zip`, the exact relative paths listed at the beginning of this document. Strict-corner coverage remains an accepted input wherever explicitly invoked; this packet does not claim to re-prove that input or all reconstruction assertions in the archive.
