# There are no four mutually unbiased bases in C⁶

*Draft, 7 October 2026. Joseph Tindall and collaborators; computational campaign assisted by Claude. Numbers marked ⟨…⟩ are filled from the final ledger when the run closes.*

## Abstract

We prove that C⁶ admits at most three mutually unbiased bases. The proof is computer-assisted. Every acceptance is an outward interval or exact rational test, and every certificate is replayed independently of the search that produced it.

The argument has two parts.

1. **A reduction.** It uses the authors' classification of complex Hadamard matrices of order six. Every candidate edge (I, H) of a quartet can be written as H₊(θ), an explicit reconstruction from a 3×3 corner seed θ ∈ T⁴. Moreover θ can be taken in a domain D₀ ∩ F of about 1/11,000 of the torus.
2. **An exclusion engine.** It covers every ray unbiased to I and H by capacity-one labels. An exhaustive orthogonality/unbiasedness graph search then rules out two further bases.

The corner chart degenerates on two loci: the boundary of the Fourier family, and a curve of symmetric corners with R = 0 through the stationary F3 seeds. We identify both and close them with dedicated certificates.

## 1. Introduction

**The problem.** Mutually unbiased bases (MUBs) are orthonormal bases {e_i}, {f_j} of Cᵈ with |⟨e_i, f_j⟩|² = 1/d. At most d + 1 of them exist, and d + 1 exist whenever d is a prime power. Dimension six is the smallest open case.

**Previous work.** Extensive numerical evidence suggests that only three MUBs exist in C⁶ (Brierley–Weigert; Raynal–Lü–Englert; Jaming–Matolcsi–Móra–Szöllősi–Weiner, JMMSW). The best previous rigorous upper bound came from excluding specific families:
- the Fourier family and its transpose [JMMSW, Thm 1.4];
- Tao's matrix S6, which is in no MUB triple [Brierley–Weigert §4.1].

**Concurrent work.** A concurrent manuscript (openai/math, 6 Oct 2026) claims the same theorem by a direct cover of the 36-phase space. It covers the space by about 2.2·10⁴ balls, then runs a vector-ball graph exclusion. Our proof is independent of it and uses a different chart. Its exclusion step, our §4, is the same idea: we first used it in our campaign on 28 September 2026.

**Theorem 1.** There are no four mutually unbiased bases in C⁶.

**Outline.**
- §2: the corner chart and the reconstruction.
- §3: the reduction to statement (Q) on D₀ ∩ F.
- §4: the exclusion engine.
- §5: the regular part of the cover.
- §6: the degenerate loci and their certificates.
- §7: the computation and the ledger.
- §8: the trust boundary and replay.

## 2. The corner chart

**Corner and seed.**
- A dephased complex Hadamard matrix H of order six (unit-modulus entries, HH* = 6I) has a top-left corner E = [[1,1,1],[1,a,b],[1,c,d]].
- Its seed is θ = (arg a, arg b, arg c, arg d) ∈ T⁴.

**The invariant R.**
- Let G_h = 6I − EE* and G_v = 6I − EᵀĒ, with off-diagonal entries s, t, r.
- Put X, Y, Z = |s|², |t|², |r|², p = X + Y + Z, J = 2 Re(s r t̄), g = 27 − 3p + J, η = 9 − p + J and χ = W − (p − 9)(p − 18) + (p − 15)J, where W = XY + XZ + YZ − XYZ.
- The corner invariant is R(E) = 4g²η − χ².
- R is invariant under row and column reorderings, transpose and conjugation.
- Every corner of a genuine Hadamard matrix has R ≥ 0. This follows from the complementary-corner square identity R(A) = −D(dephase B)².

**The reconstruction** [CT, §§2–3; `MinimalConstruction/RECONSTRUCTION.md`]. For R > 0 put z± = (χ ± i√R)/(2g).
- An explicit side constructor S(G, z) produces unimodular 3×3 blocks B = S(G_h, z₊) and C = S(G_v, z̄₊)ᵀ.
- The remaining block is D = −C E* adj(G_h) B / g.
- Together they give H₊(θ) = [[E, B], [C, D]], a complex Hadamard matrix.

