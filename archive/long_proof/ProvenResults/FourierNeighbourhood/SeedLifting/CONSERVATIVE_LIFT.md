# A conservative quantitative lift on R-separated cells

**Status: proved under the campaign's accepted strict reconstruction
inputs. The constants are not yet practical for the production layer.**
This supplies a quantitative bridge from a seed to its carrier, but its
radius shrinks as R→0. It does not finish the overnight goal of a useful
prune on the branch layer.

Let ε be the Euclidean geodesic distance in **radians** from a seed θ to
the full Fourier seed atlas. Let 0<r≤1. Suppose the physical carrier
H₊(θ) has its leading corner maximal (θ∈D₀), and

    2r ≤ R(θ) ≤ 19,
    ε ≤ r^(17/6)/(2,400,000,000,000,000,000).             (1)

Then

    d_Four(H₊(θ)/sqrt(6))
       ≤ 144,000,000,000,000 ε / r^(31/12)
       ≤ (3/50000) r^(1/4) < 1/16384.                   (2)

The completed [matrix tube](../PracticalTube/PROOF.md) therefore excludes
such a quartet edge. The same estimate applies to a matched strict
reconstruction in another frame or on the negative sheet.

**Dependencies.** In addition to the unconditional lemmas cited below,
this proof uses the accepted side formulas, their strict-domain
nonvanishing divisors and physicality, and strict side/completion
exhaustion with flat matched pairings, as stated in
[ASSUMPTIONS.md](../../../MinimalConstruction/ASSUMPTIONS.md).
It uses [T4](../../Sheets/BRANCH_LEMMA.md) to remove root-choice
permutations during continuation. It does not prove those accepted
reconstruction inputs or assume unrestricted seed lifting.

## 1. A global seed bound for R

For every unit-phase seed, without any physicality assumption,

    ||∇R||₁ < 100,000,000.                              (3)

Here is a deliberately coarse bound that avoids hidden regularity.
Write s=−1−a−b, t=−1−c−d, q=−1−c/a−d/b and
X=|s|², Y=|t|², Z=|q|². Their moduli are at most 3, and their
phase-gradient one-norms are at most 2,2,4. Thus

    ||∇p||₁≤48, ||∇J||₁≤144, ||∇W||₁≤3024.

The last bound uses |Y+Z−YZ|≤63 for 0≤Y,Z≤9, and cyclically.
From the defining invariant formulas one gets

    |g|≤162, |η|≤90, |χ|≤2106,
    ||∇g||₁≤288, ||∇η||₁≤192, ||∇χ||₁≤9072.

Consequently the derivative of R=4g²η−χ² is bounded by

    8·162·90·288+4·162²·192+2·2106·9072
        =91,958,976 <100,000,000.

Integrating in phase coordinates proves (3). A phase path of Euclidean
length ℓ changes R by at most 10⁸ℓ.

## 2. Continuation of a matched carrier along a strict path

Along a phase path with R≥r>0, the matched reconstruction can be labelled
continuously, allowing permutations of the three side columns and rows.
To justify this, √R is analytic locally, the strict recipe's other divisors
are nonzero, and its nonzero square/cube roots admit local analytic choices.
T4 identifies changes of these choices with ordinary side permutations.
At a sign-switch point dF=0 its reflection formula is defined; the
exceptional s=0 chart is not such a point. The prescribed matched pairings
remain flat by the accepted reconstruction input. Compact path segments
are covered by finitely many such charts. Thus we may integrate derivatives
of a locally analytic, physical, dephased carrier, relabelling at overlaps.
Endpoint relabellings are allowed Hadamard equivalences.

For a dephased side, the moment-map Jacobian has inverse norm at most
72/sqrt(R), and the seed-to-moment derivative has norm at most sqrt(8),
by [RegularSideCharts](../../RegularSideCharts/PROOF.md). Therefore

    ||B′||F, ||C′||F ≤ 204 r^(−1/2)||θ′||₂,
    ||E′||F = ||θ′||₂.                                 (4)

We also need the complementary Gram bound. G=6I−EE† is positive definite
with trace 9 and eigenvalues at most 6. The maximum of tr(G²) under these constraints occurs at permutations
of (6,3,0), so tr(G²)≤45 and p≤9.
The invariant η=9−p+J obeys η≤9+6sqrt(3)<20. Since
R=4g²η−χ², g=det(G)>sqrt(R)/9. The product of the two largest
Gram eigenvalues is at most 81/4, so

    G ≥ [sqrt(r)/183] I.                               (5)

Differentiate EC†+BD†=0. Every block of a physical raw Hadamard has
operator norm at most sqrt(6). Equations (4)–(5), and 0<r≤1, give

    ||D′||F
      ≤sqrt(6/λ_min(G))(||E′||F+||B′||F+||C′||F)
      ≤34·409 r^(−3/4)||θ′||₂.

Adding squared block norms and dividing by six yields the convenient
uniform estimate

    ||(H/sqrt(6))′||F ≤6000 r^(−3/4)||θ′||₂.            (6)

All rounding constants in (3)–(6) are checked by verify_lift.py.

## 3. Move first to the atlas, then to cubic-root alignment

