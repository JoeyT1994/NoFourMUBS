# Capturing a wide column by partitioning two phase coordinates

We fix one recorded H cell and one supplied six-column pattern. The H cell has the certified enclosure
Q(w) = Q0 + Uw + H2[w,w]/2 + Xξ, with ‖w‖ ≤ r and ‖ξ‖ ≤ τ. The input for column c is a closed mean-zero
phase ball B(v_c, R_c). Every completing basis assigned to this pattern must have its cth column in that ball.
The completeness and identity of these input balls are inherited from the upstream cover. We do not infer
them from a numerical search or from the number of roots found.

**PROVED, conditional on those input enclosures.** If `code/plane_column_certificate.py` returns
`EXCLUDED_GIVEN_INPUT_ENCLOSURES`, the supplied pattern contains no third basis for any H in the recorded
cell. The checker rebuilds H and checks C1 and the Stage C magnitude conditions. It partitions column
coordinates only. It does not reduce r, replace the recorded H cell, or discard its boundary.

The method has two parts. We cover each of two entire column balls by small enclosures of its possible
unbiased vectors. We then prove that no vector in one cover is orthogonal to a vector in the other cover.
The covers may contain multiple branches. Neither the number of branches nor their existence is assumed.

## 1. Three strong coordinates and two weak coordinates

For one column write V = v + Ex, where E is an orthonormal frame for the mean-zero subspace of R⁶.
Numerically, the difficult examples have three large and two small singular values of the unbiasedness
Jacobian. This observation selects a frame; it is not an acceptance test. The checker constructs E from
the exact Helmert frame and two Householder reflections. The proposed directions are exact binary64
constants. For a nonzero vector a, I − 2aaᵀ/(aᵀa) is exactly orthogonal. Arb encloses this formula and rejects
an unverified denominator. Thus the frame is orthonormal by an algebraic identity, rather than by a small
floating-point orthogonality defect.

We separate x into three strong coordinates z and two weak coordinates y. A quadtree covers the full
square y ∈ [−R,R]² by closed rectangles. If a rectangle has center m and half-width h, put

    d_i = max(|m_i| − h, 0),       T² = R² − d_1² − d_2².

It can be discarded geometrically only when T² < 0 strictly. Otherwise every point of the original
ball in the rectangle has ‖z‖ ≤ sqrt(T²). A rectangle touching the ball is retained. Every split has all
four children, including their shared boundaries. Replay reconstructs these cells from the root of the
tree and refuses missing children or unresolved leaves.

The serialized input center can have a small interval width. The checker replaces it by an exact
mean-zero projection of its binary64 midpoint and adds an upper bound on the center displacement to R.
This enlarges the supplied ball and makes the coordinate decomposition valid without an exact-decimal
mean-zero assumption.

## 2. Uniform capture on a rectangle

The six real equations for an unbiased column are

    F_j(V,Q) = (|Σ_a exp(i(V_a − Q_aj))|² − 6)/6
             = 2 Re Σ_{a<b} exp(i(V_a − V_b − Q_aj + Q_bj))/6.

We fix y = m and H's reference phase Q0 to form the reference equations. On each rectangle, numerical
least squares proposes z* and a real 3×6 matrix P. Their accuracy is not assumed. The checker retains
the residual PF(z*) and proves a lower bound for sym(P D_z F) over the whole strong-coordinate domain,
uniformly over every allowed w, y and normal remainder.

Here are the parameter bounds used by the checker. For one row pair and H column, let g be the
difference of the two U rows, let b be the difference of the two weak-frame rows, and let

    e = ‖ΔH2‖ r²/2 + ‖ΔX‖ τ,       a = ‖g‖ r + (|b_1|+|b_2|)h + e.

