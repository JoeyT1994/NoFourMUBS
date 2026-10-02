# Count-six faces of a quartet: shared alignment, propagation and the four-face exclusion

**Statement.** Let I = B_0, B_1, B_2, B_3 be four pairwise mutually unbiased
orthonormal bases of C^6 (a *quartet*). Its four *faces* are the triangles
of three of these bases; each has a matching count in {0,1,2,6}
([TriangleNullities](../../Triples/TriangleNullities.md)). Then:

1. **(Shared alignment, Theorem 4.)** If two count-six faces share the edge
   {u,v}, their complete character systems agree (as ray sets) at u or at v.
2. **(Propagation, Theorem 5.)** If the agreement holds at u, the face
   opposite u has count six, and its two edges at v are aligned at their
   far endpoints.
3. **(Face patterns, Theorem 6.)** The number of count-six faces is 0, 1 or
   3. In particular **not all four faces have count six**, and **no quartet
   has exactly two count-six faces**.
4. **(Both endpoints, Corollary 7.)** An edge shared by two count-six faces
   is aligned at **exactly one** endpoint. The archive's "both shared
   overlaps monomial" branch, including its relative five-cycles, is empty.
5. **(Three faces, Corollary 8.)** If exactly three faces have count six,
   they meet at one vertex c. Each edge at c is aligned at its outer
   endpoint and not at c.

Items 1-5 also hold without Jaming et al., in the following weaker form.
For any four pairwise unbiased bases of C^6, each conclusion either holds
or some face has a **binary** relative matching direction. A binary
direction in turn forces a zero 3-by-3 minor on an edge
([OneBinaryMatching](../../EdgeRigidity/OneBinaryMatching.md)).

**Status.** Proved. It is an analytic argument with independent exact
checks ([verify.py](verify.py)). The proof here is a repaired and shortened
version of the archive proof (Section 9). It uses neither the archive's
"character duality" (no-zero3 character Hadamards) nor its "complementary
flat triple uniqueness".

**Dependencies.**
- [MatchingConventions.md](../../EdgeRigidity/MatchingConventions.md): the
  zero-sum lemma (elementary, unconditional).
- [OneBinaryMatching.md](../../EdgeRigidity/OneBinaryMatching.md): a binary
  relative direction between two distinct matchings, in any one of the three
  directions, forces a zero 3-minor on an actual edge (unconditional for
  triangles).
- [QuartetEdgeCorollary.md](../../EdgeRigidity/QuartetEdgeCorollary.md): no
  quartet edge has a zero 3-minor. This uses FourierBlocks together with the
  published Fourier-family exclusion of Jaming et al.,
  [arXiv:0902.0882](https://arxiv.org/abs/0902.0882).
- [TriangleNullities.md](../../Triples/TriangleNullities.md) is used only
  for the face-count list {1,2,6} in Corollary 9 and in the remarks. The
  main theorems need only "at most six matchings", which Lemma 1 proves.

No reconstruction input, classification reach, Szöllősi or Diţă input,
Karlsson three-ray input, Conjecture 3 or product-regular coordinates is
used.

**Provenance.** Archive `03_algebraic/core/count_six_attack/quartet_m5_forcing/PROOF.md`
(Lemmas 1-3, Section 4) and `.../shared_six_alignment/PROOF.md` (Sections
1-4, 7). The mathematics is the archive's, apart from the two
simplifications recorded in Section 9.

---

## 0. Notation

All basis matrices are unitary 6-by-6 matrices, normalized so that the
entries of any transition B_x* B_y (x ≠ y) have modulus 1/sqrt(6).
For a basis B write D_B = {B D B* : D diagonal} for its diagonal algebra;
D_I is the algebra of diagonal matrices. For a vector v, D(v) = diag(v).
All inner products are <u,v> = sum_i conj(u_i) v_i.

Two elementary facts are used repeatedly.

**(F1) Trace factorisation.** If B, C are unbiased, M = B D(x) B* and
N = C D(y) C*, then tr(MN) = (sum x)(sum y)/6. Indeed
tr(MN) = sum_{i,j} x_i y_j |(B*C)_ij|^2.

**(F2) Two unbiased diagonal algebras meet in the scalars.** If
B D(x) B* = C D(y) C*, then any eigenspace of this operator is spanned by
columns of B and also by columns of C. A column of C has no zero coordinate
in the B basis. So an eigenspace cannot be proper, and the operator is scalar.

## 1. Matchings, characters and count six

Fix a face with three of the bases, and call them B_v, B_i, B_j in this
order: the *oriented face* (v;i,j). A **matching** of (v;i,j) is a triple of
unitaries

    E = P Q,     E in D_{B_v},  P in D_{B_i},  Q in D_{B_j},         (1.1)

considered modulo (E,P,Q) -> (cE, c'P, (c/c')Q), with |c|=|c'|=1. Write
E = B_v D(eta) B_v*, P = B_i D(p) B_i* and Q = B_j D(q) B_j*, with unit-modulus
lists eta, p, q. Take B_v = I and put A = B_i, B = B_j and X = A*B. Then
(1.1) is exactly the matching equation of
[MatchingConventions](../../EdgeRigidity/MatchingConventions.md):
A* D(eta) B = D(p) X D(q). By (F2), E determines P and Q up to the scalar
freedom. The identity matching is (I,I,I).

