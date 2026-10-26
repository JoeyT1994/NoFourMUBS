# Handoff ZK: cheap constants for return Z

**Goal.** Return Z certifies each seed ball's C1 claim from one centre computation. Its Lean kernel check now works
(`Ball2299.hC1`, standard axioms only), but takes about **5.5 hours and up to 45 GB per ball**, for 2,350 balls. The
time goes into five of Z's centre constants, which are norms of sums of rank-3 and rank-4 tensors. We want bounds for
them, or a variant of Z's inequalities, that a checker can evaluate from a few scalars per row-pair term instead. The
certified n must stay within each ball's budget (§3).

Label every claim **PROVED**, **CERTIFIED** (exact or interval computation, replayable), **NUMERICAL** or
**NOT ESTABLISHED**. Context files are in `context/`. The Python files there are reference implementations
(numpy, python-flint), to read, not to run.

---

## 1. The objects

Return Z (`context/Z_THEOREM.md`; derivations in `context/Z_REPORT.md`; our replay in `context/Z_REVIEW.md`):
- **The ball.** A seed ball θ₀ + M_θ w, ‖w‖ ≤ r.
- **The predictor.** Q_p(w) = Q₀ + Uw + ½H₂[w, w].
- **The normal correction.** X z, with the frozen normal basis X.
- **The projected row-Gram residual.** G(w, z) = W Φ(q_p(w) + X z), where W is the Gram left inverse.
- **The 90 row-pair terms.** They are indexed by a = (i < j, k):
  - ν_a = e_ik − e_jk;
  - s_a = ν_a U, T_a = ν_a H₂ (a symmetric 4 × 4 matrix), d_a = ν_a X;
  - κ_a, a complex output vector (§3, (3)).

  Then p(w) = Re Σ_a κ_a exp{i(s_a w + ½T_a[w, w])} exactly.

The whole-ball theorem (§4, (7)–(9)) needs the centre constants t₃ ≥ ‖D³p(0)‖, t₄ ≥ ‖D⁴p(0)‖,
a₂ ≥ ‖D²A(0)‖ (A(w) = W DΦ(q_p(w)) X; entries (5)), c ≥ ‖W D²Φ(q₀)[U, X]‖ and d ≥ ‖W D²Φ(q₀)[X, X]‖, together with
the bound on the normal derivative over the predictor tube (§4 (8)). In the kernel these are the tensor-product
stages, for ball 2299:

| Kernel stage (`Ball2299Timings.json`) | Wall time |
|---|---|
| Normal tensor products (`Fourier2299Normal`) | 4,891 s |
| Second derivative products and reconstruction (`Fourier2299Second`, `…SecondColumns`) | 4,366 s |
| Quartic products, columns and checks (`Fourier2299Quartic*`) | about 3,800 s |
| Cubic products and checks (`Fourier2299Cubic*`) | about 1,780 s |
| Mixed derivative products (`Fourier2299Mixed`) | 1,144 s |
| Everything else (centre, Gram, jets, norms, assembly) | about 3,900 s |

That is 5.5 hours in all. Which constant each stage computes is in `context/KERNEL_WHOLEBALL_README.md` (its theorem
map) and the generator. Confirm the correspondence there before optimising.

The rest, including the scalar sums L₅ (4), L₃ₐ (6) and L₂, L₃ (2), is cheap. The stage-by-stage record is
`context/Ball2299Timings.json`. `context/KERNEL_WHOLEBALL_README.md` maps Z's sections to the Lean modules.

Z's text says "keep the sum over a before taking norms": these five constants are sharp *because* they are tensor
norms of sums. Termwise bounds such as Σ_a cn_a ‖s_a‖³ are cheap, but looser.

## 2. What we want

1. **Sensitivity first (NUMERICAL is fine).** For the balls in `context/seed_balls.json.gz`, measure how much the
   certified n_record = βr²/2 + xτ + ε_P + rε_U changes when each of the five constants is replaced by a cheap bound:
   - termwise triangle sums;
   - ‖Σ_a‖ ≤ ‖Σ_a‖_F;
   - the uniform bounds already in (2), (4), (6).

   The constants enter only through τ, via (8). If xτ is a small share of n, crude bounds may already fit the budget,
   and that is the answer.
2. **Sharper cheap bounds (PROVED).** Where crude bounds don't fit, find bounds for t₃, t₄, a₂, c and d computable in
   O(90 · small) scalar operations:
   - per-term norms;
   - Gram matrices of the s_a, d_a and T_a;
   - the structure of ν_a, which are differences of unit vectors with row-pair symmetry;
   - the 24-frequency identity that already gives ‖D²ψ‖ ≤ 72.

   A restructured inequality system in place of (7)–(9) is welcome too, e.g. a fourth-order uniform bound in place of
   t₃ and t₄ when r is small. State every result as a theorem with constants.
3. **Fit to the budget.** For each ball, its new n against its budget (§3), with the share of balls that fit. Balls
   that don't fit keep Z's full tensors, which is acceptable for a minority.

## 3. The budget

Stage C must pass at the certified n. `context/stagec_n_budget.jsonl` has, per ball j:
- `sn`: the sampled true remainder;
- `n` with `f`: the largest n = f · sn · 1.05, f ∈ {1.5, 2, 3, 4, 6}, at which Stage C passed in the driver's screen.
  This is the budget. f = null means no factor ≥ 1.5 passed.

`context/wholeball_n.jsonl` has Z's current `n_record` per ball. The budget divided by Z's bound is:

| | Ratio |
|---|---|
| Median | 2.0 |
| 10th percentile | 1.06 |
| 90th percentile | 4.2 |
| Balls at ≥ 2× | 52% |
| Balls at ≥ 3× | 22% |

So a uniformly looser method won't do; a cheap bound has to cost little in n itself. 109 balls have no budget above
1.5 × sn, and Z's contraction fails on 60.

## 4. Deliverables

- `REPORT.md` with the sensitivity table, the new bounds and their proofs.
- A replayable Arb script that computes the cheap constants and n for a given ball, from the ball's centre data, so
  that it can be compared with `context/wholeball.py`.
- The per-ball fit to the budget, for the balls in `context/seed_balls.json.gz`.

**Do not use** the MUB atlas or Stage C.
