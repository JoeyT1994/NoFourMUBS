# T5. Quartet rays are nondegenerate (speculative, high value)

> **Not needed by the campaign (29 September).** Bypassed by the cluster-cover theorem
> ([ProvenResults/CommonRays/ClusterCover](../ProvenResults/CommonRays/ClusterCover/README.md)).
> Labels need no regularity, and ghost regions are harmless surplus labels. Nondegeneracy would now
> only tighten graph tests.

**Priority: exploratory.** There is no known route, but it would remove folds and most ghosts
at once.

**Alternative now proved:** the [cluster-cover theorem](../ProvenResults/CommonRays/ClusterCover/PROOF.md)
avoids any nondegeneracy assumption. It encloses all common rays in labels
of capacity one and applies an exhaustive overlap graph. A standalone
interval certificate succeeds on a seed cube of radius 1/1024 near the
campaign's X₆ example. This does not prove T5 or supply a singular-value
discard rule; it provides another way to close some troublesome cells.

## What we want

**Target T5.**
- Let {I, H/√6, K, L} be four MUBs in C⁶.
- Every column of K and L is a common unbiased ray z of (I, H). The target is that each is a
  **quantitatively nondegenerate** solution of the ray equations:

      σ_min(J(φ)) ≥ s₀   at every such ray,

  with J the 6×5 Jacobian of f_j = |Σ_k conj(H_kj) z_k|² − 6 in the phases φ, and s₀ > 0
  explicit.

**Useful size.** s₀ ≥ 0.05; even 0.02 helps. On the same scale ([FOLDS.md](../NumericalCampaign/FOLDS.md)):
- folds have σ_min → 0;
- X₆'s poorly conditioned rays have σ₅ = 0.06–0.14;
- ghost valleys have σ₅ ≈ 0.03–0.4;
- the 52 rays of the formerly failed pilot cell all have σ₅ ≥ 0.77.

## Why it matters

- **What the search could drop.** The completeness search could then discard every φ-box on
  which σ_min(J) < s₀ is certified throughout. No ray there can belong to a quartet basis, so
  the clique stage does not need it.
- **Effect on folds.** Near a fold the merging rays have σ_min → 0. So fold cells would stop
  being residual, **without** a fold certificate.
- **Effect on ghosts.** Ghost valleys have small σ₅. Many of the tiny boxes that burn the
  budget on hard cells could be dropped, including g3, which ran for 2.7 CPU-hours unresolved.
- **Accounting would change.** The completeness statement becomes "all rays with
  σ_min ≥ s₀", and the clique stage is unchanged.

## What exists

- **Edge rigidity (proved).** No quartet edge has a zero 3×3 minor
  ([ProvenResults/EdgeRigidity](../ProvenResults/EdgeRigidity/QuartetEdgeCorollary.md)).
  This is the same flavour of statement: a quartet forbids a degeneracy of the edge.
- **Finite common-ray algebra (proved).** If all 3×3 minors are nonzero, the common-ray
  scheme is a complete intersection of length 252 − 2m. Degenerate rays are points of
  multiplicity above 1 in that scheme.

## Suggested route

- **Qualitative first.** Show that a quartet ray is a simple point of the scheme. The
  mechanism might be as follows. The 12 rays of K and L must satisfy orthogonality and
  unbiasedness constraints, which are rigid. A double point would give a tangent direction
  along which a first-order deformation of the basis stays unbiased, contradicting some
  rigidity.
- **Then quantitative.** A lower bound for σ_min, by compactness plus an explicit modulus, or
  by a certificate.

## Deliverable

- The qualitative statement is already interesting. The campaign needs the quantitative one,
  with an explicit s₀.
