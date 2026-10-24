# Seed-space balls: prototype (24 Oct 2026)

Question: instead of 25-dimensional phase balls around full matrices, can the atlas be built from balls in the four
seed phases θ ∈ Ω, excluding quartets for every H₊(θ) in the ball? Everything here is untrusted floating point.

## Construction (`seedball.py`)

- **Completion.** For a seed θ, the horizontal side B (first row 1, six angles) solves BB* = 6I − EE*, and the vertical
  side V = Cᵀ solves VV* = 6I − Eᵀ Ē, each by Newton's method. The Jacobian of each system has determinant ¼ Im Ψ,
  nonzero on Ω. Then D = −C E* G_h⁻¹ B. Starting from an atlas centre's corner, this reproduces the centre exactly
  (|D| = 1 to 10⁻¹⁴).
- **Continuation.** Sides are continued from θ₀ along segments in steps of 0.004. Newton started directly at a distant
  point can jump branch.
- **Choice of corner.** Use the corner whose seed is furthest from the edge of Ω, estimated as R/|∇R|. The corner with
  the largest R can be much closer to the edge.
- **Seed ellipsoids.** With T = DQ(θ₀) = U S Vᵀ, the set {θ₀ + V S⁻¹ w : ‖w‖ ≤ r} maps to a nearly round 4-disc of
  radius r in entry phases. This is exactly the existing Record form, Q = P + U w + ν with ‖ν‖ ≤ n, so `stagec.py` runs
  unchanged.
- **Remainder n, two estimates:**
  - *sampled*: 1.5 × max ‖Q − P − U w‖. This is the true remainder, not certified.
  - *mean value*: 1.5 × r · sup ‖(DQ(θ) − DQ(θ₀)) V S⁻¹‖ with a sampled sup. This is the form a rigorous interval
    (Krawczyk) version would bound.

## Results

### Distance to the edge of Ω, over all 12,021 centres (best corner)

| quantile | 0% | 1% | 5% | 50% | 90% |
|---|---|---|---|---|---|
| R/\|∇R\| | 0.011 | 0.19 | 0.50 | 1.34 | 3.1 |

Only 16 centres are closer than 0.08 to the edge, and all of them are next to F6.

### Largest passing radius in matrix units, same centres

| region | record | current 25-dim test | seed, sampled n | seed, mean-value n |
|---|---|---|---|---|
| typical | 2003 | 0.10 (label 0.02) | 0.125 | 0.10 |
| near a triple (atlas used 0.04) | 2781 | 0.08 (label 0.02) | 0.10 | 0.10 |
| next to F6 (edge distance 0.035) | 562 | ≥ 0.063 | 0.063 | 0.05 |

`log_*.txt` and `fair_*.txt` have all the runs.

## Conclusions

1. **It works.** Seed ellipsoids pass Stage C at the same radii as the current balls. With an honest remainder
   (the mean-value form), they are about as large in the bulk, slightly larger near triples, and smaller next to F6,
   where the edge of Ω curves the map. The sampled remainder is 2–3 times smaller. A second-order interval bound
   (½ sup ‖Q″‖ r²) would recover part of that gap.
2. **The count would be similar to today's,** perhaps somewhat lower. The gain is structural, not computational.
3. **F6 needs one full-matrix ball; this is forced.** A finite union of seed-ball images is compact and lies in f₊(Ω).
   F6 lies in its closure but not in f₊(Ω), so seed balls alone can never close up. The atlas would be the seed balls
   plus record 877 at F6 and Tao's ball.
4. **The radius-0.04 records near triples are partly an artefact of the driver.** Record 2781 passes the current
   25-dim test at 0.08 with label radius 0.02. The driver started each child's radius ladder at its parent's radius,
   so small radii were inherited.

## What a certified version needs

- **Side enclosure.** Interval Newton (Krawczyk) on the two six-angle Gram systems over the seed ellipsoid, plus an
  interval enclosure of DQ (implicit function and chain rule through D). This bounds n.
- **Transfers in seed space.** Between ellipsoids in the same chart, the check is pure four-dimensional geometry with
  no matrices. A chart change (another corner of H₊(θ)) is needed only near the edge of Ω, and transfers into the F6
  ball are needed next to F6.
- **One new lemma.** f₊ is an open map. A class near f₊(θ) has a corner near θ, matched the same way; this follows from
  continuity of dephased corners, z₊ ≠ z₋, Prop. S.6 and the isolation of Tao. The clopen argument then runs in Ω
  directly, and nonemptiness becomes trivial.
- **What it removes.** The 25-dimensional normal-bound lemma (σ, L, the Cholesky step) for every ball except F6's, and
  the Gauss–Newton projection in the driver.
