# Exact necessary conditions for R = 0 at every corner

This is a proved reduction toward SM Proposition S.5 (Vanishing of R at
every corner), not a proof of it. It assumes neither R > 0 nor any
nonvanishing divisor. The scalar identities are replayed by
`verify_critical_reduction.py`.

Use the reconstruction convention: for a corner E and its same-row
complement B, the overlap matrix G=BB†=6I-EE† has off-diagonal entries
s,t,r. Put

    X=|s|², Y=|t|², Z=|r|², p=X+Y+Z,
    J=s r conjugate(t)+conjugate(s r)t,
    W=XY+XZ+YZ-XYZ,
    R(p,J,W)=4(27-3p+J)²(9-p+J)
              -[W-(p-9)(p-18)+(p-15)J]².

The complementary corner B has parameters p,-J,W. This follows
because its overlap matrix is EE†=6I-G: all three
off-diagonal entries change sign. Physicality gives

    p>=0,    p+|J|<=9.                                 (1)

Indeed the universal phase-block permanent identity in
`verify_invariants.py` gives
|perm B|²=9-p+J and |perm E|²=9-p-J. Neither is negative.

## The two complementary equations R = 0

Suppose R vanishes at both corners:

    R(p,J,W)=R(p,-J,W)=0.                              (2)

If J is nonzero, then necessarily

    5<p<9,
    J²=(9-p)³(p-5)/4,
    W=-(p-9)(p²-10p+27)/2.                            (3)

Conversely the two algebraic equalities in (3) imply (2), without
asserting the existence of a physical seed with these invariants.

**Proof.** Subtraction gives the exact factorization

    R(p,J,W)-R(p,-J,W)
      =4J[2J²-Wp+15W+p³-12p²+27p].                    (4)

When J!=0, division by J is legitimate. By (1), p<=9, so p-15 is
also nonzero. It follows that

    W=[2J²+p(p-3)(p-9)]/(p-15).

Substituting this expression in either equation R = 0 gives

    R=-(J²+36p)[4J²+(p-9)³(p-5)]/(p-15)².            (5)

The first factor is strictly positive, since p>=0 and J!=0.
Consequently the second factor vanishes, giving the J² equality
in (3). Its strictly positive left side and p<=9 imply 5<p<9.
Substitution into W gives its expression in (3). Reducing both
polynomials R(p,±J,W) by these equalities proves the converse. ∎

When J=0, put q=9-p>=0. Equation (2) is equivalent to

    W=q(sqrt(q)+3)²  or  W=q(sqrt(q)-3)².              (6)

This includes q=0. To prove it, write R=36q³-[W-q(q+9)]²,
take both signs of the nonnegative square root, and factor. No division
by q or by a permanent is used. In particular the case J=0 and the
points where a permanent vanishes are not discarded by this reduction.

## Rational parameter in the case J ≠ 0

For (3), q=9-p is strictly positive. Define k=2J/q². Then k is real
and nonzero, and the entire scalar curve has the rational parametrization

    q=4/(1+k²),   p=9-q,   J=8k/(1+k²)²,
    W=q(q²-8q+18)/2.                                  (8)

Indeed J²=q³(4-q)/4 implies k²=(4-q)/q, which gives (8).
The scalar data of the two complementary overlap matrices simplify further:

    eta_{±J}=q±J=4(k±1)²/(1+k²)²,
    g_{±J}=3q±J=4(3k²±2k+3)/(1+k²)²,
    z_{±J}=chi(p,±J,W)/(2g_{±J})=-2(1±k)/(1+k²).      (9)

Here the subscripts ±J distinguish the two complementary overlap matrices.
They do not denote the two roots z± at one corner, which coincide when
R = 0. Both g_{±J} are strictly positive, since 3k²±2k+3 has negative
discriminant and positive leading coefficient. The points k=1 and k=-1,
where a permanent vanishes, remain present. No division by eta_{±J}
occurs. Equations (8)–(9) parameterize necessary scalar data, not Hadamard
matrices or complete sets of blocks with a given overlap matrix.

## A sum rule that applies to every fixed row triple

Fix any three rows of a physical 6 by 6 Hadamard. Over their twenty
three-column subsets C,

    sum_C p_C=108,        sum_C J_C=0.                 (7)

For one pair of rows, let their six unit relative phases be u_j.
They sum to zero by orthogonality. Each |u_j|² occurs in ten subsets
and each ordered cross term u_j conjugate(u_k), j!=k, in four.
Thus the sum of the squared three-column correlations is

    10*6+4*(|sum_j u_j|²-6)=36.

There are three row pairs, proving the first equality. The determinant
of E_C E_C† for the corner E_C, that is |det E_C|², is 27-3p_C-J_C. Cauchy–Binet applied
to the three complete orthogonal rows gives
sum_C |det E_C|²=det(6I_3)=216. Summing the determinant formula and
using the first equality yields the second one.

A Hadamard matrix with R = 0 at every corner must satisfy (3) or (6)
at every corner, as well as (7) and the mixed-corner constraints.
[STRICT_CORNER_COVERAGE.md](STRICT_CORNER_COVERAGE.md) completes SM
Proposition S.5 from these conditions, together with the Fourier routing and the signed corner sums.
