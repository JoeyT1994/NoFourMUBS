# Independent certificate audit

## Scope

The original user archive contains the old exhaustive checker's inputs and
receipts, but not its implementation. Its reported conclusions cannot therefore
be independently replayed from that source. The historical counts below are
quoted from those supplied receipts. The new methods can be proved directly
and replayed with the checkers included in this return.

## Why the old whole-cell run exhausted its budget

The fixed-H receipt reports 88,865 visited nodes for column 0 and 52,647 for
column 1, with two merged capture boxes per column. The whole-cell receipt stops
at 200,000 visited nodes for column 0, with 40,526 small capture boxes and 21
pending boxes. Its terminal width is 1/256.

This is consistent with an avoidable discretization of a thick moving-root
region. A parameter-dependent root occupies a continuum in the five column
coordinates. Resolving that entire region at a fixed tiny width creates many
capture boxes even when the root has only one or two branches.

**PROVED methodological improvement:** the exhaustive cover may stop on any
box already contained in a separately bounded capture region. The cover needs
to prove that every possible root is in those regions. It does not need to
prove existence or uniqueness of a root inside a region. Pair incompatibility
then only needs to hold throughout the regions that were actually used.

## Exhaustive contraction theorem

Let B be a closed convex box in column coordinates, m any point in B, P the
parameter domain, and F a differentiable map whose vanishing is necessary for
column unbiasedness. Suppose J encloses the x-Jacobian throughout B × P and f
encloses F(m,p) for all p in P. For any fixed real matrix R of compatible
dimensions, define

    K = m − R f + (I − R J)(B − m).

Every zero x of F(x,p) in B, for every p in P, belongs to K. This follows by
integrating the Jacobian along the segment from m to x. Consequently:

1. If B ∩ K is empty, B contains no root for any allowed parameter.
2. Replacing B by B ∩ K preserves every possible root.
3. If a contracted box lies inside an accepted capture region, it can be
   removed from the pending cover and assigned to that region.
4. A split must use closed children whose union covers the parent. Boundary
   overlap is harmless. Strict exclusion inequalities prevent loss of zeros
   on the domain boundary.

R need not be invertible for these exclusion/capture conclusions. A numerical
inverse is only a proposal: the interval evaluation proves the implication.
Likewise, dropping one unbiasedness equation or taking a five-row linear
projection of all six equations is safe for exclusion, since every full zero
is a zero of the projected equations. It may admit extra roots, which only
weakens the test.

If the source domain is a Euclidean ball and B covers part of it, B may be
discarded on radial grounds only when a certified lower bound on the squared
distance from B to the source centre is strictly greater than the squared
source radius. Otherwise the box remains eligible, even if its corners lie
outside the ball.

## Correlated pair theorem

Suppose two candidate columns satisfy

    v_a = c_a + T_a w + e_a,
    v_b = c_b + T_b w + e_b,
    ||w||_2 ≤ r,  ||e_a||_2 ≤ ε_a,  ||e_b||_2 ≤ ε_b.

The same real parameter w occurs in both tubes. Let P0 be projection onto
mean-zero vectors in R^6, and define

    D = P0(T_b − T_a),      η = ε_a + ε_b,
    z_i = exp(i(c_b − c_a)_i)/6,
    s0 = Σ_i z_i,
    g_i = Re(i λ z_i),      h = D^T g,

where λ is any fixed nonzero complex multiplier. A useful numerical proposal
is conjugate(s0)/|s0|, but no unit-modulus property is assumed by the checker.

The following lower bound is **PROVED**:

    |<k_a,k_b>|/6 ≥ [ Re(λ s0)
                        − r ||h||_2
                        − η ||P0 g||_2
                        − |λ|(r ||D||_op + η)^2/12 ] / |λ|.

When the bracket is positive, the two columns cannot be orthogonal anywhere
in the supplied tubes.

Proof: remove the mean of the total phase difference, which changes the
overlap by a unit-modulus factor only. The remaining displacement is
δ = D w + P0(e_b − e_a). Expand exp(iδ_i) = 1+iδ_i+R_i and use
|R_i| ≤ δ_i²/2. The linear parameter term has magnitude at most r||h||_2,
the error term at most η||P0g||_2, and the remainder is at most
|λ| Σ_i δ_i²/12 ≤ |λ|(r||D||_op+η)^2/12. Taking the real projection and
dividing by |λ| proves the claim.

`pair_tube_certificate.py` implements this theorem. It computes the matrix
operator bound as the minimum of a Frobenius bound and a Gershgorin bound on
D^T D, both with Arb outward enclosure. The helper accepts Helmert-coordinate
slopes through `certify_helmert_pair`; the exact Helmert matrix is evaluated
with Arb square roots. Source phase centres should be reconstructed from the
same Arb centre and Helmert coordinates used by the capture proof.

## Shared-parameter feasibility separation

The later `ColumnCover.parameter_out` method in `correlated_cover_svd.py`
is also sound. For x=c+d in a closed box with |d_k|≤h_k, expand the six
necessary residuals jointly as

    F_H(c+d) = F0 + J0 d + W0 w + e.

For row pair p and equation j, let beta_pj bound the quadratic and normal
H phase remainder, let g_pj be the four-component linear H phase slope, and
let ell_p be the column-phase slope. An outward bound on e_j is

    E_j = Σ_p [ beta_pj
                + (Σ_k |ell_pk| h_k + r||g_pj|| + beta_pj)²/2 ] / 3.