The facts we use are listed in `MinimalConstruction/Proofs/README.md` as MC1–MC5. They are proved there relative to the classification paper [CT]:
- **MC1:** every non-F6 matrix has a corner with R > 0.
- **MC2:** strict corners have exactly two side orbits.
- **MC3:** the formula's divisors are nonzero on R > 0.
- **MC4:** matched completions are flat, and the only non-matched exceptions are Tao.
- **MC5:** positive-sheet coverage.

## 3. Reduction

Let F be the fundamental domain for orderings and transposition:

F = { θ : X_h ≥ Y_h ≥ Z_h, X_v ≥ Y_v ≥ Z_v, (X_h, Y_h, Z_h) ≥_lex (X_v, Y_v, Z_v) }.

Let D₀ be the strict maximal-corner domain:

D₀ = { θ : R(θ) > 0 and R(θ) ≥ R_c for all 400 corners c of H₊(θ) }.

D₀ ∩ F occupies about 8.9·10⁻⁵ of T⁴.

**Theorem 2 (reduction)** [`NumericalCampaign/REDUCTION.md`]. Suppose that

> (Q) for every θ ∈ D₀ ∩ F, the pair {I, H₊(θ)/√6} does not extend to four MUBs.

Then Theorem 1 holds.

*Proof sketch.*
1. Rotate a hypothetical quartet so that it contains I. A second member is then H/√6 for a complex Hadamard matrix H.
2. Extendability is invariant under monomial equivalence, conjugation and transpose.
3. If H is equivalent to the Fourier family or its transpose, apply [JMMSW, Thm 1.4]. If H is equivalent to S6, apply [BW, §4.1].
4. Otherwise, MC1 gives a corner with R > 0. Choose a corner of maximal R and order it into F.
5. MC5 and the sheet relation H₋(θ) ≅ conj H₊(θ̄) place the class at some H₊(θ′) with θ′ ∈ D₀ ∩ F. ∎

A seed θ is therefore closed in either of two ways:
- by **(Q) itself**;
- by **showing θ ∉ D₀**, which needs R(θ) ≤ 0 or a corner of H₊(θ) beating R(θ). Several certificates prove the stronger statement that *no* physical completion of E(θ) has E as a strict maximal corner. We call this the strict-D₀ form.

## 4. The exclusion engine

**Theorem 3 (cluster cover)** [`ProvenResults/CommonRays/ClusterCover/PROOF.md`].

*Setting.* Let X be a parameter set and H(θ), θ ∈ X, phase Hadamard matrices. Let C₁(θ), …, C_N(θ) be sets of flat unit rays ("labels") with three properties:
1. **Coverage:** every ray unbiased to both I and H(θ) lies in some label.
2. **Capacity one:** |x*y|² > 1/6 for all x, y in the same label.
3. **Pair enclosures:** an interval I_ab contains |x*y|² for every θ ∈ X, x ∈ C_a(θ), y ∈ C_b(θ).

*Graphs.* Put a ~_O b if 0 ∈ I_ab, and a ~_U b if 1/6 ∈ I_ab.

*Conclusion.* Suppose there are no two disjoint 6-sets V, W that are both O-cliques with every V–W pair a U-edge. Then no H(θ)/√6, θ ∈ X, extends with I to four MUBs.

*Proof.* Assign a covering label to each of the twelve columns of the two further bases. By capacity one, no two of these columns share a label. Hence the twelve labels form two disjoint O-cliques with all cross U-edges, a contradiction. ∎

**What the theorem does not need.** No root counting, regularity or nondegeneracy is used. Labels may be empty, may overlap, and may contain continua of rays.

**How labels are certified.** Phase boxes of half-width r < ½ arccos(¼) have capacity one by a sharp trigonometric bound [`SHARP_CAPACITY.md`]. Coverage is certified by outward-interval branch and bound over T⁵: a phase box is discarded only if some flatness equation |Σ_k H̄_kj v_k|² = 6 fails on the whole box × cell.

**Two numerical observations explain why the engine is robust.**
- For a generic Hadamard H, the pair (I, H) has about 48 common unbiased rays, and no two of them are orthogonal. Hence a generic pair does not even extend to a third basis.
- MUB quartets have a robust residual gap, so cells never have to approach a genuine solution.

## 5. The regular part of the cover

