# Reducible residual algebras force a zero 3-by-3 minor

**Statement.** Let a triangle have exactly two matchings. If the residual
product algebra of some tensor direction is reducible (type M2 (+) M2 or
M2 (x) I2, see [ResidualSetup.md](ResidualSetup.md) (R3)), then one of A, B,
X has a zero 3-by-3 minor. Equivalently: on a count-two triangle with no
zero 3-by-3 minor, the residual algebra is irreducible (M4) in every
direction.

**Status.** Proved. The source is the five supplied archive proofs listed
under Provenance, whose authors' checkers were never supplied. The
importing referee's team reread them line by line and found no genuine gap.
Two presentation gaps were repaired; see the notes at the end of Sections 1
and 4. The load-bearing identities and the exact nonphysical normal-form
controls are rechecked independently in `reducible_checks.py`.

The archive's own verifiers (`residual_rigidity/verify.py`, `interior/verify.py`,
`endpoint/verify.py`) recompute controls identical to their receipts. They
fail only on the SHA-256 of `COORDINATE_PROGRAMME.md`, which was edited
after the receipts were frozen. `rank_rigidity/verify.py` passes.

**Dependencies.**
- [ResidualSetup.md](ResidualSetup.md).
- [OneBinaryMatching.md](../../EdgeRigidity/OneBinaryMatching.md): a binary
  relative matching vector in any mode forces a zero 3-by-3 minor.
- [TriangleNullities.md](../../Triples/TriangleNullities.md): the count gap.

No classification, reconstruction, Tao, balanced-product or published
input is used.

**Provenance.** Archive `03_algebraic/core/`:
- `rank_rigidity/supplied/extension04/RESIDUAL_BLOCK_RIGIDITY.md` and
  `CROSS_FRAME_RIGIDITY.md`;
- `residual_rigidity/supplied/CROSS_RANK.md`;
- `residual_rigidity/supplied/DIRECTIONAL_PROPAGATION.md` (Sections 2-8);
- `residual_rigidity/interior/supplied/PROOF.md` (the M2 (+) M2 interior);
- `residual_rigidity/endpoint/supplied/PROOF.md` (the M2 (x) I2 endpoint);
- the archive reviews `residual_rigidity/REVIEW.md`, `interior/REVIEW.md`
  and `endpoint/REVIEW.md`.

The archive frames every statement "in the eight-seed reconstructed H,K".
The proofs use only the triangle tensor and its factorization
t = conj(A) B / X, so that framing is dropped.

---

Throughout, assume count two and, for a contradiction, that no edge has a
zero 3-by-3 minor. By (R5), the relative matching vectors eta, p, q are
nonbinary.

## 1. A reducible direction and its blocks

Fix a reducible direction. Choose a minimal rank-two projection in the
commutant C_c and its complement. By (R3), the input and output residual
spaces split orthogonally as C_+ (+) C_- and B_+ (+) B_-, and every residual
slice is block diagonal: U_k = U_(k,+) (+) U_(k,-) with U_(k,+/-) in U(2).

The physical lifts P_(c,+/-) and P_(b,+/-) are rank-two projections with
diagonal 1/3. On a mode, a simultaneous diagonal phase change puts the two
matching lines in the form 1/sqrt(6) and q/sqrt(6). This changes no
supports, ranks, singular values or diagonal conditions. Then

    P + Q = I - (1 1^T + q q*)/6.

*Repair note.* In the second and third directions, "a rank-one reducing
block gives an extra matching" uses the fact that a common line of the
direction-k slices is a matching (ResidualSetup Section 2). Common lines
are counted identically in every direction.

## 2. Cross-coordinate rank at most three

For P = P_(c,+) and Q = P_(c,-), with E_j = e_j e_j*, put

    X_c = span{P E_j Q : j = 1..6},
    W_c = {Z = P Z Q : diag Z = 0}.

Since <P E_j Q, Z>_HS = Z_jj, we have dim W_c = 4 - dim X_c. Define X_b and
W_b likewise on the other adjacent mode.

**Lemma 2.1.** dim X_c <= 3 and dim X_b <= 3.

*Proof.* Consider a third-mode slice at coordinate j. Its restriction to the
residual blocks is L_(+,j) = sum_a (x_j)_a A_a, where x_j = P e_j, and
L_(-,j) is defined analogously with y_j = Q e_j. The whole slice is unitary
and maps the matching columns onto the matching lines, so

    L_(+,j)* L_(-,j) = 0,

