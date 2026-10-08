# C⁶ has no four mutually unbiased bases

**Theorem (computer-assisted).** There are no four mutually unbiased bases in C⁶.

This is the proof in our corner coordinates. Every step names its certificate. All 45,713,468 cells of the final branch-layer ledger ([`Verification/ledger_2026-10-07c`](Verification/ledger_2026-10-07c/README.md)) are closed by our own certificates, with 0 open and 0 delegated.

The proof combines two ideas:
- **our chart:** a Hadamard matrix is reconstructed from a single 3×3 corner ([classification](ClassificationPaper/README.md) and [minimal reconstruction](MinimalConstruction/README.md));
- **the Stage-C exclusion of the openai/math proof** ([`openai/`](openai/README.md)): cover the rays unbiased to the pair (I, H) by small labels, then search exhaustively for two further orthonormal bases.

The rest of the proof either places a seed in the chart or handles the few loci where the chart degenerates.

---

## 0. Setting

Suppose four MUBs exist. Rotate them so that one of them is I. A second is then H/√6 for an order-6 complex Hadamard H, and the pair (I, H) is a **quartet edge**.

**Corners and the invariant R.**
- Every 3×3 corner E of H has an invariant R(E) ≥ 0, a polynomial in the Gram moduli.
- M(H) denotes the largest R over the 400 corners.

**Square identity.** For H = [[A, B], [C, D]],

  R(A) = (2·Im q(B))²,  where q(B) = perm(B)·det(B)²/∏B_ij.

So the R of a corner is the square of a 48-term polynomial in the complementary block on the *same rows* ([`RouteC/averaging`](RouteC/averaging/REPORT.md)).

## 1. Reduction to one chart

- If H is equivalent to F6, it is not a quartet edge (§2, F6 tube).
- If H is Tao's matrix S6, it lies in no MUB triple (Brierley–Weigert; an independent check is in [`ExceptionalEndpoints/Tao`](ProvenResults/ExceptionalEndpoints/Tao/README.md)).
- Otherwise, let E be a corner of H with maximal R. Then R(E) > 0 by MC1.
- Dephase E to E(θ) = [[1,1,1],[1,a,b],[1,c,d]] with θ ∈ T⁴, and order it into the fundamental domain F.
- The completions of E(θ) are then the two matched sheets H± (MC2–MC5). These are explicit: z± = (χ ± i√R)/2g, the side constructor, and D = −CWB/g.

It therefore suffices to prove the following for every θ in D₀ ∩ F, the set of seeds whose corner is maximal:

> **(Q)** No completion of E(θ) in which E is a maximal corner is a quartet edge.

Sources:
- the reduction: [`NumericalCampaign/REDUCTION.md`](NumericalCampaign/REDUCTION.md);
- MC1–MC5: [`MinimalConstruction/Proofs`](MinimalConstruction/Proofs/README.md), proved relative to the classification paper (arXiv:2608.18053).

## 2. The exclusion engine and the F6 tube

- **Cluster cover** ([`CommonRays/ClusterCover`](ProvenResults/CommonRays/ClusterCover/PROOF.md)). On a cell of seeds:
  - enclose H₊;
  - cover every ray unbiased to both I and H₊ by labels of capacity one;
  - show by exhaustive graph search that no two disjoint orthogonal 6-cliques are mutually unbiased.

  Then (Q) holds on the cell.
- **F6 tube** ([`FourierNeighbourhood/ClusterTube`](ProvenResults/FourierNeighbourhood/ClusterTube/README.md)). The same idea with one fixed configuration of 48 labels shows that no quartet edge lies within column-projector distance 1/30 of the F6 orbit. The proof uses an integer cover of 7,485,187 nodes and no reconstruction inputs.

## 3. Where the chart is regular

D₀ ∩ F occupies about 8.9·10⁻⁵ of T⁴.
- Cells outside it are discarded by rigorous Taylor-model tests: the F order, R < 0, or some corner of H₊ beating E. FastTM soundness is in [`FastTMInvariant`](ProvenResults/FastTMInvariant/README.md) and [`CertificateArithmetic`](ProvenResults/CertificateArithmetic/README.md).
- Every remaining cell on which H₊ has a Taylor model receives a cluster cover: 8.65M work cells at half-width π/512, audited exactly ([`NumericalCampaign`](NumericalCampaign/README.md)).

