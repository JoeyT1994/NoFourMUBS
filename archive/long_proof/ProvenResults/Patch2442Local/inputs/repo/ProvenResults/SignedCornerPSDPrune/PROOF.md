# Signed-corner PSD pencils: a whole-box strict-D0 exclusion

## Result and scope

Let `M(H)` be the maximum of the 400 positional corner invariants of a raw
order-six Hadamard. A framed completion with seed corner `E` belongs to
**strict D0** only if `0 < R(E) = M(H)`.

The predicate below gives a sufficient, outward-certified condition that a
closed four-dimensional seed-angle box has **no such completion**. It treats
both sheets, all side-column permutations, and both orientations. It does
not require a carrier chart, an entrywise matrix enclosure, a positive lower
bound for R on the box, completion balance, or an inactive-class asymptotic
estimate. It is not a quartet certificate or a global exclusion of an F6
class.

On the retained deterministic 1,000-box sample, the default bounded predicate
certifies 972 boxes. All 688 boxes in the three requested stationary classes
are certified, including all 292 that the earlier signed-mean prune left
open. The remaining 28 belong to the active class `(1,2,2,4)`. These are
statements about the retained boxes, not the entire residual population.

## 1. Dependency ledger

**Accepted reconstruction inputs, not proved anew here:**

* **A1 — strict side exhaustion.** At a physical strict corner, each normalized
  side has one of the two side orbits `S(G,z_sigma)`, modulo permutations.
* **A2 — side formulas and strict denominators.** The side entries are phases,
  have Gram matrix G, and obey the lambda formulas and symmetric identities
  below. All P divisors are nonzero on the strict physical domain. In
  particular, `g>0`, the lambdas have modulus one, and `|z_sigma|^2=eta`.
* **A3 — fixed-corner completion exhaustion and matching.** Outside the two
  exceptional Tao corner classes the only flat pairings are the two matched
  pairings in `MinimalConstruction/RECONSTRUCTION.md`, Sections 3–4. In the
  notation `C_f=S(Gv,conjugate(z_f))^T`, these have `e=f`. Thus the *side
  constructor signs* for the horizontal and transposed sides are opposite.
  This is used only after an outward certificate excludes all Tao corners
  from the particular seed box. Without this certificate, all four sign
  combinations are retained. **Positive-sheet surjectivity alone would not
  justify this step; the fixed-corner exhaustion statement is the input.**

A1–A3 are the accepted statements in `MinimalConstruction/ASSUMPTIONS.md`,
with their conventions specified in `RECONSTRUCTION.md`. They are not
claimed to follow from numerical experiments or from the classification
paper's separate certificate package. Strict-corner *coverage* and opposite-
corner sheet reversal are not needed for this local framed-box theorem.

**Previously proved algebraic input:**

* **P1 — complementary-corner square.** `ProvenResults/CornerBounds/PROOF.md`,
  Section 2: for any three normalized phase columns T in three rows of an
  actual Hadamard, the complementary same-row corner has invariant
  `R_complement = f(T)^2`, where `f(T)=i det L(T)` is real. The verifier
  regenerates this Laurent identity independently from the 6-by-6
  determinant, including its imaginary character.

The symmetric identities in A2 are also recorded in
`ProvenResults/BalancedProducts/BalancedFourSeedIdentity.md` and the previous
signed-mean module. Their radical cancellations, and all higher moment
identities used here, are checked exactly by this module's verifier.

## 2. The PSD strengthening of the signed mean

Write the three unknown horizontal side columns as

    v_l = (1,x_l,y_l)^T,       l=0,1,2,
    |x_l|=|y_l|=1,
    G = sum_l v_l v_l^dagger
      = [[3,conjugate(s),conjugate(t)],
         [s,3,conjugate(r)], [t,r,3]].

Fix two known columns j,k of E, and let `f_l=f(E_j,E_k,v_l)`. Set

    N_jk = sum_l f_l v_l v_l^dagger,       q=sqrt(R(E)).             (1)

If a completion is in strict D0, P1 gives `f_l^2 <= R(E)` for every l.
Consequently both Hermitian matrices

    qG + N_jk = sum_l (q+f_l) v_l v_l^dagger,
    qG - N_jk = sum_l (q-f_l) v_l v_l^dagger                         (2)

