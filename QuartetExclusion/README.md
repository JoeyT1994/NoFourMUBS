# Quartet exclusion

Steps 3 and 4 of [`PROOF.md`](../PROOF.md). A Hadamard matrix H is a **quartet edge** when {I, H/√6} extends to four
mutually unbiased bases. This component shows that no point of a piece of the cover is a quartet edge: neither a
seed ball (Step 3) nor the neighbourhood of F6 (Step 4). Tao's matrix S₆ is excluded separately. The cover itself is
[`../PhaseCover/`](../PhaseCover/README.md).

## The statements

- **Lemma 3.1 (C1: the completion is enclosed).** For every seed θ in a seed ball, the matched completion exists, is
  Hadamard, and lies in an explicit quadratic normal-form enclosure H = exp(iQ), Q = Q0 + U w + ½ H2(w ⊗ w) + X ξ.
  Return Z proves it, by one centre computation and Arb bounds on the completion's Hessian.
- **Lemma 3.2 (Stage C, after [OAI] §6).** Given an enclosure of the second basis, every possible third and fourth
  basis column is a unit vector unbiased to I and to H, and lies in one of finitely many certified "colour" balls.
  Four MUBs need mutually orthogonal columns from these colours. Certified orthogonality tests (the O/U edge tests
  and an exact clique search) exclude every such configuration. So the whole ball contains no quartet edge.
- **Remark 3.3.** S₆ is a zero-dimensional record. It is isolated, and Stage C excludes it.
- **Theorem 4.1 (return X).** No complex Hadamard matrix within horizontal phase distance 7/40 of F6 is a quartet
  edge. This is an exact cover, proved in Lean with no hypotheses; return X_radius_045 extends it to 9/20.

The numerics are interval arithmetic throughout: Arb (python-flint) with outward rounding, plus a margined float
search whose rejections are sampled and re-checked in Arb. Every inequality used is stated and proved in
`STAGEC.md` and `RIGOUR.md`, and formalised in Lean (`lean/NoFourMUBs/StageC/`, `NormalBound.lean`). The float
rounding is outside Lean: [`ROUNDING.md`](ROUNDING.md) corrects RIGOUR.md §3's model (gradual underflow) and two of its
constants; every rejection still carries a margin of 10⁻⁷, at least 50 times the rounding error.

## Contents

| Path | Proves |
|---|---|
| [`../proof/atlas/`](../proof/atlas/README.md) | **Lemma 3.2 and Remark 3.3**: Stage C (`STAGEC.md`, `RIGOUR.md`, `stagec.py`), ball records, Tao's record (`tao.py`) |
| [`../proof/theorems/Z_completion_hessian/`](../proof/theorems/Z_completion_hessian/REVIEW.md) | **Lemma 3.1**: the C1 enclosure of the matched completion |
| [`../proof/independent/`](../proof/independent/README.md) | An independent Julia implementation of Stage C and the normal bound, used by the independent atlas checker |
| [`theorems/X_no_quartet_near_F6/`](theorems/X_no_quartet_near_F6/REVIEW.md) | **Theorem 4.1** at radius 7/40 (exact cover, verifiers in `X_no_quartet_near_F6_RESULT/scripts/`) |
| [`theorems/X_radius_045/`](theorems/X_radius_045/REVIEW.md) | Theorem 4.1 extended to radius 9/20 |

The folders under `../proof/` are bound by hash to the atlas certificate's receipts. They therefore stay byte-identical
at those paths, and are listed here rather than moved (see [`../proof/README.md`](../proof/README.md)).

**Check.** `python3 verify.py` at the repository root replays Stage C in Arb on a sample and Tao's record.
`python3 verify.py --atlas -j N` certifies every seed ball, C1 plus Stage C, in Arb: 33 minutes on one 128-core node.