which is sum conj(x_j)_a (y_j)_b A_a* B_b = 0. If the rank-one operators
x_j y_j* span the whole four-dimensional hom-space, then A_a* B_b = 0 for
all a, b. The ranges of the A_a and of the B_b are then orthogonal
two-planes in the first-mode residual space. The first-mode slices then
split into 2-by-2 blocks whose spans are at most two-dimensional, so their
relative products commute. That gives four further common lines, six in
total, contradicting count two. The argument for X_b is the same with the
two adjacent modes exchanged. QED.

## 3. The witness line is a scaled unitary

Let q be the adjacent character (nonbinary).

**Lemma 3.1 (rank-one witness).** A nonzero rank-one Z in W_c forces q to
be binary.

*Proof.* Write Z = s x y*. Then x_j conj(y_j) = 0, so x and y have disjoint
supports. Since |x_j|^2 <= P_jj = 1/3, each support has at least three
elements, so the supports are complementary triples I, J with
|x_j|^2 = 1/3 on I. The orthogonal companion x' in ran P then vanishes on I.
So P + Q is block diagonal on I and J, and the matching projection
(1 1^T + q q*)/6 has rank one on each triple. Hence q is constant on I and
on J, the constants are opposite (zero sum), and q is binary. QED.

**Lemma 3.2 (unequal singular values).** A rank-two Z in W_c with singular
values s > t > 0 forces q to be binary.

*Proof.* Write Z = s a1 b1* + t a2 b2*, with u_j = 3|a1_j|^2 and
v_j = 3|b2_j|^2 in [0,1] and sum u = sum v = 3. The zero diagonal gives
s^2 u_j (1 - v_j) = t^2 (1 - u_j) v_j. Hence

    v_j - u_j = (s^2 - t^2) u_j (1 - u_j) / (t^2 + (s^2 - t^2) u_j) >= 0.

Equal sums force every u_j to be 0 or 1, and then a1 b1* is a rank-one
witness; apply Lemma 3.1. QED.

So every nonzero witness is a scaled unitary between the blocks
(ZZ* = rho P and Z*Z = rho Q). Moreover dim W_c <= 1: a two-dimensional
pencil contains a singular nonzero member. With Lemma 2.1, dim W_c = 1 and
dim X_c = 3. The same holds on the other adjacent mode.

**Mixed Gram.** Choose block bases in which both witnesses are I2. Write
the residual slices as P_k (+) N_k with P_k, N_k in U(2), and let F_+, F_-
be the 4-by-6 synthesis matrices (columns vec P_k and vec N_k).

At an input coordinate j, the vectors x_j, y_j satisfy
sum_k T_k e_j e_j* T_k* = I. So

    sum_(a,b) conj(x_j,a) y_j,b sum_k conj((P_k)_(r a)) (N_k)_(s b) = 0.

Because the six matrices x_j y_j* span the traceless 2-by-2 matrices, the
inner sum is M_rs delta_ab. The output coordinates give delta_rs L_ab in the
same way. Hence F_+ F_-* = gamma I4.

We also have F*F = 6 Pi, where F stacks F_+ over F_- and Pi is a rank-four
projection (the complement of the two character vectors). Each block family
spans at least three dimensions: a two-dimensional span gives commuting
relative products and extra common lines. Two orthogonal row spaces, each of
dimension at least 3, cannot sit inside a four-dimensional space, so
gamma != 0.

Restricting to ran Pi, A = X*X satisfies A^2 - 6A + |gamma|^2 I = 0 with
tr A = 12. So 0 < |gamma| <= 3, and |gamma| = 3 if and only if the type is
M2 (x) I2.

## 4. Directional propagation and the common normal form

**Pauli lemma.** If S is Hermitian on C2 (x) C2 with S^2 = I and both
partial traces zero, then S = (n.sigma) (x) (m.sigma) for unit n, m.

*Proof.* S = sum C_ij sigma_i (x) sigma_j with C real. Take a signed SVD of
C, i.e. local rotations, to reach t1 XX + t2 YY + t3 ZZ. Then

    S^2 = (sum t^2) I - 2(t2 t3 XX + t1 t3 YY + t1 t2 ZZ),

which forces exactly one t_i = +/-1. QED.

**Interior (0 < g = |gamma| < 3).** Put G = F_A F_A* and d = sqrt(9 - g^2).
From the mixed Gram,

    G^2 - 6G + g^2 I = 0,   tr G = 12,   tr_1 G = tr_2 G = 6 I2

