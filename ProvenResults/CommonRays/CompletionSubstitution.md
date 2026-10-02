# Completion substituted into alignment: the rank-four branch is excluded

## Header

**Statement.** Let H be an order-six phase Hadamard, V=H†/√6, and A0,B0
phase 6-by-3 rectangles with A0†A0=B0†B0=6I. Consider alignments
V D A0 = E B0 diag(1,g,h), with the notation of
[TwoRectangleAlignment.md](TwoRectangleAlignment.md).

1. **Rank-four exclusion.** If both A0 and B0 are strict (all twenty
   three-minor squared moduli in (0,27)), no physical alignment lies on the
   rank-four coefficient branch. So every physical alignment of strict
   shapes has coefficient rank 5. The proof applies Sylvester's rank
   inequality to a cross Gram matrix of real rank ≤2 that would have to have
   rank ≥4. It does not need H to have no zero 3-minor.
2. **Completion test.** On the rank-5 branch, the recovered alignment
   extends to a full third unbiased basis if and only if the division-free
   equations det Γ=0 and Γ ℓ_j(J)=0 (j=0,…,5) hold. Equivalently, the
   residual Ê=τ²det Γ+Σ_j ℓ_j(J)^TΓℓ_j(J) vanishes. Here J=adj(M†M) and
   τ=tr J.

**Status.** Analytic proof (Sections 1–5). Exact controls in
`alignment/verify.py`: strict feature ranks, the commutator Gram, phase
covariance, and a vanishing substituted residual on an exact MUB triple.
The rank-5 exclusion is **open**.

**Dependencies.**
- [ThreeRayCompletion.md](ThreeRayCompletion.md): the rank-five lemma, dim
  W(A0)=3, the rank Γ∈{2,3} dichotomy, and the E_ext criterion.
- [TwoRectangleAlignment.md](TwoRectangleAlignment.md): the rank-4 structure
  and the rank-5 projector J/τ.
- For quartet edges, strictness of A0 and B0 (they are three columns of
  transitions of the quartet) follows from the block/zero-minor lemma
  ([../EdgeRigidity/](../EdgeRigidity/)), the
  [Fourier-block classification](../FourierBlocks/FourierBlockClassification.md),
  and the published Fourier/Tao quartet exclusions.

No other inputs.

**Provenance.** Archive `04_algebraiccoreV2/completion_substitution/{PROOF.md, verify.py}`,
Sections 1–5 copied, with the Section 6 control description. Links now point
to the imported [ThreeRayCompletion.md](ThreeRayCompletion.md), which was
`supplied/COMPLETION_PROOF.md`. References to archive reconstruction
coordinates are reduced to the intrinsic statement.

---

**Theorem — rank-four exclusion.** Let H be a phase Hadamard and
A0,B0 phase 6-by-3 rectangles with A0†A0=B0†B0=6I. Suppose BOTH rectangles
have all twenty three-minor norms strictly between 0 and 27. Then NO physical
phase alignment can occur on the rank-four coefficient branch of
[two-rectangle alignment](TwoRectangleAlignment.md).
Every physical alignment of these strict shapes has coefficient rank FIVE.
This conclusion does not require H to have no zero3, or the rectangles to
have full completions.

**Theorem — exact substitution on the remaining branch.** Section 4 gives
explicit chartwise algebraic equations, in the shapes and
finite spectral roots, equivalent to extending each recovered rank-five
alignment to a full third unbiased basis. All missing-ray variables and
ambient phase variables are eliminated. No polynomial division by a
possibly zero rank-five adjugate, commutator determinant, or product-root
difference is made.

**Open.** The rank-five substituted equations have NOT been proved to force
a zero3 or F3 on H,A,B. The desired global implication remains Open. The
exclusion owns the ENTIRE rank-four predicate, not a generic or local
subset of it.

## 1. Strict rectangles have projector-feature rank five

This is the key lemma of [ThreeRayCompletion.md](ThreeRayCompletion.md),
Section 2. For a strict rectangle A0 put P=A0 A0†/6 and Q=I-P.
The six supported traceless projectors

    F_i(P)=P e_i e_i† P-P/6

have real span of dimension FIVE. Here is the global argument.
If their rank were at most 4, there would be a nonzero real w with sum w=0
and P diag(w) P=0. The equal diagonals P_ii=Q_ii=1/2 and the orthogonal
block norm identity imply Q diag(w) Q=0 as well. Thus the involution
S=2P-I anticommutes with diag(w).

