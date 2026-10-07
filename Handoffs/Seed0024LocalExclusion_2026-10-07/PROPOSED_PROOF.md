# A local repeated-row route for seed0024

Status: a complete proposed analytic argument with exact symbolic and rational
checks, **not yet a Lean-verified theorem and not formal closure credit**.
This packet is additive research evidence. It does not amend historical claims.
The root agent is formalizing the physical identities. `LocalArithmetic.lean`
has now kernel-checked 23 supporting statements: exact constants, four-sign
absolute-value reasoning, phase/projector quadratic identities, a modular
zero-lattice identity, and the finite tensor/Fourier exponent equivalence.
`FORMALIZATION_RECORD.json` records the exact scope and receipt. An independent
analytic reviewer found no gap. The trigonometric, finite-orientation,
polynomial/Lipschitz, and physical projector steps still need connected kernel
proofs; this partial formalization does not admit the complete theorem.

## Proposed theorem (stronger than the box-specific claim)

Let H be a 6 by 6 complex Hadamard with entries of modulus one, dephased so
its first row and first column are one. Let E be its upper-left 3 by 3 corner.
Assume E maximizes R over all 400 positional 3 by 3 corners. Write the first
three entries of the second row as (1, exp(ix), exp(iy)). Suppose, in either
order,

    |x| <= 2 delta, |y| <= delta,       delta = 77/100000.

Then, for the maximum-column projector distance used by ClusterTube,

    d_F(H/sqrt(6)) < 1/75 + 1/60 = 3/100 < 1/30.

Consequently, **conditional on formal admission of the ClusterTube 1/30
four-basis exclusion**, no such H is a transition of a four-MUB configuration.
No assumption on the last row of E is needed. No global averaging lemma or
external numerical R-cap table is needed. All 36 seed0024 boxes satisfy the
phase hypothesis by the separate geometry audit.

The only corner-invariant dependency is the universal physical identity

    R(E) = 4 (Im q(B))^2,     q(B) = perm(B) det(B)^2 / product(B),

where B is E's same-row complementary block. Apply the same identity to each
corner to turn maximality into a uniform q bound. This identity is a required
Lean dependency; its presence in a symbolic/prose source is not formal credit.

## 1. The binary row and a direct small-q bound

Put a=exp(ix), b=exp(iy), and write the complete second row as

    (1,a,b,z0,z1,z2).

Orthogonality with the all-one first row and unit moduli give the exact identity

    sum_j |zj+1|^2 = |a-1|^2 + |b-1|^2 = t^2 <= 5 delta^2.       (1)

The squared Euclidean distance of this row to (1,1,1,-1,-1,-1) is 2t^2.

For the complementary block B, add its first row to its second row in the
determinant. The new second row is (z0+1,z1+1,z2+1). Laplace expansion along
that row and the unit modulus of the other entries yield

    |det B| <= 2 sum_j |zj+1|,
    |det B|^2 <= 12 t^2.

The permanent has six unit-modulus summands and product(B) has modulus one.
Therefore

    |q(B)| <= 72 t^2 <= 360 delta^2 = 0.000213444 < 1/1000.       (2)

The physical invariant identity and the maximality of E imply

    |Im q(C)| < 1/1000                                      (3)

for **every** positional 3 by 3 block C of H. Indeed its same-row complement
has R <= R(E) < 4/1000^2. Singular blocks are allowed throughout.

## 2. Every other row splits into almost equilateral triples

For a remaining row r, let A be the sum of its first three entries and D the
sum of its last three. Orthogonality to row zero gives A+D=0. Orthogonality to
the second row, after subtracting the binary reference row, gives

    2|A| <= |a-1|+|b-1|+sum_j |zj+1|
           <= (3+sqrt(15)) delta.

The same bound holds for |D|. Set

    s = 53/20000 = 0.00265,       h = 2/625 = 0.0032.

Then (3+sqrt(15))delta/2 < s. Both triples, after dividing by their first
entry, have the form (1,u,v), with |1+u+v| < s and |u|=|v|=1.

**Anchored equilateral lemma.** Such a triple is either

    (1, omega exp(iu1), omega^2 exp(iu2))

or the reverse orientation, with |u1|,|u2| < h and omega=exp(2pi i/3).

Proof: the reverse triangle inequality gives ||1+u|-1| <= s. Squaring gives

    |Re(u)+1/2| <= s+s^2/2 < 1/100,

and likewise for v. Thus their real parts lie in [-.51,-.49]. On that
interval the derivative magnitude of arccos is <= 50/43, because

    1-(51/100)^2 > (43/50)^2.

