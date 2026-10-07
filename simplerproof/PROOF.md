# C⁶ has no four mutually unbiased bases: the proof in corner coordinates

*Status: complete, 7 Oct 2026. Ledger [`07c`](../Verification/ledger_2026-10-07c/README.md) closes every cell, with 0 open and 0 delegated. A conditional shortening is given at the end.*

The proof uses two ideas:
- **our chart:** a Hadamard matrix is reconstructed from one 3×3 corner;
- **the exclusion of openai/math (Stage C):** cover the rays unbiased to the pair (I, H) by small labels, then search exhaustively for two further orthonormal bases.

Everything else either places a seed in that chart or handles the few places where the chart degenerates.

---

## 0. Setting

Suppose four MUBs exist. Rotate them so that one is I. A second is then H/√6, for an order-6 complex Hadamard H, and the pair (I, H) is a **quartet edge**.

**Corners and the invariant R.** Every 3×3 corner E of H has an invariant R(E) ≥ 0, a polynomial in the Gram moduli. Let M(H) be the largest R over the 400 corners.

**Square identity.** For H = [[A, B], [C, D]], R(A) = (2·Im q(B))², where q(B) = perm(B)·det(B)²/∏B_ij. A corner's R is therefore a perfect square of a 48-term polynomial in the *same-row* complementary block (`RouteC/averaging`).

## 1. Reduction to one chart

- If H is equivalent to F6, it is not a quartet edge by the F6 tube (§2). If H is Tao's S6, it is excluded by Brierley–Weigert.
- Otherwise, take E to be a corner of H with maximal R. MC1 gives R(E) > 0.
- Dephase E to E(θ) = [[1,1,1],[1,a,b],[1,c,d]] with θ ∈ T⁴, and order it into the fundamental domain F.
- The completions of E(θ) are then the two matched sheets H± (MC2–MC5). They are given explicitly by z± = (χ ± i√R)/2g, the side constructor, and D = −CWB/g.

So it suffices to show the following for every θ in D₀ ∩ F, the set of seeds whose corner is maximal:

> **(Q)** No completion of E(θ) in which E is a maximal corner is a quartet edge.

Sources: [`NumericalCampaign/REDUCTION.md`](../NumericalCampaign/REDUCTION.md) and [`MinimalConstruction/Proofs`](../MinimalConstruction/Proofs/README.md). These are proved relative to the classification paper arXiv:2608.18053.

## 2. The exclusion engine (their Stage C) and the F6 tube

- **Cluster cover.** On a cell of seeds, enclose H₊. Cover every ray unbiased to I and H₊ by labels of capacity one. Show by exhaustive graph search that no two disjoint orthogonal 6-cliques are mutually unbiased. Then (Q) holds on the cell. See [`ProvenResults/CommonRays/ClusterCover`](../ProvenResults/CommonRays/ClusterCover/PROOF.md).
- **F6 tube.** The same idea, with one fixed configuration of 48 labels, shows that no quartet edge lies within column-projector distance 1/30 of the F6 orbit. See [`ClusterTube`](../ProvenResults/FourierNeighbourhood/ClusterTube/README.md).

## 3. Where the chart is regular

D₀ ∩ F is about 8.9·10⁻⁵ of T⁴.
- Cells outside it are discarded by rigorous Taylor-model tests: the F order, R < 0, and some corner of H₊ beating E.
- Every remaining cell where H₊ has a Taylor model gets a cluster cover. There are 8.65M such work cells at half-width π/512, audited exactly.

## 4. Where the chart degenerates: three loci

The chart fails where its radicals branch: where R → 0, and at the side-constructor branch points. Each locus is closed by one idea.

| Locus | Idea | Certificate |
|---|---|---|
| **Corner seeds of F6**, at classes (2,4,4,2), (0,0,2,4) and (1,2,2,4) | Near F6 the matrix is in the tube, or a different corner beats E. | 1/40 punctured ball at the (2,4,4,2) seeds ([`Patch2442Local`](../ProvenResults/Patch2442Local/Radius025Complete/PROOF.md)). (0,0,2,4) seeds: structure lemma plus certified cover of the seed continuum ([`seed0024`](../RouteC/band/seed0024/PROOF.md)). Residual and side lifts into the 1/30 tube near the Fourier boundary. |
| **The R = 0 curve** of symmetric corners running out of the F3 seeds | The corner is far from maximal there. | **Band certificate**: reconstruction-free. Over all side labels, D = −CWB/g is never solved for a sheet, and every completion is shown to have a corner with R > sup R(E) ([`RouteC/band`](../RouteC/band/REPORT.md), 6,370 boxes). Signed-mean and PSD maximality certificates cover the rest of this layer. |
| **The shoulder**, 5 ≤ R < 20, class (1,2,2,4) | Genuine maximal seeds with small R: cluster covers on refined cells. | Frontier passes of `ActiveShoulderClosure_v2` (42.7M rows). |

The branch-layer ledger ([`07c`](../Verification/ledger_2026-10-07c/README.md)) gives every one of the 45,713,468 post-E rows a certificate.

**Conclusion.** Every Hadamard is excluded as a quartet edge. ∎

---

## Trust boundary

**Arithmetic.** Every acceptance is an exact rational test or an outward interval test (Arb, IntervalArithmetic, TaylorModels). Float searches only propose; Arb replays decide.

**Imported results:**
- the classification paper, for MC1–MC5;
- Brierley–Weigert, for Tao's S6.

**Results added on 7 Oct that still need an independent read:**
- the identity R(A) = (2·Im q(B))², which is exact;
- the local theorem at F6 ([`averaging_lemma/PRACTICAL_LOCAL.tex`](averaging_lemma/PRACTICAL_LOCAL.tex)). Its verifier passes; it is used only for the 36 seed boxes.

---

## The shortening, conditional on one lemma

> **Averaging lemma (open).** If d_F(H) ≥ 1/30, then M(H) ≥ 5.

Given this lemma, §4 collapses. A maximal corner with R < 5 means the matrix is in the tube, so only seeds with R ≥ 5 remain, and none of the R → 0 loci is needed.

**What is proved:**
- the exact identity Σ_c R_c = 4·Σ_B (Im q(B))²;
- the sharp law on the Fourier families;
- the local theorem within phase distance 3/10 of F6.

**What is missing is the global confinement.** Strips with every corner R = 0 form two continuous families: a singular 3×3 minor, and geometric rows. Each needs a routing lemma with linear constants, like the one in [`seed0024`](../RouteC/band/seed0024/PROOF.md).

**What it would and would not remove.** Measured on the campaign data, the cut R ≥ 5 removes only about 13% of the branch layer. The bulk, 84%, is the shoulder 5 ≤ R < 20. A wider F6 tube (radius ≈ 0.07) with c₀ = 20 would remove about 97% ([`README.md`](README.md), measured cost structure).
