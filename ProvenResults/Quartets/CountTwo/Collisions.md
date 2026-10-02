# Repeated character values: grouped-mean rigidity and a common alternating form

**Statement.** Take a triangle with exactly two matchings, no zero 3-by-3
minor, and irreducible (M4) residual algebra in direction 1. Suppose the
character lambda takes m = 3, 4 or 5 distinct values. There are then
p = 6 - m repeated values and s = 2m - 6 simple ones. Group the slices by
value and choose the same square root z_a within each group. Put
U_i = R_i / z_a, write F_a for the group means, and for a pair set
D_a = (U_+ - U_-)/2. Then:

1. (Collision rigidity.) At each pair,
   F_a* F_a = F_a F_a* = I/4 and D_a* D_a = D_a D_a* = 3I/4. The relative
   product U_+* U_- has spectrum {omega, omega, omega^2, omega^2}, where
   omega = exp(2 pi i/3). The full relative slice S_+* S_- has spectrum
   {1, 1, omega, omega, omega^2, omega^2}.
2. (Grouped cubic.) With d = m - 3 and t_a = Im z_a / Re z_a, the grouped
   interpolant M(t) has degree exactly d and satisfies M^# M = M M^# = r I.
   It factors as M = rho U F_1 ... F_d, where
   F_j(t) = (t - x_j) I + i y_j A_j, y_j > 0, and the A_j are balanced
   involutions. At a pair,

       2 F_a = eps_a U V_a,   2 D_a = i sqrt(3) eps_a U V_a H_a,

   with eps_a = +/-1, V_a the unitary normalization of
   F_1(t_a)...F_d(t_a), and H_a a balanced involution.
3. (Common form.) For m = 4 and m = 5 there is one unitary alternating J
   with U_i J U_i^T = J_out for every slice i.

**Status.** Proved. The argument is the archive's, rewritten. A referee
subagent reread it line by line and found it correct. Its independent
checks are in `collisions_five_checks.py`; see "Referee notes" below. The
archive verifiers for `m4_collision_exclusion` and `rectangular_closure`
reproduce controls identical to their receipts. They fail only on the hash
of `COORDINATE_PROGRAMME.md`, which was edited after the receipts were
frozen.

**Dependencies.**
- [ResidualSetup.md](ResidualSetup.md): (R1), (R2), (R5), and Section 7.2
  (the three-involution lemma).
- Irreducibility, from [ReducibleExclusion.md](ReducibleExclusion.md).

**Provenance.** Archive `03_algebraic/core/`:
- `rectangular_closure/supplied/M4_COLLISIONS.md` (supplied; its author's
  checker was absent);
- `m4_collision_exclusion/PROOF.md`, Sections 1-6;
- `SIMPLE_CHARACTER_SYMPLECTIC_RIGIDITY.md`, Section 2.

---

## 1. Grouped interpolation

A common rotation of the z_a makes every c_a = Re z_a nonzero. The slopes
t_a = s_a / c_a are distinct, because the values lambda_a = z_a^2 are
distinct. From (R1),

    sum_a n_a c_a F_a = sum_a n_a s_a F_a = 0,

where n_a is the size of group a. For a pair, orthogonality gives

    F_a* F_a + D_a* D_a = I,   F_a F_a* + D_a D_a* = I,
    F_a* D_a + D_a* F_a = 0,
    tr F_a* F_a = 1,   tr D_a* D_a = 3,   tr F_a* D_a = 0.

The last three identities come from tr(U_+* U_-) = -2.

Let f = prod_a (t - t_a) and define

    M(t) = sum_a n_a c_a F_a prod_(b != a) (t - t_b).

Its two leading coefficients vanish, so deg M <= m - 3 = d. At each node,
M(t_a) = k_a F_a with k_a = n_a c_a f'(t_a) != 0.

For a singleton, F_a is unitary. So the trace-free parts of M^# M and M M^#
vanish at the s = 2d singleton nodes. They have degree at most 2d, so they
equal p N and p N', where p is the singleton node polynomial and N, N' are
constant (for m = 3, M is constant and p = 1).