Partition coordinates by the nonzero levels |w_i|, together with its zero
level. S is block diagonal across these groups. On each nonzero level its
positive and negative w-parts have equal size; on the zero level, S has
zero diagonal and equal positive/negative eigenspace dimensions. Each
group therefore has size 2m and the corresponding block of P has rank m.
A proper group of size 2 or 4 gives a zero three-minor of A0. Thus there can
only be one group, of six coordinates with w equal to three +a and three
-a. On one sign triple P has block I3/2, so that block of A0 is Fourier,
contradicting its strict upper minor bound. This proves rank 5.

Equivalently, normalize the six row vectors of A0 to unit vectors in C³.
Their centered rank-one projectors span a five-dimensional real subspace
of the SIX-dimensional space of zero-diagonal Hermitian 3-by-3 matrices.
Indeed their Gram is four times the Gram of F_i(P). The same holds for B0,
including after arbitrary column phases.

## 2. Two orthogonal alignments with the same ray phases are impossible

Put V=H†/sqrt(6). Suppose two alignments share Gamma=diag(1,g,h):

    V D A0=E B0 Gamma,
    V D' A0=E' B0 Gamma.

Assume their phase vectors d,d' are orthogonal. The output vectors e,e'
are then orthogonal too, since e=F0d and e'=F0d' with F0 unitary.
Set

    F=E† V D, R=D†D'=diag(r), Z=E†E'=diag(s),
    A=A0, B=B0 Gamma, P=A A†/6.

F is a flat unitary and

    F A=B, F R A=Z F A, sum r=sum s=0.              (1)

The unitary C=(ZF)† F R fixes range P pointwise. Flatness of F gives

    tr C=(sum r)(sum conjugate(s))/6=0.

Its restriction to the complementary three-space is unitary with trace -3;
each of its three eigenvalues must therefore equal -1. Consequently

    C=2P-I,
    F P=(F+Z† F R)/2.                              (2)

The cross Gram matrix of the centered, normalized row projectors of A and
B has entries

    Ccross_ij=|(B A†)_ji|²/9-1/3
             =Re(conjugate(s_j) r_i)/3.            (3)

To obtain (3), use F P=B A†/6 and |F_ji|²=1/6 in (2).
The right side has real rank at most TWO. On the other hand, Section 1
puts both projector spans at dimension 5 in the same six-dimensional real
space, so Sylvester's rank inequality gives

    rank Ccross >=5+5-6=4.

Contradiction. No such two orthogonal physical alignments can exist.
This uses strictness of BOTH rectangular shapes; it does not assume any
unproved exclusion of a Hadamard family.

## 3. Why this excludes every physical rank-four alignment

The alignment theorem proves that rank M=4 gives a two-dimensional
common eigenspace K with projector P_K satisfying

    diag P_K=diag(F0 P_K F0†)=1/3.