are positive semidefinite. This is a necessary condition with no numerical
hypothesis. It remains a valid necessary condition for singular G as well.
On the strict domain G is positive definite, so the side matrix V is
invertible and (2) is equivalent to all three individual inequalities
`|f_l|<=q`: congruence by `V^{-1}` gives diagonal matrices with entries
`q +/- f_l`.

All three diagonal entries of N are `sum_l f_l`. Testing only the diagonal
of (2) yields the previous signed-mean condition. Its off-diagonal entries
are the additional weighted signed moments

    Sx=sum_l x_l f_l,   Sy=sum_l y_l f_l,
    Sz=sum_l (y_l/x_l) f_l.                                         (3)

Thus this strengthening preserves information lost by cancellation in the
mean. It does not need to distinguish or label individual side columns.

For a Hermitian matrix with common real diagonal d and lower entries
`z_s,z_t,z_r` in positions (2,1),(3,1),(3,2), respectively, the complete list
of distinct principal-minor tests is

    d,
    d^2-|z_s|^2, d^2-|z_t|^2, d^2-|z_r|^2,
    d^3+2 Re(z_s z_r conjugate(z_t))
        -d (|z_s|^2+|z_t|^2+|z_r|^2).                              (4)

An outward upper bound strictly below zero for any expression in (4)
contradicts positive semidefiniteness. No eigenvalue solver is used.

## 3. Explicit radical-free coefficient functions

Use precisely the accepted seed convention

    E=[[1,1,1],[1,a,b],[1,c,d]],
    s=-1-a-b, t=-1-c-d, r=-1-c/a-d/b,
    X=|s|^2, Y=|t|^2, Z=|r|^2, p=X+Y+Z,
    J=2 Re(s r conjugate(t)), W=XY+XZ+YZ-XYZ,
    g=27-3p+J, eta=9-p+J,
    chi=W-(p-9)(p-18)+(p-15)J,
    R=4g^2 eta-chi^2.

Define

    P0=r s^2+conjugate(r)t^2+(3-Z)s t,
    P1=t conjugate(s)^2+r^2 conjugate(t)+(3-Y)r conjugate(s),
    P2=s conjugate(t)^2+conjugate(r)^2 conjugate(s)
       +(3-X)conjugate(r)conjugate(t),
    (k0,k1,k2)=(9-Z,9-Y,9-X),
    A_j=chi+2 k_j eta,        h=sigma sqrt(R), sigma in {+1,-1}.

Conjugation fixes h. Put

    u=product_l x_l, v=product_l y_l, w=u/v,
    Pi=s t-sum_l x_l y_l, C1=u conjugate(Pi), C2=v conjugate(Pi).

For indices i,j define the affine polynomial

    F_ij(h)=2g^2+2 k_i k_j eta+(k_i+k_j)chi+i(k_j-k_i)h.

The six symmetric quantities are

    u=F_01/(2 conjugate(P0)P1),
    v=F_02/(2 conjugate(P0)P2),
    w=F_21/(2 conjugate(P2)P1),
    Pi=(A0+i h)/(2 conjugate(P0)),
    C1=(A1-i h)/(2 P1), C2=(A2-i h)/(2 P2).                      (5)

For example `lambda_j=(g+k_j conjugate(z))/conjugate(Pj)`,
`z=(chi+i h)/(2g)`, `u=lambda0 conjugate(lambda1)`,
`v=lambda0 conjugate(lambda2)`, and `Pi=z lambda0`.
Expansion using `h^2=4g^2 eta-chi^2` gives (5). For w use unit lambdas to
write `w=lambda2 conjugate(lambda1)`; for C1 and C2 cancel the unit
`lambda0`. This identifies exactly where A2 is used. There is no remaining
`1/g`, `1/sqrt(R)`, square root of a complex number, or cube root in (5).

### Thirty-one Laurent moments

Let `M_pq=sum_l x_l^p y_l^q`. Besides conjugation
`M_{-p,-q}=conjugate(M_pq)`, the complete required list is

    M00=3, M10=s, M01=t, M1,-1=conjugate(r),
    M20=s^2-2u conjugate(s),
    M02=t^2-2v conjugate(t),
    M11=s t-Pi,
    M2,-1=s conjugate(r)-C1,
    M-1,2=t r-C2,
    M21=s M11-u(conjugate(s)t-r),
    M12=t M11-v(conjugate(t)s-conjugate(r)),
    M2,-2=conjugate(r)^2-2w r,
    M3,-1=s M2,-1+u(conjugate(t)-conjugate(s)conjugate(r)),
    M-1,3=t M-1,2+v(conjugate(s)-conjugate(t)r),
    M3,-2=conjugate(r)M2,-1+w(t-r s),
    M-2,3=r M-1,2+conjugate(w)(s-conjugate(r)t).                  (6)

