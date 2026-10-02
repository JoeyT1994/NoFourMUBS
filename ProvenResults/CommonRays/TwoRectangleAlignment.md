# Two orthogonal rectangles: exact alignment equations and complete rank decision

## Header

**Statement.** Let H be an order-six phase Hadamard, U=H†/√6, and let A,B be
phase 6-by-3 rectangles with A†A=B†B=6I. Consider all phase alignments

    U diag(d) A = diag(e) B diag(1,g,h),   |d_k|=|e_i|=|g|=|h|=1.

Then:

- the coefficient matrix M(g,h) has rank 4, 5 or 6 for all unit g,h;
- rank 6 has no solution;
- rank 5 has one explicit common eigenline, decided by the flatness tests (6);
- rank 4 forces the cubic structure S³=αI, T=cS² with three
  two-dimensional joint spaces.

If moreover H has no zero 3-by-3 minor, each rank-4 space carries zero or
exactly two alignments, decided by e_3(𝔅)=0. So there are at most **six**
alignments modulo a common phase, their d-rays are mutually orthogonal, and
no continuous alignment family remains.

**Status.** Analytic proof (Sections 2–7). Exact controls are in
`alignment/verify.py`. They show that rank 5 and rank 6 are realized by an
exact MUB triple and a wrong eigenvalue pair; that independent shapes have a
full-rank commutator; and that a Fourier tensor control realizes the rank-4
cubic structure with Bloch rank 2.

**Dependencies.** Only the no-zero-3-minor hypothesis on H, and it is used
only in "Rank N=1 is impossible" (Section 6). For quartet edges it holds by
the block/zero-minor lemma ([../EdgeRigidity/](../EdgeRigidity/)) and the
[Fourier-block classification](../FourierBlocks/FourierBlockClassification.md),
together with the published Fourier/Tao quartet exclusions. The rank-4 branch
is excluded outright for strict rectangles in
[CompletionSubstitution.md](CompletionSubstitution.md).

**Provenance.** Archive `04_algebraiccoreV2/two_rectangle_alignment/{PROOF.md, verify.py}`.
Section 1's references to the archive's V2 reconstruction coordinates
(A=P_A R_A^T, B=P_B R_B^T Pi, COORDINATES.md) are reduced to the intrinsic
statement. The mathematics is unchanged.

---

**Theorem.** Fix a phase Hadamard H with no zero ordinary three-minor and
two phase 6-by-3 rectangles A,B with A†A=B†B=6I. Then all phase alignments

    (H†/sqrt(6)) diag(d) A = diag(e) B diag(1,g,h),
    |d_k|=|e_i|=|g|=|h|=1                              (1)

are exactly recovered by the finite spectral and rank tests below.
For each fixed A, B (including any fixed finite placement and relative ray
permutation), there are at most SIX solutions modulo a common scalar phase
on d,e. Their normalized d-vectors are mutually orthogonal. In particular
there is no remaining continuous alignment fibre for FIXED H,A,B.

The coefficient matrix has only ranks 4, 5, 6. Rank 6 is incompatible. Rank 5
has one line, with explicit flatness tests. Rank 4 forces a completely
specified cubic spectral structure; its flatness test gives either zero
or exactly two lines. All lower coefficient ranks are impossible.

This is a global phase-recovery theorem, not a classification of the
continuous compatible seed domain and not an exclusion of all compatible
no-zero3/no-F3 rectangles.

## 1. Explicit coefficients

Put U=H†/sqrt(6). (In reconstruction coordinates A and B are permuted
reconstructed rectangles; the relative ray phases give g,h after absorbing
the first into e, and ambient phases give d,e. A common phase normalizes
d_0=1 after recovery.)

For j=0,1,2 define the SIX-BY-SIX unitary matrices

    F_j = diag(conjugate(B[:,j])) U diag(A[:,j]),
    (F_j)_ik = conjugate(B_ij) conjugate(H_ki) A_kj/sqrt(6).

Equation (1) is equivalent to

    F_0 d=e, F_1 d=g e, F_2 d=h e.

Eliminate e and put

    M(g,h) = [F_1-g F_0; F_2-h F_0]                 (12 by 6),
    M_(j,i),k = conjugate(H_ki)/sqrt(6)
               *[conjugate(B_ij) A_kj
                  -gamma_j conjugate(B_i0) A_k0],
    gamma_1=g, gamma_2=h.

