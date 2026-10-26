# Handoff ZT: boundary transfers on large patches (return Z for the sphere)

**Goal.** Make each seed ball's boundary transfers checkable on a few dozen large patches of its sphere, instead of
thousands of small dyadic boxes, by a centre-based second-order bound in the style of return Z. Then C1 and the
transfers both cost O(1) computations per ball.

Label every claim **PROVED**, **CERTIFIED** (exact or interval computation, replayable), **NUMERICAL** or
**NOT ESTABLISHED**. Context files are in `context/`. The Python files there are reference implementations (numpy, python-flint; they import each other) for reading the definitions, not something you need to run. `sample_certificate.json.gz` holds real data: every seed ball's centre data, the full transfer boxes of 200 seed balls (including the 4 with T3 transfers), and the edge ball. `seedcert.Ball(seed)` reads one seed entry.

---

## 1. Where the cost is now

Return Z (`context/Z_THEOREM.md`, `context/Z_REVIEW.md`) gives each seed ball's C1 enclosure from one centre
computation, with no subdivision. What remains box by box is the **boundary transfer**: the sphere ‖w‖ = r of each
seed ball is covered by dyadic boxes (`context/FORMAT.md` §4, units u = w/r, levels m = 2..8), and every box must map
into a neighbour. In the current development certificate (2,328 seed balls; `context/ball_boxes.csv`, one row per
ball):

| | boxes | per ball |
|---|---|---|
| T1 (corner change into a neighbouring seed ball) | 9.16 M | |
| T0 (same corner, linear) | 2.27 M | |
| T3 (into the edge ball) | 4.5 k | 4 balls |
| all seed spheres | 11.4 M | median 4,281, p90 7,450, max 109,623 |
| the edge ball's own sphere (T1 from the edge chart) | 1.17 M | levels 5–7 |

Levels 3 and 4 hold 9.6 M of them. Each T1 box costs a second-order Taylor model of Q over the box (side Krawczyk,
D, arg), a target test and two orientation tests (`context/cover.py` `nl_test`, `context/seedcert.py`). In the Lean
kernel, these boxes now dominate the cost. (An earlier survey rejected cheaper transfers as 2% of the kernel cost;
that was before Z removed the C1 boxes.)

## 2. The objects

Seed ball j: θ = θ₀ + M_θ w, ‖w‖ ≤ r, matched completion H_o(θ) with phases Q(w) ∈ ℝ³⁶ (horizontal gauge), and Z's
centre data: P, U, the frame X, the contraction τ, the Hessian constant β (`context/Z_THEOREM.md` §§2–4).

A **T1 transfer** of a sphere patch S ⊂ {‖w‖ = r} to seed ball l, with element g, ordered corner (I, J) and winding
N (`context/FORMAT.md` §4):
- θ′(w) = L_{IJ} g Q(w) + 2πN, linear in Q;
- **target:** ‖M_l⁻¹(θ′(w) − θ₀_l)‖ < r_l on S;
- **orientation:** sign Im Ψ(K[I, Jᶜ]) = o_l and sign Im Ψ(K[Iᶜ, J]ᵀ) = −o_l on S, where K = g · e^{iQ(w)}. Z
  already uses ‖D²ψ‖ ≤ 72 (`Z_THEOREM.md` around line 364).

**T0** is the same corner and linear in θ: it needs nothing new.

## 3. What we want

1. **A local second-order enclosure on a patch, from the centre.** For a patch centre w_c on the sphere and patch
   radius δ (in w), a computable bound

     ‖A (Q(w) − Q(w_c) − DQ(w_c)(w − w_c))‖ ≤ ε_A(w_c, δ)  for ‖w − w_c‖ ≤ δ,

   for a given output matrix A (here A = M_l⁻¹ L_{IJ} g, a 4 × 36 matrix). It should be **frame-preserving and
   output-weighted**, as Z's is. Z showed the scalar recipe ½ C‖M‖²δ² is provably too loose (REVIEW). The bound should
   be sharp to within 2–3× of the true sup on real balls. Say whether Z's theorem applied to the sub-ball
   (θ₀ + M_θ w_c, M_θ, δ) already gives it, and with which A-weighting. Also say how to enclose Q(w_c) and DQ(w_c)
   rigorously and cheaply: one contraction per patch, or reuse the ball's own τ.
2. **The patch test.** With item 1:
   - the target test on a patch becomes ‖a + B(w − w_c)‖ + ε_A < r_l over the patch, with a = A(Q(w_c) + ...) and
     B = A DQ(w_c). That is convex in w, so it can be checked at the patch's vertices or by a norm bound;
   - the orientation tests become a Ψ value at the centre minus 72-type second-order slack.

   State it as a lemma with every constant explicit.
3. **Patches compatible with the exact coverage check.** Keep the dyadic boxes of `FORMAT.md` §4: a patch is a dyadic
   box, enclosed in its circumscribed ball, so the coverage check is unchanged. The question is how coarse the boxes
   can be. Report, for the balls in `ball_boxes.csv` (a sample of 200 is enough), how many boxes the patch test needs
   per ball, against the counts there. Target: tens to a few hundred per ball.
4. **The edge ball's sphere.** The same for the X-ball's own sphere (edge chart F6-012, its p-coordinates, return W's
   chart). Here the boxes are at levels 5–7 because the chart's Hessian bound is loose (W's constant is 1.5 · 10¹¹).
   A sharp output-weighted Hessian for the chart would collapse these 1.17 M boxes. Say whether item 1's method
   carries over to the 7-unknown augmented system.
5. **Where it fails.** If the patch bound degenerates somewhere (small R, near the edge ball, large frame
   anisotropy), give the measured region and the fallback: small boxes only there.

## 4. Suggested routes

- Z's proof is a frame-preserving contraction for the matched branch around the centre. Run it on the sub-ball with
  centre w_c, and carry the output map A through the Newton–Kantorovich step instead of taking norms early.
- The predictor terms U and H₂ in Z are exactly DQ(w_c) and the second-derivative tensor. The remainder is what must
  be bounded on the patch.
- `context/wholeball.py` is Z's certifier as integrated (Arb). `context/tmb.py` and `context/cover.py` are today's
  box Taylor models and the cover loop, for comparison.

## 5. Deliverables

- `REPORT.md` with the lemma(s) and proofs.
- A replayable Arb (or exact) script that, given a certificate seed ball and a list of dyadic boxes with their
  transfer data, certifies them by the patch test.
- The per-ball box counts of item 3, and the edge-sphere result of item 4.

Partial results are useful. For example: the T1 target test on patches, sharp for R ≥ some explicit value.

**Do not use** the MUB atlas or Stage C.
