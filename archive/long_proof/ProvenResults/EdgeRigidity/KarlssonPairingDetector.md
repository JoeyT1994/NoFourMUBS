# Cubic-zero pairing lemma and the Karlsson detector A(M)

**Statement.** Let M be an order-six phase Hadamard whose balanced first moments vanish (every non-Tao M, by the balanced theorem). Some balanced cubic-power sum p_3(M,S) vanishes if and only if M is H2-reducible (Karlsson). For zero-sum unit phases z_0..z_5, p_3=3 z_i^-2 prod_{j!=i}(z_i+z_j), so p_3=0 exactly when some pair is opposite. For any phase Hadamard, A(M)=prod_{i,j=1..5}(M_ij M_00+M_i0 M_0j) vanishes if and only if M is H2-reducible.

**Status.** Analytic proofs with exact checks. The opposite-pair factorization is unconditional. The detector A(M) is conditional only on Karlsson's published theorem. The pairing lemma is **conditional** on the active balanced theorem, which is itself conditional on the [accepted reconstruction inputs](../../MinimalConstruction/ASSUMPTIONS.md). (The archive marked the lemma conditional on an unaudited balanced theorem; it now uses the active BalancedProducts result.)

**Dependencies.** [BalancedFourSeedIdentity.md](../BalancedProducts/BalancedFourSeedIdentity.md), [BalancedAllPartitionsExtension.md](../BalancedProducts/BalancedAllPartitionsExtension.md) (conditional on the [accepted reconstruction inputs](../../MinimalConstruction/ASSUMPTIONS.md)); B. R. Karlsson, [H2-reducible complex Hadamard matrices of order 6](https://arxiv.org/abs/1003.4133) (published, Linear Algebra Appl. 2011): a 2-by-2 Hadamard submatrix forces H2-reducibility, and the nine-block form of H2-reducible matrices. Section 3 cites Matolcsi et al., DOI 10.1007/s10801-026-01506-x (Lemma 4.4, Proposition 4.2, Conjecture 3).

**Provenance.** `NoFourMUBSArchive/90_replay_library/05_remaining_D2/karlsson_forcing/PAIRING_LEMMA.md` and `TARGET.md` (detector and five-column sections), `verify_exact.py`; `05_remaining_D2/balanced_triangle/REDUCTION.md`, `verify_exact.py`, `common.py`; exact JMMSW triple from `04_t4_coverage/ramified_frame_necessity/verify_counterexample.py` (now `jmmsw_triple.py`).

*Imported text.* The body below is the archive proof, copied without mathematical change. Only links, file names and replay instructions were edited. In archive wording, "owner" means "a result that settles this case", and "accepted" refers to the inputs listed under Dependencies above.

---

## 1. Pairing lemma

**Theorem:** let M be a physical phase Hadamard of order six. Assume its
balanced Fourier sums vanish. Then some balanced cubic-power sum vanishes
if and only if M is H2-reducible (Karlsson).

For a three-row set S define z_j=product_{i in S} M_ij /
product_{i not in S} M_ij. The previously verified six-phase factorization
says that sum z_j=sum z_j^3=0 forces an opposite column pair z_j=-z_k.
Write x_i=M_ij/M_ik. Column orthogonality gives sum x_i=0, and the opposite
pair gives product_{i in S} x_i = -product_{i not in S} x_i.

Write s for the sum of the first triple and A for its product. The second
triple has sum -s and product -A. Since all x_i are unit phases, the second
elementary coefficient of each triple is A conjugate(s). Their monic cubics
are consequently

    f(X)=X^3-s X^2+A conjugate(s) X-A,
    g(X)=X^3+s X^2+A conjugate(s) X+A=-f(-X).

Thus each entry of the first triple has its negative in the other triple.
Any such row pair, in columns j,k, is a two-by-two Hadamard submatrix.
Karlsson's theorem then gives H2-reducibility.

Conversely, arrange an H2-reducible matrix in its nine two-by-two Hadamard
blocks. Choose S with one row from each of the three row pairs. Within each
column pair the ratios on paired rows are negatives, so z_j=-z_k. Hence
both the first and third sums vanish. There are eight such row subsets.
Permutations and phase gauges preserve vanishing, so the conclusion holds
in the original frame. No preferred row or column pairing is assumed.

The forward proof requires physical unit modulus. It does not assert this
equivalence for arbitrary complex reciprocal solutions. The balanced premise
is now supplied by the active balanced theorem [BalancedFourSeedIdentity.md](../BalancedProducts/BalancedFourSeedIdentity.md) for every non-Tao
carrier; that theorem is itself conditional on the [accepted reconstruction inputs](../../MinimalConstruction/ASSUMPTIONS.md).

The six-phase factorization (Section 2 below) and the cubic polynomial identity are
checked by `karlsson_pairing.py` (sub-check `karlsson_pairing_detector`). The structural
input is Karlsson, *Three-parameter complex Hadamard matrices of order 6*,
https://arxiv.org/abs/1003.4133. This is a reformulation of known pairing
structure, not a proof that a cubic zero must occur in every MUB triplet.

## 2. Shared-frame system and opposite-pair factorization

## Complete physical shared-frame system

**Theorem:** write R_ab=sqrt(6) U_a^* U_b for four unitary bases, a<b.
All six R_ab are phase Hadamards, and for each a<b<c,

    R_ab R_bc = sqrt(6) R_ac.

Conversely, six phase Hadamards satisfying these equations define a quartet:
take U_0=I and U_b=R_0b/sqrt(6); the triangles through 0 recover the other
three transitions. The fourth triangle follows algebraically, but is useful
as an explicit consequence. Reverse directions are R_ba=R_ab^*.

One common row gauge dephases R_01. Independent column phases make the first
rows of R_02 and R_03 equal to one. No other transition is independently
dephased. This leaves 25+30+30+3*36=193 phase variables. There are 90 complex
unordered row-orthogonality equations and 144 complex triangle equations.
All sheets, walls, and exceptional presentations are present: this formulation
uses whole physical Hadamards, not a localized reconstruction. Tao is excluded
by the separate endpoint result ([Tao exclusion](../ExceptionalEndpoints/Tao/TaoExclusion.md)), not by omitting a phase chart.

For each directed transition and each three-row set S, set

    z_j = product_{i in S} R_ij * product_{i not in S} conjugate(R_ij).
    p_k(R,S) = sum_j z_j^k.
    Q(R) = sum_{|S|=3} |p_3(R,S)|^2.

The balanced theorem ([BalancedFourSeedIdentity.md](../BalancedProducts/BalancedFourSeedIdentity.md); conditional on the [accepted reconstruction inputs](../../MinimalConstruction/ASSUMPTIONS.md)) supplies p_1=0 on all six
non-Tao transitions and their adjoints.
Complementary S give conjugate equations, so ten complex equations suffice
per direction, 120 in total; this is a record count, not an independence claim.

**Open:** some one of the twelve directed transitions has Q=0. The exact
nonnegative target can be written product_{a<b} Q(R_ab) Q(R_ab^*)=0. No
individual three-row set is selected after the fact: Q=0 requires every set.

## Opposite-pair factorization

**Theorem:** let z_0,...,z_5 be unit phases with sum z_j=0. For any anchor i,

    p_3 = 3 z_i^(-2) product_{j != i} (z_i+z_j),
    |p_3|^2 = 9 product_{j != i} |z_i+z_j|^2.

Proof. Write e_k for elementary symmetric polynomials and
f(t)=product_j(t-z_j). Evaluating f(-z_i)-f(z_i) gives the universal identity

    product_{j != i}(z_i+z_j) = e_1 z_i^4 + e_3 z_i^2 + e_5.

Unit modulus gives e_5=e_6 conjugate(e_1), hence e_1=e_5=0. Newton's identity
p_3=e_1^3-3e_1 e_2+3e_3 gives the result. Only a unit phase is divided by.
No discriminant, chart guard, or possible event component is removed.

Consequently p_3=0 iff some z_j=-z_i for each fixed anchor i; equivalently,
some pair is opposite. Removing that pair leaves four zero-sum unit phases,
which form two opposite pairs. Alternatively e_1=e_3=e_5=0 makes f even.
This is the six-phase specialization of the binary-vector criterion in
Matolcsi et al., Lemma 4.4, DOI 10.1007/s10801-026-01506-x.

Thus the target is an explicit phase-pairing target, not just a high-degree
moment to expand. For one chosen anchor column (e.g. 0), each S requires one
of the five equalities z_0+z_j=0. The choice can differ between S.

**Open:** the triangle equations force these pairings for all ten independent
S on at least one directed edge. The factorization does not prove this.

## Structural payoff and limit

**Theorem (conditional on the cited published structural result):** balanced
and cubic-power vanishing for every S of one R places R in the Fourier family
or the Szollosi X(alpha) family, by Proposition 4.2 of the above paper.
The Fourier alternative is excluded from quartets by the named published
result used there. The Szollosi quartet exclusion remains Open; it is explicitly
Conjecture 3 in that paper. This is not a completed no-four proof.

## 3. Fixed-anchor Karlsson detector and five-column coordinates

## Five-column coordinates

**Theorem:** retain five columns of H,K, normalize their first rows to one,
and normalize the first column of H by a common row gauge. There are 45
phase variables. Twenty complex column-orthogonality equations and 25 real
cross-unbiasedness equations are equivalent to a full triplet. For a quartet,
retain five columns of H,K,L: 70 phase variables, thirty complex column-
orthogonality equations and 75 real cross-unbiasedness equations suffice.

For every retained 6-by-5 matrix A, with A^*A=6I_5 and all entries phases,
Q=I-AA^*/6 is a rank-one projector with diagonal 1/6. The missing column
is v=6Qe_0, hence

    v_i=6 delta_i0-sum_{j=0}^4 A_ij.

It is phase-valued and satisfies v_0=1. For another five-column basis B,
retained cross overlaps have squared modulus 1/6 after normalization.
Thus every omitted/retained overlap has squared modulus 1-5/6=1/6, and
Tr(Q_A Q_B)=6-5-5+25/6=1/6 recovers omitted/omitted unbiasedness. This works
for each pair in a quartet. No coordinate branch or denominator zero is lost.
The completion is Laurent-polynomial also after sharp is replaced by inverse.

## A fixed-anchor Karlsson detector

**Theorem (using Karlsson's nine-block theorem):** for any phase Hadamard M,
put

    A(M)=product_{i,j=1}^5 (M_ij M_00 + M_i0 M_0j).

Then A(M)=0 iff M is H2-reducible. One zero factor is precisely a two-by-two
Hadamard submatrix. Conversely, in a nine-block H2 partition, the fixed anchor
(0,0) belongs to one of those blocks. Its paired row and column supply a zero
factor, regardless of the ordering of the partition. Thus we do not need all
225 positional two-by-two permanents or a special frame.

The triplet target A(H)A(K)A(R)=0 remains **Open**; it is not claimed here.

## Verification

Replay: `python3 verify.py` in this folder (sub-check `karlsson_pairing_detector`). It checks the cross-pair polynomial identity, the six anchor factorizations and Newton identity, and, on the exact JMMSW triple (all six directed transitions), the balanced zeros, the anchored factorization of every p_3, the detector zero factors and the five-column completion.
