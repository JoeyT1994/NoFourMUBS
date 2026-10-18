# Every nonmatched strict completion is Tao

> **Superseded (18 Oct 2026).** The current proof's nonmatched converse is return G
> (`proof/coverage/returns/G_prm/PRM.md` §§2–5, `PROOF.md` Theorem 2.4), with no classification import. This file is
> the earlier [CT]-relative route.

Status: proved relative to the explicitly identified ClassificationPaper
inputs below. Together with TAO_PAIRINGS.md, this completes MC4, including
the converse exceptional assertion. Global strict-corner existence (MC1)
is not used and remains separate.

The key point is to propagate a division-free matching identity to all
corners of the paper's product-regular cover. This avoids classifying
the large four-seed nonmatched residual directly.

## 1. Exact imported statements and their scope

All references in this section are to the proved ClassificationPaper,
as permitted by the user. In particular the necessary matching statement
below is imported from the paper, not from MinimalConstruction's
ASSUMPTIONS.md.

1. **PR-M, necessity of affine-minus matching on a product-regular
   completion.** `source/paper_body.tex`, the paragraph immediately before
   `eq:affine-minus-matching-main`, states:

   > Requiring every entry of the forced lower-right block to have modulus
   > one pairs each horizontal root $u_\pm$ with a unique vertical root
   > $m_\pm$ according to

   the displayed affine-minus equation. Its scope here is a physical
   product-regular framed completion. It does not assert necessity after
   those guards fail. This necessary direction is stronger than merely
   importing sufficiency or generic flatness. It is an essential input
   to this proof, both at the open witness and in the final global step.

2. **PR-F, product-regular reconstruction and specialization.**
   `thm:regular-seed-domain`, `lem:supp-product-factor`, the companion
   formulas `eq:supp-A-explicit`, `eq:supp-B-explicit`, and
   `lem:supp-regular-localization`. These supply the monic product
   quadratic, coordinate cubics, companion reconstruction, and the
   nonvanishing of their denominators at a product-regular physical
   lift. The product discriminant may vanish; the coordinate cubics
   remain simple at such a lift.

3. **PR-A, admissibility supplies the guards.**
   `source/supp_body.tex`, `lem:supp-admissibility-guards`: for an
   invertible finite side fiber in a non-H2 Hadamard, a simple row pair
   with nonzero companion imbalance supplies the remaining leading
   coefficient and companion-resultant guards. Horizontal and vertical
   row-pair choices can be made independently by reordering the selected
   rows and columns of the corner.

4. **PR-G, global reach.** `thm:global-product-regular-escape`: every
   Hadamard class except Tao and H_cross has a product-regular frame.
   No strict product discriminant is claimed in this import.

The local results used are STRICT_DOMAIN.md, SIDE_FIBER.md,
MATCHED_FLATNESS.md and TAO_PAIRINGS.md. None assumes the converse being
proved here. In particular the matching bridge in MATCHED_FLATNESS.md
proves that affine-minus matching corresponds to conjugate side Theta
values wherever the product guards hold.

## 2. A matching identity without determinant divisors

For a phase block X define

    Psi(X)=perm(X) det(X)²/prod_ij X_ij.

The denominator is a product of phase entries and never vanishes.
Psi is invariant under row and column monomial operations and under
transposition, by the same degree and determinant-sign calculation as
for Theta. If X is invertible, Psi(X)=-|det X|² Theta(X).

For any positional corner E in a Hadamard H, let B,C be its adjacent
side blocks and define

    M_E(H)=Psi(B)-conjugate(Psi(C)).                       (1)

This expression remains defined when B or C is singular. Multiplying
by prod(B) conjugate(prod(C)) gives the polynomial expression

    Q_E(H)=perm(B) det(B)² conjugate(prod(C))
             -conjugate(perm(C) det(C)²) prod(B).         (2)

For physical H, |det B|²=|det C|², by the complementary Gram identities.
At a strict E this common value is g>0. Hence (1), or equivalently
(2), vanishes precisely when Theta(B)=conjugate(Theta(C)), which is
precisely one of the two matched pairings by SIDE_FIBER.md.

We will prove Q_E=0 for every positional E of every non-Tao carrier.
Using (2) rather than a quotient by det B is what permits algebraic
specialization through nonstrict and singular corners.

## 3. A certified open set where every corner has a regular frame

Use the rational Cayley seed

    t=(-1,20,3/2,-7/10), a_j=(1+i t_j)/(1-i t_j).

`verify_all_corner_matching_witness.py` constructs both matched sheets
and both square-root signs on each side, using 320-bit outward Arb/acb
arithmetic. The exact interpretation of these constructors is provided
by the local side and matched-flatness proofs, not by small numerical
residuals. Both rho values on every side are certified positive, so
the auxiliary opposite sign is also defined at this witness.

For each of the eight explicit presentations the verifier certifies:

- every one of the 400 positional corners has g>0 and R>0;
- all 225 two-row/two-column cross ratios avoid both +1 and -1,
  by strict positive lower bounds on the squared moduli of the
  corresponding difference and sum of entry products;
- for both adjacent sides at each corner, at least two of the three
  squared correlation magnitudes differ, with a strictly positive
  bound on the square of a chosen difference.

The first assertion and SIDE_FIBER.md give invertibility and finite
side fibers. Avoiding +1 makes every relevant three-coordinate row
ratio simple. Avoiding -1 excludes every H2 submatrix. The last
assertion supplies an admissible row pair for each adjacent side.
PR-A therefore gives a product-regular framing of each positional
corner. PR-M, followed by the exact matching bridge, makes Q_E=0
at every such corner.