## 4. Where the chart degenerates

The chart fails where its radicals branch: at R → 0, and at the branch points of the side constructor. Cells there form the **branch layer**: 45,713,468 post-E rows after the side-triple prune ([`CornerBounds/SideTriplePrune`](ProvenResults/CornerBounds/SideTriplePrune/README.md)). Three loci remain, and each is closed by one idea.

| Locus | Idea | Certificate |
|---|---|---|
| **Corner seeds of F6**: classes (2,4,4,2), (0,0,2,4) and (1,2,2,4) | Near F6, either the matrix is in the tube or a different corner beats E | (2,4,4,2): a punctured 1/40 ball ([`Patch2442Local`](ProvenResults/Patch2442Local/Radius025Complete/PROOF.md)). (0,0,2,4): a structure lemma plus a certified cover of the seed continuum ([`seed0024`](RouteC/band/seed0024/PROOF.md)). Elsewhere, residual and side lifts into the 1/30 tube |
| **The R = 0 curve** of symmetric corners running out of the F3 seeds | The corner is far from maximal there | **Band certificate** ([`RouteC/band`](RouteC/band/REPORT.md), 6,370 boxes). It is reconstruction-free: over all side labels it never solves D = −CWB/g for a sheet, and it shows that every completion has a corner with R > sup R(E). Signed-mean and PSD maximality certificates ([`SymmetricSignedCornerPrune`](ProvenResults/SymmetricSignedCornerPrune/README.md), [`SignedCornerPSDPrune`](ProvenResults/SignedCornerPSDPrune/README.md)) cover the rest of this layer |
| **The shoulder**: 5 ≤ R < 20, class (1,2,2,4) | Genuine maximal seeds with small R, handled by cluster covers on refined cells | Frontier passes of [`ActiveShoulderClosure_v2`](ProvenResults/ActiveShoulderClosure_v2/README.md) (42.7M rows) |

The ledger ([`07c`](Verification/ledger_2026-10-07c/README.md)) assigns a certificate to every post-E row.

**Conclusion.** No Hadamard matrix is a quartet edge, so four MUBs in C⁶ do not exist. ∎

---

## Trust boundary

**Arithmetic.**
- Every acceptance is an exact rational test or an outward interval test (Arb, IntervalArithmetic.jl, TaylorModels).
- Floating-point searches only propose; Arb replays decide.
- Every certificate's inputs are hash-pinned (`INPUTS.json`, `MANIFEST.sha256`).

**Imported results.**
- The classification paper, for MC1–MC5.
- Brierley–Weigert, for Tao's S6.

**Awaiting an independent read.**
- The exact identity R(A) = (2·Im q(B))².
- The local theorem at F6, [`PRACTICAL_LOCAL.tex`](simplerproof/averaging_lemma/PRACTICAL_LOCAL.tex). Its exact verifier passes. It is used only for the 36 (0,0,2,4) seed boxes.

## A shorter proof

The expensive parts of §3–§4 all lie in the shell just outside the 1/30 tube. [`simplerproof/`](simplerproof/README.md) removes them:
- the F6 tube is widened to d_F ≤ 0.075;
- a local lemma is proved: ν(H) ≤ 0.55 and M < 26 imply that H is not a quartet edge (ν is the smallest horizontal phase norm to F6; d_F ≤ 0.0913 suffices).

Both are certified and replayed. One statement remains open: **M(H) < 26 ⇒ ν(H) ≤ 0.55.**

**The atlas route (8 Oct 2026), which replaces that open step.** [`simplerproof/atlas/`](simplerproof/atlas/README.md) follows the openai/math architecture in our coordinates: a finite atlas of intrinsic Records, with Stage C on each.

Its global input is now **proved**; see [`simplerproof/coverage/`](simplerproof/coverage/README.md).
- The positive local maxima of R are exactly one 18-point orbit, at α(1, 2, −1, −2) with α = arccos(1/4), where R = 3¹³/2¹². The proof is exact algebra.
- Relative to MC1–MC5, the non-Tao quotient (𝓗/≅) ∖ {[Tao]} is connected.

So any nonempty finite atlas whose boundary transfers are certified covers every non-Tao class. What remains is to build and certify that atlas.