**Lemma 1 (orthogonality and count).** Let (E,P,Q) and (E',P',Q') be matchings
of (v;i,j). Either they are equal modulo scalars, or

    <eta, eta'> = <p, p'> = <q, q'> = 0.

Hence a face has at most six matchings. If it has six, the three matrices

    H^v_ij = [eta^0 ... eta^5],   [p^0 ... p^5],   [q^0 ... q^5]

(physical coordinates as rows, matchings as columns, identity matching
first) are phase Hadamards: their columns are orthogonal and they have
unit-modulus entries.

*Proof.* Take B_v = I. Then (eta'/eta, p'/p, q'/q), with entrywise
quotients, is a matching of the triangle A, D(eta)B, D(p)XD(q). Indeed
A* D(eta'/eta) (D(eta)B) = D(p'/p) (D(p)XD(q)) D(q'/q), and D(eta)B is still
unitary and flat. By the zero-sum lemma the three quotient lists are either
all constant or all have zero sum. Zero sum means sum_i eta'_i conj(eta_i) = 0,
that is <eta,eta'>=0, and similarly for p and q. So the eta-lists of
inequivalent matchings are pairwise orthogonal in C^6, and there are at most
six. QED.

**Count six.** A face has *count six* if it has six inequivalent matchings.
This agrees with the count dim ker K_G of
[TriangleNullities](../../Triples/TriangleNullities.md), Section 2. Its
**character ray set** at v is the set of six rays

    H^v_ij := { [eta^a] : a = 0,...,5 }  in  P(C^6),  coordinates of B_v.

Equivalently, it is the set of the six lines C·E_a in D_{B_v}. So it depends
only on the three bases and the orientation. Reordering or rephasing basis
vectors does not change it, beyond a common relabelling of coordinates. It
always contains the identity ray [1], and the other five rays are orthogonal
to [1].

**Orientation rule.** If E = PQ is a matching of (v;i,j), then E* = Q*P* is a
matching of (v;j,i), and the map is a bijection. Hence

    H^v_ji = conj(H^v_ij)   (entrywise conjugate rays).                (1.2)

Also P = E Q* and Q = P* E. So the triples (P; E, Q*) and (Q; P*, E) are
matchings of (i;v,j) and (j;i,v) respectively. The matchings of one face,
read at its three vertices, are the same six objects.

**Structure of count six (remark; used only in the verifier and for
orientation).** With B_v = I and the tensor t_kij = conj(A_ki) B_kj / X_ij,
the face has count six if and only if there are phase Hadamards
H_eta, H_p, H_q with

    t_kij = (1/6) sum_a conj((H_eta)_ka) (H_p)_ia (H_q)_ja.             (1.3)

(Proof: sum_k eta^a_k t_kij = p^a_i q^a_j is the matching equation, and
H_eta/sqrt(6) is unitary, so this can be inverted. Conversely, contracting
(1.3) with a column of H_eta gives a rank-one phase matrix, which is a
matching.) Equivalently the G_k = T_0* T_k commute
(TriangleNullities, Section 3). The 36 vectors D(eta^a) b_j (b_j the columns
of B) are then common unbiased rays of I and A.

## 2. A conjugation-closed character set in dimension six is impossible

**Lemma 2.** Let a face (v;i,j) of count six have no binary relative
matching direction. Then conj(H^v_ij) ≠ H^v_ij as ray sets. In a quartet this
holds for every count-six face.

*Proof.* Suppose conj(H) = H, where H = H^v_ij. Conjugation of rays is then
an involution of the six-element set H. It fixes the identity ray [1], so it
induces an involution of the remaining **five** rays. Since five is odd, it
fixes one of them, say [eta^a] with a ≥ 1. Then conj(eta^a) = lambda eta^a
with |lambda| = 1. Choose mu with mu^2 = lambda. Then mu·eta^a is real with
unit-modulus entries, so eta^a = conj(mu)·(a ±1 vector), and eta^a is binary
up to scalar. Now eta^a is the relative centre-direction vector of matching a
with respect to the identity matching. So the face has a binary relative
direction, contrary to the hypothesis. In a quartet, OneBinaryMatching would
then give a zero 3-minor on an actual edge, contradicting
QuartetEdgeCorollary. QED.

(Zero sum also forces three +1 and three -1, but this is not needed. The
parity of 6-1 = 5 is the one place where dimension six enters. In odd prime
dimension d the d-1 nonidentity rays are swapped in pairs, and the verifier
confirms that no fixed ray exists there.)

## 3. Alignment

Let {v,i} be an edge, and let (v;i,j), (v;i,k) be its two faces, both of
count six. The edge is **aligned at v** if H^v_ij = H^v_ik. By (1.2), this is
the same as H^v_ji = H^v_ki, so the definition does not depend on the
orientation convention.

**Lemma 3.** If all three faces through v have count six and have no binary
relative directions (for instance, in a quartet), then the three edges at v
are not all aligned at v.

*Proof.* Let i,j,k be the other vertices, and write H = H^v_ij, K = H^v_ik
and L = H^v_jk. Alignment at v of the edges vi, vj, vk reads, using (1.2),

    H = K,     conj(H) = L,     conj(K) = conj(L).

The third relation gives K = L, so H = K = L = conj(H). This contradicts
Lemma 2. QED.

## 4. Two count-six faces sharing an edge are aligned at one endpoint

**Theorem 4.** Let (I,A,B) and (I,A,C) be count-six faces of a quartet
I, A, B, C, sharing the edge {I,A}. Then the edge is aligned at I or at A.

*Proof.* Write the two complete matching lists, identity first, as

    E_a = D(eta^a) = P_a Q_a,   P_a = A D(p^a) A*,  Q_a = B D(q^a) B*,
    F_b = D(theta^b) = R_b S_b, R_b = A D(r^b) A*,  S_b = C D(s^b) C*,

for a, b = 0,...,5. Put

    U_ab = <eta^a, theta^b>/6,      V_ab = <p^a, r^b>/6.

By Lemma 1, U and V are 6-by-6 unitaries with U_00 = V_00 = 1 and zeros in
the rest of row 0 and column 0. Let U5, V5 be their lower-right 5-by-5
blocks. Row a of U lists the coefficients of eta^a in the orthogonal basis
theta^b/sqrt(6): eta^a = sum_b conj(U_ab) theta^b. Column b of U lists the
coefficients of theta^b in the eta basis. The same holds for V with p and r.

*Step 1 (disjoint supports).* Since Q_a = P_a* E_a and S_b = R_b* F_b,

    tr(Q_a* S_b) = tr(E_a* P_a R_b* F_b) = tr((F_b E_a*)(P_a R_b*)).

Here F_b E_a* = D(conj(eta^a) theta^b) lies in D_I and
P_a R_b* = A D(p^a conj(r^b)) A* lies in D_A. By (F1) for the unbiased
pair I, A,

    tr(Q_a* S_b)/6 = U_ab conj(V_ab).                                   (4.1)

By (F1) for the unbiased pair B, C, tr(Q_a* S_b) = (sum conj q^a)(sum s^b)/6.
This is 0 for a, b ≥ 1, because q^a and s^b are orthogonal to the identity
character. Hence

    U_ab V_ab = 0  for all a, b in {1,...,5}.                          (4.2)

*Step 2 (no support of size two).* Suppose a row a ≥ 1 of U has exactly two
nonzero entries, in columns b ≠ d. Then eta^a = alpha theta^b + beta theta^d
with alpha, beta ≠ 0 and |alpha|^2 + |beta|^2 = 1. Since |eta^a_i| = 1 for
every i,

    0 = 2 Re(alpha conj(beta) theta^b_i conj(theta^d_i)),   i = 1,...,6,

so the quotient theta^b / theta^d takes only the two values ±w for a fixed
unit w. It is binary up to scalar. This is a binary relative
centre-direction between two distinct matchings of the face (I,A,C). By
OneBinaryMatching and QuartetEdgeCorollary that is impossible in a quartet.
A column with exactly two nonzero entries is handled in the same way inside
(I,A,B), with theta and eta exchanged. The same argument applies to V, with
the A-direction characters p and r. Every row a ≥ 1 of U5 is nonzero, because
it has norm one and U_a0 = 0, and likewise for V5. So each row and each
column of U5 and of V5 has support of size 1, 3, 4 or 5.

*Step 3 (pigeonhole).* By (4.2), in each row a ≥ 1 the supports of U5 and
V5 are disjoint subsets of five columns. So they cannot both have size ≥ 3,
and each row is a singleton row of U5 or of V5. Among the five rows, one of
U5, V5 therefore has at least three singleton rows; say it is U5 (the case of
V5 is the same). A singleton entry of a unitary has modulus one, so its
column is also a singleton, and distinct singleton rows lie in distinct
columns. Hence three rows a_1, a_2, a_3 and three columns b_1, b_2, b_3 of
U5 carry a monomial 3-by-3 block, and the rest of those rows and columns is
zero. The remaining two rows are then supported in the remaining two
columns. By Step 2 their support has size 1, so U5, and hence U, is monomial.

A monomial U means that every theta^b is proportional to some eta^a, that
is, H^I_{AB} = H^I_{AC}: the edge is aligned at I. A monomial V means that
the p- and r-rays agree. These are the character sets H^A_{IB} and H^A_{IC}
of the faces (A;I,B) and (A;I,C), by the orientation rule
(P_a = E_a Q_a*, R_b = F_b S_b*). So the edge is aligned at A. QED.

## 5. Propagation

**Theorem 5.** Let uvw and uvz be count-six faces of a quartet, with the
edge uv aligned at u. Then the face vwz has count six, the edge vw is
aligned at w, and the edge vz is aligned at z.

*Proof.* Change the reference so that B_u = I, and write B_v = A, B_w = B,
B_z = C. Let E_a = P_a Q_a and F_b = R_b S_b be the two complete lists, as
in Section 4. Alignment at u means that U is monomial. So after reindexing
F and multiplying each R_b by a unit scalar (this leaves S_b unchanged and
rescales F_b), we get F_a = E_a for all a:

    E_a = P_a Q_a = R_a S_a,     a = 0,...,5.                           (5.1)

Put T_a := P_a* R_a = Q_a S_a*. The first expression lies in D_A. The second
shows that T_a = Q_a · S_a* is a matching of the oriented face (v;w,z), with
Q_a in D_B and S_a* in D_C. By (F1) for the unbiased pair B, C,

    tr(T_a* T_b) = tr(Q_a* Q_b · S_b* S_a) = <q^a,q^b> <s^b,s^a> / 6 = 6 delta_ab.

So the six T_a are pairwise inequivalent, and by Lemma 1 they form the
complete matching list of vwz: this face has count six.

At w, compare the faces (w;v,u) and (w;v,z). Their complete lists are
Q_a = P_a* · E_a and Q_a = T_a · S_a, with P_a*, T_a in D_A, E_a in D_I and
S_a in D_C. Both have the centre switches {Q_a}. So H^w_vu = H^w_vz, and vw
is aligned at w. At z, compare (z;v,u) and (z;v,w), with lists
S_a = R_a* · E_a and S_a = T_a* · Q_a. Both have centre switches {S_a}, so
vz is aligned at z. The completeness shown above is what makes these
equalities of complete ray sets. No commutation of P, Q or of R, S is
used. QED.

(The verifier checks (4.1), (5.1), T_a = P_a*R_a = Q_aS_a* and the
alignments at w and z exactly, on every ordered edge of the prime-dimension
quartets I, F, DF, D^2F for d = 3 and d = 5. Those are universal identities,
not order-six instances.)

## 6. Face patterns

**Theorem 6.** In a quartet the number of count-six faces is 0, 1 or 3.

*Proof.* Any two faces of a tetrahedron share an edge. If two faces uvw and
uvz have count six, Theorem 4 aligns uv at u or at v. Theorem 5 then makes
the face opposite the aligned endpoint count six. So exactly two count-six
faces is impossible.

Suppose all four faces have count six. By Theorem 4 every edge is aligned
at one of its endpoints. Fix a vertex v. By Lemma 3 some edge vu is not
aligned at v, so it is aligned at u. Theorem 5, applied to the aligned edge
uv (the faces uvw and uvz have count six), shows that the other two edges vw
and vz at v are aligned at w and z. Hence *every edge at v is aligned at its
far endpoint*. This holds for every v. Now take any vertex x. For each
neighbour y, the statement for v = y says that yx is aligned at x. So all
three edges at x are aligned at x, contradicting Lemma 3. QED.

The verifier re-derives this incidence argument by exhaustive enumeration.
With four count-six faces there are 3^6 = 729 endpoint assignments. 122 of
them satisfy Lemma 3, 5 satisfy Theorem 5, and none satisfies both (this
matches the archive's count). The census over all 16 subsets of count-six
faces, with alignment flags only on edges shared by two of them, is
feasible exactly for 0, 1 and 3 faces.

**Corollary 7 (no doubly aligned shared edge).** If an edge is shared by two
count-six faces and is aligned at both endpoints, Theorem 5, applied at each
endpoint, makes both remaining faces count six. This contradicts Theorem 6.
So a shared (6,6) edge is aligned at exactly one endpoint. In the archive's
notation (U, V of Section 4): exactly one of U, V is monomial. This closes
every relative-permutation type in the both-monomial branch, including the
five-cycles.

**Corollary 8 (the three-face pattern).** If exactly three faces have count
six, they are the three faces through one vertex c, and the fourth face
opposite c has count 1 or 2. Each edge cx is shared by two count-six faces.
By Theorem 5 it is not aligned at c, since otherwise the face opposite c
would have count six. By Theorem 4 it is therefore aligned at x. The
verifier finds that this is the unique admissible alignment pattern. For
the outer vertices x, y, z:

    H^x_{cy} = H^x_{cz},   H^y_{cx} = H^y_{cz},   H^z_{cx} = H^z_{cy},
    H^c_{xy} ≠ H^c_{xz},   H^c_{yx} ≠ H^c_{yz},   H^c_{zx} ≠ H^c_{zy}.

This pattern is neither excluded nor claimed to exist.

**Corollary 9 (a non-six face).** Every quartet has a face whose matching
count is 1 or 2. (Counts 3, 4, 5 and 0 do not occur, by TriangleNullities
and the identity matching.) In fact there are at least 4, 3 or 1 such faces,
according as there are 0, 1 or 3 count-six faces. **Conditional:** combined
with an exclusion of count two on quartet faces (the archive's
`simple_character_channel/TWO_SIDED_EXCLUSION.md`, not an input of this
file), every quartet would have a count-one face. The further archive claim
that this face is "all-M5" also needs the archive rectangular exclusion
(`03_algebraic/core/rectangular_closure`). That exclusion is **not** imported
or verified here.

## 7. What exactly is used where

| Step | Input |
|---|---|
| Lemma 1 (orthogonality, at most six) | zero-sum lemma (MatchingConventions) |
| Lemma 2 (no conjugation-closed set) | parity of 5, plus "no binary centre direction" |
| Theorem 4, Step 1 | (F1) for I,A and for B,C (the actual sixth edge B*C) |
| Theorem 4, Step 2 | "no binary centre direction" on (I,A,B), (I,A,C) and on (A,I,B), (A,I,C) |
| Theorem 4, Step 3 | pigeonhole and unitarity of U, V |
| Theorem 5 | (F1) for B,C, and Lemma 1 |
| Theorem 6, Corollaries 7-8 | Lemma 3, Theorems 4-5 |
| "no binary direction" on a quartet face | OneBinaryMatching + QuartetEdgeCorollary (Jaming et al.) |

## 8. Scope

These are statements about a hypothetical quartet. They do not claim that a
count-six triangle with no zero 3-minor exists or does not exist. The exact
count-six triangles in C^6 used as controls (the zeta = exp(i pi/12)
triangle and the product triple I, F2⊗F3, B2⊗B3) have binary directions and
48 zero 3-minors on each edge. Their character sets are conjugation-closed,
with a binary fixed ray, exactly as Lemma 2 says is forced. The count-one
and count-two faces, the three-face pattern, and fourth-basis extension of
any face all remain open.

## 9. Referee notes: differences from the archive proof

1. **Character no-zero3 replaced.** The archive derives Lemmas 1-2 and the
   support-two fact from "character duality": every character Hadamard of a
   count-six no-zero3 face is no-zero3 (archive
   `residual_rigidity/supplied/TERNARY_DUALITY.md`, Lemma 3; the row case
   uses a dual triangle and a binary-propagation lemma). Only **column**
   quotients of character matrices occur in these steps, and a binary column
   quotient is exactly a binary relative matching direction. So
   OneBinaryMatching suffices, and the row case and the dual triangle are
   not needed.
2. **Two-singleton fact replaced.** The archive's shared theorem uses "two
   singleton rows force U monomial". This relies on the accepted
   complementary-flat-triple uniqueness (archive `ANTI_SYMMETRY_EXCLUSION.md`,
   Section 3, which uses ProjectorRank5 and non-Tao). The pigeonhole count
   actually gives **three** singleton rows in U5 or in V5, and then the
   support-two fact alone forces monomiality (Theorem 4, Step 3). The
   uniqueness theorem is not needed.
3. The archive's other shared-edge claims are **not imported**: the 42/72
   common-ray packets and their Gamma-rank bounds need the archive
   finite-algebra and "full21" inputs. The (3,2)-cycle exclusion is subsumed
   by Corollary 7. The M5 forcing corollary and the 36-to-6 operator (archive
   OPERATOR.md) are not imported either.
4. Every step above was checked for orientation. The conjugation in
   (1.2) is essential for Lemma 3. The verifier computes H^v_ji independently
   of H^v_ij on the exact order-six count-six triangles and confirms (1.2).
   It also confirms on the prime quartets that the two definitions of
   "aligned at x" (via U with centre x, and via V from the other endpoint)
   agree.
