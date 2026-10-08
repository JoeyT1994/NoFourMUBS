# Their architecture in our coordinates: an intrinsic atlas

**Why the corner-chart proof is expensive and the openai/math proof is cheap (8 Oct 2026).**
- openai/math certify in the matrix's own coordinates. Each Record is a centre, a tangent frame and a normal bound.
- We certified in the four corner phases θ, through the radical map θ ↦ H₊(θ).
- That map is a projection of the Hadamard set. It folds at R = 0, where the two sheets H± meet, and near the r ≈ 0 slabs H moves at over 100 per radian.
- The maximal-corner reduction then forces us onto those folds near F6. This is what produced the branch layer, the shoulder and the confinement step.

**Key measurement** (`conditioning.py`, numerical). Let J be the Jacobian of the Hadamard constraints in horizontal phase coordinates, with Φ(u) the off-diagonal entries of (H∘e^{iu})(H∘e^{iu})*.

| Points | Count | Rank J | Smallest nonzero singular value |
|---|---:|---:|---|
| Random Hadamards | 2,476 | 21 (tangent dimension 4) | 1.7321 to 2.43 |
| Tao | 524 | 25 (isolated) | 3/√2 = 2.1213 |
| Fold points of the seed chart | | 21 | √3 |
| Shoulder | | 21 | √3 |
| Critical point at M = 205.4 | | 21 | 1.904 |

The minimum √3 is exactly the value at F6.

**Conjecture (uniform conditioning).** For every order-6 Hadamard, every nonzero singular value of J is at least √3. The rank is 21, except at Tao, where it is 25.

With the global bound ‖Φ″[w, w′]‖ ≤ 2^{3/2}‖w‖‖w′‖, every point would then carry a normal-form chart of the same contraction radius, about 0.6 in phase norm, exactly as at F6 (`../widetube`).

## Coverage: proved (8 Oct)

Both coverage-handoff returns replay with exact acceptance; see `../coverage/README.md`.
- Claim A holds: one orbit of maxima, R* = 3¹³/2¹².
- X = (𝓗/≅) ∖ {[Tao]} is connected.

So steps 2 and 3 of the plan below reduce to a single condition: **a nonempty finite set of ball Records, each of whose boundary Hadamards has an interior representative in some Record.** For ball Records this is a 4-dimensional tangent-shell certificate (`COVERAGE.md`, the boundary-transfer lemma). One-seed-per-component is no longer needed, nor is closure under conjugation and transposition.

## Plan

1. **Records.** Generalise the wide-tube normal-form engine from F6 to arbitrary rational centres H₀.
   - Use Krawczyk cells in the four tangent coordinates.
   - Use an approximate pseudo-inverse K on the normal space, certified by ‖I − K J_N‖ < 1.
   - Run the per-cell Stage C (`../widetube/reference.py`, which already accepts general references).
2. **Coverage, from our classification.** Let U be the union of certified Records.
   - Check that every certified cell meeting a Record's boundary sphere lies inside another Record. Then U ∩ 𝓗 is open and closed in the Hadamard set 𝓗.
   - Each component of the seed set {R > 0} maps continuously into 𝓗 through H₊, taken up to equivalence (branch changes act by permutations).
   - So one representative seed per component, landing in U, puts all of H₊({R > 0}) inside U.
   - By MC5, that is every non-F6, non-Tao class. F6 is covered by the wide tube; Tao is excluded by Brierley–Weigert.
3. **No maximal-corner domain and no confinement lemma.** The proof is: Records cover 𝓗, and Stage C excludes a quartet edge in each Record.

Expected cost: wide-tube scale (1.7 CPU-hours for the whole 0.45 ball at F6) times the number of Records.

## Pilot (8 Oct): one Record at a fold point of the seed chart

The centre is `centre_fold52.json`, a Hadamard with M ≈ 74. It sits on the R ≈ 0 fold where the seed-coordinate classifier never converged.

| Quantity | Value |
|---|---|
| Tangent dimension | 4 |
| Smallest normal singular value | √3 |
| Certified ‖K‖ | ≤ 0.731 |
| ‖P_N − K J P_N‖ | 0 (to float precision) |
| Contraction radius | ≈ 0.40, with the base-independent bound ‖Φ″‖ ≤ 2√3 |

Three random cells of half-width 0.006 at ‖u‖ ≈ 0.08–0.09 gave:
- enclosure radius e ≈ 0.0019;
- column error δ ≈ 0.0048, against a Stage-C limit of 0.025;
- Stage C passed in every case (48 rays, τ = 1/24, about 6.9M integer nodes, about 7 s per cell).

So the fold is an ordinary point in intrinsic coordinates, and the full Record pipeline certifies there exactly as at F6.

**Next steps.**
1. Tune the cell size: δ has a 5× margin.
2. Measure Records per unit volume of the quotient 𝓗/≅.
3. Write the coverage argument (open and closed in 𝓗, plus one seed per component of {R > 0}).

## Vector-bin Stage C (`stagec.py`, 8 Oct; pilot in floating point)

This is a port of openai/math §6. It has four parts:
- **Bins.** Closed bins in five vector phases at resolutions 12, 24, 48 and 96. Bins are dropped by Lemma 6.2 (6.7), the scalar second-order test (6.12) and the tangent-aware test (6.11).
- **Labels.** Retained bins are compressed into balls of radius below 0.1 cycles.
- **Edges.** The direct tests (6.16) plus the second-order support tests (6.20) and (6.21).
- **Search.** An exact bitset search for two disjoint O-6-cliques with all 36 cross U-edges.

**Results at the fold centre** (normal bound 0.0005 cycles; label radius 0.042):

| Tangent radius r_H (cycles) | Bins kept | Labels | Result | Time |
|---|---:|---:|---|---|
| 0.002 | 607 | 48 | pass | 0.17 s |
| 0.005 | 1,499 | 48 | pass | 0.23 s |
| 0.010 | 4,440 | 49 | pass | 0.50 s |
| 0.016 | 13,050 | 84 | fail; needs the joint test (6.23) | 0.9 s |

Without the tangent test, cells pass only up to radius 0.002 cycles. Compared with the integer ray cover (7 s per cell at radius about 0.03 rad), cells are about 19× larger and 14× faster: a cost reduction of about 250×.

**Next steps.**
1. Record design, as in their Stage B. Each atlas cell gets its own centre P (an approximate root), a numerical orthonormal tangent frame T, and a normal bound ν ≤ n₀ + ι‖η‖ + Γ‖η‖², obtained from the contraction with ‖Φ″‖ ≤ 2√3 and ‖J_N⁺‖ ≈ 1/√3. This needs no Krawczyk grid inside the cell.
2. Rigour. Use Arb-certified tables for e(u) at bin midpoints (finitely many values) and for e(−P); then a float error analysis of the remaining basic operations gives explicit margins, as in their Appendix A.
3. Port the joint test (6.23) to reach r_H of about 0.016.

## Ball Records across centres (`ballrecord.py`, 8 Oct)

Each test is one ball of radius R = 0.063 rad around the centre, with the normal bound certified in Arb (σ ≥ 1.70 at every centre) and Stage C taking rigorous inputs. Each ball takes about 0.45 s.

| Centre | Result |
|---|---|
| F6 | pass |
| Shoulder | pass |
| Fold point (M ≈ 74) | pass |
| Random Hadamards with M = 84, 190, 208, 219, 228 | pass |
| One random Hadamard with M = 228 | **fail** (56 labels, 4,616 bins) |

The failing centre needs a smaller R or the joint test (6.23). The atlas driver will choose R adaptively per centre.