These are identities for arbitrary nonzero formal x_l,y_l with conjugation
replaced by reciprocal. For instance each x_l satisfies the cubic with
coefficients `s, u conjugate(s), u`; multiplying it by `1/y_l` and summing
gives M3,-1. Every identity, including the scaled implementation of (6),
is checked by exact Laurent expansion with six independent variables.
All moments in (6) are affine in h after (5).

### The determinant coefficients and the basic family

For columns `(1,1,1)`, `(1,A,C)`, `(1,x,y)`, the imaginary determinant D is

    D=sum_(p,q) [c_pq(A,C)x^p y^q
                -conjugate(c_pq(A,C))x^(-p)y^(-q)],                (7)

with the six coefficients

| (p,q) | c_pq(A,C) |
|---|---|
| (1,1) | -(A-C)^2(A+C)/(A^2 C^2) |
| (1,-1) | (A-C)(A+C)(AC-1)/(A^2 C) |
| (2,-1) | (C-1)^2(C+1)/(AC) |
| (0,1) | -(A^2-C)(C-1)(C+1)/(AC^2) |
| (-1,2) | (A-1)^2(A+1)/(AC) |
| (1,0) | (A-1)(A+1)(A-C^2)/(A^2 C) |

Set `(x0,x1,x2)=(1,a,b)`, `(y0,y1,y2)=(1,c,d)` for the **known** columns
only, and for a chosen known pair j<k put

    d_pq=c_pq(xk/xj,yk/yj) xj^(-p) yj^(-q).

For weights `(m,n)=(0,0),(1,0),(0,1),(-1,1)`, the four entries of N are

    S_mn=i sum_(p,q) [d_pq M_(p+m,q+n)
                     -conjugate(d_pq) M_(-p+m,-q+n)].              (8)

Equation (6) contains every index used by (8). Substitution yields
`S_mn=A_mn(theta)+h B_mn(theta)` with explicit rational coefficients.
The coefficients are evaluated on the entire box; equality with side
moments is required only on its physical strict subset.

## 4. An additional family using two side columns

This optional root-level family uses one known column j and the two side
columns other than l. Define

    fhat_l=f(E_j,v_m,v_n),       {l,m,n}={0,1,2},
    Nhat_j=sum_l fhat_l v_l v_l^dagger.                             (9)

Again `qG +/- Nhat_j` must be PSD in strict D0, by P1. The weight column
v_l in (9) is the *excluded* side column; it need not itself belong to the
triple defining fhat_l.

Write the exact 48-term determinant for normalized columns
`(1,1,1),(1,a,c),(1,b,d)` as

    D=sum_e kappa_e a^p b^q c^r d^s.

The integer terms are retained in `determinant_terms.hpp`; the verifier
regenerates and compares every term against the independent determinant.
For known column j replace each coefficient by
`kappa_e xj^(-p-q) yj^(-r-s)`, denoted t_e. The determinant is symmetric
in its three phase columns (a swap exchanges two pairs of determinant
columns) and vanishes if two phase columns coincide. Therefore, with
`F_lm=f(E_j,v_l,v_m)` and `S=sum_(l<m) F_lm`,

    S=(i/2) sum_e t_e M_(p,r) M_(q,s),
    sum_l x_l^m y_l^n fhat_l
      = S M_(m,n)-i sum_e t_e M_(p+m,r+n) M_(q,s).                 (10)

For `(m,n)=(0,0)` use S directly. To prove the second identity note that
`fhat_l=S-sum_m F_lm`, including the zero repeated-column term. All indices
in (10) still belong to the same list (6). A product of two affine forms
is reduced exactly by

    (a+h b)(c+h d)=(ac+R bd)+h(ad+bc).                             (11)

Thus this family still needs only affine coefficient enclosures, not side
roots. The finite-sum formula in (10) is independently verified as an exact
Laurent identity, not inferred from a fitted second moment.

## 5. Clearing denominators without imposing a new guard

The rational extension of (5) may have wide interval inverses near a P
zero. An alternative is to multiply by

    Delta=|P0 P1 P2|^2 > 0                                        (12)