(each A_k is unitary), so S = (G - 3I)/d satisfies the Pauli lemma. Local
basis changes, which preserve the aligned witnesses, give

    G = 6 diag(alpha^2, beta^2, beta^2, alpha^2),
    alpha^2 = (3+d)/6,  beta^2 = (3-d)/6,  g = 6 alpha beta,

and B_k is A_k with its diagonal entries scaled by beta/alpha and its
off-diagonal entries scaled by alpha/beta. Row norms of B_k then force

    A_k = [[alpha h00, beta h01], [beta h10, alpha h11]],
    h00 h11 = -h01 h10,

with |h| = 1 and orthogonal phase vectors h_ac of squared norm 6. So the
first-mode frame (1, eta, h_ac)/sqrt(6) is a normalized Hadamard matrix.
The residual tensor is

    R = sqrt(6) sum_(s,a,c in {0,1}) w_(s+a+c mod 2) u_ac (x) v_sa (x) z_sc,
    w_0 = alpha > beta = w_1 > 0.                                       (4.1)

The fixed-i slices restricted to the two blocks are unitary. Their column
norms, 6(alpha^2 |v00|^2 + beta^2 |v01|^2) = 1 and the same with alpha and
beta exchanged, force |v_sa(i)|^2 = 1/6 and v00 v11 = -v01 v10 at every i.
The same holds for z. So all three modes carry flat Hadamard frames with
pointwise phase rectangles, and the other two directions are also of type
M2 (+) M2 with the same g. The multiplicity type is impossible there,
because the induced map on M2 has positive diagonal factors
beta/alpha != alpha/beta and so is not unitary.

**Endpoint (g = 3).** F_A F_A* = 3I and F_B = F_A. With
u_ac = (A_k)_ac/sqrt(3),

    R = sqrt(3) sum u_ac (x) v_sa (x) z_sc,                             (4.2)

and in every mode the local 2-by-2 residual matrix M_j satisfies
M_j M_j* = I/3. Individual residual columns need NOT be flat. The other
directions have identical blocks and so are of type M2 (x) I2.

So all three directions have the same reducible type. The interior and
endpoint arguments below may therefore be run from any direction.

*Repair note.* The archive's interior and endpoint proofs contract in the
k-mode. Theorem 7.1 of the propagation proof makes direction 1 reducible
too, so the normal form can be built from it.

**Phase locking.** Let f0, f1 be orthonormal flat vectors whose quotient
q = f1/f0 is nonbinary. Then the only flat vectors in span(f0, f1) are the
two lines themselves. Indeed, flatness of c f0 + e f1 gives
Re(c conj(e) conj(q_j)) = 0 for all j, which forces q binary unless ce = 0.

Put d_j = 3 det M_j, a unit number. The antiunitary C = D(d) followed by
entrywise conjugation satisfies C u00 = u11, C u01 = -u10 (cofactor
identities). So C preserves the residual space, hence the matching plane,
and permutes the two flat lines. It cannot fix both, since q^2 would then be
constant. So

    d_j = 6 kappa f0(j) f1(j)                                           (4.3)

for a constant unit kappa, in each mode (kappa_A, kappa_B, kappa_C).

## 5. The interior is impossible

Contract (4.1) against conj(x_ac), where x = sqrt(6) u, y = sqrt(6) v and
h = sqrt(6) z. With Phi_A(f) = A D(f) A* and Phi_B(f) = B D(f) B*, the
factorization t = conj(A) B / X gives

    D(conj x_ac) = sum_s w_(s+a+c) Phi_A(y_sa) Phi_B(h_sc).             (5.1)

Put Y = Phi_A(y00), W = Phi_B(h00), M = Phi_A(m), N = Phi_A(n),
O = Phi_B(o), L = Phi_B(ell), where m, n, o, ell are the bit ratios
y10/y00, y01/y00, h10/h00, h01/h00, and C = MO. The rectangles give

    D00 = Y(alpha I + beta C)W,
    D10 = Y N (beta I - alpha C) W,
    D01 = Y (beta I - alpha C) W L.

Unitarity of U = alpha I + beta C with alpha beta > 0 forces C* = -C and
C^2 = -I. Put J = iC and P = (I + J)/2, a rank-three projection with
diagonal 1/2 in the A basis and in the B basis (the bit ratios have zero
mean).

**Bit ratios are nonbinary.** A binary bit ratio s makes D(s) preserve the
residual four-space. This splits the matching plane with rank one on each
coordinate triple, making the matching vector binary.

