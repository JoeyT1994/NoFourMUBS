# Quartet exclusion by a cover of ray clusters

**Status: analytic theorem.** This is a replacement for individual root
counting in a quartet certificate, not a proof of T5 or of global quartet
exclusion. It works with singular roots, folds, ghosts, and even a
positive-dimensional common-ray set. The finite cover and its overlap
bounds must still be certified for the carrier region in question.
The accompanying [local certificate](README.md) does this on an explicit
seed cube of radius 1/1024 near the campaign's X₆ example.

## 1. What a sufficient certificate contains

Let X be any parameter set and H(θ) an order-six phase Hadamard for θ ∈ X.
Write

    v(φ) = (1,exp(iφ₁),...,exp(iφ₅))/sqrt(6),
    Zθ = {φ ∈ T⁵ : |H(θ)†v(φ)|² = (1,...,1)}.

Let C₁(θ),...,C_N(θ) be sets of dephased unit flat rays, called labels.
They need not contain roots, be disjoint, or have a fixed number of roots.
Assume:

1. **Coverage.** Every common unbiased ray v(φ), φ ∈ Zθ, belongs to at
   least one C_a(θ), for every θ ∈ X.
2. **Capacity one.** For every θ and any x,y ∈ C_a(θ),
   `|x†y|² > 1/6`.
3. **Pair enclosures.** For every a ≠ b, an interval I_ab contains
   `|x†y|²` for all θ ∈ X, x ∈ C_a(θ), y ∈ C_b(θ).

Form two simple undirected graphs on the labels:

    a ~O b  iff  0 ∈ I_ab,
    a ~U b  iff  1/6 ∈ I_ab.

An interval implementation can retain additional edges; it must never
omit an edge permitted by the exact enclosure. In particular, testing
the rational number 1/6 requires exact rational comparison or a rigorous
enclosure of it, rather than an unqualified rounded Float64 target.

**Theorem.** If there are no two disjoint six-element sets V,W such that
V and W are O-cliques and every V–W pair is a U-edge, then no carrier
H(θ)/sqrt(6), θ ∈ X, extends with I to four MUBs.

**Proof.** In a hypothetical quartet, assign each of the twelve columns
of its two additional bases any covering label. Within each basis,
distinct columns have overlap probability zero. Across the bases, they
have overlap probability 1/6. Thus no two of the twelve columns can have
the same label, by capacity one. Their twelve distinct labels give two
disjoint O-cliques with all cross U-edges, a contradiction. ∎

No simplicity, Jacobian bound, existence of a root in each label, or
bound on the number of roots in a label was used. Overlapping labels
cause no problem: any assignment of covering labels would be injective
on the twelve physical columns by the same argument.

The same reasoning gives a **4+1 version**: it suffices that no anchor
label has an O-four-clique among its U-neighbours. The 6+6 exclusion test may succeed even when the 4+1 test does not.

## 2. An explicit capacity bound for phase boxes

Consider a label

    C(c,r) = {v(φ) : |φ_k − c_k| ≤ r_k modulo 2π, k=1,...,5},

where a suitable lift is chosen coordinatewise. The center c may depend
on θ; the following bound does not involve that dependence.
For two points in the same label choose lifts with differences
`|d_k| ≤ 2r_k`. Since `cos t ≥ 1−t²/2`,

    Re(x†y) = (1+Σ cos d_k)/6 ≥ 1 − (Σ r_k²)/3.             (1)

Whenever the right side is positive, it follows that

    |x†y|² ≥ (1 − (Σ r_k²)/3)².                            (2)

In particular, **r_k ≤ 1/2 for every k suffices**, since

    |x†y|² ≥ (7/12)² = 49/144 > 1/6.

Thus even a box of phase half-width one half-radian has capacity one
across both extra bases. The small four-ray clusters described in
[FOLDS.md](../../../NumericalCampaign/FOLDS.md) do not need their four
roots counted or separated to use this criterion. A connected chain of
small pairwise distances is not enough by itself: the enclosing box, or
another valid all-pairs bound, must be checked.

The exact box minimum when every r_k<π/4 is proved in
[SHARP_CAPACITY.md](SHARP_CAPACITY.md). For cubic labels the optimal
threshold is r<½ arccos(1/4)≈0.659058, and the anisotropic test evaluates
sixteen sign patterns. [LABEL_REFINEMENT.md](LABEL_REFINEMENT.md) explains
how a connected component can instead be covered by several small labels.

## 3. Cheap rigorous overlap enclosures

For fixed phase-box centers c_a,c_b set

    g_ab = (1+Σ exp(i(c_bk−c_ak)))/6,
    e_ab = Σ(r_ak+r_bk)/6.

The inequality `|exp(it)−1| ≤ |t|` gives, for all points of the two boxes,

    |x†y − g_ab| ≤ e_ab.

Hence a valid enclosure is

    max(0,|g_ab|−e_ab)² ≤ |x†y|² ≤ min(1,|g_ab|+e_ab)².    (3)

For parameter-dependent centers, one can bound g_ab jointly over the
same θ-cell, retaining Taylor-model correlations if useful. There is no
need to assert that the center functions themselves solve the ray
equations. Formula (3), or a tighter direct interval enclosure, remains
valid for arbitrary normalized flat centers.

## 4. A direct completeness certificate that crosses folds

Take a finite closed box cover of the full phase torus times X. A box
may be accepted in either of two ways:

* **Excluded:** some common-ray equation is bounded strictly away from
  zero throughout that box.
* **Covered:** every phase point in that box is in an exhibited label
  C_a(θ), throughout its θ-subcell.

If every terminal box is accepted, coverage in §1 follows immediately:
a common ray cannot lie in an excluded box, so any terminal box
containing it is covered. Closed splits include their shared boundary;
phase-chart seams must likewise be covered.

This replaces the `out or Jacobian-regular` requirement in
[complete.jl](../../../NumericalCampaign/Certification/complete.jl)
by `out or geometrically covered`. A covered box may contain no roots,
many roots, merging roots, or singular roots. **Neither a transverse
Lyapunov–Schmidt solve nor an upper bound of two or four roots is a
logical requirement.** Those methods remain possible ways of obtaining
tighter enclosures when the graph needs them.

There is an important qualification. One cannot simply add a third
`cluster` outcome to the existing covering-space proof and leave its
regular leaves unaccounted for. Every possible root must be shown to
lie in a returned label, either by direct covering as above or by a
separately justified continuation argument with all necessary boundary
conditions. Point samples and the center ray count do not prove this.

## 5. Safe acceptance and the role of ghosts

A labelled region may be entirely a ghost, with no real solution. It
is safe to keep it as a candidate: the theorem uses only necessary
conditions and allows surplus labels and surplus graph edges. This
provides an alternative to expensive proof that each ghost valley is
root-free. If its extra graph possibilities prevent exclusion, refine
that label or exclude more of its region.

Graph search must be exhaustive. If a basis enumeration hits a work or
clique cap, it must return **inconclusive**, not interpret the truncated
list as exhaustive. This applies equally to individual-ray and cluster
certificates. A found compatible pair is likewise inconclusive: graph
compatibility alone does not construct physical bases.

This theorem generalizes the finite-label argument already used in the
[Fourier-neighbourhood proof](../../FourierNeighbourhood/PROOF.md),
§§2–4. Its contribution here is the explicit phase-box capacity bound
and the precise completeness/graph contract for the campaign's folds
and ghosts. It does not assert that all X(α) carriers, or all cells
meeting their folds, satisfy that contract.
