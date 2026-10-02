> **Status, 28 September 2026 (evening): no longer a blocker.**
> - The [cluster-cover theorem](../ProvenResults/CommonRays/ClusterCover/README.md) and its automatic
>   implementation [Certification/cover.jl](Certification/cover.jl) exclude quartets without root counting
>   or regularity. Folds, ghosts and ray clusters just become labels.
> - The campaign driver uses it after the rays path.
> - The fold-aware certificate proposed below was therefore never built.
> - This file is kept for the analysis of folds, ghosts and the X(α) tube.

# Folds and ghosts: the open problem for the cover (27–28 September 2026)

## Update: a cluster-cover alternative is proved and locally certified

[ClusterCover](../ProvenResults/CommonRays/ClusterCover/README.md) gives a
direct replacement for root-count completeness. A phase box of half-width
at most 1/2 has internal squared overlap at least 49/144 > 1/6, so it can
supply at most one column across both extra bases. It need not contain a
known number of roots, or any roots at all.

The standalone replay excludes the entire explicit seed cube of radius
1/1024 around the campaign's X₆ seed: 54 labels cover all possible common
rays and admit only one orthogonal six-clique. It checks 636,685 phase
boxes and uses no Jacobian-regularity or fold-classification hypothesis.
This is not yet integrated into the production cover and is not a
uniform exclusion around the X(α) family.

For future cells, every phase leaf must be excluded or geometrically
covered by a label. Simply adding a cluster outcome to the old regularity
search is insufficient unless every remaining root is also assigned a
label. The analytic proof and the precise acceptance contract are in
[PROOF.md](../ProvenResults/CommonRays/ClusterCover/PROOF.md).

The older diagnostics and proposed Lyapunov–Schmidt route below are
retained as context; root counting in clusters is no longer a necessary
condition for this alternative certificate.

## Update, 28 September 01:30: the observed failures are ghosts, not folds

All hard cells so far keep a constant ray count across the cell:
- g1 and g3 have 52 rays at the centre and six corners;
- the cell that failed after two bisections has 52 well-conditioned rays
  (σ₅ ≥ 0.77) at 11 probe points.

So they contain no fold. Each contains a **near-miss ghost**: a region about
0.02–0.03 across where |F| ≈ 0.002–0.03 and σ₅ ≈ 0.05, but no real ray.
Box-by-box exclusion needs boxes far below the 2·10⁻³ floor there, so the
budget runs out.

Two fixes were made tonight:
- **Pseudo-inverse preconditioner.** The ray certificate, regularity and
  centre exclusion used 5 selected rows of the 6×5 Jacobian. At some rays
  the selected 5×5 block had ‖Y‖ = 15 where ‖J⁺‖ = 0.44. They now use the
  5×6 pseudo-inverse. This is rigorous because Σ_j f_j ≡ 0 makes YF = 0
  equivalent to F = 0. It removes the spurious "centre ray uncertified"
  failures caused by bad row choice.
- **Per-ray order-6 retry** before bisecting. It certified 2 of 3
  ray-failure cells directly.

**The ghost tool** ([lsred.jl](Certification/lsred.jl), `ls_exclude_cf`) works
as a standalone certificate. It uses the Lyapunov–Schmidt frame at the
valley point (Newton in the four transverse coordinates), second-order
centred forms with the closed-form third-derivative bound, and SVD
orthogonality (u₅ᵀJV⊥ = 0, U₄ᵀJv = 0).

On the 2,766 nodes that stalled the failed pilot cell, it excludes **60 of
60 tested nodes** on θ sub-cells of 1/32 of the cell, and 5 of 60 on 1/16
sub-cells. There, the reduced function is G ≈ −0.035 over the whole
valley, so the ghost is a comfortable near-miss.

**It is not integrated.** The valley moves with θ by about 0.02 in |F|
across a 1/8 sub-cell. A fixed frame therefore needs sub-cells of about
1/32, and inside a search that means up to 32⁴ sub-cells per node. Enabled
in the search (`ls_width`), it made no exclusions within budget, so it is
disabled by default.