The exact remaining equations are

    M(g,h)d=0, |d_k|²=1, |(F_0 d)_i|²=1, |g|²=|h|²=1. (2)

The output magnitude equations are essential and are not replaced by
reciprocal-variable identities. Sufficiency is immediate by e=F_0d.
There is no division by an unknown entry; B's entries are phases.

## 2. Two unitary spectra replace the last ray-phase variables

Define

    S=F_0† F_1, T=F_0† F_2.

Then ker M(g,h) is exactly the common eigenspace

    K_(g,h)=ker(S-gI) intersect ker(T-hI).             (3)

Thus g is a root of det(zI-S) and h of det(zI-T), both degree 6. Both spectra
lie on the unit circle. Test their distinct eigenvalue pairs, retaining ALL
multiplicities. At most 36 pairs need be considered, and at most six have
nonzero common eigenspace, since different joint eigenspaces are orthogonal.
No generic spectral simplicity or resultant division is assumed.

An explicit phase-free necessary relation is

    det(ST-TS)=0.                                    (4)

A common eigenvector is killed by the commutator. This is not a sufficient
test. The exact independent-shape control in verify.py has invertible
commutator, so (4) is not an identity. That control is not asserted to lie
in the no-zero3/no-F3 domain, nor to prove a new domain-wide exclusion.

## 3. All coefficient ranks below 4 are impossible

Orthogonality of A,B and flatness of U give

    tr(F_j† F_l)=6 delta_jl.                         (5)

Indeed the trace factors into (1/6) times a column inner product of A
and the opposite column inner product of B. Each F_j is unitary.

Fix unit g,h, put W_0=F_0,W_1=bar(g)F_1,W_2=bar(h)F_2 and let P project
onto K_(g,h), of dimension k. All three W_j agree on P. Their restrictions
to its orthogonal complement have Hilbert--Schmidt Gram matrix

    [tr((W_j(I-P))† W_l(I-P))] = 6I_3-k J_3 >=0.

The eigenvalue on the all-ones vector is 6-3k; therefore k<=2. This proves
rank M>=4 everywhere, not merely at physical solutions. For nonunit g or h
a nonzero common eigenvector is already impossible, since S,T are unitary.

## 4. Rank 5: complete unique-line test

Let G=M†M. At rank 5 define J=adj(G), tau=tr J>0 and P=J/tau.
P is the orthogonal projector onto the unique common eigenline. A physical
alignment exists if and only if

    6 J_kk=tau for every k,
    6 (F_0 J F_0†)_ii=tau for every i.                (6)

These are division-free equalities in the coefficients and
g,h. They impose flatness on BOTH sides. If they hold, choose any unit vector
v in range P, multiply by sqrt(6), and phase it so d_0=1; set e=F_0d.
This gives the unique alignment for this eigenvalue pair. A zero coordinate,
wrong modulus, or failed output condition rejects the pair.

Rank 6 gives ker M=0 and is rejected. The adjugate is NOT used at rank 4.

## 5. Rank 4: exact cubic structure, including all collisions

When k=2, the Gram matrix 6I-2J has the all-ones vector in its kernel. Hence

    (W_0+W_1+W_2)(I-P)=0,
    W_0+W_1+W_2=3F_0 P.

Put V=bar(g)S and Z=bar(h)T. Both equal I on P. On I-P they satisfy
I+V+Z=0. Unitarity of Z gives V+V†=-I, hence V²+V+I=0 there and Z=V².
Globally,

    V³=I, Z=V².

Since tr S=0 by (5), the eigenvalues 1,omega,omega² of V each have
multiplicity TWO. Therefore the whole space splits into exactly three
joint eigenspaces, each dimension 2, with pairs

    (g omega^a, h omega^(2a)), a=0,1,2.               (7)

In particular rank 4 cannot coexist with additional rank-5 joint lines for
the same S,T.

Here is an explicit characterization of this entire rank-4 locus:

    S³=alpha I, alpha=tr(S³)/6,
    T=c S², c=tr((S†)² T)/6.                         (8)

If (8) holds, unitarity makes |alpha|=|c|=1; tr S=0 forces the three
multiplicities to be 2. Conversely rank 4 implies (8). Thus no exceptional
multiple-eigenvalue branch is omitted. For each cube root g³=alpha set

    h=c g²,
    P=(I+S/g+S²/g²)/3.                              (9)

This is the exact rank-two joint projector; no adjugate or eigenvector choice
is needed to construct it.

## 6. Complete flatness analysis on every rank-two space