For any fixed real multiplier lambda, a full zero would necessarily satisfy

    |lambda F0| ≤ Σ_k |(lambda J0)_k| h_k
                   + r ||lambda W0||_2 + Σ_j |lambda_j| E_j.

A strict reverse inequality excludes the box uniformly for the complete
shared parameter ball. Numerical left-nullspace vectors and pseudoinverse
directions only propose lambda; lambda W0 is recomputed by Arb and is never
assumed zero. No numerical rank or inverse assertion is needed.

The implementation's phase signs agree with g_pj=U_bj−U_aj and the derivative
of cos(phase+ell*d+g*w). Its `phase_remainder` retains both the H2 and X
contributions. `check_parameter_known_root.py` verifies forty exact
Fourier-chirp roots under a row/column gauge model with nonzero U,H2,X and
r=0.2,tau=0.05. All survived the new separation, ordinary residual pruning,
and interval contraction. The regression receipt binds the tested source
hash.

The later second-order H refinement was also audited. At a fixed column
centre, its signed quadratic H tensor is
−(sin(theta)*sym(H2diff)+cos(theta)*g*g^T)/3, and its normal coefficient is
−sin(theta)*Xdiff/3. The tensor carries the external factor one half in
w^T Q w/2. Its symmetric operator norm is bounded by the maximum absolute row
sum. The omitted term is at most
|cos(theta)|*(linear*beta+beta²/2)/3+delta³/18. Column-box variation is bounded
separately by the grouped exact reference Jacobian plus its uniform H drift.
The same forty exact roots with nonzero U,H2,X survived this refinement.

## Independent inspection of predictor capture

The current `root_geometry/predictor_tubes.py` was inspected independently.
Its following identities and inequalities are sound:

- The six unbiasedness residuals are Σ_{a<b} cos(φ_ab,j)/3.
- The linear predictor changes each pair phase by
  (U_b−U_a + (E_a−E_b)S)w.
- The second-order forcing contains the symmetrized H2 contribution and the
  square of the linear phase change.
- The cubic forcing remainder is bounded by total phase width cubed /18,
  multiplied by the relevant preconditioner coefficient.
- The matrix sum-squares bound
  ||Σ z_i M_i|| ≤ ||z|| sqrt(||Σ M_i^T M_i||)
  follows directly from Cauchy–Schwarz.
- The monotonicity tail uses valid symmetric majorants D±A ≥ 0 and the bounds
  1−cos(t) ≤ 1−cos(α), |sin(t)−t| ≤ α−sin(α) for |t|≤α<π.

These observations are an independent mathematical/code audit, not a formal
proof assistant verification.

## Final replay and regression scope

The complete chosen snapshot configurations are rerun from the final packaged
code by `replay.py`; each receipt records source, proposal, and dependency
hashes. This is executable interval verification, not a proof-assistant
formalization. The enclosure theorem for the upstream atlas and its pattern
coverage remain explicit premises.

`validation/check_parameter_known_root.py` and
`validation/check_fiber_known_root.py` each preserve 40 exact Fourier6 chirp
roots under a shared phase-gauge model with nonzero U, H2, and X. The fiber
regression also checks signed second-order error bounds and requires an
exhaustive no-cap run to remain unresolved.

`extra_root/check_extra_root.py` independently verifies the two scope-limited
extra-column statements described in `extra_root/REPORT.md`. Physical H
existence is not inferred from an enclosing normal-form model.

The graph wrapper's forbidden-prefix DFS was separately inspected. It accepts
only when each finite assignment is covered by a certified forbidden prefix;
its node budget fails conservatively. Skipped numerical edge proposals can
weaken the proof but cannot introduce an invalid edge.

## Optional bootstrap implementation

The supplementary `code/fiber_bootstrap.py` first obtains the default valid
strong-root enclosure, then recomputes derivative bounds only on a region
already proved to contain every relevant segment. It never mutates the original
source radius. Its derivative-only radius override uses a zero weak-radius
subtraction, because the override is already a strong-coordinate radius.

The actual helper passed 40 exact roots with nonzero U, H2, and X. The regression
deliberately starts from a weaker valid q=0.95 to exercise three successive
refinements per root, checks each intermediate ball/radius, and verifies the
original source radius remains unchanged. The no-cap exhaustive negative
control stays unresolved. The packaged script and fresh regression receipt
are in `validation/`.

## Final averaged-derivative audit

The exact `fiber_secant.py` implementation bounds the averaged defect I-Jbar,
using the cubic majorant's integral between outward endpoint-norm bounds.
Gauss-Legendre nodes are computed with Arb and rounded upward; the nonnegative
coefficients are independent of the auxiliary radius. The minimum of a valid
pointwise defect bound and a valid averaged defect bound is valid for the
mean-value argument.

The 40-root regression deliberately uses source radius 0.8. Its pointwise slab
bound exceeds one in all trials (about 1.1728), while the averaged bound is
about 0.4923. Every exact root survives the initial averaged enclosure and
three refinements. The no-cap tree remains unresolved with 12 pending nodes,
while exercising 240 refinement calls and 200 improvements. See the portable
script and fresh receipt in `validation/`.