The parameter phase change is g·w + b·(y−m) + n, with |n| ≤ e, so its absolute value is at most a.
For any real row matrix L, write t = L times the complex coefficient of this term. Sum the signed
linear coefficients −2 Im(t)gᵀ and −2 Im(t)bᵀ before taking their operator norms. Their forcing bounds
are ‖D_H‖r and ‖D_y‖sqrt(2)h. The remaining componentwise error is bounded by
Σ 2|t_i|(e+a²/2), using |exp(iu)−1−iu| ≤ u²/2. The Euclidean norm of these componentwise bounds bounds
the remainder. Call the resulting total forcing N_L.

For the derivative with respect to z, a uniform perturbation bound is
Σ 2‖t‖‖ℓ‖a, where ℓ is the difference of the strong-frame rows. This bound remains valid at every
strong-coordinate expansion point: a unit phase multiplies the whole coefficient vector of each term
and preserves its norm. In the parameter calculation the different H columns are separate terms.

The reference monotonicity bound is the one in `ANCHORED_REPORT.md`, applied in dimension three.
For each reference coefficient ζ set A = sym(uℓᵀ), u = −2 Im(Pζ), and B = sym(vℓᵀ), v = −2 Re(Pζ).
Choose positive scalar s and use

    D(u,ℓ) = (s uuᵀ + ℓℓᵀ/s)/2,       D(u,ℓ) ± sym(uℓᵀ) ⪰ 0.

The identity follows from the square of sqrt(s)u ± ℓ/sqrt(s). The arbitrary positive s is only a
proposal. Write D_A and D_B for these majorants. If α = ‖ℓ‖T < π, the lower matrix for a strong ball
of radius T is

    Σ A − q I − Σ[(1−cos α)(D_A+A)/2 + (α−sin α)D_B] − drift I,
    q = T sqrt(λmax(Σ_k L_k²)),          L_k = Σ_terms ℓ_k B.

The cosine coefficient lies between cos α and 1; the sine remainder has magnitude at most α−sin α.
For any z, ‖Σ_k z_k L_k‖ ≤ ‖z‖sqrt(λmax(Σ_k L_k²)). These facts give the displayed lower matrix.
Every spectral bound is accepted only after an Arb LDL test. A floating-point eigenvalue supplies a
candidate bound, not its justification.

For the first capture, enlarge T if necessary to contain z*. The ball centered at z=0 then contains
both z* and every possible zero in the rectangle. If its verified lower eigenvalue is m0 > 0, integration
along the segment from z* to a zero gives

    ‖z−z*‖ ≤ (‖P F_reference(z*)‖ + N_P)/m0.

The right side is an upper enclosure ρ. We may repeat the argument on the ball B(z*,ρ), which contains
all remaining zeros and its center. The checker makes at most three such improvements and uses only
strictly smaller bounds. The resulting phase enclosure has center v + E_strong z* + E_weak m and radius
sqrt(ρ²+2h²). This is a necessary enclosure of zeros, not an existence assertion.

A row combination λF can also discard the entire rectangle. If vλ and Jλ are its reference value and
strong derivative at z*, then throughout the capture it is bounded below by

    vλ − N_λ − (‖Jλ‖+drift_λ)ρ − Cλ ρ²/2,
    Cλ = Σ_terms 2|λζ|‖ℓ‖².

A strictly positive Arb lower bound excludes every zero there. Otherwise the checker keeps the capture.

## 3. Recentering captures and excluding a pair

For each retained capture, a numerical solve proposes a new phase center u. The checker adds the
verified distance from u to the capture center to its radius, then calls the frozen `native_columns`
contraction. That contraction keeps its residual and inverse defect. It is valid for an arbitrary
proposed center and does not assume that u is an exact root. It gives

    V = u + T w + e,                 ‖e‖ ≤ ε.

Several captures can use the same proposed center. The checker takes the largest certified ε among
them, preserving their union. All branches are retained, including overlapping covers of one branch.

