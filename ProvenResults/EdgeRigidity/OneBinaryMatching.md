# One binary matching direction forces a zero 3-minor

**Statement.** If a triangle has a nontrivial matching whose relative phase vector is binary up to scalar in any one of the three directions, some actual transition has a zero 3-by-3 minor. Hence on a quartet every relative direction between two distinct matchings is strictly nonbinary. The same section proves the projector lemma: for a Hadamard with no zero 3-minor, the six centered qutrit projectors on any three rows span a real space of dimension 4 or 5.

**Status.** Analytic proof with exact checks and controls. Unconditional for triangles; quartet consequence via the quartet corollary.

**Dependencies.** [MatchingConventions.md](MatchingConventions.md) (zero-sum lemma, replacing the archive "accepted matching theorem"). The singular-corner lemma is [BlockZero3Equivalence.md](BlockZero3Equivalence.md), Section 1. Quartet use: [QuartetEdgeCorollary.md](QuartetEdgeCorollary.md).

**Provenance.** `NoFourMUBSArchive/03_algebraic/core/ONE_BINARY_MATCHING.md`, `verify_one_binary.py`.

*Imported text.* The body below is the archive proof, copied without mathematical change. Only links, file names and replay instructions were edited. In archive wording, "owner" means "a result that settles this case", and "accepted" refers to the inputs listed under Dependencies above.

---

# One binary matching direction forces a singular corner

9 September 2026.

**Theorem.** Let a physical order-six MUB triangle have two distinct phase
matchings. If their relative phase vector is binary up to scalar in **any
one** of the three directions, some actual transition has a zero ordinary
3-by-3 minor. Consequently this matching pattern cannot occur in a quartet.

This strengthens the archive two-direction theorem (`BINARY_MATCHING_EXCLUSION.md`, not imported).
It does not force a binary direction to exist. Nullity one, and multiple
matchings with all relative directions nonbinary, remain Open. No entire
kernel-dimension case or no-four-MUBs conjecture is claimed solved.

[ProjectorRank5.md](ProjectorRank5.md) now supplies a shorter proof using
the classification's Fourier-block calculation: all no-zero3 triangle
edges have projector rank5, so the cross-Gram rank is at least4, contradicting
the binary upper bound2. The self-contained rank4/5 argument below remains
valid without that additional classification refinement.

## 1. A three-row projector lemma

Let U be a normalized order-six Hadamard with **no zero ordinary 3-minor**.
Select any three rows and place them first by a row permutation. Set

    V=sqrt(2) U_top,   W=sqrt(2) U_bottom.

Their six columns v_i,w_i are unit vectors in C^3, with entries of modulus
1/sqrt(3), and VV*=WW*=2I. Define the centered projectors

    F_i=v_i v_i* - I/3,   F'_i=w_i w_i* - I/3.

They belong to the SIX-real-dimensional space of zero-diagonal Hermitian
3-by-3 matrices. Write h=dim_R span{F_i}. Then:

1. **h is 4 or 5.**
2. If h=4, there is a real sign vector e with three plus and three minus
   signs such that R=U diag(e) U* anticommutes with
   S=diag(I3,-I3).

### Proof

We have sum_i F_i=0, so h<=5. Since V*V+W*W=2I, the off-diagonal inner
products of the two column frames are negatives of one another. Thus their
real projector Gram matrices agree:

    tr(F_i F_j)=|v_i* v_j|^2-1/3
               =|w_i* w_j|^2-1/3=tr(F'_i F'_j).             (1)

Take any real t with sum_i t_i=0 and sum_i t_i F_i=0. Equality (1) and
positivity of the Hilbert--Schmidt norm give sum_i t_i F'_i=0 as well.
Therefore the Hermitian matrix Z=U diag(t) U* has BOTH diagonal 3-by-3
blocks zero, so SZ=-ZS.

We next show that, if t is nonzero, it is a scalar multiple of a balanced
sign vector. For a nonzero eigenvalue lambda of Z, S bijects its eigenspace
with the eigenspace of -lambda. If their common multiplicity is m, their
projections onto the first three coordinates have the same image of
dimension at most m. The corresponding eigenvectors are columns of U.
For m=1, two such columns have proportional top restrictions; include an
additional column to obtain a zero3. For m=2, any three of the four columns
have dependent top restrictions. Both contradict the hypothesis. Hence a
nonzero eigenvalue pair must have m=3 and exhaust the spectrum.

This argument does not discard zero eigenvalues. Their eigenspace reduces
S. Each of its specified U-columns is flat, so has expectation of S equal
to zero. Consequently the restriction of S to that eigenspace has trace
zero: its dimension m is even and its top projection has dimension m/2.
For m=2 or4 this again gives a zero3. The case m=6 is Z=0, hence t=0.
Thus every nonzero allowed t has three entries +lambda and three -lambda.

The real space of such traceless kernel vectors has dimension 5-h. It
cannot have dimension at least two. Otherwise two independent vectors can
be rescaled to distinct, nonopposite balanced sign vectors e,f; e+2f has
both absolute values 1 and3, contradicting the spectral conclusion just
proved. Thus h>=4. At h=4 the nonzero one-dimensional traceless kernel
supplies e and the claimed anticommuting involution R. This proves the lemma.

## 2. What one binary matching forces

Normalize the first matching to the actual triangle X=A*B, with A,B,X
normalized Hadamards. By changing the reference to one of the three ACTUAL
bases, and retaining adjoints/scalar phases, the binary direction can be
placed in eta. Absorb its scalar into p and permute the common coordinates:

