# Route 2: a tiered, Lean-checkable atlas (design and measurements)

Status: design plus floating-point exploration (15 Oct 2026). Nothing here is part of the proof yet.

## The idea

Every quartet edge H (with I, H/√6 and two further bases mutually unbiased) has, in particular, a **third**
MUB: U(H) contains an orthonormal basis. Here U(H) is the set of vectors unbiased to both I and H.
So it suffices to cover X by two kinds of regions:

- **Tier 1, "no third MUB".** For every H in the region, no 6 vectors of U(H) are pairwise orthogonal.
  This is a single-clique condition, and it is stable: it needs no unbiasedness edges and no
  two-clique search.
- **Tier 2, "no fourth MUB".** This is the present ball Record (normal bound plus Stage C two-clique
  exclusion). It is used only near the locus T₃ of Hadamards that do admit a third MUB.

## Measurements (`explore/`, floating point, exploration only)

**U(H) is small and rigid.** For generic matched H, |U(H)| ∈ {48, 50, …, 58} (60 to 78 near special
points). Generic H has **no exact orthogonal pair** in U(H).

**The triple defect.** Define it as the minimum, over 6-subsets of U(H), of the maximum unnormalised
|⟨x,y⟩| (where |x|² = 6). It is ≥ 0.19 at 199 of 200 random H. The exception (0.011) lies next to the
Fourier family: it has a 3×3 block 0.009 from Hadamard and a 2×2 block 0.0002 from Hadamard. Along a
random path the defect has a kinked minimum, not a zero. So T₃ appears to have codimension ≥ 2.

**Tier-1 radius over genuine Record balls.** The ball is H(η) = project(P + Tη) with T an orthonormal
tangent frame, and every branch is tracked by continuation. A Record "passes" if the largest clique of
the possibly-orthogonal graph (pairs whose minimum over the ball of |⟨x_a, x_b⟩| is below the tolerance) is under 6.
48 random Records:

| Largest passing radius ρ | Share of Records |
|---|---|
| ≥ 0.5 (largest clique ≤ 4 at tolerance 0.1) | about 80% |
| 0.16 to 0.3 | about 5% |
| < 0.08: largest clique 6 already at ρ = 0.08 (Records 30, 247, 249, 307, 431, 3245, 10362: near-triple, tier 2) | about 15% |

**Folds.** The branch count changes (48 ↔ 56) across fold hypersurfaces. Tier-1 regions meet folds
often, so merging pairs must be treated as one cluster. This is harmless for orthogonality, since a
merging pair has |⟨x,y⟩| ≈ 6.

**Thin affine tubes.** With D_a = −J_x⁺ J_η, the deviation |x_a(η) − x_a(0) − D_a η| has median
0.0025, 0.009 and 0.03 at ρ = 0.08, 0.16 and 0.3, so about 0.35 ρ². It is larger only on near-fold
branches, where the smallest singular value of J_x is below 1.

**Second-order models (`explore/taylor2.py`, 6 Records).**
- **Chart.** The quadratic chart δ(η) = Tη + ½ q(η, η) of the Hadamard manifold leaves a normal residual of
  0.0005–0.0007 at ρ = 0.16 and 0.003–0.005 at ρ = 0.3. It is cubic, about 0.17 ρ³, and replaces Lemma 3.1's
  quadratic normal bound, which would be about 0.09 at ρ = 0.3.
- **Branches.** Quadratic models have median deviation 0.001 at ρ = 0.16 and 0.006 at ρ = 0.3, which is
  5–10 times tighter than affine models. The 95th percentile (0.01–0.5) comes from near-fold branches,
  which become clusters.
- **Consequence.** At ρ = 0.3, typical inner-product uncertainty is 2√6·(0.006 + 0.006) ≈ 0.06, well
  inside the measured clique margins.

## The bottleneck

Stage C already has a common-η joint test (`STAGEC.md` C4). With multipliers chosen to cancel the label
displacement, it is a first-order tube. Its second-order remainder, however, is bounded over the whole
label ball, about π(K s + r_F)² with s the branch sweep ≈ 1.3ρ: roughly 16ρ². That is about 40 times
the true deviation of 0.35ρ², and it is what caps the radius near 0.08.

**Tier 1 therefore needs Taylor models:** second-order models of each branch in η, and a second-order
chart of the Hadamard manifold, each with a third-order remainder computed along the branch rather than over a label ball.

## Lemma T1 (to be proved and certified)

Let a Record ball be as in `STAGEC.md` (centre P, frame T, ‖η‖ ≤ r_H, normal part ‖ν‖ ≤ n). Suppose:

1. **Coverage.** Every unbiased vector of every Hadamard in the ball lies in one of the clusters
   C₁, …, C_m. This is certified by Stage C bins at a coarse resolution (C1–C2 unchanged).
2. **Tubes.** For each cluster a there are β_a(η) = c_a + D_a η (+ ½ η·Q_a η) and s_a such that every
   unbiased vector in C_a of e(P + Tη + ν) satisfies |β − β_a(η)| ≤ s_a. The proof is a quantitative
   implicit-function bound using C2b's expansion with Taylor remainders along β_a.
3. **Orthogonality.** For every pair (a, b) outside an edge set 𝒪₁:
   min over ‖η‖ ≤ r_H of |⟨e(β_a(η)), e(β_b(η))⟩| > 2√6 (s_a + s_b) + (the ν term).
4. **Cliques.** 𝒪₁ has no 6-clique.

Then no Hadamard in the ball admits a third MUB, so none is a quartet edge.

## Lean

A Lean check needs the same ingredients for both tiers:
- **Verified rational interval arithmetic** for e(t) at rational t: Taylor enclosures with Mathlib's π
  bounds, proved once.
- **A computable checker** for the inequalities of `STAGEC.md` and Lemma T1, whose soundness reuses the
  existing `NoFourMUBs.StageC` lemmas.
- **Kernel evaluation** (`decide +kernel`), one declaration per Region.

The aim of tier 1 is to make the certificate small enough that this is cheap. At ρ ≈ 0.2 to 0.3 on
about 80% of X, the region count there falls by a factor of 40 to 200 relative to 0.08 balls.

## Milestones

1. Float prototype of the tier-1 certifier on sample Records: bins, clusters, Taylor tubes, edge
   bounds, clique check. Measure the size of a certificate at ρ = 0.16 and 0.3.
2. Rigorous version (Arb), cross-checked as Stage C is.
3. A new atlas: tier-1 regions plus tier-2 Records near T₃. Coverage by the existing transfer argument,
   or by tiling the seed domain using exact reach.
4. Verified rational interval arithmetic in Lean, then the Lean checker, then a kernel run (cluster).