Near a singular unbiased-vector branch, an affine derivative T can be too large to help. A second
accepted mode keeps a captured phase ball directly: choose an exact mean-zero center u, set T=0,
and take ε equal to the capture radius plus the verified displacement of its center from u. This
uses the triangle inequality alone. The producer usually chooses the capture's own midpoint, so
different pieces of a singular branch need not be pooled into a wide ball. The proposal records
the mode for each center, and replay recomputes its bound. A center in this mode is not asserted
to be an unbiased vector. The search uses an affine tube only when ‖T‖r < 0.1 and its error ε is
smaller than the direct capture radius. These comparisons select a proposal; either accepted mode
has its own checked enclosure. On resume, saved affine captures that fail the second comparison
can be recentered into constant balls, after which every leaf is replayed against the current column.

For two such tubes define S = Σ_j exp(i(u_bj−u_aj)), ΔT = T_b−T_a, and
G_k = Σ_j i ΔT_jk exp(i(u_bj−u_aj)). With ε = ε_a+ε_b and δ = ‖ΔT‖r+ε,

    |⟨k_a,k_b⟩| ≥ |S| − ‖(Re G; Im G)‖r − sqrt(6)ε − δ²/2.

This is the native shared-H orthogonality bound. The signed common H motion is retained in G. The
linear error is at most sqrt(6)ε by Cauchy–Schwarz; the sum of exponential remainders is at most δ²/2.
Replay requires a strictly positive margin for every pair of retained tubes. Thus none can be the
two orthogonal columns of a completing basis. If one entire column cover is empty, that alone excludes
the pattern.

## 4. Reproduction and scope

From the repository root, with the frozen native dependencies installed:

```sh
python TripleClassification/code/plane_column_certificate.py \
  TripleClassification/phantoms/snapshots/b1217_l6_s4759_p0.json.gz --out result.json
python TripleClassification/code/plane_column_certificate.py \
  TripleClassification/phantoms/snapshots/b1217_l6_s4759_p0.json.gz \
  --proposal result.proposal.json.gz --out replay.json
python -m unittest discover -s TripleClassification/code -p test_plane_column_certificate.py
```

The proposal stores the full partition, directions, multipliers and root centers. Replay performs no
least-squares search. It rebuilds the unchanged H record, checks C1 and Stage C, and recomputes every
capture, contraction and pair inequality. The receipt binds the exact snapshot and all proof dependencies.
The snapshot's fitted K, serialized H model, T, epsilon and fine-bin midpoints are not used for acceptance.
The inherited column inputs are only their phase centers and phase radii.

**PROVED for the supplied 1217 L6/sub4759/pattern0 snapshot, subject to review of the stated dependencies:**
the checker covers columns 1 and 5, with original phase radii about 0.32327 and 0.37961. Each cover has
two resulting tubes. Their residual radii ε are at most 0.001243; all four orthogonality margins are
positive, the smallest exceeding 0.02892 in the unnormalized inner product. H's radius is the original
recorded binary64 value `0x1.70a3d70a3daa8p-9`, about 0.0028125. These statements refer to this pattern,
not to every cell of original seed ball 1217.

**NUMERICAL:** the pilot took about 24 seconds to find and verify this proposal on the local machine;
the replay phase took about 5 seconds. Timing and branch counts do not enter the proof.

**CONJECTURED:** the same two-dimensional partition will suffice for every remaining wide-column
pattern at its existing H level. A failed spectral bound, exhausted budget or surviving pair leaves
the pattern unresolved. There is no general theorem here that all radius-0.5 column balls admit
capture, or that the remaining original seed balls are closed.

## 5. Rebuilding every completing basis on a cell

`code/plane_cell_certificate.py` removes the inheritance of the snapshot's K phase balls. It uses only
the recorded H cell, repeats C1, the normal form and Stage C checks, and rebuilds `complete_cover` and
`contract_patterns`. The resulting pattern list covers every completing basis on that H cell, by the
frozen native-cover theorem. Column partitions are shared between patterns, so one column need not
be captured repeatedly.

