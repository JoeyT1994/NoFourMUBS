# Residual structure of a count-two triangle

**Statement.** Let A, B be normalized order-six complex Hadamards with
X = A*B also Hadamard (a *triangle*), and suppose the triangle has exactly
two diagonal-phase matchings. In each of the three tensor directions the six
coordinate slices of the triangle tensor have the block form
diag(1, lambda_k) (+) R_k with R_k in U(4). Moreover:

- (R1) sum_k R_k = sum_k conj(lambda_k) R_k = 0, and
  tr(R_k* R_l) = 6 delta_kl - 1 - conj(lambda_k) lambda_l.
- (R2) The complex span of the R_k is four-dimensional and contains no
  nonzero matrix of rank one.
- (R3) The residual product algebra has no rank-one reducing projection.
  Its type is M4, M2 (+) M2 or M2 (x) I2, and every reducing projection is
  flat (has constant diagonal) on the physical coordinates.
- (R4) The normalized residual projections of the input and of the output
  coordinate vectors form two six-ray frames. The first is perfect for the
  residual channel and the second for its adjoint. Their Gram matrices are
  given by the two adjacent relative matching characters.
- (R5) If no edge has a zero 3-by-3 minor, every relative matching
  character is nonbinary and each of its values occurs at most twice.

Section 7 collects three general tools used by the branch files: the
channel in an orthonormal Kraus basis, the three-involution lemma, and the
centered quaternionic-projector (filter) lemma.

**Status.** Proved here using only elementary linear algebra. The importing
referee rederived every step. `setup_checks.py` contains exact checks and
numerical controls on an exact count-two triangle.

**Dependencies.**
- [TriangleNullities.md](../../Triples/TriangleNullities.md): matching count
  in {0,1,2,6}.
- [MatchingConventions.md](../../EdgeRigidity/MatchingConventions.md): zero
  sums of a nontrivial matching.
- For (R5) only: [OneBinaryMatching.md](../../EdgeRigidity/OneBinaryMatching.md).

**Provenance.** Archive `03_algebraic/core/`:
- `MATHEMATICS.md` Sections 2-3;
- `rank_rigidity/supplied/extension04/RESIDUAL_BLOCK_RIGIDITY.md`
  (Theorems 2.1-4.2);
- `../global_rigidity_2026_09_08/TWO_MATCHING_RESIDUAL_CURVE.md`, Section 3
  (rank-one lemma);
- `m4_channel_frontier/PROOF.md` Section 1 and `ternary_channel/PROOF.md`
  Section 1 (perfect frames);
- `SIMPLE_CHARACTER_SYMPLECTIC_RIGIDITY.md` Section 2 (three-involution
  lemma);
- `m4_channel_frontier/SIX_DIMENSIONAL_FILTER.md` and
  `five_value_exclusion/PROOF.md` Section 4 (filter lemma).

The text is rewritten to be self-contained. The mathematics is unchanged.

---

## 1. The triangle tensor

A, B and X are unitary, and every entry has modulus 1/sqrt(6). Put

    t_kij = conj(A_ki) B_kj / X_ij,        |t_kij| = 1/sqrt(6).

