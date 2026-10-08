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
