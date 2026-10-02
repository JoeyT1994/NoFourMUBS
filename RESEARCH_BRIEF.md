# Target: no four mutually unbiased bases in dimension six

**Status: open. No exclusion of a fourth basis has been proved.**

## Statement

Show that there are no orthonormal bases I, B_1, B_2, B_3 of C^6 that are
pairwise mutually unbiased. Equivalently, there are no three order-six complex
Hadamards H_1, H_2, H_3 such that every H_i†H_j/sqrt(6) (i≠j) is also Hadamard.
Three MUBs exist. Excluding four gives N(6)=3, and by
[Weiner](https://arxiv.org/abs/0902.0635) it also excludes a complete set.

A hypothetical quartet has six pairwise transitions. Each is an order-six
complex Hadamard, so each lies in the classified space.

## Inputs we can use

1. **Classification.** The [classification paper](ClassificationPaper/README.md)
   organizes every possible transition matrix.
2. **Reconstruction.** The [canonical reconstruction](MinimalConstruction/README.md)
   covers every non-F6, non-Tao class. It relies on the accepted external
   inputs listed in [ASSUMPTIONS.md](MinimalConstruction/ASSUMPTIONS.md).
3. **Proved results.** See the [results library](ProvenResults/README.md).
   Every quartet edge satisfies:
   - no zero 3×3 minor, antipodal pair or F3 block;
   - balanced products vanish, with balanced rank exactly 3;
   - S > 126;
   - Φ₂ ≥ 336;
   - distance greater than 1/1024 from the F6 orbit (D2), greater than 1/30 from the F6 monomial
     orbit, and greater than 1/16384 from the whole Fourier family including its transpose and
     equivalences.

   Its common rays form a finite algebra of length at most 180−2m. A triple
   has 0, 1, 2 or 6 phase matchings. **Every quartet face has count 1 or 6,
   and some face has count 1** ([Quartets](ProvenResults/Quartets/README.md)).
   So no four MUBs would follow from **N1**: no MUB triple whose edges have
   no zero 3×3 minor has exactly one matching. N1 is open. The known count-2
   mechanism is Lemma Z ([MatchingForms](ProvenResults/Triples/MatchingForms.md)). A fourth basis exists iff tr J² = 60
   (covariance contraction). It is pinned down by three strict columns, and
   can be tested plane by plane (chirality).
   [BARRIERS.md](ProvenResults/BARRIERS.md) records the shortcuts that are
   proved not to work.
4. **Published exclusions.** The Fourier family and its transpose
   ([Jaming et al.](https://arxiv.org/abs/0902.0882)) and Tao
   ([Brierley–Weigert](https://arxiv.org/abs/0901.4051); independently [re-derived](ProvenResults/ExceptionalEndpoints/Tao/README.md)) cannot occur in a
   quartet. This excludes those sectors only. It does not force any other
   transition into them.

## Current route: certified quartet exclusion

[NumericalCampaign](NumericalCampaign/README.md) bypasses N1.

- **Reduction** (proved, under the accepted inputs). No four MUBs follows from Q: no H₊(θ) with θ in
  an explicit domain D₀ ∩ F completes {I, H} to four MUBs. D₀ ∩ F is about 1/11,000 of T⁴.
- **Q is being certified** by a rigorous cover of D₀ ∩ F, with seed cells of half-width π/512.
  - Rigorous domain pruning leaves about 8.65M work cells.
  - Each is certified by the accelerated
    [cluster-cover certificate](ProvenResults/CommonRays/ClusterCover/README.md): capacity-one
    phase-box labels covering every common ray, then an exhaustive orthogonality/unbiasedness graph
    test, with every acceptance an outward-interval test. It needs no root count or regularity.
  - All Taylor-model arithmetic runs under a proved, always-on range guard
    ([FastTMInvariant](ProvenResults/FastTMInvariant/README.md)).
  - The run of record started on 30 September on rusty and chains expansion, layer prune and
    certification. On guarded code the certification ran at 20.7 s per cell with 1 failure in
    342,218; the projection is about 9·10⁴ of the 600,000 CPU-hour budget
    ([BUDGET](NumericalCampaign/BUDGET.md)).
  - Cells where the reconstruction has a branch point (the branch layer) are mostly removed by a
    reconstruction-free prune ([SideTriplePrune](ProvenResults/CornerBounds/SideTriplePrune/README.md),
    95.6%). The ≈ 623k survivors are handled by a separate branch-layer stage.
- **What it cannot close by computation** is listed, with the theorems that would close it, in
  [WhatWeWanttoProve](WhatWeWanttoProve/README.md). The main one is the thin small-R sliver of D₀
  along the Fourier family (T2), together with the branch-layer survivors that touch D₀.
- **Why quartets.** They have a numerical residual gap (0.051), so the cover never approaches a
  genuine solution. MU triples, by contrast, lie on the zero-minor wall.

## The core difficulty

Single-matrix classification does not constrain compatible tuples on its
own. In a common frame (see
[SimultaneousReconstruction](ProvenResults/RelativePhases/SimultaneousReconstruction.md)),
each additional basis carries its own seed together with a relative left
phase diagonal and a row permutation. All six transitions must be unbiased
simultaneously, and the cycle relations U_ab U_bc = U_ac hold. An argument
has to use this joint information. It cannot discard relative phases or
treat the transitions independently.

## Boundaries that must stay explicit

- Relative left phases and permutations cannot be discarded independently.
- The positive-sheet covering is surjective but not injective. Opposite
  sheets at a fixed frame need not be equivalent.
- Reconstruction coverage and exhaustion are accepted external inputs. The
  classification's Lean package does not certify them.
- The following remain unproved: F3-block forcing, global finiteness of
  relative-phase fibres, emptiness of 4+1, and exhaustion of the Karlsson
  surfaces.
- An anchor inequality excludes a seed region only if it accounts for every
  relevant quartet in that region.
- Numerical searches are diagnostic only. Only exact certificates or
  analytic proofs enter the library. A campaign certificate enters only
  once every cell is covered with interval arithmetic, and it is replayed
  independently.

Keep the reconstruction fixed unless a specific compatibility constraint
becomes demonstrably simpler under a change.
