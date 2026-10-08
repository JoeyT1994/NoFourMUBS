> **Archived (8 Oct 2026).** These are the intermediate shortenings of the long proof: the wide F6 tube, the confinement attempt and the averaging-lemma handoff. They are superseded by the minimal proof in [`../../../PROOF.md`](../../../PROOF.md). The averaging-lemma work itself remains at `simplerproof/averaging_lemma/` at the repository root, because another line of work is still editing it.

# Minimising the proof

The full proof ([`../PROOF.md`](../PROOF.md)) is complete, but most of its cost sits in one region: the shell just outside the 1/30 F6 tube, where the corner chart degenerates. This folder replaces that region with three statements about F6, so that the degenerate loci can be dropped rather than certified.

## The short proof

Suppose (I, H) is a quartet edge, and let M(H) be the largest corner invariant R over the 400 corners.

| Step | Statement | Status | Where |
|---|---|---|---|
| 1. Wide F6 tube | No quartet edge has d_F(H) ≤ 0.075 | ✅ certified, independently replayed | [`widetube/PROOF.md`](widetube/PROOF.md) |
| 2. Local lemma | ν(H) ≤ 0.55 and M(H) < 26 ⇒ H is not a quartet edge (d_F ≤ 0.0913 implies ν ≤ 0.55) | ✅ certified, independently replayed | [`widetube/PROOF.md`](widetube/PROOF.md#local-averaging-lemma-at-the-wide-radius-pass-8-oct) |
| 3. Global confinement | M(H) < 26 ⇒ ν(H) ≤ 0.55 | ⏳ **open**; holds numerically with a wide margin; the remaining case is narrowed to cross-partition local minima | [`confinement/`](confinement/README.md), [`confine/`](confine/), [`averaging_lemma/`](averaging_lemma/) |
| 4. Regular chart | Seeds with maximal corner R ≥ 26 | ✅ a subset of the full proof's certified cells | [`../PROOF.md`](../PROOF.md) §3 |

**What changes once Step 3 holds.** Steps 1–3 exclude every H with M(H) < 26. Then:
- every maximal corner has R ≥ 26 > 0, so R → 0 never occurs;
- the band certificate, the (0,0,2,4) seed closure and the shoulder are all unnecessary;
- what remains is the regular-chart cover restricted to R ≥ 26, plus about 1.5M branch rows with R ≥ 20, all of which the full proof has already certified.

## Step 1: the wide F6 tube (`widetube/`)

The tube is our version of the openai/math Stage B at one centre (see [`../openai/`](../openai/README.md)).

- **Gauge.** If d_F(H) ≤ r, then H ≅ F ∘ e^{iu} with u horizontal and ‖u‖ ≤ 6.02r.
- **Normal form.** Φ(u) collects the 15 complex off-diagonal overlaps, with derivative J = Φ′(0).
  - J Jᵀ has spectrum {0, 3, 9, 12} (exact).
  - K = Jᵀ p(J Jᵀ) satisfies KJ = P_N and ‖K‖ = 1/√3.
  - The normal part n of u is the unique fixed point of n = −K(Φ(v + n) − J(v + n)), a contraction with q = (2√2/√3)ρ.
- **Cells.** Krawczyk enclosures in the four tangent coordinates.
- **Per-cell exclusion.** On each cell, a ClusterTube-style integer cover and exact graph check runs around a table-rounded reference.
- **Symmetry.** The 288-element symmetry group reduces the cover to a Dirichlet fundamental domain.
- **Result.** 3,207 root cubes and 8,592 leaves, all accepted, in 1.7 CPU-hours. Receipt: [`widetube/results/tube_receipt.json`](widetube/results/tube_receipt.json).

## Step 2: the local lemma (`widetube/lemma_cells.py`)

The lemma uses the same cells over the 0.55-ellipsoid. Each cell is accepted in one of two ways:
- it lies inside the tube;
- some corner has |2 Im q(B)| ≥ √26 on the whole cell. This is a mean-value bound built on the square identity R(A) = (2 Im q(B))².

**Result.** 5,670 roots, all accepted. The smallest certified √R is 5.127. Receipt: [`widetube/results/lemma_receipt.json`](widetube/results/lemma_receipt.json).

## Step 3: global confinement (open)

**Evidence.**
- On the extremal Fourier curve, max R = 144 sin²(6 arcsin d_F). So M ≈ 39 at d_F = 0.0913.
- Every sampled non-Tao matrix with d_F > 0.1 has M > 46.

**Two lines of attack.**
- [`averaging_lemma/`](averaging_lemma/): analytic and certificate work toward a global cutoff, carried out by a separate agent.
  - Brief: [`HANDOFF_averaging_lemma.md`](HANDOFF_averaging_lemma.md).
  - Proved so far: the local theorem [`PRACTICAL_LOCAL.tex`](averaging_lemma/PRACTICAL_LOCAL.tex) (‖u‖ ≤ 0.3), the sharp law on the Fourier families, and a tiny explicit global cutoff ([`EffectiveConfinement`](../ProvenResults/EffectiveConfinement/README.md)).
- [`confine/`](confine/): a chart-side classifier.
  - Method: on cells of F ∩ {0 < R < C₀}, either exclude the cell from D₀ (rigorous Taylor-model tests) or show that H₊ lies in the wide tube.
  - Pilot: at level 13, about 84% of cells exit cheaply. The rest are singular or open.

**Supporting identities** ([`../RouteC/averaging/REPORT.md`](../RouteC/averaging/REPORT.md)):
- Σ_c R_c = 4 Σ_B (Im q(B))², exactly;
- Σ_c R_c = 15552·d² + O(d³) at F6, the same in every direction;
- max_c R = 144 sin²(3a) exactly along F6^(2)(a, −a).

## Why the cut is at the near-F6 shell

These measurements, taken on 7 Oct 2026 over the 45.7M branch-layer rows, fixed the design above.

| max R(E) on the box | Rows |
|---|---:|
| < 1 | 2.88M |
| 1 to 5 | 2.92M |
| **5 to 20** | **38.37M** (all class (1,2,2,4), the shoulder) |
| ≥ 20 | 1.54M |

- **The shoulder sits in the shell.** It is the band d_F ≲ 0.065 just outside the old 1/30 tube, so a cutoff of c₀ = 5 would remove only about 13% of the branch layer. A tube of radius 0.075 with c₀ = 26 removes about 97%.
- **A cover in θ-cells does not help.** Re-covering the regular chart in θ-cells restricted to R ≥ c₀ was measured at about 10⁵ core-hours, the same as the main campaign, so Step 4 reuses the main campaign's certified cells instead.