on the physical strict domain, by A2. The six scaled quantities are

    Delta u=F_01 P0 conjugate(P1)|P2|^2/2,
    Delta v=F_02 P0 conjugate(P2)|P1|^2/2,
    Delta w=F_21 P2 conjugate(P1)|P0|^2/2,
    Delta Pi=(A0+i h)P0|P1|^2|P2|^2/2,
    Delta C1=(A1-i h)conjugate(P1)|P0|^2|P2|^2/2,
    Delta C2=(A2-i h)conjugate(P2)|P0|^2|P1|^2/2.                (13)

Since (6) is linear in u,v,w,Pi,C1,C2 and their conjugates, replace each
seed-only term by Delta times that term to compute every `Delta M_pq`
without division. Equation (8) then computes `Delta N`; test
`q Delta G +/- Delta N`. Equation (10) uses products of scaled moments,
so it computes `Delta^2 Nhat`; the matching Gram scaling is **Delta^2**.

A whole-box proof that Delta is bounded away from zero is **not** needed
for (13): it is a polynomial extension on the entire box, and its scale
is strictly positive at each hypothetical strict physical point. Even if
its interval enclosure includes zero, a strictly negative principal-minor
upper bound for the scaled pencil is a contradiction. Conversely, the
rational version is used only when all its full-box interval inverses are
valid. Failure of an inverse never authorizes exclusion.

## 6. Coupling orientations and excluding Tao corners

The invariant R is unchanged by transposing E. Both orientations must use
the same exact nonnegative number q. At a nonexceptional corner A3 says
that the horizontal and transposed *side signs* are `(sigma,-sigma)`.
The conjugation in the definition of C is essential to this sign.

Every dephased corner of a Tao representative has cube-root entries:
arbitrary row/column phases cancel in the dephased cross ratios. Hence a
sufficient condition that a closed box contains no Tao corner is that, for
some coordinate i, the whole-box enclosure of either

    sin(3 theta_i),        cos(3 theta_i)-1                         (14)

does not contain zero. This is a condition on the **whole box**, not on
its center or nearest-seed label.

The controller uses the two opposite-sign combinations only after (14)
is certified. Otherwise it retains all four combinations. It can combine
horizontal and vertical witnesses, rational and cleared evaluations, and
both template families at the same q. This is stronger than requiring
one orientation alone to exclude both of its side signs.

## 7. Whole-box certificate theorem and arithmetic

**Theorem.** Let K be a closed rational seed-angle box with four positive,
independently specified half-widths. For each chosen template and
orientation, enclose R, the scaled Gram entries, and both affine
coefficients of its N entries on all of K. Intersect the R enclosures.
If their upper endpoint is nonpositive, K contains no strict-D0 seed.
Otherwise form `Q=sqrt([max(0,L),U])`. For every admissible sign combination
(all four, or the two matched signs after (14)), cover Q by finitely many
closed intervals. On each interval suppose at least one scaled pencil
has a principal minor from (4) with outward upper endpoint strictly
negative. Then K has no physical strict-D0 completion. The same conclusion
holds for an exactly covering finite binary subdivision of K, with this
condition proved separately on every leaf.

**Proof.** A hypothetical completion gives a physical point of K with
R>0, one admissible sign combination by A1 and, where used, A3, and an
exact q in Q. A covering interval supplies a PSD contradiction to (2) or
(9). Positive scaling follows from A2. For a seed subdivision choose a
leaf containing the point. Closed overlaps on split faces cause no gap.
No statement is made about existence of sides at the negative-R points
of K. This argument proves emptiness of the actual strict subset. QED.

### Coefficient enclosure

The code propagates exact first/second derivative rules through four-real-
variable jets. For either real or imaginary part F of a coefficient,

    F(theta0+h) belongs to F(theta0)+[-e,e],
    e=sum_i rho_i |d_i F(theta0)|
      +(1/2)sum_ij rho_i rho_j sup_K |d_ij F|.                     (15)

The Hessians are enclosed by interval automatic differentiation on the
full box. The bound follows from the integral second-order Taylor
remainder on the segment from theta0 to theta0+h. No finite-difference
estimate, sampling fit, or assumed Hessian constant is used. Complex
conjugation is explicit; inverse differentiation is used only after a
full-box denominator separation. Negative powers of individual seed
phases use conjugation, since the seed phases are exactly unit.