Each row and each column of W_0+W_1+W_2 has squared norm 3: expand entrywise
and use |U_ik|²=1/6 together with A†A=B†B=6I. Comparing with 3F_0P gives

    P_kk=1/3, (F_0 P F_0†)_ii=1/3.                  (10)

Choose any isometry V_2:C² -> range P and the three Pauli matrices sigma_a.
Define twelve REAL Bloch vectors by

    n_k,a=3 (V_2 sigma_a V_2†)_kk,
    m_i,a=3 (F_0 V_2 sigma_a V_2† F_0†)_ii.

Every n_k and m_i has length 1, and each six-vector list sums to zero.
For a unit vector w in C², write ww†=(I+r.sigma)/2 with |r|=1. The vector
d=sqrt(6)V_2w and e=F_0d are flat exactly when

    n_k.r=0 and m_i.r=0 for every k,i.              (11)

Thus form the real 12-by-3 matrix N of these rows. Its rank cannot be 0.
Its remaining possibilities are completely decided as follows.

**Rank N=1 is impossible when H has no zero3.** All twelve vectors would
be plus or minus a single axis. Zero sums force three of each sign in
both lists. A spinor along that axis gives a nonzero input V_2w supported
on exactly three coordinates and its output F_0V_2w supported on exactly
three. The three zero output coordinates give an invertible 3-by-3 submatrix
of F_0 annihilating the three nonzero input coordinates, a contradiction.
F_0 differs from H†/sqrt(6) only by invertible diagonal phases, so its
three-minors are nonzero. This is the precise use of the no-zero3 hypothesis.

**Rank N=2:** ker N is a real line. Its two unit vectors r and -r give
exactly TWO orthogonal spinor rays, hence two orthogonal physical alignments.
Both are recovered by (11); no continuous phase parameter remains.

**Rank N=3:** ker N=0, so there is NO physical alignment.

The test can be written with no Pauli frame or isometry choices. Put

    Q=F_0 P F_0†,
    L=[P, P F_0†; F_0 P, Q]                         (12 by 12),
    Bcal_ab=18 |L_ab|²-1.

The Pauli trace identity gives Bcal=N N^T. It is real PSD, has diagonal 1,
and rank at most 3. Under no-zero3 H its rank is at least 2. Therefore

    e3(Bcal)=0  <=> two alignments,
    e3(Bcal)>0  <=> no alignment,                    (12)

where e3 is the sum of its principal three-minors. This is an explicit
scalar equality/inequality in the coefficients and the retained cubic root g.
No denominator vanishes and no lower-rank flat branch has been discarded.

## 7. Exhaustion and finiteness

The decision is exhaustive:

| Coefficient rank | Structure | Exact physical test |
|---|---|---|
| 6 | No common eigenvector | Reject |
| 5 | One joint eigenline | Both projector-diagonal conditions (6) |
| 4 | Cubic triple of two-dimensional joint spaces, (8)--(9) | For each space use (12), giving zero or two lines |
| <=3 | Impossible by (5) and the PSD Gram bound | No branch |

If there is no rank-4 pair, at most six orthogonal joint eigenlines exist,
and each contributes at most one alignment. If there is a rank-4 pair,
there are exactly three two-dimensional joint spaces and each contributes
zero or two orthogonal alignments. Different spaces are orthogonal.
This proves the bound of six and orthogonality of every pair of distinct
physical d-rays. Normalize d_0=1 only AFTER the flatness tests, which
ensure d_0!=0.

The coefficient-rank and flatness branches are now fully decided, with
explicit reconstruction at each surviving branch. What remains Open is
which continuous triples of seed tuples satisfy these tests,
and whether imposing no-zero3 AND no-F3 on all three displayed matrices
makes that seed domain empty. The theorem does not establish either claim.

## Exact controls (`alignment/verify.py`)

An exact carrier with all 400 three-minors nonzero, together with three
columns of an exact full mate, realizes rank-5 compatibility at (g,h)=(1,1)
and rank 6 for the wrong pair (−1,1). Independently chosen physical shapes
have a full-rank commutator. A Fourier tensor control F3⊗F2 realizes all
three rank-4 spaces, T=S², S³=I, tr S=0, each with a rank-2 Bloch Gram and
explicit flat alignments. It has Fourier blocks and is not a quartet
candidate. The symbolic identities det(6I−kJ)=108(2−k) and
tr(σ_aσ_b)=2δ_ab are also checked. No control proves universal coverage;
that follows from Sections 1–7.
