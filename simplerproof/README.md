# A short proof that C⁶ has no four MUBs

**Status, 7 Oct 2026 evening.**
- **The long proof of record is closed.** Ledger [`07c`](../Verification/ledger_2026-10-07c/README.md) closes all 45,713,468 post-E rows with our own certificates: 0 open, 0 delegated. The last 36 rows, at the (0,0,2,4) seeds, are closed by [`RouteC/band/seed0024`](../RouteC/band/seed0024/PROOF.md); the collaborator independently added an analytic + Lean route for the same boxes.
- **The short proof below still needs one statement:** the global part of Step 2, M(H) < c₀ ⇒ H lies in the local neighbourhood of F6.

**New, 8 Oct.**
- **Wide F6 tube, certified:** no quartet edge within d_F ≤ 0.075 (radius 2.25 times 1/30).
- **Local lemma, certified:** if d_F ≤ 0.0914 and M < 26, then H is not an edge.

The short proof now needs only **global confinement: M(H) < 26 ⇒ d_F(H) ≤ 0.0914.** See [`widetube/PROOF.md`](widetube/PROOF.md).

**The proof is [`PROOF.md`](PROOF.md):** the complete proof in our corner coordinates, with the Stage-C exclusion engine.

**Why the c₀ = 5 shortening is not simpler, measured 7 Oct.**

| Part of the work | Size, or share removed by the R ≥ 5 cut |
|---|---|
| Step 4 restricted to R ≥ 5 | about 10⁵ core-h, the same as the main campaign's regular part |
| Branch layer removed by the cut | about 13 % |
| Proving Step 2 through the chart | F ∩ {0 < R < 5} ≈ 3.1·10⁻⁴ of T⁴, about 21M level-9 cells, the same order as what it removes |

**Tested 7 Oct: the band certificate as a coarse prune.** It fails on 6 of 6 generic level-7 cells of Ω (min_rad within 30–300 s), because its target is sup R(E) over the whole cell. A per-sub-box target would be needed, and the Taylor-model D₀ prune already does that.

So the only real lever is the near-F6 shell 1/30 < d_F ≲ 0.07, i.e. a wider tube with c₀ ≈ 20. That needs both an F6-centred cover and the global lemma at c₀ = 20, and both are open research.

This folder builds the short, human-readable proof. It points to every result the proof uses and records the status of each step. The long proof of record (the full campaign) is mapped in [`../PROOF_MAP.md`](../PROOF_MAP.md). It stays as an independent check.

**Design rule.** Prove nothing harder than "no four MUBs". The only computational statement on the critical path is the MUB exclusion itself. The 400-corner comparison is used only as a normalization: a cheap prune in the region where it is trivially robust, never fought on a degenerate locus.

## The proof

**Setup.** Suppose four MUBs exist. Rotate so that one of them is the standard basis I. A second basis is then H/√6 for an order-6 complex Hadamard matrix H.

| Step | Statement | Status | Where |
|---|---|---|---|
| 1. F6 tube | No quartet edge lies within column-projector distance 1/30 of the F6 orbit. | ✅ proved; integer cover plus graph, no reconstruction inputs | [`ProvenResults/FourierNeighbourhood/ClusterTube`](../ProvenResults/FourierNeighbourhood/ClusterTube/README.md) |
| 2. Averaging lemma | If H is not within 1/30 of the F6 orbit, some 3×3 corner of H has R ≥ c₀ (target c₀ = 5; conjectured sharp value 144 sin²(6 arcsin 1/30) ≈ 5.69). | ⏳ identity, local law, Fourier families and the 3/10 neighbourhood of F6 proved; global constant open | [`../RouteC/averaging/REPORT.md`](../RouteC/averaging/REPORT.md), [`HANDOFF_averaging_lemma.md`](HANDOFF_averaging_lemma.md) |
| 3. One chart | Take E to be a corner of H with maximal R, so R(E) ≥ c₀. Order it into F. Every completion of E(θ) is one of finitely many explicit pairings: the matched sheets H₊ and H₋, or Tao's exceptional completion, which [BW] excludes. The reconstruction is well conditioned because R ≥ c₀ > 0. | ✅ MC1–MC5, relative to the classification paper | [`MinimalConstruction/Proofs`](../MinimalConstruction/Proofs/README.md), [`NumericalCampaign/REDUCTION.md`](../NumericalCampaign/REDUCTION.md) |
| 4. MUB exclusion | Cover Ω = F ∩ {R ≥ c₀} by cells. Each cell either holds no maximal-corner seed (a cheap prune: sup R < c₀, or some corner of H₊ beats E) or passes the cluster-cover certificate. | ⏳ measured: about 10⁵ core-h in θ-cells (see below); cite the main campaign instead | [`ProvenResults/CommonRays/ClusterCover`](../ProvenResults/CommonRays/ClusterCover/PROOF.md), [`step4/`](step4/) |
| 5. Conclusion | Every H is excluded by Step 1 or Step 4. ∎ | | |

**The cluster-cover theorem used in Step 4.** Cover every ray unbiased to I and H by labels, each of capacity one, meaning |x*y|² > 1/6 inside a label. Then search the orthogonality and unbiasedness graphs exhaustively for two disjoint 6-cliques with every cross pair an unbiasedness edge. If no such pair exists, no two further bases fit. This is the same idea as Stage C of openai/math.

## Key new facts behind Step 2

These are recorded in `RouteC/averaging/`.

**The identity.** For a 3×3 phase matrix B, let q(B) = perm(B)·det(B)²/∏B_ij. For any Hadamard H = [[A, B], [C, D]], **R(A) = 4(Im q(B))² = R(D)**. Hence
Σ_c R_c(H) = 4 Σ_B (Im q(B))², an explicit sum of squares (exact).