**PROVED, subject to the frozen native-cover theorem.** If its replay returns
`CERTIFIED_EMPTY_RECORDED_H_CELL`, no H in that recorded cell admits a completing basis K. Replay
rebuilds the complete K cover, verifies the stored column partitions against the newly computed phase
balls, and requires an empty column or an excluded pair in every complete-cover pattern. It rejects
an omitted pattern, a changed colour list, a column outside its pattern, or a missing column proof.
An inaccurate numerical proposal can only make an inequality fail. No supplied pattern count or K
phase enclosure is trusted for this conclusion.

```sh
python TripleClassification/code/plane_cell_certificate.py \
  TripleClassification/phantoms/snapshots/b1217_l6_s4759_p0.json.gz --out cell.json
python TripleClassification/code/plane_cell_certificate.py \
  TripleClassification/phantoms/snapshots/b1217_l6_s4759_p0.json.gz \
  --proposal cell.proposal.json.gz --out cell-replay.json
```

The local pilot rebuilt all 64 patterns of this 1217 cell and excluded each one. The search and first
replay took about 45 seconds. This is a whole-cell result. Its extension to original seed ball 1217
still requires a verified geometric cover whose every cell is classified or excluded.

## 6. Review of the upstream anchored rule

The Stage C correction is necessary. The column phase balls come from `complete_cover`, so a score
or anchored exclusion inherits the same magnitude hypotheses as a cell closed by the native certifier.
Checking them only on native-closed cells would not justify rule-closed cells. Rebuilding H alone does
not establish those hypotheses. The new plane checker checks them on the actual record as well.

`anchored_run.py` repeats the normal-form, root-proposal, complete-cover and pattern-contraction calls
in the same order as `run.run_ball`, at the same precision. It omits the C1 call there, relying on the
auditor's certified C1 row. Its serialization encloses the computed phase balls. However, equal counts
and six colour integers are not an independent identity check on the actual phase balls. Root ordering
and numerical proposals can differ across environments. A portable replay should retain the exact
snapshot and bind its phase-ball inputs to the complete-cover run, or rebuild the whole cover and
verify the required inclusion. The plane receipt therefore states this inheritance explicitly.

Section 3 of `ANCHORED_PROOF.md` correctly describes a receipt consistency check, not a mathematical
replay. The current auditor checks every dependency *listed* by a receipt, but does not require a
complete dependency set. It reads back positive capture and transverse margins, but does not recompute
the numerator, the domain-to-capture chain, or the final loss bound. Pinned producer code supplies those
facts. To remove that trust, replay the saved proposal against the exact snapshot. A dependency hash
or a positive number copied from a receipt is not a replacement for that replay.

Main commit `0b03aa5` also fixes the score-first runner's recursive fine-refinement call and makes
the auditor prefer complete pattern rows over interrupted ones. This addresses the missing-row
obstruction described in its updated notes. It does not change the frozen native cover or the
phase-ball identity issue above. The whole-cell checker rebuilds and accounts for every pattern,
so it does not rely on those earlier partial rows.

The new checkers are not automatically rules of `audit_select.py`. Before using a pattern receipt in
a whole-ball closure, bind the supplied column balls to that cell's complete cover and discharge every
remaining pattern. A whole-cell receipt instead rebuilds and discharges the entire K cover itself.
Both routes still need the geometric covering audit for the original ball. Snapshot exclusions alone
do not change the published original-ball count.

## 7. Rebuilding a cell whose full record is unavailable

The public phantom inventory gives exact dyadic coordinates but usually omits the H record and the
column balls. `code/plane_frontier_certificate.py` uses the coordinates to construct a new H record,
then applies the whole-cell checker. The inventory selects work. Its rounded column radii and its
claims about unresolved patterns play no role in acceptance.