**Where H₊ is regular.** Away from R = 0 and the other branch loci, H₊ is analytic in θ. There it has a Taylor-model enclosure: FastTM, with outward remainders.

**The cover.**
- D₀ ∩ F is covered by dyadic cells of half-width π/512. Each enclosure is enlarged by 2⁻⁴⁰, so the enlarged cells provably tile T⁴.
- Cells provably outside D₀ ∩ F are discarded. Four tests do this: the F order, R < 0, radical-free corner bounds, and all 400 corners through the H₊ Taylor model.
- The remaining **8,652,805 work cells** are each certified by Theorem 3 (`cover_accelerated.jl`), with an exact audit PASS.

**Coarser cells are possible.** A test at half-width π/128, four times wider, certified 10 of 10 generic cells (median about 1,000 s per cell). This puts the regular part at about 10⁵ cells; see `RouteC/`.

## 6. The degenerate loci

The corner chart degenerates where the radical chain √R → side roots → cube roots → divisions loses its enclosure. These are the 14.4 million level-9 branch-layer cells. We found that two geometric loci carry essentially all of the difficulty.

### 6.1 Reconstruction-free prunes

**Side prunes** [`ProvenResults/CornerBounds/{SideColumnPrune,SideTriplePrune}`].
- Every physical completion has side columns with only two free phases. These columns satisfy the Gram identities v_j* adj(G) v_k = 0 and the moment equations.
- Cover the side-phase torus by boxes. A box is excluded when one of these holds:
  - it fails the Gram or moment identities;
  - it forces a competing corner with R = 64Q² > R(E);
  - no compatible triple of side columns exists.
- These prunes use no reconstruction and are valid across R = 0. They exclude 95.6% of the branch layer.

**PSD maximality** [`ProvenResults/SignedCornerPSDPrune`].
- Maximality forces f_l² ≤ R(E) for the three signed complementary-corner invariants. Hence the Hermitian pencils qG ± N must be positive semidefinite, with q = √R.
- An outward-negative principal minor therefore excludes the box, for all sheets, side permutations and orientations. Coupling the two orientations needs a whole-box guard against Tao corners.

### 6.2 The Fourier boundary

The Fourier family F6^(2)(a, b) is the locus where every corner has R ≤ 0, so maximal corners with small R accumulate there.

- **Theorem 4** [`FourierNeighbourhood/ClusterTube`]. No quartet edge lies within maximum column-projector distance 1/30 of the F6 monomial orbit. The proof uses an exhaustive integer cover with 7,485,187 nodes, then a projective-angle graph. It uses no reconstruction inputs.
- **Seed lifting** [`SeedLifting/RESIDUAL_LIFT.md`]. A seed box near S_F6 is closed if every physical maximal completion is shown to lie in that tube. This side cover, `residual_tube`, closes ⟨0.29M⟩ post-E rows.

### 6.3 The stationary F3 seeds and the symmetric R = 0 curve

The seeds θ* = (2,4,4,2)π/3 and (4,2,2,4)π/3 are stationary points of the chart.

**Theorem 5 (punctured ball)** [`Patch2442Local/Radius025Complete`].
- *Statement.* No physical order-six complex Hadamard has a corner E(θ) with 0 < R(E) = max_c R_c and 0 < ‖θ − θ*‖_∞ ≤ 1/40. At θ* itself R = 0, so the strict condition fails there.
- *Method.* The proof has three parts:
  - an elementary completion model with 94 residuals;
  - local contractions around 63 exact references;
  - a complete closed phase cover of 140,104 terminals, accepted by dyadic preconditioned combinations at Taylor degree 2 or 4.
- *Inputs.* No reconstruction inputs are used.

**The curve beyond the ball.** A one-parameter curve of symmetric corners (a = d, b = c) with R = 0 leaves each seed. On it, a side divisor P_j vanishes in every row and column order. Measured facts about it:
- the completions of E there form a continuum. The Jacobian of the Hadamard equations has exactly one vanishing singular value; the next is about 0.02;
- these matrices are far from F6 (d_F ≈ 0.4–0.7);
- they are far from maximal: R(E) ≈ 10⁻³ against R ≈ 100–260 for competing corners that use both halves of H.