**Local law at F6.** The Hadamard set is a smooth 4-manifold at F6, and Σ_c R_c = 15552·d² + O(d³), the same in every direction (exact). Moreover max_c R_c ≥ 216·d² to first order.

**Extremal curve.** Along F6^(2)(a, −a), max_c R = 144 sin²(3a) exactly. Across 13,405 samples, nothing falls below this curve.

## Measured cost structure (7 Oct 2026)

**Step 4 in θ-coordinates is not small.** The runs were on rusty, in `simplerproof_step4/` (`step4_prod.jl`, then `step4_l7.jl`).

| | c₀ = 20 | c₀ = 5 |
|---|---|---|
| Level-5 job cells meeting Ω | 76,588 | 76,588 |
| Finished as whole level-5 cells | 30,882 (19,180 covers; 68 timeouts) | 18,860 (6,523 covers) |
| Level-7 cells left after the cheap prune | 3,341,808 | 4,398,736 |
| Level-7 cells finished before the stop | 72,599: mean ≥ 5.6 s, 5.2 % need covers, about 2.7 % take > 45 min | 47,876: mean 8 s; singular cells persist to level 11 |

- **Extrapolated cost at c₀ = 20:** about 10⁵ core-hours and about 2·10⁵ covers. The runs were stopped.
- **Where the time goes:** proving cell by cell that E is not the maximal corner, because Ω is about 45× larger than D₀. Step 4 is then essentially the main campaign's regular part (8.65M certified work cells) restricted to R ≥ c₀, so it duplicates certified work.

**The branch layer is dominated by the band 5 ≤ R < 20.** This is a float survey of the 45,713,468 post-E rows, taking max R(E) over each box's centre and 16 vertices. It is an estimate, not a rigorous bound.

| max R(E) on the box | Rows |
|---|---:|
| < 0 | 0.10M |
| 0 to 1 | 2.78M |
| 1 to 5 | 2.92M |
| **5 to 20** | **38.37M** (all class (1,2,2,4), the "shoulder") |
| ≥ 20 | 1.54M |

**Conclusion.** A maximal corner with 5 ≤ R < 20 means the whole matrix has max R < 20. On the extremal curve max R = 144 sin²(6 arcsin d_F), which puts it at d_F ≲ 0.065 from F6. The expensive part of both proofs, the 42.7M frontier rows and Step 4's straddling cells, is therefore the near-F6 shell 1/30 < d_F ≲ 0.07.

**Recommended shape of the short proof.**
- **Step 1′.** Widen the F6 tube to d_F ≤ 0.07. This needs an F6-centred cover, where the chart is smooth and well conditioned (the openai-style Stage C near F6). The single-configuration ClusterTube saturates just above 1/30.
- **Step 2′.** Prove the averaging lemma with c₀ = 20 at d_F ≥ 0.07. The sharp value there is about 24, so the margin is about 20%.
- **Effect.** About 97% of the branch layer and all near-F6 straddling cells drop out (measured: with c₀ = 20 the persistent singular cells resolve by level 10). What remains is D₀ ∩ F ∩ {R ≥ 20} plus 1.5M branch rows, all already certified by the main campaign.

## Roadmap for the wider tube (Step 1′), 7 Oct

1. **Ray structure (measured, `step4/nearF6rays.py`).** References K on the Fourier families near F6 (a, b ≤ 0.12) keep exactly 48 rays unbiased to (I, K). These include 144–168 exactly orthogonal pairs and 8 orthogonal 6-cliques. So the ClusterTube exclusion, with labels around the 48 rays and a compatibility-graph check, applies per reference.
2. **Covering.** If d_F(H) ≤ r, then H ≅ F ∘ e^{iu} with ‖u‖_F ≲ 6r.
   - The local theorem (`PRACTICAL_LOCAL`, ‖u‖ ≤ 0.3) puts H within (3/8)s⁴ of an explicit cubic surface u₃(v).
   - References F ∘ e^{iu₃(v_i)} at projector spacing ≈ 1/30 then cover the tube. That needs roughly 20–100 references, each one ClusterTube-size certificate.
   - ClusterTube needs no Hadamard reference, only the transfer estimate.
3. **What this gives.**
   - With ρ = 0.3, the reachable tube radius is r ≈ 0.05.
   - The shoulder extends to d_F ≈ 0.065, which needs ρ ≈ 0.4. So the local theorem must be extended before the shoulder (42.7M frontier rows) can be replaced by seed lifts into the tube.

## Open items

1. **Step 2, global constant.** In progress in [`averaging_lemma/`](averaging_lemma/), which a separate agent is writing. Proved so far:
   - the cutoff-5 implication within phase distance 3/10 of F6;
   - the sharp Fourier-family version;
   - a global version at a tiny explicit cutoff only.
2. **Choose (tube radius, c₀).** The measurements above favour (0.07, 20) over (1/30, 5). That needs Step 1′ (an F6-centred cover) and Step 2′.
3. **Step 4.** Cite the main campaign's certified work cells and ledger restricted to R ≥ c₀, rather than recomputing them.
3. **Tao input.** Settle the citation: [BW, §4.1] versus the local `ExceptionalEndpoints/Tao` packet.
4. **Write-up.** The draft is at [`../paper/`](../paper/).

## References

- [BW] S. Brierley, S. Weigert, PRA 79 (2009) 052316, arXiv:0901.4051, §4.1.
- [JMMSW] P. Jaming et al., J. Phys. A 42 (2009) 245305, arXiv:0902.0882, Thm 1.4 (needed only if Step 1 is replaced).
- [CT] M. Cárdenes Wuttig, J. Tindall, arXiv:2608.18053 (classification).
