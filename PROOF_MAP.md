# The proof that C⁶ has no four MUBs, on one page

This page maps the independent computer-assisted proof from statement to evidence. Every arrow points to a document or a ledger in this repository. The full certificates are on the Flatiron cluster; this repository holds their index, hashes and replay receipts.

## 1. Statement and reduction

**Theorem.** There are no four mutually unbiased bases in C⁶.

**Step 1: reduce to a cell statement.** Any quartet can be rotated to contain the standard basis I. So it suffices to show that no Hadamard matrix H makes {I, H/√6} extendable to four MUBs.

**Step 2: reduce to a small seed domain.** Every H not equivalent to F6 or to Tao's S6 is, up to equivalence and conjugation, H₊(θ) for some seed θ ∈ D₀ ∩ F. Here:
- H₊(θ) is the positive-sheet reconstruction from the 3×3 corner E(θ);
- D₀ requires that corner to have R(θ) > 0 and the largest R of all 400 corners;
- F orders the Gram moduli.

F6 and S6 are excluded by published results.

| Ingredient | Source |
|---|---|
| Reduction | [`NumericalCampaign/REDUCTION.md`](NumericalCampaign/REDUCTION.md) |
| Reconstruction | [`MinimalConstruction/RECONSTRUCTION.md`](MinimalConstruction/RECONSTRUCTION.md) |
| Inputs A1–A4 | Proved relative to the classification-paper imports; see `MinimalConstruction/Proofs/` |

So it is enough to prove

> **(Q)** For every θ ∈ D₀ ∩ F, the pair {I, H₊(θ)/√6} does not extend to four MUBs.

Each θ is closed in one of two ways:
- **directly**, by showing (Q) at that θ;
- **by showing θ ∉ D₀**, either because R(θ) ≤ 0 or because some other corner has a larger R. A strict-D₀ certificate does this.

## 2. Where the chart is regular

D₀ ∩ F is about 8.9·10⁻⁵ of T⁴. It is covered by dyadic cells of half-width π/512.

**(a) Pruned cells.** Cells provably outside D₀ ∩ F are discarded by four tests:
- the F order;
- R < 0;
- the radical-free corner test;
- all 400 corners through a Taylor model of H₊.

**(b) Work cells.** These are the 8,652,805 cells where H₊ has a Taylor model. Each gets the **cluster-cover certificate**, which is the same idea as the later openai/math "Stage C":
1. Cover every ray unbiased to I and H₊ by phase labels of capacity one.
2. Prove, by an exhaustive orthogonality and unbiasedness graph search, that no two further bases fit.

Evidence:
- method: [`ProvenResults/CommonRays/ClusterCover`](ProvenResults/CommonRays/ClusterCover/README.md);
- audits: `Verification/rescaled_run_audits_2026-10-01` (exact audit PASS).

## 3. Where the chart degenerates

**Branch layer.** These cells sit near R = 0 and other branch loci, where H₊ has no Taylor model. Reconstruction-free side prunes (`ProvenResults/CornerBounds`) exclude 95.6% of them; 623,187 survive.

**The branch95 run** refines the survivors through five stages:

| Stage | Method |
|---|---|
| A | Refine |
| B/C | Cover |
| D | Classify by R |
| E | PSD maximality prune |

The run leaves **45,713,468 post-E rows**. The ledger in [`Verification/ledger_2026-10-07a`](Verification/ledger_2026-10-07a/README.md) gives each row its certificate.

**Rows closed by statement (Q):**

| Method | Module | Rows |
|---|---|---:|
| Frontier passes and hard tails | `ActiveShoulderClosure_v2_frontier` | 42.68M |
| v2 lookup | | 0.17M |
| Side cover: outside D₀ or inside the F6 residual tube | | 0.29M |

**Rows closed by strict D₀:**

| Method | Rows |
|---|---:|
| v3 | 0.16M |
| Punctured ball of radius 1/40 around the stationary (2,4,4,2)/(4,2,2,4) seeds (`ProvenResults/Patch2442Local/Radius025Complete`, plus R = 0 at the seed) | 438,112 |
| Collaborator's factored signed-mean producer, fresh replay per box | 1,951,490 |
| Signed-mean + PSD hybrid (`branch95/psd/hybrid_close.py`), fresh replay | 3,682 |
| Band certificate (`RouteC/band`): reconstruction-free, every completion has a corner with R > sup R(E); Arb replay of every leaf | 6,370 |

**Stage-C sliver.** 1,018 of 1,018 leaves are closed.

## 4. What is left (7 Oct 2026, ledger [`07b`](Verification/ledger_2026-10-07b/README.md))

**0 open rows; 36 delegated.** All 36 are boxes within about 10⁻³ of the two (0,0,2,4)-class seeds ±(0, 0, 2π/3, −2π/3).

**Why they remain.**
- At those seeds the corner has two equal rows and g = 0, and the completions form a continuum through F6. So no single-corner certificate applies.
- Their Arb cap is sup R(E) ≤ 1.6·10⁻⁸. A completion with E maximal therefore lies, by the averaging lemma (`simplerproof/`, Step 2, needed here only in a very weak form), in the F6 tube, which ClusterTube excludes.

After that comes the final assembly:
- one root ledger chaining work cells → branch → post-E;
- the root `verify.py` replay.

Progress is recorded in [`PROOF_OF_RECORD_STATUS.md`](PROOF_OF_RECORD_STATUS.md).

## 5. Trust boundary

- **Arithmetic.** All acceptances are exact rational or outward interval tests: Arb, IntervalArithmetic and TaylorModels, plus checked binary64 bounds where stated.
- **Formal verification.** No step is formalized in Lean. The scalar lemmas of the signed-mean method are kernel-checked by the collaborator.
- **Independence.** The openai/math claim of the same theorem (6 Oct 2026) uses a different chart and an unpublished run. This proof does not depend on it.