The chart is ill-conditioned there: a change of θ by 10⁻⁴ moves the completion by up to 3 rad. This one curve is the reason the corner-chart proof is longer than a direct phase-space cover. It is closed in three steps:
1. The ball of Theorem 5 handles distances ≤ 1/40.
2. Beyond the ball, a factored signed-mean test [§6.4] handles most boxes.
3. On the remaining boxes, the signed-mean cover is combined with PSD leaves. PSD closes the degenerate nodes at subdivision depth ≥ 44–49, and every such certificate is replayed in full.

### 6.4 Signed-mean tests

**Signed mean** [`Patch2442Region_v3`; collaborator's factored signed-mean].
- Maximality forces the side means m_σ = (A + σB√R)/D to satisfy m_σ² ≤ R. Here D = 3|P₀P₁P₂|² and A, B are radical-free.
- The factored form keeps the linear forms A ± (B ± D)q and H± = A² − (B ± D)²R. It excludes signs with rational sign rules, with no division.
- These tests close ⟨0.16M⟩ (v3) and ⟨1,950,400 + tail⟩ boxes in the (2,4,4,2) region.

## 7. The computation

**The ledger.** It accounts for every cell and every row; see `PROOF_MAP.md` and `Verification/`.

| Part | Count | Certificate |
|---|---|---|
| Work cells (level 9) | 8,652,805 | Theorem 3 |
| Branch layer, pruned | 95.6% of 14.0M | §6.1 |
| Branch95 survivors | 623,187 → 45,713,468 post-E rows | §§4–6 |
| (2,4,4,2) region | 1,963,759 boxes | Thm 5, §6.4, PSD hybrid |
| Open | ⟨0⟩ | |

**Hardware.** Rusty (Flatiron Institute), AMD EPYC rome nodes.

**Replay.** The root `verify.py` re-runs every module's verifier. The campaign certificates are replayed from their saved trees. Their index, hashes and receipt digests are in this repository, and the trees themselves (2.6 TB for the signed-mean part) are archived on the cluster.

## 8. Trust boundary

**What acceptance relies on.**
- Exact rational arithmetic, or outward interval and Taylor-model enclosures (Arb, IntervalArithmetic.jl, TaylorModels.jl).
- Binary64 C++ cores with outward rounding, built without fast-math. IEEE-754 behaviour and compiler correctness are part of the trust base.

**What is formalized.** No step is formalized in Lean. The scalar algebra of the factored signed-mean rule is kernel-checked.

**Published inputs.**
- [JMMSW, Thm 1.4]: the Fourier family is in no quartet.
- [BW, §4.1]: S6 is in no MUB triple.
- [CT]: the classification.

## References

- [BW] S. Brierley, S. Weigert, Constructing mutually unbiased bases in dimension six, PRA 79 (2009) 052316, arXiv:0901.4051.
- [CT] M. Cárdenes Wuttig, J. Tindall, A complete classification of complex Hadamard matrices of order six, arXiv:2608.18053.
- [JMMSW] P. Jaming, M. Matolcsi, P. Móra, F. Szöllősi, M. Weiner, A generalized Pauli problem and an infinite family of MUB-triplets in dimension 6, J. Phys. A 42 (2009) 245305, arXiv:0902.0882.
- [W] M. Weiner, A gap for the maximum number of mutually unbiased bases, arXiv:0902.0635.
- [OAI] OpenAI, The maximum number of mutually unbiased bases in dimension six (openai/math, 2026).

---
**Editorial notes for the authors (remove before circulation).**
1. **Tao citation.** `REDUCTION.md` cites the local `ExceptionalEndpoints/Tao` packet, which is conditional on a frozen msolve output. `PROOF_OF_RECORD.md` uses [BW]. This draft uses [BW]; settle which one is primary.
2. **Classification-paper review.** The proof dossier for MC1–MC5 is complete relative to [CT]. Prose review of `CRITICAL_STRIP_CLASSIFICATION.md` and `FOURIER_ROUTING.md` is pending.
3. **Work-cell replay.** The independent replay was a sampled 200/200 cross-check, not an exhaustive one.
4. **Shorter route.** A rigorous re-implementation of the direct phase-space cover (Option P) would give a much shorter second proof; see `RouteC/README.md`.