All these guard inequalities are strict, so the same conclusions
hold on an open neighborhood U of the four phase seeds, not just at
the one witness. The other cube-root choices permute side columns
and rows and merely relabel the complete set of positional corners.
Thus U covers all 72 algebraic presentations: two sheets, two side
square-root signs in each direction, and three cube roots in each
direction. The verifier checks eight presentations explicitly and
uses only these proved permutations for the remaining factor nine.

No interval containing zero is used to accept Q_E=0. Its exact
vanishing on U follows from PR-M and the exact matching bridge.

## 4. Propagation through every algebraic presentation

Work over K=C(a,b,c,d) with the phase involution sending seeds to
their reciprocals. Adjoin tau with tau²=-R, the two side determinant
square roots, and the two cube roots. With all branches retained,
the generic radical algebra A has rank 72. After localization at
the finitely many required denominators and radicands, it is a finite
reduced K-algebra. It need not be a field: each quadratic or cubic
step is separable in characteristic zero because its radicand is
nonzero. Their nonzero generic specialization is certified in
Section 3. Formal conjugates introduce no extra choices: tau*=-tau,
delta*=g/(27 delta), and w*=1/w.

Fix a positional E. Expression (2) is an element of A. Consider its
multiplication operator on A and its monic characteristic polynomial.
On U all 72 presentations give Q_E=0 by Section 3. Every nonleading
coefficient of that characteristic polynomial is therefore a rational
function of a,b,c,d vanishing on an open subset of T^4. It is
identically zero: clear denominators and apply the one-variable
polynomial zero theorem successively on four open circle arcs.
The characteristic polynomial is consequently T^72. Cayley-Hamilton
gives Q_E^72=0; reducedness gives Q_E=0 in A. Repeat for all 400 E.

This uses all characteristic coefficients, not just a norm. A zero
norm would establish a zero on at least one branch, which would be
insufficient here.

## 5. Specialization in the paper's charts, including product ramification

The preceding generic identities are also identities in the paper's
ordered matched reconstruction algebra. To make this assertion and
its specialization precise, construct that algebra as follows.

Start with the seed Laurent ring, with the paper's leading and
affine-matching coefficients inverted. Adjoin a horizontal product
root u by its monic quadratic. The vertical product root m is its
affine-minus function. Adjoin a first horizontal coordinate by its
monic cubic q_h, and a second by the monic quadratic obtained after
division by the first linear factor; the third is the remaining
Vieta root. Do the same vertically with q_v. This is a monic tower
of rank 2*3*2*3*2=72 over the seed ring. Reconstruct the paired
coordinates through the companion formulas and the forced block
through the matrix inverse. Localize at their displayed guards and
their formal conjugates. PR-F says these denominators are nonzero
at every product-regular physical specialization.

Over K this algebra and A describe the same 72 generic ordered
matched presentations. Indeed the exact bridge identifies the
product sheet; the phase-side Laurent identities and Fourier
inversion in SIDE_FIBER.md identify the sides; and each direction
has all six orderings of its three distinct columns. These are
algebraic identities after denominators are cleared, so the generic
identification is not limited to physical specializations. The
forced D agrees by its defining formula. Thus every Q_E is zero
in the generic ordered matched algebra.

The monic tower before localization is free over its coefficient
ring and hence injects into its scalar extension to K. Localization
preserves this injection into the correspondingly localized generic
algebra. Therefore a localized element zero generically is already
zero in the localized ring. It specializes to zero wherever the
displayed guards allow the paper's reconstruction. This reasoning
does not invert the product discriminant, and therefore includes
coalesced product roots. A possibly nonreduced special fiber does
not change an identity already zero in the free algebra before
specialization.

We have proved (2) at every corner of every physical affine-minus
product-regular completion, including the paper's ramified charts.

## 6. Global conclusion and the exceptional class

By PR-G and PR-M, every non-Tao class except H_cross has a
product-regular representative on the matched cover to which
Section 5 applies. Vanishing of all (1) is preserved by monomial
equivalence: each corner and its adjacent blocks are transported
to a corner, and Psi is monomial invariant. Thus the assertion
holds for every representative of those classes.

`verify_exceptional_matching.py` checks H_cross exactly over Q(i).
It verifies HH†=6I and all 400 identities (1). It also exhibits a
strict corner of H_cross. Thus the same conclusion holds for that
remaining non-Tao class.

Now take any strict nonmatched completion. If its class were not
Tao, the preceding global result would make (1) vanish at this
very corner. Since g>0, Section 2 would make its side Theta values
conjugate, contrary to its being nonmatched. It is therefore Tao.
TAO_PAIRINGS.md lists every strict corner of Tao, modulo internal
monomial equivalence: precisely two seed classes, each with the
two matched flat pairings, its one additional Tao pairing, and
one nonflat pairing. This proves the full exceptional converse.

## Verification and remaining obligation

- `python3 MinimalConstruction/Proofs/verify_all_corner_matching_witness.py`
  replays the outward open witness, with exact rational endpoints.
- `python3 MinimalConstruction/Proofs/verify_exceptional_matching.py`
  replays the exact H_cross census.
- `verify_matching_bridge.py` and `verify_side_fiber.py` replay the
  algebraic bridges used above; `verify_tao_pairings.py` replays the
  exact exceptional pairing counts.

The finite-algebra propagation and the use of PR-M are written proof
steps, not assertions that an interval replay alone proves the global
theorem. This result does not supply a strict corner for an arbitrary
non-F6 carrier. That separate global existence statement is now proved
in STRICT_CORNER_COVERAGE.md, without using this nonmatched converse.