Let the original record have seed center θ, frame M and radius r. A level-L cell has center
u_j = −1+(2c_j+1)/2^L and half-width h = 2^−L in the normalized coordinates. Its seed image lies in
the parameter ball of radius 2hr around θ+Mru. If θ′ is the proposed binary64 center, reduce
δ = θ+Mru−θ′ modulo 2π coordinatewise. The checker requires the same M and orientation, retains the
original C1 box count, and proves

    r′−2hr > 0,             (r′−2hr)² > ‖M⁻¹δ‖²

in Arb. The triangle inequality then places the entire closed cube in the new H ball. In particular,
every boundary point of the cell's intersection with the original ball is retained. The builder adds
one outward binary64 step to its radius proposal, and replay recomputes the containment inequality.
The original atlas is pinned by SHA-256 and its original radius is retained in the receipt.

The new record's center phases, tangent proposal and C1 constant need not be byte-identical to the
legacy record. The checker makes no such assertion. It certifies C1, rebuilds H and Stage C, and
reconstructs every completing-K pattern for the new record. A successful receipt therefore excludes
all completing bases on the specified original dyadic cell, without requiring a match to legacy
colour numbers or legacy column balls.

Save one entry of `phantoms/open_cells.jsonl.gz` as `entry.json`. Search and replay are separate calls:

```sh
python TripleClassification/code/plane_frontier_certificate.py entry.json --out frontier.json
python TripleClassification/code/plane_frontier_certificate.py entry.json \
  --input frontier.input.json.gz --proposal frontier.proposal.json.gz --out frontier-replay.json
```

Search saves completed column partitions beside its output, so a stopped run can resume with the
same `--input` and `--out` and no `--proposal`. These checkpoints are proposals only. On resume,
the checker rebuilds the complete K cover and rechecks every saved partition against its current
column ball before using it. Invalid or mismatched saved partitions do not close a pattern.

The rebuilt level-6 cell 4759 of ball 1217 passed both calls, covering all 64 completing-K patterns.
The original radius is unchanged. This does not prove that the inventory covers the unresolved part
of an original ball. Combining these receipts with previous closures still requires the full covering
tree, with every original cell either discharged or refined. A list of cell hashes cannot replace that
audit, and these receipts do not change the published whole-ball count on their own.

## 8. Covering an unresolved cell by all of its children

An unresolved cell can be refined without removing any point of the original target region.
`code/plane_tree_certificate.py` checks a tree rooted at that exact cell. Each internal node must
have all sixteen children, in the fixed order of the four binary coordinate choices. Their closed
cubes cover the parent cube, including every shared boundary. For a level-L cube, the squared
distance of its nearest point to the origin is computed with exact rational arithmetic. The checker
discards that cube only when this squared distance is strictly greater than one. Tangency is retained.

Every other leaf must supply a recorded H ball and a column-partition proposal. Replay checks the
file hashes, proves that the H ball contains that leaf's entire closed cube, and rebuilds and checks
the complete K cover. A successful leaf therefore excludes every completing K on its part of the
original ball. Induction up the tree excludes every completing K on the root cell's intersection
with the original closed ball. No reduction of the original radius enters this argument.

A tree receipt records the exact root cell and every leaf used. It cannot substitute a certificate
for a nearby cell, omit a child, or count an unresolved leaf. This extends the cell-level computation
to complete refinements. It still does not prove that the public inventory contains all cells needed
by the original ball's covering tree.

The level-4 cell 205 of ball 825 passed this replay with all sixteen level-5 children, accounting
for 746 complete K patterns. Its direct search had exhausted its time budget. The tree proves the
same assigned cell of the original radius-0.1 ball; it does not replace that target by one smaller ball.

The tree proposal binds the root entry by `SHA256(json.dumps(entry, sort_keys=True))`. Each terminal
proof has `input` and `proposal` objects containing `path` and `sha256`; paths are relative to the tree
file unless absolute. An internal node has exactly `children`, a list of sixteen nodes in lexicographic
binary order. An outside leaf is exactly `{"outside": true}`. Replay is:

```sh
python TripleClassification/code/plane_tree_certificate.py entry.json \
  --tree tree.json --out tree-replay.json
```
