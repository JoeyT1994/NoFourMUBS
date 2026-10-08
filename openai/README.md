# The openai/math proof: key parts

**Source.** OpenAI, *The maximum number of mutually unbiased bases in dimension six*, preprint dated 24 September 2026; the execution it documents finished on 4 October 2026. It is in the openai/math repository under `preprints/The-maximum-number-of-mutually-unbiased-bases-in-dimension-six-September-24-2026/`. Their Lean development (`lean/docs/266.md`) formalises only the bound N(6) ≤ 5 and Fourier vanishing, not the main theorem.

**Their theorem.** N(6) = 3, computer-assisted. The proof is conditional on IEEE binary64 arithmetic and stated compiler conditions (their Appendix A and §7.1). The lower bound N(6) ≥ 3 is a tensor-product construction (their Lemma 1.2).

This page summarises their argument in our language and marks what we take from it. Section and equation numbers refer to their preprint.

---

## Their pipeline

Write the second basis as H/√6 with H = e(P) a complex Hadamard matrix, where e(t) = exp(2πit) is applied entrywise.

| Stage | What it does | Key idea |
|---|---|---|
| **Seed cover** (§2) | Normalises H so that the row pair with the smallest maximal circular phase gap comes first. Its nine free phases (two rows and two columns) are then binned (N = 112) and the bins filtered by necessary vanishing-sum and gap tests. | **249,878 closed balls of radius 0.032** cover the nine seed phases of every Hadamard, up to equivalence. |
| **Stage A** (§3–4) | Completes each seed ball, splitting H as a 2+4 block. The upper-right block, and the conjugate transpose of the lower-left block, have fixed rank-2 kernel frames. The compressed 2×2 block Y satisfies ‖Y − √6·V‖ ≤ p, where V ∈ U(2) is its polar factor (their Lemma 3.2). | A **closed cover of U(2)** plus Taylor bounds turns every seed ball into finitely many certified *Records*. A Record is a centre P, a tangent matrix T (k ≤ 10 columns), and a normal-displacement bound n(s) = n₀ + ιs + Γs². |
| **Stage B** (§5) | Refines the Records to a smaller radius, in passes (τ, w) = (0.07, 0.013) → (0.016, 0.005), with a fallback at (0.011, 0.0038). | An exhaustive grid in **tangent coordinates**, plus the residual normal bound. It never parametrises the Hadamard locus: the tangent coordinates only organise the search, and the normal estimates control the other directions. |
| **Stage C** (§6) | Excludes two further bases on each Record. | See the next section. |
| **Execution** (§7) | 100 native invocations, 4 Oct 2026, **4,470 s wall time** with up to 16 workers. | 22,379 fine Records. Of these, 163 hit the graph-step cap and were resolved by the fallback. Zero unresolved records. |

## Stage C, the part we use

Fix a Record, that is, a ball of Hadamards e(P + δ) with ‖δ‖ ≤ r.

1. **Vector bins.** Each vector unbiased to I has the form e(β)/√6. Bin its five free phases at resolutions 12 → 24 → 48 → 96, and keep a bin only if it passes necessary unbiasedness tests against every column of the Hadamard. These tests share the Hadamard's single tangent displacement η (Lemmas 6.2, 6.3).
2. **Labels.** Compress the surviving bins into closed vector balls of radius s < 0.1 (Lemma 6.4). Two vectors in one such ball are neither orthogonal nor unbiased (Lemma 6.5). So the twelve vectors of two further bases occupy **twelve distinct labels**.
3. **Graphs.** Join two labels by an **O** edge (or a **U** edge) unless necessary tests exclude orthogonality (or unbiasedness). There are direct tests and a joint test that keeps the common tangent variable (Lemmas 6.6, 6.7).
4. **Exclusion.** Two further bases require two disjoint 6-cliques A and B in O with A × B ⊆ U, i.e. all 36 cross edges in U (eq. 6.24). An exact bitset clique search shows that no such pair exists (Lemma 6.8).

This is the exclusion we use, in the following places:

| Theirs | Ours |
|---|---|
| Stage C on a Record ball | [`ProvenResults/CommonRays/ClusterCover`](../ProvenResults/CommonRays/ClusterCover/PROOF.md): capacity-one labels and the O/U clique search, applied to Taylor-model enclosures of our reconstructed H₊ on seed cells |
| Stage C at one fixed centre | [`ProvenResults/FourierNeighbourhood/ClusterTube`](../ProvenResults/FourierNeighbourhood/ClusterTube/README.md): one 48-label configuration, which excludes the whole 1/30 projector tube around F6 |
| Stage B (tangent coordinates and normal bound) | [`simplerproof/widetube`](../simplerproof/widetube/PROOF.md): exact normal form at F6, n = −K(Φ(v + n) − J(v + n)) with KJ = P_N, and Krawczyk cells in the 4 tangent coordinates. This gives the 0.075 tube |

## How the two proofs differ

| | openai/math | Ours |
|---|---|---|
| Seed | Nine phases of two rows and two columns (a 9-dimensional cover) | One maximal 3×3 corner, θ ∈ T⁴ |
| Completion | Searched (U(2) cover, Stage A); uses no classification | Explicit sheets H± from the classification (MC1–MC5) |
| Degenerate loci | None: the search never parametrises the locus | R → 0 and side branch points (§4 of [`PROOF.md`](../PROOF.md)), which carry most of our cost |
| Arithmetic | binary64 with explicit one-sided margins, plus compiler and platform conditions | Arb, IntervalArithmetic.jl and exact rationals |
| Size | About 1.2 h wall time | About 10⁵ core-hours; 45.7M branch-layer rows |

**What this means for us.** Their proof is cheap because it never solves for the matrix from a seed, so nothing degenerates. Our chart is 4-dimensional, but it pays for that at R → 0. The work in [`simplerproof/`](../simplerproof/README.md) imports their Stage-B idea at F6 (the wide tube) so that the degenerate loci can be dropped instead of certified.

## Citations

- They cite the classification paper (Cárdenes Wuttig–Tindall, arXiv:2608.18053) and say that it "leaves their MUB compatibility unresolved".
- They credit earlier work for the idea of covering unbiased vectors and testing compatible sextuples (their refs. [14, 15]).
