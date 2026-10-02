# Exact H_X triangle: two matchings, one nonbinary direction (control)

**Statement.** An exact physical MUB triangle over Q(i,sqrt2,sqrt3,sqrt7,sqrt221) with exactly two matchings, two binary relative directions and one nonbinary direction. It refutes "two matchings force three binary directions" and has a zero 3-minor (consistent with the one-binary theorem).

**Status.** Exact certificate (refuted statement / control). Unconditional.

**Dependencies.** None. Used as a control by [OneBinaryMatching.md](OneBinaryMatching.md), [ProjectorRank5.md](ProjectorRank5.md) and [MatchingConventions.md](MatchingConventions.md).

**Provenance.** `NoFourMUBSArchive/03_algebraic/core/HX_NONBINARY_COUNTEREXAMPLE.md`, `verify_hx_nonbinary.py`.

*Imported text.* The body below is the archive proof, copied without mathematical change. Only links, file names and replay instructions were edited. In archive wording, "owner" means "a result that settles this case", and "accepted" refers to the inputs listed under Dependencies above.

---

# Two matchings do not force three binary relative phase vectors

**Refuted statement:** every physical order-six Hadamard triangle having
exactly two normalized diagonal-phase matchings has binary relative phase
vectors, up to scalar, in all three tensor directions.

The counterexample below has two binary directions and one nonbinary direction.
It does **not** refute an implication conditioned on a compatible fourth basis,
nor does it refute the proposed global small-kernel quartet exclusion. It also
does not refute the theorem excluding triangles with two binary directions from
quartets. No assertion about a zero-minor-free quartet edge is being made here.

## Exact physical matrices

All matrices in this section use the phase convention `H*H=6I`. Put

    a=b=(-3+4i)/5,  c=conjugate(a),  d=(-2+i sqrt(21))/5,
    omega=(-1+i sqrt(3))/2.

Define the following explicit member of the displayed H_X surface:

    H = [ 1, 1,     1,  1,        1,       1;
          1, a,     b,  a/c,      a/d,     ad/(bc);
          1, c,     d,  a,        bc/d,    a/b;
          1, a/b,  -1,  a/d,     -a/d,    -a/b;
          1, d,    -d,  ad/(bc), -1,      -ad/(bc);
          1, bc/d, -b,  b,       -bc/d,   -1 ].

Set

    z0 = i (7+4i)/(8+i sqrt(21)) * sqrt(221)/13,
    z1 = i (a-1)/(d-1) * sqrt(14)/4.

For the three pairs `(q,z)=(1,z0),(omega,z1),(omega^2,z1)`, include the
following two columns in B, first with the plus sign and then the minus sign:

    (1, a/q, q, z, d z/q, q z)^T,
    (1, a/q, q,-z,-d z/q,-q z)^T.

Finally define `X=H*B/sqrt(6)`. The independent verifier checks that H, B
and X all have unit-modulus entries and Gram matrix 6I. Thus the normalized
matrices `A=H/sqrt(6)`, `B_n=B/sqrt(6)` and `X_n=X/sqrt(6)` form an actual
MUB triangle, with `A*B_n=X_n`.

## Two matchings and a nonbinary third direction

Put

    eta=(1,1,1,-1,-1,-1),    p=(1,1,-1,1,-1,-1),
    S=diag(eta),             P=diag(p),
    R=H P H*/6,             Q=R S,
    Dq=B* Q B/6.

Exact arithmetic gives: Dq is diagonal, its diagonal q consists of phases,
and

    H* S B = sqrt(6) P X Dq.

Consequently the all-one matching and eta are two distinct normalized
matchings. Their three relative phase vectors are eta, p and q. The first
two are binary. The third is not: the verifier gives exactly

    trace(Q^2) = sum_j q_j^2 = -442/75,
    36 - |sum_j q_j^2|^2 = 7136/5625 > 0.

For any six phases q, the defect on the second line vanishes if and only if
all q_j^2 are equal, equivalently q is a scalar phase times a sign vector.
The positive defect is therefore an exact nonbinary witness.

## There are exactly two matchings

Using the phase matrices above, define

    (V_k)_ij=conjugate(H_ki) B_kj conjugate(X_ij),
    G_k=V_0* V_k/6.

The verifier checks two independent common eigenvectors, with respective
characters all-one and eta. It also checks

    rank([G_1,G_3])=4

with zero-based indices. Every common eigenvector is in the kernel of this
commutator, whose dimension is two. Hence there are exactly two common
eigenlines and exactly two normalized matchings. No threshold, unstabilized
kernel extrapolation, generic-rank premise or finite-field calculation is used.

## The reference really is guarded product-regular (archive reconstruction coordinates)

The verifier also reconstructs the horizontal and vertical Phi/Psi companion
polynomials directly from the displayed four seeds. In the original displayed
frame of H it checks all thirteen guards are nonzero: both delta values, both
c6 coefficients, det(E), det(Bblock), det(Bblock*), det(Cblock), det(Cblock*),
both coordinate discriminants and both companion resultants.

Using the actual ordered entries of H, it further checks both product
quadratics, affine horizontal/vertical product matching, all six coordinate
cubics, all six companion equations and the lower-block/Gram reconstruction
identity. Thus this is not an excluded endpoint or a failed preferred frame:
the explicit reference H is within the genuine guarded four-seed reconstruction.

Only H's displayed frame is checked here. B and X are independently checked
physical Hadamards; their alternate product frames are not freshly verified.
The triangle-only claim already fails with a verified product-regular reference.

## Replay and evidence scope

**Certified computation:** run

    python3 verify.py      # sub-check hx_nonbinary_control (module hx_nonbinary.py)

The verifier imports only Python's standard library. It uses rational
multiquadratic arithmetic in

    Q(i,sqrt(2),sqrt(3),sqrt(7),sqrt(221)).

The square classes -1,2,3,7,221 are independent in Q*/Q*2, so the 32 signed
radical monomials form a field basis. Analytic conjugation flips only i;
all four real radicals use their positive embeddings. Inversion recursively
multiplies by the conjugate in the highest quadratic extension. Physicality,
both matchings, all phase moduli and the commutator rank are checked exactly.

The explicit H_X and six-ray spectral formulas were selected from the existing
spectral-common-basis and spectral-adaptive-basis notes, but no historical code
or theorem about a generic family is imported by this verification. The
counterexample is verified directly at the displayed characteristic-zero point.

This is an exact physical counterexample, not a quartet-domain positive control
and not an inventory of nullity-two inputs. In fact the first two columns of
B have identical top-three restrictions: B[0:3,0:3] has exact rank two, which
the verifier also checks. The triangle therefore has a zero3 owner, consistently
with the two-binary exclusion. No sheet simplification is used in this check.