**Transports.**

    J_A = Y J Y* = i D(a) A D(n) A*,
    J_C = W* J W = -i D(conj b) B D(conj ell) B*.

The standard diagonals are zero. The three frames sqrt(2) P Y* e_k,
sqrt(2) P A e_i and sqrt(2) P B e_j are tight six-vector frames in ran P,
with overlaps

    X_ij (1 + i m_i o_j),
    y00(i) A_ki (1 + i a_k n_i),
    conj(tau) conj(x00(k)) conj(h00(j)) B_kj (1 - i conj(b_k) conj(ell_j)),

where tau = alpha - i beta. Since |1 + iz|^2 = 2 - 2 Im z, each centered
cross-Gram is -Im(r s^T)/3, which has real rank at most 2.

**Rank-defect lemma.** Let V be a flat unitary, and Lambda, Mu diagonal
unitaries, with tr Mu = 0 and Mu taking at least three values. Suppose
J = i Lambda V Mu V* is a Hermitian involution, and put P = (I + J)/2. If
the P E_k P are real-linearly dependent, then V has a zero 3-by-3 minor.

*Proof.* Suppose PDP = 0 for a nonzero real diagonal D. The diagonal 1/2
gives QDQ = 0, so D anticommutes with J, and hence with O = V Mu V*. Every
constant block of D^2 is even and contains all distinct eigenvalues of Mu,
because the flat columns have nonzero restrictions to it. So D = c Sigma
with a 3+3 sign split, and some antipodal eigenvalue pair of O is simple.
Its two eigenvector columns are proportional on three coordinates, giving a
zero 3-by-3 minor. QED.

Apply the rank-defect lemma with (V, Mu) = (A, D(n)), (X, D(o)) and
(X*, D(conj m)). Each of the three centered projector spans then has
dimension 5 in the real eight-dimensional space of traceless Hermitian
qutrit operators.

**Three-subspace lemma.** Three five-dimensional subspaces of a real
eight-dimensional inner-product space cannot have pairwise pairing ranks all
at most 2. *Proof.* A pairing rank of at most 2 with L1 forces the
three-dimensional L1-perp into both L2 and L3, where the pairing is
positive definite. QED.

This is a contradiction.

## 6. The endpoint is impossible

**Determinant phase.** The contraction of (4.2) lifts to U = V W on
C2 (x) C6, with all three factors unitary. Taking 12-by-12 determinants,
and comparing with the determinant of the actual matching identity
D(conj eta) = [A D(p) A*][B D(q) B*], gives

    Omega^6 = 1,   Omega = kappa_A kappa_B kappa_C.

**Squared tensor.** C_A (x) C_B (x) C_C fixes the endpoint residual, since
all eight sign products are +1 and the weights are equal, and multiplies the
matching part by Omega. With Q = eta p q:

    t - Omega Q conj(t) = (1 - Omega)(1 + Q)/6.

Physical flatness t conj(t) = 1/6 turns this into
z^2 = Omega Q + (1 - Omega)(1 + Q) z/sqrt(6), where z = sqrt(6) t. So
S = z^2/Q has all line sums L = 2 + 4 Omega, and it factors as
S_kij = conj(E_ki) F_kj conj(G_ij) through rephased entrywise squares of
the actual edges.

**Partial isometries.** From the line sums, E* F = L G, E G = conj(L) F and
F G* = L E. So E, F and G have a common rank r, every nonzero singular value
equals |L|, and r |L|^2 = 36. With Omega^6 = 1 the possible ranks are
1, 9/7, 3 and 9. Only r = 1 and r = 3 are integers of size at most 6.

Rank 1 would make the actual Hadamard real up to phases. A real Hadamard of
order 6 does not exist: after normalizing, a third row would need a sign sum
of zero on three positions.

**Three unbiased qutrit frames.** For r = 3, the three support isometries
give three tight six-vector qutrit frames that are pairwise unbiased. Their
centered projector spaces are mutually orthogonal in the real eight-space,
so one of them has dimension at most 2. Its projector span then has
dimension at most 3. An identity resolution by three independent frame
vectors forces them to be orthonormal, and all six rays are these three,
each repeated twice.

A repeated ray gives proportional rows or columns of a squared actual edge.
The original quotient of those rows or columns is then +/-1-valued with
three signs of each kind, which gives a zero 3-by-3 minor. This is a
contradiction.

## 7. Conclusion

Both reducible types contradict the no-zero-3-minor hypothesis. So on a
count-two triangle with no zero 3-by-3 minor, the residual algebra is M4 in
every direction. QED.