Direct multiplication, using AA* = BB* = XX* = I and 1/X_ij = 6 conj(X_ij),
shows that **all eighteen coordinate slices are unitary**:

    sum_j t_kij conj(t_ki'j) = delta_ii'     (k fixed),
    sum_j t_kij conj(t_k'ij) = delta_kk'     (i fixed),
    sum_i t_kij conj(t_k'ij) = delta_kk'     (j fixed).                (1.1)

Summing the middle identity over i gives tr(T_k* T_l) = 6 delta_kl, where
T_k = (t_kij)_(i,j).

*Direction 1* means the slices T_k, viewed as maps from the j-coordinates
(input) to the i-coordinates (output). Directions 2 and 3 use the fixed-i
slices (k,j) and the fixed-j slices (k,i). Everything below is stated for
direction 1. The other directions are identical after renaming, and
Section 2 shows that they carry the same matchings.

## 2. Matchings are common lines in every direction

A *matching* is a triple of unit-modulus vectors (eta, p, q) with
A* D(eta) B = D(p) X D(q). Since |X_ij|^2 = 1/6, this is equivalent to

    sum_k eta_k T_k = p q^T.                                          (2.1)

**Rank-one lemma (RO).** Let T_1, ..., T_6 be unitaries of order six with
tr(T_k* T_l) = 6 delta_kl, and let L = sum_k a_k T_k be nonzero of rank
one. Then all |a_k| are equal, and there are unit vectors x, y with
T_k x in C y for every k.

*Proof.* ||L||_F = sqrt(6) ||a||_2 and ||L||_op <= sum |a_k| <= sqrt(6) ||a||_2.
Rank one gives ||L||_op = ||L||_F, so both inequalities are equalities.
Hence all |a_k| agree. At a right singular vector x, the vectors a_k T_k x
(each of norm |a_k|) are positively parallel. QED.

**From a common line to a matching.** Suppose unit v, w satisfy
T_k v = lambda_k w for all k. Then |lambda_k| = 1, and
M = sum_k conj(lambda_k) T_k has w*Mv = 6 = ||M||_F, so M = 6 w v*. By the
fixed-i unitarity in (1.1), row i of M has squared norm
sum_k |lambda_k|^2 = 6, so |w_i|^2 = 1/6. The fixed-j unitarity gives
|v_j|^2 = 1/6. Write w = p/sqrt(6) and v = conj(q)/sqrt(6). Then (2.1) holds
with eta = conj(lambda).

**From a matching to a common line.** A matching gives w = p/sqrt(6) and
v = conj(q)/sqrt(6) with T_k v = conj(eta_k) w, because
w*(sum_k eta_k T_k) v = 6 forces eta_k w* T_k v = 1 for each k.

**Consequences.** Matchings, up to the scalars
(eta, p, q) -> (c eta, c' p, c q/c'), correspond bijectively to common
input/output lines of direction 1. The same matching (eta, p, q) gives the
common lines of directions 2 and 3, with the roles of eta, p, q permuted.
So the **number of common lines is the same in all three directions**. By
[TriangleNullities.md](../../Triples/TriangleNullities.md) it lies in
{0,1,2,6}.

Distinct common lines are orthogonal. Suppose T_k v = lambda_k w and
T_k v' = lambda'_k w' for all k. Then v*v' = conj(lambda_k) lambda'_k w*w'
for every k. So either v*v' = 0, or lambda' is proportional to lambda; in
the second case the two rank-one sums coincide and the lines are equal.

The trivial matching eta = p = q = 1 (sum_k T_k = 1 1^T) gives the line
v0 = w0 = 1/sqrt(6) with lambda_k = 1.

## 3. Count two: the adapted block form

Assume there are exactly two matchings, and let (eta, p, q) be the second.
By [MatchingConventions.md](../../EdgeRigidity/MatchingConventions.md), none
of eta, p, q is constant and each has zero sum. In direction 1 the second
common line is

    v1 = conj(q)/sqrt(6),   w1 = p/sqrt(6),   character lambda_k = conj(eta_k),

and sum_k lambda_k = 0. Put

    P_in = I - v0 v0* - v1 v1*,   P_out = I - w0 w0* - w1 w1*.

Each T_k maps span(v0, v1) isometrically onto span(w0, w1), and hence maps
ran P_in onto ran P_out. In orthonormal bases adapted to these splittings,

    T_k = diag(1, lambda_k) (+) R_k,        R_k in U(4).                 (3.1)

**(R1).** Apply RO to sum_k T_k and to sum_k conj(lambda_k) T_k. Each has
Frobenius norm 6, and a unit vector attains 6. So sum_k T_k = 6 w0 v0* and
sum_k conj(lambda_k) T_k = 6 w1 v1*. Their residual blocks vanish:
sum_k R_k = sum_k conj(lambda_k) R_k = 0. The trace identity is
tr(T_k* T_l) = 6 delta_kl minus the two scalar blocks.

**(R2).** The Gram matrix 6I - 1 1^T - conj(lambda) lambda^T is 6 times a
rank-four projection (the vectors 1 and lambda are orthogonal of norm
sqrt(6)), so the span is four-dimensional. Suppose a combination
sum_k b_k R_k had rank one. Put

    beta_0 = (sum_k b_k)/6,   beta_1 = (sum_k b_k lambda_k)/6,
    L = sum_k (b_k - beta_0 - beta_1 conj(lambda_k)) T_k.

Then L = 0 (+) 0 (+) sum_k b_k R_k, because L kills both matching lines. RO
gives a common line inside ran P_in, orthogonal to v0 and v1. This is a
third matching, contradicting count two.

## 4. Nonbinary characters and multiplicities (R5)

A vector is *binary* if it is a scalar times a sign vector. A binary
zero-sum unit vector has three entries of each sign.

Suppose no edge of the triangle has a zero 3-by-3 minor. The first matching
is trivial, so the relative vectors of the two matchings are exactly eta, p
and q. By [OneBinaryMatching.md](../../EdgeRigidity/OneBinaryMatching.md),
none of them is binary.

Suppose a value a occurs n >= 3 times in a zero-sum list of six unit
numbers. Then n <= 6 - n, so n = 3 and the other three values all equal -a:
the list is binary. So every value of lambda occurs at most twice, and
lambda takes m = 3, 4, 5 or 6 distinct values. Each branch file treats one
value of m.

## 5. Residual product algebra (R3)

Let A_c be the C*-algebra generated by all R_k* R_l on ran P_in, and C_c its
commutant. Let P be a projection in C_c. Then

    R_l P R_l* = R_k (R_k* R_l) P (R_l* R_k) R_k* = R_k P R_k*,

so Q = R_k P R_k* does not depend on k, and T_k P = Q T_k for the
six-dimensional lifts. Averaging over k and using the fixed-i unitarity of
(1.1),

    Q_ii = (1/6) sum_(j,l) P_jl sum_k t_kij conj(t_kil) = tr(P)/6.

Likewise P_jj = tr(P)/6, by fixed-j unitarity. So **reducing projections
are flat**.

A rank-one P = x x* gives T_k x = mu_k y, a third common line, which is
impossible at count two. The finite-dimensional C*-algebra A_c is a direct
sum of blocks M_d (x) I_m with sum d m = 4. A minimal commutant projection
in a block has rank d, so d >= 2. This leaves exactly three types:

    M4,   M2 (+) M2,   M2 (x) I2.

Below, *irreducible* means type M4, i.e. C_c = C I. The family is closed
under adjoints, so a common invariant subspace of all R_k* R_l is the same
as a reducing subspace.

## 6. The two coordinate frames (R4)

For an input coordinate j put psi_j = sqrt(3/2) P_in e_j. Then

    ||psi_j|| = 1,   sum_j psi_j psi_j* = (3/2) P_in,
    <psi_j, psi_l> = (3/2) delta_jl - (1 + q_j conj(q_l))/4.            (6.1)

The conjugation convention for q does not matter below.

By the fixed-j unitarity in (1.1), sum_k T_k e_j e_j* T_k* = I. Compress to
ran P_out, using that T_k preserves the matching/residual splitting:

    sum_k R_k psi_j psi_j* R_k* = (3/2) P_out.                          (6.2)

For an output coordinate i, the vector chi_i = sqrt(3/2) P_out e_i satisfies
the analogous identities with p in place of q. By fixed-i unitarity,

    sum_k R_k* chi_i chi_i* R_k = (3/2) P_in.                           (6.3)

The off-diagonal Gram entries in (6.1) have modulus at most 1/2, so the six
rays of each frame are distinct.

## 7. General tools

### 7.1 The channel in an orthonormal Kraus basis

Choose unit z_k with z_k^2 = lambda_k (any signs) and put
U_k = conj(z_k) R_k. Then tr(U_k* U_l) = 6 delta_kl - 2 Re(z_k conj(z_l)) is
real, so V = span_R{U_k} is a real four-dimensional space. The inner
product <X, Y> = tr(X* Y)/4 is real on V.

Write z_k = c_k + i s_k. Since sum lambda = 0, we get
sum c^2 = sum s^2 = 3 and sum c s = 0. So the Gram matrix is (3/2)(I - Pi)
with Pi a rank-two projection, and the frame operator of the U_k on V is
(3/2) id_V. Consequently, for ANY orthonormal basis B_0, ..., B_3 of V,

    Phi(Y) := sum_a B_a Y B_a* = (2/3) sum_k R_k Y R_k*,
    Phi*(Y) = sum_a B_a* Y B_a.                                         (7.1)

By (6.2) and (6.3), Phi(psi_j psi_j*) = I and Phi*(chi_i chi_i*) = I.

A unit vector psi with Phi(psi psi*) = I is called *perfect*. Equivalently,
the four vectors B_a psi are orthonormal, since they are four rank-one
projections summing to I. If the B_a are unitary, then Phi(I) = Phi*(I) = 4I.

Two operations are used freely, and neither changes a Gram matrix:
- Left multiplication of V by a fixed unitary W* replaces Phi by
  W* Phi(.) W and the output frame by W* chi. The input frame is unchanged.
- A simultaneous conjugation S(.)S* moves both frames by S.

### 7.2 Three balanced involutions

A *balanced involution* is a Hermitian unitary of order four with trace
zero.

**Lemma.** Balanced involutions A, B, C admit a common unitary alternating
J (J^T = -J, JJ* = I) with AJ + JA^T = BJ + JB^T = CJ + JC^T = 0 if and only
if Re tr(ABC) = 0.

*Proof.* Let V6 be the real span of

    E12+E34, i(E12-E34), E13-E24, i(E13+E24), E14+E23, i(E14-E23),

where E_ab are the elementary alternating matrices. For real coefficients
x, the matrix J = sum x_j J_j has JJ* = |x|^2 I. The action J -> U J U^T
with U in SU(4) preserves V6.

For traceless Hermitian D, L_D(J) = i(DJ + JD^T) is a real skew operator on
V6 with Pf(L_D) = -tr(D^3)/3. To check this, take D diagonal: the three
2-by-2 blocks give (d1+d2)(d1+d3)(d2+d3). Conjugation by SU(4) acts on V6
with determinant one.

For a balanced involution, L_A has rank two, so its two-form is
decomposable and squares to zero. Hence Pf(L_A + L_B + L_C) is a multiple of
the triple wedge product. It vanishes iff the three image planes are
dependent, iff the kernels share a nonzero J in V6. For balanced
involutions tr((A+B+C)^3) = 6 Re tr(ABC). So Re tr(ABC) = 0 gives the
common J.

Conversely, if J exists, then C(v) = J conj(v) conjugates each involution
to its negative, and conj(tr ABC) = -tr ABC. QED.

Exact checks are in `setup_checks.py`.

### 7.3 Quaternionic spaces and the filter lemma

Suppose every X in V satisfies XJ = J conj(X) for a single unitary
alternating J. Equivalently, X J X^T = J for unitary X in V. Put
Theta(Y) = J Y^T J*. Then:
- Theta is an anti-automorphism with tr(Theta(Y) Z) = tr(Y Theta(Z));
- Theta(X) = X* and Theta(X*) = X for X in V, so Theta commutes with Phi and
  Phi*;
- the traceless Theta-fixed Hermitian matrices form a real five-dimensional
  space E5, on which Y^2 = (||Y||_F^2/4) I (a Clifford space).

For a unit psi, Theta(psi psi*) is the projection onto J conj(psi), which is
orthogonal to psi. Put

    Z_psi = psi psi* + Theta(psi psi*) - I/2,   so Z_psi in E5, ||Z_psi||_F = 1.

If psi is perfect and the B_a are unitary, then:
- Phi(Z_psi) = I + I - 4I/2 = 0;
- tr(Z_psi W) = 0 for every W in the *input defect span*
  W_in = span{traceless part of X* X : X in V}, because
  psi*(B_a* B_b + B_b* B_a) psi = 2 delta_ab.

The same holds for the output frame with Phi*, XX* and the output defect
span W_out.

**Filter lemma.** If the adjacent character (q for the input frame, p for
the output frame) is nonbinary, the six Z_psi_j span at least two real
dimensions.

*Proof.* Otherwise Z_psi_j = +/- Z for one fixed Z, so every psi_j lies in
one of the two orthogonal two-planes ran(Z + I/2) and ran(-Z + I/2). A
single plane cannot carry the sum (3/2)I in (6.1). If both planes are
occupied, psi_j is orthogonal to psi_l whenever they lie in different
planes, which gives q_j conj(q_l) = -1. So q is constant on each group, with
opposite values, and the zero sum makes both groups of size three: q is
binary. QED.