Consequently each phase is within

    (50/43)(s+s^2/2) < h

of either 2pi/3 or -2pi/3. Their imaginary parts have magnitude >43/50 and
must have opposite signs: otherwise |Im(u+v)|>86/50>s. This proves the lemma.
It also makes every orientation label unambiguous.

## 3. Stable finite orientation pairing

For each of the four remaining rows i, define an approximate row

    P_i = (v_si | lambda_i v_ti),
    v_+ = (1,omega,omega^2),     v_- = (1,omega^2,omega),

where si,ti are signs and lambda_i is the **actual** fourth entry of row i.
The phase error in the first entry of each triple is zero and in its other
four entries is <h.

For two such rows, every term in their inner product changes by <2h in at
most four positions. Since the actual rows are orthogonal,

    |<P_i,P_j>| < 8h.                                      (4)

If exactly one of si=sj and ti=tj holds, the left side equals 3. This is
impossible since 8h<3. Consequently only two complementary sign types can
occur, and t=κs for a common κ in {+1,-1}.

Within one type the inner product is 3(1+lambda_i conj(lambda_j)), so

    |lambda_i+lambda_j| < 8h/3.                             (5)

Three rows of the same type are impossible, since

    2 = |(lambda_1+lambda_2)+(lambda_1+lambda_3)
          -(lambda_2+lambda_3)| < 8h < 2.

There are therefore exactly two rows of each sign type. For either pair,
choose the midpoint phase lambda between lambda_i and -lambda_j. Their
phase distances from lambda and -lambda, respectively, are bounded by

    arcsin(4h/3) <= (3/2)(4h/3) = 2h.                       (6)

Here 4h/3<1/2 and arcsin(u)<=3u/2 on [0,1/2]. The latter follows from the
derivative bound 1/sqrt(1-u^2) <= 2/sqrt(3) < 3/2.

After a possible swap of the final two columns, κ=+1. Permuting rows into
pairs produces an exact Hadamard K with rows

    (v_0 |  v_0),     (v_0 | -v_0),
    (v_1 |  e^(i alpha) v_1), (v_1 | -e^(i alpha) v_1),
    (v_2 |  e^(i beta)  v_2), (v_2 | -e^(i beta)  v_2),

where v_j=(1,omega^j,omega^(2j)). This is the **repeated-row** Fourier family
form. It is not obtained by asserting projector-distance invariance under
transposition.

For each of the four non-binary rows, the phase errors relative to K obey:
left triple (0,h,h), right triple (2h,3h,3h). Chord distance is no larger
than phase distance. By (1), the total normalized Frobenius error is bounded by

    ||(H-K)/sqrt(6)||_F^2
        <= (10 delta^2 + 4*(2+4+9+9)h^2)/6
         = (10 delta^2 + 96h^2)/6 < 1/75^2.                (7)

For any matched unit vectors u,v, ||uu†-vv†||op <= ||u-v||2. Hence this
also bounds the maximum-column projector distance from H/sqrt(6) to K/sqrt(6)
by 1/75, with the explicitly chosen row and column permutations.

## 4. Four witnesses locate K near the F6 zero lattice

For a dephased 3 by 3 phase block

    C(a,b,c,d) = [[1,1,1],[1,a,b],[1,c,d]],