If one physical alignment d lies in K, normalize it to v=d/sqrt(6) and
choose a unit orthogonal partner v' in K. Then

    |v'_i|²=(P_K)_ii-|v_i|²=1/6,
    |(F0v')_i|²=1/6.

Thus d'=sqrt(6)v' is a SECOND flat physical alignment for the SAME g,h,
orthogonal to d. Section 2 rules this out when A0 and B0 are strict.
This also covers the putative lower Bloch-rank boundaries: any one solution
would supply the orthogonal partner. No no-zero3 assumption on H is needed.

Equivalently, on the cubic rank-four locus S³=alpha I,T=cS², all three
joint rank-two spaces have Bloch rank 3 under strictness of A0,B0. Their
invariant e3(Bcal) is therefore STRICTLY POSITIVE everywhere on that locus.
This is a global exclusion of an entire coefficient-rank branch, not a
sampled positivity claim.

## 4. Completion is phase-covariant; its remaining constraints are linear in rho

Return to V=H†/sqrt(6), fixed shapes A0,B0, and the recovered physical
A=D A0. Define the shape projector Q0=I-A0 A0†/6 and choose any real basis
T1,T2,T3 of

    W(A0)={T=T† : Q0 T Q0=T, diag T=0}.

Strictness of A0 makes this space exactly three-dimensional, as proved
in [ThreeRayCompletion.md](ThreeRayCompletion.md). It can be computed without
a completion: partition A0=[S0;V0], form Z0=[-(S0†)^(-1)V0†;I3], and solve the
rank-six real system diag(Z0 R Z0†)=0 on Hermitian R. All S0 are invertible
by the three-minor hypothesis; pivot charts retain full coverage.

Set

    K1=i[T2,T3], K2=i[T3,T1], K3=i[T1,T2],
    Gamma_ab=tr(K_a K_b).

The uniqueness proof gives rank Gamma in {2,3}; det Gamma=0
is exactly existence of the unique standard-flat completion. For the
actual phased shape D A0, use the TRANSPORTED basis D T_a D†. Its K_a are
D K_a D†, hence Gamma is unchanged. Standard completion depends only on
A0, not on the recovered ambient phases d.

Put rho=d d†/6 and define the explicit real linear maps

    ell_j(rho)_a = 6 [V (T_a circ rho) V†]_jj,
                 j=0,...,5, a=1,2,3,                  (4)

where circ is entrywise multiplication. The identity
D T_a D†=6(T_a circ rho) shows that ell_j is EXACTLY the transformed
covector g_j of ThreeRayCompletion.md (14), with no phase variables left.
It is real because its argument is Hermitian. Under actual rectangular
compatibility,

    E_ext(H,D A0) = det Gamma
                  +sum_j ell_j(rho)^T Gamma ell_j(rho).   (5)

Every term is nonnegative. Thus the complete extension conditions are

    det Gamma=0, Gamma ell_j(rho)=0 for all j.          (6)

When (6) holds, the unique commuting plane in W(A0), transported by D,
gives the unique full third basis. ThreeRayCompletion.md establishes both
necessity and sufficiency, including positivity of its recovered projectors.
The same reasoning applied to the output shape B0 also implies

    det Gamma_A0=det Gamma_B0=0.                       (7)

These are phase-independent shape filters. No assertion is made that their
nonvanishing branches occur on any particular compatible seed region.

## 5. Substitute the unique rank-five alignment without division

Form F_j, S,T,M(g,h) as in the alignment theorem, retaining its finite spectra.
Rank 4 is now excluded and rank 6 is incompatible. At rank 5 let

    G=M†M, J=adj(G), tau=tr J>0, rho=J/tau.

The exact physical alignment conditions are

    6 J_kk=tau, 6(F0 J F0†)_ii=tau for all k,i.         (8)

The extension conditions, after substitution, are the EXPLICIT equations

    det Gamma=0,
    Gamma ell_j(J)=0, j=0,...,5.                     (9)

Here ell_j is the linear map (4), now evaluated on J. All entries are
chartwise algebraic functions of H,A0,B0 and the
finite spectral roots g,h. The factor tau is nonzero on this branch, so
no solution is lost in passing from (6) to (9).

Equivalently the following division-free nonnegative residual vanishes:

    Ehat=tau² det Gamma
             +sum_j ell_j(J)^T Gamma ell_j(J).        (10)

In fact Ehat=tau² E_ext. There are no ambient phase vectors or missing-three-
ray variables in (8)--(10). Gamma, J and tau are not independent unknown
matrices; they are computed from the original inputs.
Repeated spectral eigenvalues and pivot charts are retained. The rank-five
spectral pair test remains necessary.

The remaining desired implication is now precise: show that (8)--(9),
with both rectangles AND H strictly between the two minor
boundaries, is impossible. This document does NOT establish that implication
on rank 5. It does prove that rank 4 contributes no candidates.

## 6. Independent checks and the essential H boundary

`alignment/verify.py` implements the rank-six diagonal system,
three-dimensional W(A0), commutator Gram and substituted covectors itself,
using exact Q(i,sqrt(2),sqrt(3)) arithmetic.

It reproduces an exact completed triple with

    A minor norms: 6,18,12-6sqrt(2),12+6sqrt(2),
    B minor norms: 3,12,15-4sqrt(6),15+4sqrt(6).

Both rectangles are strict and their projector-feature ranks are 5.
Both commutator Grams have rank 2, the actual alignment has rank 5, and the
substituted completion residual vanishes. H has a zero3, so
this is NOT a counterexample to a strict-domain target. It shows that one
cannot complete the rank-5 exclusion after dropping H's strict restriction.

The verifier also checks phase covariance of Gamma, equality between (4)
and direct conjugation for a nontrivial phase vector, and the universal
normalization in (3). The rank-four exclusion itself is the analytic proof
in Sections 1–3, not an inference from those controls.