**Moving ghost tubes (built 28 September, 03:00–05:30).** Status is in
[Pilot/REPORT_2026-09-28.md](Pilot/REPORT_2026-09-28.md). Original design notes: This is the ghost analogue of the ray
tubes. Compute the valley point as a Taylor model c(θ) by Newton on the four
transverse equations plus a fixed-t constraint. Run the same
Lyapunov–Schmidt bounds in the moving frame c(θ) + V⊥w + vt, with Taylor
models in θ instead of the sub-cell hull. A fixed φ-box is then excluded on
a sub-cell whenever it lies inside the moving ghost region there. The
valley moves about 0.016 across a whole cell, against a region radius of
about 0.01, so 1/2–1/4 sub-cells suffice (16–256 per node).

The same machinery with 2 roots is the fold certificate.

## What a fold is

The number of common unbiased rays of (I, H₊(θ)) is not constant. It is 48
at g2, 52 at g1 and g3, 56 in several pilot cells, and 60 at X₆. Where the
count changes, two real rays merge and leave the real torus as a
complex-conjugate pair. This happens on a *fold wall*, a hypersurface of seed
space.

At the fold point:
- the 5×5 Jacobian is singular;
- nearby, the two rays are nearly singular, with σ ≈ 2√d at distance d from
  the wall;
- they separate like √d.

## Why the present completeness certificate cannot cross a wall

[complete.jl](Certification/complete.jl) proves completeness by fold
exclusion. Every box of T⁵ is ray-free or Jacobian-regular over box × cell,
so rays form a trivial covering of the cell. A cell that contains a fold
point never passes this test, at any refinement.

Shrinking cells does not help either. The cells a wall touches would number
about area(wall)/ρ³, and near the wall the ray certificates need ρ ≲ d.

## Structure at X₆

X₆'s 8 poorly conditioned rays, with σ₅ between 0.06 and 0.14, form two
clusters of four, about 0.02–0.04 apart (rays {22,48,34,55} and
{60,44,50,54}).

Tracking along a random direction, σ₅ falls like √(t_f − t) with
t_f ≈ 5·10⁻⁴. So a fold wall passes within about 5·10⁻⁴ of X₆.

At the X(α) family a fold certificate may therefore have to handle clusters
of four rays, not just simple pairs.

## Where walls are known to be

- **The X(α) family.** X₆(0.3+0.2i), in D₀ with R_max = 311, has 60 rays.
  Continuing them 10⁻³–10⁻² in any of three random directions leaves 56
  distinct rays, because four pairs merge. So X₆ lies in a thin tube of
  radius about 10⁻³ around the X(α) family, bounded by a fold wall. X(α) is
  the Szöllősi/Zauner family of MU-triple edges. MMVW Conjecture 3 says it is
  in no quartet.
- **Ordinary walls.** They separate the 48-, 52- and 56-ray regions of D₀.
  The overnight pilot measures how often a cell of radius 0.005 meets one:
  such cells fail even after bisection.

## Proposed fold-aware certificate (not built)

Near a simple fold, use a Lyapunov–Schmidt reduction along the near-kernel
direction v of J, writing φ = φ_c(θ) + t v + w with w ⊥ v:
1. Solve the 4 transverse equations for w(t, θ). This part is regular, so a
   Krawczyk argument in 4 variables works, with Taylor models in (t, θ).
2. The remaining scalar equation g(t, θ) = 0 has ∂²g/∂t² bounded away from 0
   on the box. So for each θ there are at most two roots in the t-interval,
   and they are enclosed by the quadratic formula applied to the
   Taylor-model coefficients of g.
3. This gives a **fold tube**: a moving region around φ_c(θ). It contains at
   most two rays for every θ in the cell, with tight enclosures of both.
   Solutions cannot cross its boundary, because the boundary is excluded.

Completeness then extends the covering argument: every node of the φ × θ
search is excluded, regular, or inside a fold tube. The clique stage treats
a fold tube as two candidate rays. They are nearly parallel, since
\|g\|² ≈ 1, so no basis contains both and no pair of bases splits them.

Cost: one extra certificate per fold-wall cell. What is still unknown is
how many cells meet walls. The pilot will say.

## Alternative for the X(α) tube

Exclude a neighbourhood of the X(α) family analytically or by a dedicated
certificate, as Jaming et al. did for the Fourier family and the library's
D2 did around F6. This is close to MMVW Conjecture 3. The fold-tube
certificate would make it unnecessary if its cost is acceptable there.