Associativity gives MN = N'M, so F_a N = N' F_a at every node. At a pair,
(M^# M)(t_a) = r I + p N forces

    F_a* F_a = alpha_a I + beta_a N   and   F_a F_a* = alpha_a I + beta_a N',

with beta_a = p(t_a)/k_a^2 != 0. Hence D_a* D_a = (1 - alpha_a) I - beta_a N,
and the same with N'. The identity (D_a D_a*) D_a = D_a (D_a* D_a) then
gives D_a N = N' D_a. So U_i N = N' U_i for every slice, and N commutes
with every U_0* U_i.

Irreducibility makes N scalar, hence zero, and then N' = 0. Therefore
F_a* F_a = F_a F_a* = I/4 and D_a* D_a = D_a D_a* = 3I/4 at every pair.

Write F_a = A/2 and D_a = sqrt(3) B/2 with A, B unitary. The identity
F_a* D_a + D_a* F_a = 0 makes W = A* B skew with W^2 = -I and tr W = 0. So
U_+* U_- = -I/2 - (sqrt(3)/2) W has eigenvalues omega and omega^2, each
twice. This proves item 1.

## 2. The grouped cubic and its factorization

Subtracting the rows of equal characters in the real Gram
tr(U_i* U_j) = 6 delta_ij - 2 Re(z_i conj z_j) gives

    <D_a, F_b> = 0,   <D_a, D_b> = 3 delta_ab.

So span{F_a} has dimension 4 - p = d + 1. The coefficients of M span the
same space, because interpolation recovers every F_a. Hence the d + 1
coefficients are independent, deg M = d, M has no scalar factor, and every
coefficient is orthogonal to every D_a.

With N = 0 we have M^# M = M M^# = r I. The leading coefficient is rho U
with rho > 0 and U unitary. The scalar r is positive on R: a real root
would give a scalar factor.

The span contains no rank-one matrix (R2). So at each complex root z, both
M(z) and M(conj z) have rank exactly 2, and their kernels are orthogonal
complements. The deflation of [SixValue.md](SixValue.md), Section 2, gives
M = rho U F_1 ... F_d; repeated roots are covered.

At a pair node, 2 F_a = eps_a U V_a with eps_a = +/-1. The matrix
W = (2F_a)* (2 D_a)/sqrt(3) is unitary, skew-Hermitian and traceless, so
W = i H_a with H_a a balanced involution. This proves item 2.

## 3. A common alternating form for m = 4, 5

**d = 1 (m = 4, two pairs).** Write F(t) = (t - x) I + i y A. The
differences are orthogonal, so tr[H_1 F(t_1)* F(t_2) H_2] = 0. Now

    F(t_1)* F(t_2) = ((t_1 - x)(t_2 - x) + y^2) I + i y (t_1 - t_2) A.

The first term has real trace against H_1, H_2. Taking imaginary parts
gives y (t_1 - t_2) Re tr(H_1 A H_2) = 0, so Re tr(A H_1 H_2) = 0.

**d = 2 (m = 5, one pair).** Write F_1(t_a) = alpha I + i y A and
F_2(t_a) = beta I + i z B, with y, z > 0. The difference D_a is orthogonal
to the leading coefficient rho U, so

    tr[(alpha I + i y A)(beta I + i z B) H] = 0.

Its real part is -y z Re tr(A B H) = 0.

In both cases [ResidualSetup.md](ResidualSetup.md) 7.2 gives one unitary
alternating J that every involution involved anti-preserves. Then:
- F_j J F_j^T = ((t - x_j)^2 + y_j^2) J;
- (I +/- i sqrt(3) H_a) J (I +/- i sqrt(3) H_a)^T = 4J.

Hence U_i J U_i^T = U J U^T for every singleton and every paired slice. The
signs eps_a enter squared. This proves item 3.

## Referee notes

- The degree count (the trace-free parts have degree at most 2d, equal to
  the number s of singleton nodes), the case m = 3, the step N = N' = 0, and
  (10)-(13) were all checked. So were the deflation (including repeated
  roots), the paired-node formula and the d = 1, 2 trace arguments.
  `collisions_five_checks.py` gives exact identities, the three-involution
  criterion, and numerical families.
- Numerical control: an unconstrained search for m = 5 families satisfying
  only (R1) returns either reducible families, which violate item 1, or
  irreducible ones, which satisfy it to 1e-14. This is the dichotomy the
  proof predicts.
- The archive's "alternating rank 13" corollary depends on a 75-by-15 map
  defined elsewhere. It is not needed here; only the common form (item 3)
  is used.
