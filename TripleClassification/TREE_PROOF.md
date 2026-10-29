# Trees of sub-balls: the cover lemma and what the auditor checks

This note proves that a tree accepted by `code/audit_select.py` closes its original seed ball. It assumes the frozen
whole-ball certifier is correct on each sub-ball record it certifies. Labels: **PROVED** (here), **INHERITED** (from
the certifier's review), **CHECKED** (by the auditor, in exact or Arb arithmetic).

## Setting

A seed record has:
- a centre θ₀ ∈ ℝ⁴ in the native four-coordinate phase chart;
- an invertible frame Mth (4×4 binary64);
- a radius r;
- the chart labels o, k.

Its ball is B = {θ₀ + Mth·r·u : ‖u‖ ≤ 1}. Coordinates are phases, so θ and θ + 2πn give the same Hadamard matrix.

The certifier's statement for a record S, **INHERITED**:

> If run(S) returns CERTIFIED or CERTIFIED EMPTY, and S passes C1, its normal form and the Stage C magnitude
> preconditions, then for every H in S's ball, every third basis K completing (I, H/√6) gives a triple of known type,
> or there is none.

## Cells

For level L ≥ 2 put n = 2^L and h = 1/n.
- **Cells.** A level-L cell is c ∈ {0, …, n−1}⁴. Its closed box is Q_c = ∏ᵢ [−1 + 2cᵢh, −1 + 2(cᵢ+1)h] ⊂ [−1, 1]⁴, with
  centre u_c and half-width h.
- **Meeting the ball.** The cell meets the closed unit ball iff Σᵢ dᵢ² ≤ 1, where dᵢ = max(lo_i, 0, −hi_i) is the
  distance from 0 to the box on axis i. This is decided exactly in rationals. **CHECKED**
- **Refinement.** The 16 children of c are the level-(L+1) cells c′ with ⌊c′/2⌋ = c. Their boxes tile Q_c.

## The sub-ball of a cell

The record for cell c has:
- the parent's frame Mth, o and k;
- a binary64 centre θ₀′ near θ₀ + Mth·r·u_c;
- a radius r′.

Let δ = (θ₀ + Mth·r·u_c) − θ₀′, reduced componentwise mod 2π.

**Lemma 1 (containment, PROVED).** If (r′ − 2h·r)² > ‖Mth⁻¹δ‖² and r′ > 2h·r, then for every u ∈ Q_c the point
θ₀ + Mth·r·u lies in the record's ball, mod 2π.

*Proof.* Write θ₀ + Mth·r·u = θ₀′ + Mth(r(u − u_c) + Mth⁻¹δ) mod 2π. Here ‖u − u_c‖ ≤ 2h, the half-diagonal of a 4-cube
of half-width h. So ‖r(u − u_c) + Mth⁻¹δ‖ ≤ 2h·r + ‖Mth⁻¹δ‖ < r′. ∎

The auditor evaluates δ and Mth⁻¹δ in Arb, at 224 bits, from the exact binary64 inputs, and checks both inequalities.
It also checks that Mth, o and k equal the original's. **CHECKED**

## A layer

A layer at level L lists cells with their sub-ball records and one receipt row per record.

**Layer 2.** Its cell set must equal exactly the set of level-2 cells meeting the closed unit ball. **CHECKED**

**Layer L ≥ 3.** Let T be the cells of layer L − 1 that are still needed: not closed, and (for L − 1 ≥ 3) with a
needed parent. Layer L's recorded `targeted_parent_cells` M must satisfy T ⊆ M ⊆ (cells of layer L − 1); refining a
cell that is already closed is harmless. Its cell set must equal exactly the children of cells in M that meet the
closed unit ball. When it names the previous layer's sub-atlas by hash, the hashes must match. **CHECKED**

**A closed cell.** A cell is closed when all of the following hold:
- its row is CERTIFIED or CERTIFIED EMPTY, with C1 ok and normal form CERTIFIED;
- every pattern is CERTIFIED or EXCLUDED;
- the number of patterns equals `patterns_after_column_filter`;
- every CERTIFIED pattern is the balanced order-three symmetry by the averaged moving equation, with q < 1 strictly
  in Arb;
- the row's verdict agrees with its patterns.

**CHECKED**

When the assembly enables a rule, a NOT ESTABLISHED row with C1 ok and normal form CERTIFIED is also closed if every
pattern it left open is discharged: by the labelled Fourier score (`GAMMA_PROOF.md` §5) or by an anchored-column
exclusion of that pattern (`ANCHORED_PROOF.md`). **CHECKED**

**Binding.** Each row must carry the source binding of an accepted builder for its layer. The binding is a hash over:
- the frozen certifier sources;
- the builder;
- where present, its Stage C guard;
- the sub-atlas hash.

The row must also carry the record's SHA-256 and binary64 radius. This ties each verdict to the exact record and code
that produced it. **CHECKED**

**Stage C.** Every closed sub-ball, including every cell closed by a rule (the auditor lists them), must also pass the
Stage C magnitude preconditions (`code/stagec_guard.py`), either inline in its row or in a sidecar row bound to the
guard's hash, the sub-atlas hash and the record hash. This is checked by `code/assemble.py` and `code/verify_ball.py`.
**CHECKED**

## The lemma

**Lemma 2 (tree cover, PROVED).** Let layers 2, …, K be accepted as above. Let U be the set of cells left NOT
ESTABLISHED in layer K. Suppose every c ∈ U is a *tangent* cell: Q_c meets the closed unit ball in exactly one point
p_c, the nearest point of Q_c to 0, with ‖p_c‖² = 1 exactly. Suppose also that p_c lies in the box of some closed cell,
of any layer. Then every u with ‖u‖ ≤ 1 lies in the box of a closed cell.

*Proof.*
1. **Level 2.** Since layer 2 is exactly the level-2 cells meeting the ball, u lies in Q_c for some layer-2 cell c.
2. **Induction.** If c is closed, we are done. Otherwise c ∈ T, so the children of c that meet the ball are in the next
   layer, and u lies in one of them, since the children tile Q_c and the child containing u meets the ball. Repeat.
3. **Termination.** Either a closed cell is reached, or u lies in some c ∈ U.
4. **The tangent case.** The squared norm is strictly convex, so the only point of Q_c with ‖u‖ ≤ 1 is the nearest
   point p_c. Hence u = p_c, which lies in a closed cell by hypothesis.

∎

The auditor computes p_c and its squared norm in exact rationals, and searches all closed cells, of every layer, for
one containing p_c. **CHECKED**

**Theorem (PROVED, given the inherited certifier statement).** Suppose a tree for the original seed ball B passes the
auditor, and every closed sub-ball (including those closed by a rule) passes the Stage C preconditions. Then every H in B satisfies the certifier
statement, so every third basis completing (I, H/√6) gives a triple of known type, or there is none.

*Proof.* By Lemma 2 every u in the unit ball lies in a closed cell. By Lemma 1, θ₀ + Mth·r·u, which is H, lies in that
cell's sub-ball mod 2π. That sub-ball's record is certified, so the statement holds at H. ∎

## Notes

- **No result is promoted.** A NOT ESTABLISHED row only ever triggers refinement. A timeout counts as NOT ESTABLISHED.
  A missing, duplicated or unparsable row fails the audit.
- **Several accepted builders per layer** are allowed. The level-2 rows come from three versions of `split.py`, all
  constructing records the same way, and some rows also bind the Stage C guard. Level 3 comes from `split_mixed.py`
  (the collaborator's) or `split_select.py`; levels 4 and deeper from `split_select.py`. Lemma 1 is checked on every
  record whichever builder made it, so the builder's own correctness is not relied on for containment.
- **Tests.** `code/test_audit_select.py` runs the auditor on three real trees: 126 (levels 2–3), 491 (levels 2–4) and
  1601 (level 2, with classified sub-balls). It also runs eleven tampered copies, each of which must be refused for its
  stated reason, and a duplicate receipt that must be tolerated. Seven anchored-rule cases open one pattern of a
  closed level-3 row: a matching anchored receipt must close it again, and receipts with other colours, another
  checker, a negative margin, other frozen sources or another record must not. All pass with the repository's certifier sources: the binding IDs agree with rusty's, so the sources
  are byte-identical to the frozen commit.
