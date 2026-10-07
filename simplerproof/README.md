# A short proof that C⁶ has no four MUBs

This folder builds the short, human-readable proof. It points to every result the proof uses and records the status of each step. The long proof of record (the full campaign) is mapped in [`../PROOF_MAP.md`](../PROOF_MAP.md). It stays as an independent check.

**Design rule.** Prove nothing harder than "no four MUBs". The only computational statement on the critical path is the MUB exclusion itself. The 400-corner comparison is used only as a normalization: a cheap prune in the region where it is trivially robust, never fought on a degenerate locus.

## The proof

**Setup.** Suppose four MUBs exist. Rotate so that one of them is the standard basis I. A second basis is then H/√6 for an order-6 complex Hadamard matrix H.

| Step | Statement | Status | Where |
|---|---|---|---|
| 1. F6 tube | No quartet edge lies within column-projector distance 1/30 of the F6 orbit. | ✅ proved; integer cover plus graph, no reconstruction inputs | [`ProvenResults/FourierNeighbourhood/ClusterTube`](../ProvenResults/FourierNeighbourhood/ClusterTube/README.md) |
| 2. Averaging lemma | If H is not within 1/30 of the F6 orbit, some 3×3 corner of H has R ≥ c₀ (target c₀ = 5; conjectured sharp value 144 sin²(6 arcsin 1/30) ≈ 5.69). | ⏳ identity and local law proved exactly; global constant numerical | [`../RouteC/averaging/REPORT.md`](../RouteC/averaging/REPORT.md), [`HANDOFF_averaging_lemma.md`](HANDOFF_averaging_lemma.md) |
| 3. One chart | Take E to be a corner of H with maximal R, so R(E) ≥ c₀. Order it into F. Every completion of E(θ) is one of finitely many explicit pairings: the matched sheets H₊ and H₋, or Tao's exceptional completion, which [BW] excludes. The reconstruction is well conditioned because R ≥ c₀ > 0. | ✅ MC1–MC5, relative to the classification paper | [`MinimalConstruction/Proofs`](../MinimalConstruction/Proofs/README.md), [`NumericalCampaign/REDUCTION.md`](../NumericalCampaign/REDUCTION.md) |
| 4. MUB exclusion | Cover Ω = F ∩ {R ≥ c₀} by cells. Each cell either holds no maximal-corner seed (a cheap prune: sup R < c₀, or some corner of H₊ beats E) or passes the cluster-cover certificate. | ⏳ prototype running | [`ProvenResults/CommonRays/ClusterCover`](../ProvenResults/CommonRays/ClusterCover/PROOF.md), [`step4/`](step4/) |
| 5. Conclusion | Every H is excluded by Step 1 or Step 4. ∎ | | |

**The cluster-cover theorem used in Step 4.** Cover every ray unbiased to I and H by labels, each of capacity one, meaning |x*y|² > 1/6 inside a label. Then search the orthogonality and unbiasedness graphs exhaustively for two disjoint 6-cliques with every cross pair an unbiasedness edge. If no such pair exists, no two further bases fit. This is the same idea as Stage C of openai/math.

## Key new facts behind Step 2

These are recorded in `RouteC/averaging/`.

**The identity.** For a 3×3 phase matrix B, let q(B) = perm(B)·det(B)²/∏B_ij. For any Hadamard H = [[A, B], [C, D]], **R(A) = 4(Im q(B))² = R(D)**. Hence
Σ_c R_c(H) = 4 Σ_B (Im q(B))², an explicit sum of squares (exact).

**Local law at F6.** The Hadamard set is a smooth 4-manifold at F6, and Σ_c R_c = 15552·d² + O(d³), the same in every direction (exact). Moreover max_c R_c ≥ 216·d² to first order.

**Extremal curve.** Along F6^(2)(a, −a), max_c R = 144 sin²(3a) exactly. Across 13,405 samples, nothing falls below this curve.

## Expected size

**Volume of Ω.** At c₀ = 5, Ω is about 4.2·10⁻³ of T⁴, roughly 1.1·10⁶ level-7 cells. Most of these should exit by the cheap prune.

**Expected exclusions.** Maximal-corner seeds occupy D₀ ∩ F ∩ {R ≥ 5}, about 9·10⁻⁵ of T⁴. That gives roughly 2·10⁴ cluster-cover certificates at level 7 (~1,000 s each). For comparison, openai/math reports 22,379 balls.

**Measured so far.** Single level-7 cells certified 10 out of 10 (`../RouteC/results/coarse_cells_2026-10-07.txt`). The Step 4 prototype measures the real split between prunes and covers.

## Open items

1. **Step 2, global constant.** Either an analytic quantitative MC1 (see the handoff) or a certified computation on the band 0 < R < c₀ outside the F6 tube. The computational route is prototyped in [`../RouteC/band/`](../RouteC/band/).
2. **Step 4 production.** Size the run from the prototype, then run it.
3. **Tao input.** Settle the citation: [BW, §4.1] versus the local `ExceptionalEndpoints/Tao` packet.
4. **Write-up.** The draft is at [`../paper/`](../paper/).

## References

- [BW] S. Brierley, S. Weigert, PRA 79 (2009) 052316, arXiv:0901.4051, §4.1.
- [JMMSW] P. Jaming et al., J. Phys. A 42 (2009) 245305, arXiv:0902.0882, Thm 1.4 (needed only if Step 1 is replaced).
- [CT] M. Cárdenes Wuttig, J. Tindall, arXiv:2608.18053 (classification).