Distinct normalized matching characters have zero sum by the zero-sum lemma
in [MatchingConventions.md](MatchingConventions.md). Hence sum eta_i=0, and a binary eta has exactly three of
each sign after its scalar is removed. Thus the permutation gives

    S=diag(I3,-I3),       A* S B=diag(p) X diag(q).          (2)

All p_i,q_j have unit modulus. We use no independent shared-edge relabelling.
Assume for contradiction that A,B,X have no zero3.

Apply the lemma to the same top-three-row partition of A and B. Denote the
two centered-projector spans by E_A,E_B, of dimensions h_A,h_B. Both are
subspaces of the SAME real six-dimensional zero-diagonal Hermitian space.
The cross Gram matrix C of their six projector vectors satisfies

    C_ij = |(sqrt(2) A_top,:i)* (sqrt(2) B_top,:j)|^2-1/3
         = Re(p_i q_j)/3.                                (3)

Indeed A* (I+S) B = X+diag(p)Xdiag(q), and |X_ij|^2=1/6.
Thus rank_R C<=2. On the other hand, the ordinary rank inequality for the
two feature maps into a real six-dimensional space gives

    rank C >= h_A+h_B-6 >= 2.

It follows that h_A=h_B=4 and rank C=2. In particular neither p nor q can
be binary: if, for example, q=alpha e for a real sign vector e, then
Re(p q^T)=Re(alpha p)e^T has rank at most one.

By the lemma for A, choose a balanced sign vector e such that

    R=A diag(e) A*,       SR=-RS.

Put P=A diag(p) A* and Q=B diag(q) B*. Equation (2) says S=PQ.
Since R commutes with P, anticommutation with S gives

    QR=-RQ.                                               (4)

In the A basis, R is diagonal with three plus and three minus signs, and
Q has the flat eigenbasis X=A*B, with eigenvalues q_j. Relation (4) pairs
each eigenspace for lambda with that for -lambda. They have equal top
projection images onto the three coordinates where e=+1. The same
multiplicity argument as above gives a zero3 in X if a pair has common
multiplicity 1 or2. Otherwise a single pair has multiplicity3 and exhausts
the six eigenvalues: q is binary. This contradicts rank C=2. Therefore one
of A,B,X has a zero ordinary 3-minor, as asserted.

For completeness, the change of reference preceding (2) is algebraic. From
E=P Q with E=diag(eta), P=A diag(p)A*, Q=B diag(q)B*, a binary p is placed
in the standard basis by using outgoing transitions A* and X; the other
phases are eta and conjugate(q). A binary q is handled by outgoing X* and
B*, with phases conjugate(p) and eta. These are changes of one physical
triangle, not arbitrary tensor-mode gauges.

## 3. Consequence and exact product-coordinate meaning

The accepted classification singular-corner lemma shows that a singular
3-by-3 phase corner has two proportional rows or columns within that corner.
Full orthogonality then makes the corresponding complete quotient a scalar
times three plus and three minus signs. Thus the theorem forces the actual
antipodal row/column pair in the campaign target on this entire subcase.
The quartet corollary [QuartetEdgeCorollary.md](QuartetEdgeCorollary.md) supplies the quartet exclusion.

The projector argument is a GENERAL Hadamard identity: it needs neither
genericity, total nonsingularity, finite ray fibres, product guards nor an
unproved Karlsson exclusion. Its no-zero3 hypothesis is used in the
contradiction and is discharged by the conclusion, not silently localized away.

*Remark (archive reconstruction coordinates; the rank identity is checked on the
H_X control only).* On an actual guarded product frame, the feature rank in the lemma is exactly
the rank of the following six-row complex matrix (complexification of the
real off-diagonal features):

    columns are (z,1/z,w,1/w,w/z,z/w)^T,
    (z,w)=(1,1),(a,c),(b,d),(x1,y1),(x2,y2),(x3,y3).        (5)

Here the x_j are the ordered roots of the actual coordinate cubic and
y_j=-A_h(x_j)/Bcomp_h(x_j), with the quadratic product u, matched vertical
product and full completion from RECONSTRUCTION.md. Formula (5) does not
choose a different sheet or drop any guard. At a no-zero3 point it has rank
4 or5. Rank4 supplies a binary column split and both complementary
three-row compressions vanish. A selected binary partition need not be a
preferred guarded frame; the proof above works in that physical partition
without demanding an invalid guard there.

**Open:** force the existence of even ONE binary relative matching direction
from full compatibility. In a hypothetical quartet, every direction between
every distinct pair of matchings is now strictly nonbinary. Equivalently,
with b(v)=36-|sum_i v_i^2|^2, every such pair must satisfy

    b(eta) b(p) b(q) > 0.

This replaces the weaker two-direction necessity by three simultaneous
strict necessities; it asserts no uniform lower bound. Nullity1 has no
such pair. This theorem neither proves a second matching exists nor excludes
the all-nonbinary nullity2 or6 possibilities.

## 4. Verification scope

**Certified computation:** one_binary.py (sub-check `one_binary_matching` of
`python3 verify.py`) checks the universal cross-
Gram normalization, sign-space alternative, all spectral multiplicity
patterns and the free operator anticommutation implication. Exact physical
controls check the projector Gram identities against direct projectors,
the feature ranks, a rank4 no-zero3 control, and the complete guarded H_X
triangle and its matching. No sampled rank is used to prove the global lemma.
The analytic proof above is not claimed to be proof-assistant formalized.