Choose a closest atlas seed σ. It is strict by (1) and (3). The atlas
proof therefore puts σ on a surface. A corner permutation, rephasing
and possibly transposition takes that surface to E₂(z,w).
The induced map on the four seed phases has operator norm at most 4:
each of its four coordinates is a signed sum of at most four distinct
original entries, so its Frobenius norm is at most 4. Thus, in this
frame, the seed displacement is at most

    e=4ε ≤ r^(17/6)/(600,000,000,000,000,000).             (7)

Corner R and maximality are invariant under these transformations.
Strict side/completion exhaustion identifies the transformed starting
carrier with a matched strict reconstruction; Tao is impossible since it
has a corner with R=243 whereas the starting maximum is at most 19.
The closest atlas seed cannot belong only to a boundary curve, since all
those curves have R=0.

Follow the straight phase segment to σ. Its R stays at least r, and
R(σ)≤20, by (3) and (7). Let K₀ be the first three rows of the continued
carrier there. The exact side classification gives B_F or B_A.

If it gives B_F, this carrier already has a cubic-root row quotient.
Otherwise compare K₀=[E₂ B_A] with the original first three rows.
By (4) their six side phases differ in Euclidean norm by at most
204e/sqrt(r); the known seed-entry phases differ by at most e.
The uniform corner perturbation bound in
[BRANCH_GAP.md](BRANCH_GAP.md#2-a-uniform-perturbation-bound-for-the-three-row-corner-test),
applied twice and using original maximality, gives approximate maximality
at K₀ with error

    ε_corner ≤73728·204 e/sqrt(r) ≤16,000,000 e/sqrt(r).

The [linear gap and projection theorem](LINEAR_GAP.md) then provides a
surface seed σ₁ with |S|=|T|, and phase displacement from σ at most

    360 ε_corner/R(σ)^(4/3)
        ≤5,760,000,000 e/r^(11/6).                      (8)

Thus the entire two-segment seed path has length at most

    L=6,000,000,000 e/r^(11/6) ≤ r/100,000,000.          (9)

The first segment's continuation and estimate (8) were already justified
without the second segment. Now (3) and the original R≥2r show that the
second segment also stays at R≥r. There is no circular assumption of its
strictness. Continue the same matched carrier along it.

At σ₁, either side choice has a cubic-root row quotient: for B_F this
is explicit, and for B_A it follows from |S|=|T| as in the atlas-rigidity
proof. The unconditional cubic-pair and Fourier-block theorems therefore
identify the endpoint carrier as Fourier, transpose Fourier, or Tao.
For the B_F case above, simply stop at σ; the same upper bound L applies.

## 4. Exclude the Tao endpoint and enter the tube

Equation (6) bounds the normalized Frobenius distance from the original
carrier to the endpoint by

    d ≤6000 r^(−3/4)L
       ≤144,000,000,000,000 ε/r^(31/12)
       ≤(3/50000) r^(1/4) ≤3/50000.                     (10)

Tao cannot be this endpoint. A corresponding raw entry has chordal
displacement at most sqrt(6)d; its shortest phase displacement is at most
5d. For any three selected rows, dephase their first row to one.
The other two rows' phase displacements are then at most 10d. The
complementary sine bound used in BRANCH_GAP gives, for every corner,

    |R_corner(H)−R_corner(H_endpoint)| ≤368640d <24.

The original maximum is at most 19. The endpoint's maximum would thus
be less than 43, contradicting Tao's corner with R=243. It follows that
the endpoint is in the Fourier family or its transpose. Projector distance
is bounded by column Euclidean distance and hence by the normalized
Frobenius distance in (10). Reversing the initial fixed row/column
monomial operations and any transposition preserves that Frobenius bound
and the union of the two Fourier orientations. No transpose invariance
of the maximum-column projector metric is assumed. Since 3/50000<1/16384, this proves (2).

## 5. Whole-cell criterion and its present limitation

For a closed seed box K it suffices to certify, with outward bounds,

    2r ≤ inf_K R, sup_K R ≤19, 0<r≤1,
    sup_(θ∈K) dist₂(θ,S_Four) ≤ r^(17/6)/(2.4·10¹⁸).    (11)

Then every point in K∩D₀ is excluded from being a quartet edge.
F may be imposed additionally but is not needed for the implication.
For rational positive bounds ε,r, the distance inequality can be checked
without fractional powers by `(2.4·10¹⁸ ε)^6≤r^17`. Atlas routines report
turn-distances; convert to radians with an outward bound for 2π.

The replay supplies a nonvacuous exact example: the CornerBounds Fourier
curve at v=1/16, whose leading seed is
`(ω²,−ω/z,1,−1/z)`, z=(1−iv)/(1+iv), has R=38654705664/4362470401.
The closed phase cube of half-width 10^(−19) around it satisfies (11)
with r=1. The centre belongs to D₀ by the existing exact curve theorem.
The whole cube's R bounds follow from (3), and its atlas distance is at
most 2·10^(−19). This verifies an actual positive-width exclusion, not
just a point test.

**Practical limitation.** This example is much smaller than production
cells. Formula (11) also needs a positive R lower bound, so it does not
handle cells crossing R=0. Sharper local sensitivities, corner derivatives
and projection bounds, together with control at R=0 and a matching T1′
threshold, are still required to meet the campaign's compute-reduction
goal. This theorem is not reported as completion of that goal.