the Laurent polynomial (q-conj(q))/2 has 48 terms, coefficient l1 norm 24,
and each of its four phase derivatives has coefficient l1 norm 24. Therefore

    |Im q(C(theta)) - Im q(C(theta'))|
         <= 24 sum_j |theta_j-theta'_j|.                  (8)

The exact polynomial and derivative counts are checked by
`check_local_route.py`. A Lean polynomial identity and finite coefficient
summation are still required to admit this bound.

Choose rows zero, one row of sign type +, and one row of sign type -, and
columns 0,1,3 (two left, one right). The corresponding H and K blocks are
already dephased. The two left variable phases differ by <h each; the two
right variable phases differ by <=2h each. Thus (3) and (8) give, for all four
choices of the paired rows,

    |Im q(C_K)| < 1/1000 + 24*(6h) = 0.4618 < 1/2.        (9)

Write

    A=2alpha-beta, B=2beta-alpha, C=alpha+beta = A+B.

For the sign choices j,k in {0,1}, direct exact expansion gives

    Im q([[1,1,1],[1,omega,(-1)^j exp(i alpha)],
                       [1,omega^2,(-1)^k exp(i beta)]])
      = 3[(-1)^k sin A + (-1)^j sin B - (-1)^(j+k) sin C]. (10)

The four sign patterns together with taking absolute value realize every
choice of three signs. Equations (9)-(10) imply

    |sin A| + |sin B| + |sin C| < 1/6.                   (11)

Round A,B,C to integer multiples of pi and denote their residuals by a,b,c,
each in [-pi/2,pi/2]. Since arcsin(u) <= (51/50)u for 0<=u<=1/6,

    |a|+|b|+|c| < (51/50)(1/6) = 17/100.                (12)

The derivative check is exact: (1-(1/6)^2)^(-1) < (51/50)^2. As A+B=C,
a+b-c is an integer multiple of pi. Its absolute value is less than 17/100
and hence less than pi, so a+b=c.

Let n,m be the integers from A=n pi+a and B=m pi+b. Set

    alpha0 = (2n+m)pi/3,      beta0=(n+2m)pi/3,
    d_alpha=(2a+b)/3,         d_beta=(a+2b)/3.

Then alpha=alpha0+d_alpha and beta=beta0+d_beta. The matrix K0 obtained by
using alpha0,beta0 is equivalent to F6. Explicitly, modulo signs,

    exp(i alpha0)=omega^j,    exp(i beta0)=omega^(2j)

for j=(n+2m) mod 3. Swapping rows inside pairs removes the signs, and a cyclic
permutation of the right three columns removes j. The remaining matrix is
F2 tensor F3. Its Fourier equivalence is witnessed by the permutations

    row(s,b) -> 2s+3b mod 6,    col(n,c) -> 4n+3c mod 6,

because their product is 2sn+3bc mod 6. No external classification is used.

## 5. Projector metric, with an exhibited gauge

Apply the row phase exp(i d_s/2) to each pair of rows of K0, where
(d_0,d_1,d_2)=(0,d_alpha,d_beta). After matching columns, the normalized
column overlap magnitude between K and this row-rephased K0 is, for both
column triples,

    |(1+exp(i d_alpha/2)+exp(i d_beta/2))/3|.

Therefore every column projector distance squared is at most

    (d_alpha^2+d_beta^2-d_alpha*d_beta)/18
       = (a^2+b^2+c^2)/108
       <= (|a|+|b|+|c|)^2/108
        < (17/100)^2/108 < 1/60^2.                       (13)

The first inequality follows by expanding the overlap and using
1-cos(t)<=t^2/2. The equality uses c=a+b and the displayed linear change of
variables. This is a direct bound in the required projector metric; it does
not substitute a numerical phase metric for that metric.

Finally combine the exhibited gauge and permutations with (7), (13), and
the triangle inequality for operator norm. This yields

    d_F(H/sqrt(6)) < 1/75 + 1/60 = 3/100 < 1/30.

## Exact replay and remaining Lean obligations

Run `check_local_route.py` with the resident Anaconda Python. Its assertions
use exact SymPy algebra, rational arithmetic, and finite modular checks.
`check_local_route.json` records the outcome. This replay is research support.

Required connected Lean modules, with all physical definitions retained:

1. Physical Hadamard dephasing/orthogonality; row-pair defect identity (1);
   half-row balance; norm bounds; the elementary Laplace/permanent q bound.
2. Universal R/q identity with complementary indexing; maximality transfer.
3. Anchored equilateral lemma with the stated rational constants and principal
   phase existence; orientation pairing and midpoint phase selection.
4. Construction and unitarity of K, exact column/row matching, and bound (7).
5. Laurent identity, 24 derivative constants, phase path bound (8), and (10).
6. Rounding consistency, zero-lattice equivalence, explicit gauge, and (13).
7. Composition with the independently admitted ClusterTube exclusion theorem.

The theorem is therefore not yet an accepted closure of the 36 boxes, even
though the analytic estimates leave a positive margin of 1/300 in distance.

## Preserved approaches and limits

- Exact E0024 does not determine a unique completion; the Fourier parameters
  alpha,beta remain free before applying the maximality/q witnesses.
- Seed R<0 cannot exclude these boxes. The known positive sixth-order cusp
  remains compatible with this argument: maximality is the essential input.
- The global MC1 averaging conjecture is unnecessary here.
- Directly estimating generic q using its full coefficient norm 108 is too
  wasteful. The antisymmetric Laurent polynomial controlling Im q has norm24.
- The original supplied table's largest remaining cap is approximately
  3.18838e-8, not 1.6e-8. This argument uses neither figure.
- No numerical fitting, classification import, transposition of the projector
  metric, or cluster computation is used in this local route.