Transcendental seed enclosures use `mpmath.iv` at 35 decimal digits.
Conversion to binary64 advances an endpoint outward by one ULP and checks
inclusion with the interval context. The C++ core uses IEEE-754 binary64
round-to-nearest basic operations, then `nextafter` outward, and enclosing
sqrt endpoints. Builds disable fast-math and floating contraction. The
runtime rejects a non-IEEE or non-round-to-nearest environment and fails
closed on interval/range errors. The ordinary IEEE gradual-underflow and
correctly-rounded basic arithmetic/sqrt model is part of the software
trust base. The verifier checks arithmetic against exact rationals,
including subnormals, and tests derivatives against exact symbolic values.
This is an interval certificate, not a formal proof of the compiler,
C++ runtime, or mpmath implementation.

The independent certificate replay uses a separate 60-digit interval
context for all recorded negative-principal-minor witnesses. It recomputes
the coefficient enclosures and checks sign covers and exact seed covers;
it does not simply trust stored booleans or nearest-class metadata.

### Three different quantities, never conflated

* `rho_i` are four **seed-angle half-widths in radians**.
* q is the scalar **sqrt(R)**. Its interval subdivision is not a geometric
  neighborhood radius.
* No carrier-entry, carrier-phase, projector, or matrix radius is used.

Seed children are formed with exact `Fraction` arithmetic by halving the
largest current half-width (first coordinate on ties). The default limits
are depth 8 and 255 visited seed nodes; q covers have depth 8 and 511 nodes
per sign combination. Budget exhaustion is unresolved. Acceptance requires
all seed leaves and every required sign combination to be covered.

## 8. Pilot, controls, and limitations

The input sample is exactly that of the earlier signed-mean module: source
lines `1+floor(k*(338054-1)/999)`, k=0,...,999, from the retained level-13
residual gzip. Its SHA256 and all selected binary64 centers are checked.
Each half-width is the outward binary64 upper enclosure of
`pi/2^level + 2^(-40)` radians. Input R bins, nearest F6 classes, and
point-distance metadata never authorize an acceptance.

| Nearest class metadata | Boxes | Earlier mean | Fast | Root extra | Bounded |
|---|---:|---:|---:|---:|---:|
| 0,0,2,4 | 88 | 88 | 88 | 88 | 88 |
| 0,2,3,0 | 318 | 128 | 313 | 313 | 318 |
| 0,2,3,2 | 49 | 39 | 49 | 49 | 49 |
| 1,2,2,4 | 207 | 10 | 161 | 179 | 179 |
| 2,4,4,2 | 321 | 229 | 284 | 284 | 321 |
| 4,5,0,3 | 17 | 17 | 17 | 17 | 17 |
| **Total** | **1,000** | **511** | **912** | **930** | **972** |

Fast uses the basic family, coupled orientations, and both coefficient
scalings, without seed subdivision. Root extra adds (9)–(11), still without
seed subdivision. Bounded adds the exact limited seed cover, using the
basic family on refined leaves. The implementation tries cheaper providers
first and exits on a certificate.

Summed per-box predicate CPU times for serial, warm-core pilots were
8.727, 16.964, and 34.636 seconds, respectively: **0.00873, 0.01696, and
0.03464 CPU-s/attempted box**. These exclude one-time compilation and
JSON output; driver CPU and wall times are separately recorded. The
bounded pilot's class-specific CPU-s/box are 0.00511, 0.01359, 0.00502,
0.05548, 0.05622, 0.00521 in the table's order. Its maximum individual
cost was 1.787 CPU-s. The earlier archive reports 0.43981 CPU-s/box;
that is a cross-run comparison, not a controlled same-hardware speedup
measurement. No full-list scan or cluster job was launched.

Six physical negative controls use the exact CornerBounds Fourier-family
maximal corner

    theta(delta)=(-2pi/3, -pi/3+delta, 0, -pi+delta),
    delta=1/100, 1/5, 1/2,

and its transpose. Each test box is proved to contain the corresponding
exact physical strict-D0 point. The exact 400-corner census proves maximality,
not a numerical constructor tolerance. All six must return `ok=False`;
the verifier also tests unequal seed radii, invalid inputs, and spawn-worker
replay. The controls do not establish correctness by themselves; they
supplement the exact algebra and outward certificate proof above.

The remaining 28 sample boxes are not declared physical, impossible, or
asymptotically settled. There is no claim of a universal finite carrier
chart, a quantitative FourierCornerRigidity gap, or exclusion of all
stationary-class neighborhoods beyond the boxes actually certified.
