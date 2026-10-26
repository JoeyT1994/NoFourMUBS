# Handoff Z: sharp second-derivative bounds for the matched completion

**Goal.** Give explicit, sharp bounds on the second derivative of the matched completion's phases as a function of the
four seed phases. The bounds should be computable from a seed ball's centre. Then each ball's enclosure (and its
boundary transfers) follow from a formula, instead of from tens of thousands of certified boxes.

Label every claim **PROVED**, **CERTIFIED** (exact or interval computation, replayable), **NUMERICAL** or
**NOT ESTABLISHED**. Context files are in `context/`.

---

## 1. The objects

Seed θ = (θ₁..θ₄), corner E(θ) = [[1, 1, 1], [1, a, b], [1, c, d]] with (a, b, c, d) = e^{iθ}. On the strict domain
Ω = {R(θ) > 0}, the matched completion is H_o(θ) = [[E, B], [C, D]]
(`context/PROOF.md` §2, `context/SEED_ATLAS_SPEC.md` §1–2):
- the sides B = (1; x; y) and C (similarly) solve the side Gram equations (three complex equations; real Jacobian
  6 × 6);
- the orientation o is fixed by sign Im Ψ;
- D = −C E*(B*)⁻¹.

Let Q(θ) ∈ ℝ³⁶ be its phase matrix in the horizontal gauge (h = P₆ · P₆, row and column sums zero). This is
analytic on Ω.

A **seed ball** is θ = θ₀ + M_θ w, ‖w‖ ≤ r (r = 0.08–0.125). It needs the **C1 enclosure**

  ‖h(Q(θ₀ + M_θ w)) − P − U w − 2πN‖ ≤ n  for all ‖w‖ ≤ r,

with P = h(Q(θ₀)), U = h(DQ(θ₀)) M_θ, and n at most about 3× the true maximum (Stage C fails beyond that).

Today n is certified box by box: second-order Taylor models, a Krawczyk test for the sides, a residual correction for
D, then arg. That takes about 50,000 boxes per ball, for 1,903 balls. `context/ball_table.csv` lists 300 real balls:
centre, frame singular values, r, certified n, sampled true n, and R at the centre. Typical values: n ≈ 0.004–0.012 at
r = 0.1, with R between O(1) and O(300).

## 2. What we want

1. **Explicit DQ and D²Q** on Ω, by implicit differentiation of the side equations, then D = −C E*(B*)⁻¹, then arg.
   The Hessian should be a formula in θ, the side angles, and the inverse side Jacobians.
2. **A computable, sharp bound** ‖D²Q(θ)‖ ≤ C(θ₀, ρ) for ‖θ − θ₀‖ ≤ ρ, in terms of quantities evaluated once at the
   centre:
   - σ_min of the two side Jacobians;
   - |det B| and |det C|;
   - R(θ₀), or √R;
   - ρ, through an explicit Lipschitz extension of these quantities (e.g. a third-derivative bound).

   Then n ≤ ½ C · ‖M_θ‖₂² r², plus rounding.

   **Sharpness is essential:** C must come within a small factor (≤ 2–3) of the true sup ‖D²Q‖ on the balls in
   `ball_table.csv`. A bound off by 100× is useless.
3. **The same for the corner-change maps.** At another corner (I, J), the seed of g · e^{iQ} is θ′ = L g Q, linear in
   Q. So D²θ′ = L g D²Q, which item 2 covers. Say how to also bound the two Ψ signs at the new corner over a box, e.g.
   a Lipschitz bound for Im Ψ in Q.
4. **Degeneration.** Near R → 0 (F6), C blows up. Say how, e.g. C ~ c/√R or c/R. Near F6 a separate result (return X)
   already handles d([H], [F6]) ≤ 0.45, so only R bounded below matters.

## 3. Why it matters

The certificate's cost is dominated by these boxes: about 400 core-hours of interval arithmetic now, and 15k–30k
core-hours for the Lean kernel check. A sharp per-ball formula replaces the C1 boxes with one evaluation per ball. It
also makes boundary transfers a second-order test with a known remainder, so far fewer, cheaper boxes. The interval
machinery stays only where the formula is too loose.

## 4. Suggested routes

- The side equations are explicit trigonometric polynomials (`context/seedball.py`; their Jacobian is in
  `context/SEED_ATLAS_SPEC.md` and `context/Krawczyk.lean`). Implicit differentiation gives Dx = −J_x⁻¹ J_θ and
  D²x = −J_x⁻¹ (J_xx[Dx, Dx] + 2 J_xθ[Dx] + J_θθ).
- D = −C E*(B*)⁻¹: products and one inverse. Bound ‖(B*)⁻¹‖ through |det B| (each adjugate entry ≤ 2).
- arg of unimodular entries: D² arg z = Im(D²z / z) − Im((Dz / z)²)-type terms.
- Return W (`context/W_REPORT.md` §7) has derivative bounds of this kind for the edge chart, but its Hessian constant
  (1.5·10¹¹) is far too loose. The point here is sharp constants.

## 5. Deliverables

`REPORT.md` with the formulas, the bound C(θ₀, ρ) with proof, and its numerical sharpness on `ball_table.csv` (the
ratio of bound to true Hessian sup, per ball). Also replayable scripts. Partial results are useful: the formulas plus
a bound that is sharp for R ≥ some explicit value.

**Do not use** the MUB atlas or Stage C.
