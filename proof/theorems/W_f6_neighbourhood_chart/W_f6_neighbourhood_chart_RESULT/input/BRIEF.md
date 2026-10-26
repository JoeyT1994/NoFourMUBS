# Handoff W: one explicit chart for the whole neighbourhood of F6

**Goal.** Extend return U's four-dimensional chart through F6 from its certified cube (|uᵢ| ≤ 1/20, |y| ≤ 1/20,
about ±0.002 in the matrix metric in the y direction) to an explicit region that contains **every** Hadamard class
within quotient distance **ρ ≥ 0.13** of [F6] (ideally ρ = 0.2), with explicit constants.

Label every claim **PROVED**, **CERTIFIED** (exact or interval computation, replayable), **NUMERICAL** or
**NOT ESTABLISHED**. Context files are in `context/`.

---

## 1. Why we need it

The computer proof covers Hadamard space by balls and proves coverage by an open-and-closed argument. That needs a
closed surface around F6 that lies inside the interiors of the ordinary seed balls (`context/SEED_ATLAS_SPEC.md`
§§5, 10).

- Seed balls cannot reach F6, because R = 0 there. Return U's chart (`context/U_REPORT.md`, system (20), predictor
  (21)) gives an "edge ball" around F6.
- The seed atlas was grown out to the old F6 record. That record was a ball of horizontal radius **0.125** around F6
  in the 36-dimensional phase metric.
- Our current edge ball (chart radius r = 0.125 in its own w-coordinates; `context/edge_chart.py`) only reaches
  horizontal distance **0.044–0.089** from F6.
- That leaves a shell, 0.09 ≲ d ≲ 0.125, which no ball covers. Filling it with small seed balls costs hundreds of new
  balls and about 2M boundary boxes.

**What this handoff would allow.** With a certified chart covering d ≤ ρ for some ρ > 0.125, we tile the chart with
several edge balls out to ρ. Then:
- the existing seed atlas closes around F6 with no new seed balls;
- transfers between edge balls are exact, because they are linear in the chart's coordinates;
- the costly surface moves out to where the seed balls are already large.

## 2. What is known (`context/`)

- **U** (`U_REPORT.md`, `U_REVIEW.md`):
  - one regular corner (rows and columns 0, 1, 2; θ⁰ = (1,2,2,4)π/3, side phases φ⁰ = (3,4,5,0,2,4)π/3)
    parametrises the whole dephased Hadamard germ at F6;
  - the augmented 7-unknown system (20) in parameters p = (u₁, u₂, u₃, y) has a certified unique solution branch on
    the small cube;
  - the class map has 72-fold isotropy;
  - the joint Hessian of (20) is bounded by 46063/1000.
- **V** (`PRACTICAL_ANNULUS.md`, `LOCAL_FOURIER.md`):
  - with d = d([H], [F6]) and M = max_C R_C: M ≥ 4d² for d ≤ 1/2;
  - the local Fourier structure at F6.
- **The graph property (G)** (`SEED_ATLAS_SPEC.md` §10.1–10.2): with the normal bound σ ≥ 1.7 and ‖J(δ) − J(δ′)‖₂ ≤
  2√3 ‖δ − δ′‖₂, every Hadamard matrix with ‖h(Q − P_F)‖ < R_G = 0.45 is a graph over F6's tangent frame. So the
  natural ceiling is ρ ≈ 0.45.

## 3. The statement we want

Fix the chart Φ: p ↦ [H(p)] of U (system (20), corner 0,1,2 at θ⁰). Find an explicit region D ⊂ ℝ⁴ (a box,
ellipsoid or union of boxes) and ρ ≥ 0.13 with:

1. **Existence and uniqueness on D.** For every p ∈ D, system (20) has a unique solution in an explicit tube around
   the continuation from p = 0, so H(p) is a well-defined dephased Hadamard matrix depending analytically on p.
2. **Coverage.** Every Hadamard class [K] with d([K], [F6]) ≤ ρ equals [H(p)] for some p ∈ D. The metric is the
   quotient Frobenius distance on phases, or our horizontal norm ‖h(·)‖; say which.
3. **Injectivity and conditioning.**
   - Φ is injective on D modulo the 72-fold isotropy.
   - Explicit bounds σ_min(DΦ) ≥ s and ‖D²Φ‖ ≤ L on D.
4. **Bonus.** The image of D's boundary lies at distance ≥ ρ from [F6] (so D is exactly what is needed, nothing
   wasted).

Partial results are useful. Any ρ beyond 0.089 helps, and ρ ≥ 0.125 removes the shell completely. Items 1–2 matter
most; item 3 can be NUMERICAL at first.

## 4. Suggested routes

1. **Continuation with a certified tube.**
   - System (20) is our side Gram system with y as a coordinate, so a parametric Krawczyk test on boxes in p (as in
     `edge_chart.py`'s `chart()` and the seed balls' side tubes) certifies item 1 box by box.
   - A cover of D by such boxes, with consistent tubes on overlaps, gives the branch.
2. **Coverage via (G).**
   - (G) already says every Hadamard K with ‖h(Q_K − P_F)‖ < 0.45 is a graph over the frame: K is determined by its
     frame coordinates η ∈ ℝ⁴.
   - So item 2 reduces to showing η ∘ Φ maps D onto a set containing {‖η‖-image of the ρ-ball}: degree theory, or a
     Krawczyk inverse on boxes.
3. **Symmetry.** Use the 72-fold isotropy to cut D to a fundamental domain.

## 5. Deliverables

`REPORT.md` with the statements, explicit D, ρ, s and L, and the labelled proofs, plus replayable scripts (standard
library or mpmath/Arb) for every CERTIFIED step.

**Do not use** the MUB atlas or Stage C; this is Hadamard geometry only.
