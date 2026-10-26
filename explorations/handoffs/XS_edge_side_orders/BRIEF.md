# Handoff XS: transfers into the edge ball without side data

**Goal.** Make the transfer into the F6 edge ball (kind T3) as simple as an ordinary corner transfer: the corner seed
lands in the edge ball, and nothing else. Today each T3 group also carries a column order, a row order and twelve
side windings, and every box needs two Krawczyk tubes of a 7-unknown system. A structural statement should remove
these, from the certificate format, the Arb and Julia certifiers, and the Lean kernel alike.

Label every claim **PROVED**, **CERTIFIED** (exact or interval computation, replayable), **NUMERICAL** or
**NOT ESTABLISHED**. Context files are in `context/`.

---

## 1. The objects

- **F6's neighbourhood.** Return W (`context/W_REPORT.md`) gives the edge chart F6-012: an augmented system in 7
  unknowns (θ₄ and the six side angles) with parameters p = (u₁, u₂, u₃, y) ∈ ℝ⁴. Here u = (θ₁, θ₂, θ₃) − (π/3, 2π/3,
  2π/3), and y = −2 Im Ψ is the fold coordinate. Its solution H(p) is Hadamard, with H(0) = F6.
  - The chart's side angles at p = 0 are φ⁰ = (3, 4, 5, 0, 2, 4) · π/3 (`context/edge_phase.py`, `PH0`).
  - The chart is evaluated in `context/edge_chart.py` and `edge_phase.chart`.
- **The edge ball (X-ball).** An ellipsoid {‖M_e⁻¹ p‖ < r_e} in p with tangent radius t = 0.13 (0.115 in the
  development data, `context/edge_ball_header.json`).
- **Return X** (`context/X_REPORT.md`, `context/X_RADIUS_045_REVIEW.md`) says no MUB quartet edge lies within
  distance 9/20 of F6. Lean has it at 7/40, which is the certificate's `x_radius`.
- **T3, as stated now** (`context/FORMAT.md` §8). Take a seed-ball box β, and K = g · H_{o_j}(θ) for θ in β, with an
  ordered corner (I, J). The certifier forms:
  - the corner seed θ′ and p′ = (θ′₁ − π/3, θ′₂ − 2π/3, θ′₃ − 2π/3, −2 Im Ψ(K[I, Jᶜ]));
  - the horizontal side angles φ′_h, with columns in the stored order `hcols` of Jᶜ, plus 2π · `wind_h`;
  - the vertical side angles φ′_v, with rows in the order `vrows` of Iᶜ, plus 2π · `wind_v`.

  It checks that p′ ∈ E_e, and that (θ′₄, φ′_h) and (θ′₄, φ′_v) lie in the unique-solution tubes of the augmented
  system (and its transpose) at p′. Then K ≅ H(p′).

  `context/t3_groups.json` lists all 22 T3 groups of the development certificate: 4 seed balls and 4,528 boxes. Each
  corner (I, J) has exactly one choice of orders and windings, but the choices vary from corner to corner.
- **The driver's rule for the orders** (`edge_phase.side_orders`, `t3_side_refs`). It picks the order and windings
  that bring the side angles nearest a reference: φ⁰ near F6, or the chart's own sides at p′, to first order. φ⁰'s
  entries are spaced by multiples of π/3, so the nearest-order rule is unambiguous while the sides move less than
  π/6.

## 2. What we want

1. **Uniqueness without tubes (the main statement).** For a Hadamard K with ordered corner (I, J), suppose:
   - p′(K) ∈ E_e;
   - the two orientation signs at (I, J) are those of the chart (or K is matched there, in whichever form is
     natural);
   - K is within distance ρ of F6 in the hor-norm of phases, for some explicit ρ.

   Then K ≅ H(p′(K)). The hypotheses must be checkable from θ′, Ψ and a coarse distance bound, with no side angles.
   The chart is a local diffeomorphism near 0 (W), so the content is that the matched completion over p′ is unique
   on the whole ball, not just near F6. State the largest ball (in t) and ρ for which you can prove it.
2. **If item 1 fails: constant side data.** Then prove that on the edge ball the nearest-order rule with the fixed
   reference φ⁰ gives one (`hcols`, `vrows`, `wind_h`, `wind_v`) per corner (I, J), from a finite table, and that the
   tube condition then holds automatically. That needs explicit bounds on the chart's side angles:
   sup over E_e of ‖φ_h(p) − φ⁰‖_∞ < π/6, and the same for φ_v. Give that sup (W's first-order map
   `_side_jac` plus a second-order remainder) as a function of t.
3. **How large t can be.** Whichever statement you prove, give the largest t for which it holds. A larger X-ball
   needs fewer seed balls around F6: the t = 0.30 attempt failed precisely on the side orders and thin tubes.

## 3. What it would remove

- **Format:** `hcols`, `vrows`, `wind_h`, `wind_v` from T3 groups (`FORMAT.md` §8).
- **Certifiers:** the two 7-unknown Krawczyk tubes per T3 box in Arb (`context/edgecert.py`), Julia and Lean.
  T3 becomes a T1-type test (corner seed in an ellipsoid, two signs).
- **Driver:** `side_orders`, `t3_side_refs` and the chart reference solves, which caused the stuck covers.
- **Lean:** the edge-ball kernel's tube soundness; uniqueness becomes one lemma on the chart.

## 4. Suggested routes

- W's chart is a diffeomorphism near 0 with explicit derivative bounds. A quantitative inverse function theorem on
  the augmented system, with the side angles eliminated by uniqueness of the side Gram equations at a fixed corner
  seed, would give item 1. The side equations have at most two solutions (the two orientations), separated by sign
  Im Ψ, so the orientation hypothesis should select one.
- X's distance bound to F6 may serve as the coarse hypothesis: every K tested in T3 is near F6 by construction.

## 5. Deliverables

`REPORT.md` with the statement(s) and proofs. Also a replayable script checking the bounds of item 2 or the constants
of item 1, and the largest t. Partial results are useful: item 2 alone at t = 0.13 already removes the stored side
data.

**Do not use** the MUB atlas or Stage C.
