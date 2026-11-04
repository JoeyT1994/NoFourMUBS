# Quartet exclusion

Steps 3 and 4 of [`PROOF.md`](../PROOF.md). A Hadamard matrix H, or the pair {I₆, H/√6}, is **extendable**
(`QuartetEdge` in Lean) when {I₆, H/√6} extends to four mutually unbiased bases. This component shows that no point
of a piece of the cover is extendable: neither a seed ball (Step 3) nor the neighbourhood of F₆ (Step 4). Tao's
matrix 𝒯 is not extendable (Remark 3.3). The paper cites [BW09](../README.md#references) for the stronger fact that 𝒯
admits no third basis, which the repository checks in
[`proof/theorems/TC_triple_classification/tao.py`](../proof/theorems/TC_triple_classification/tao.py). The cover itself is [`../PhaseCover/`](../PhaseCover/README.md).

## The statements

- **Lemma 3.1 (the enclosure of the completion).** For every seed θ in a seed ball, the matched completion exists,
  is Hadamard, and lies in an explicit quadratic normal-form enclosure H = exp(iQ),
  Q = Q0 + U w + ½ H2(w ⊗ w) + X z with ‖z‖ ≤ τ. It is proved by one centre computation and Arb bounds on the
  completion's Hessian ([`../proof/theorems/Z_completion_hessian/`](../proof/theorems/Z_completion_hessian/REVIEW.md)).
- **Lemma 3.2 (the local tests, Stage C in the code: the vector-cover and graph-search tests of [OAI] §6).** Given an
  enclosure of the second basis, every column of a possible third or fourth basis is a unit vector unbiased to I₆
  and to H/√6, and lies in one of finitely many certified labels. Two further bases would need twelve distinct
  labels, split into two groups of six, with every pair within a group joined by an orthogonality edge and every
  pair across the groups joined by an unbiasedness edge. Certified orthogonality and unbiasedness edge tests (the
  O/U edge tests) remove impossible edges, and an exhaustive search finds no such pattern. So no matrix in the ball
  is extendable.
- **Remark 3.3.** Tao's matrix 𝒯 is a zero-dimensional record. It is isolated, and the local tests show that it is not
  extendable.
- **Theorem 4.1.** No complex Hadamard matrix within phase distance 7/40 of F₆ is extendable. This is an exact
  cover, proved in Lean with no hypotheses. A second exact cover extends it to 9/20.

The numerics are interval arithmetic throughout: Arb (python-flint) with outward rounding, plus a margined float
search whose rejections are sampled and re-checked in Arb. Every inequality used is stated and proved in
`STAGEC.md` and `RIGOUR.md`, and formalised in Lean (`lean/NoFourMUBs/StageC/`, `NormalBound.lean`). The
floating-point rounding is outside Lean. [`ROUNDING.md`](ROUNDING.md) corrects the rounding model of RIGOUR.md §3 to
allow for underflow, and two of its constants. Every rejection still carries a margin of 10⁻⁷, at least 50 times the
rounding error.

## Contents

| Path | Proves |
|---|---|
| [`../proof/atlas/`](../proof/atlas/README.md) | **Lemma 3.2 and Remark 3.3**: the local tests (`STAGEC.md`, `RIGOUR.md`, `stagec.py`), ball records, Tao's record (`tao.py`) |
| [`../proof/theorems/Z_completion_hessian/`](../proof/theorems/Z_completion_hessian/REVIEW.md) | **Lemma 3.1**: the enclosure of the matched completion |
| [`../proof/independent/`](../proof/independent/README.md) | An independent Julia implementation of the local tests and the normal bound, used by the independent atlas checker |
| [`theorems/X_no_quartet_near_F6/`](theorems/X_no_quartet_near_F6/REVIEW.md) | **Theorem 4.1** at radius 7/40 (exact cover, verifiers in `X_no_quartet_near_F6_RESULT/scripts/`) |
| [`theorems/X_radius_045/`](theorems/X_radius_045/REVIEW.md) | Theorem 4.1 extended to radius 9/20 |

**Check.** `python3 verify.py` at the repository root replays the local tests in Arb on a sample and Tao's record.
[`tests/clique_search.py`](tests/clique_search.py) checks the graph search against a plain enumeration on random graphs.
`python3 verify.py --atlas -j N` certifies every seed ball, the enclosure plus the local tests, in Arb: 33 minutes on
one 128-core node.
