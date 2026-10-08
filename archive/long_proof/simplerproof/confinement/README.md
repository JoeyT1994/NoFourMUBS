# Step 3: global confinement — the handoff and three independent returns

**Open statement.** For every order-6 complex Hadamard matrix H,

  M(H) < 26 ⟹ ν(H) ≤ 0.55,

where M is the largest corner invariant and ν the smallest horizontal phase norm to the F6 orbit. It is the only missing step of the short proof ([`../README.md`](../README.md)).

**Status, 8 Oct 2026: still open.** Three agents worked on the self-contained [`handoff/PROMPT.md`](handoff/PROMPT.md) independently.
- None proves the theorem.
- None finds a counterexample.
- Together they shrink the region where a counterexample could live.

All three packages replay cleanly on our machine; the logs are next to each folder, as `*_REPLAY_2026-10-08.log`. Their SHA-256 manifests match the delivered files. The proofs use exact or outward-interval arithmetic throughout, with no floating-point acceptance decisions.

## What is now proved

| Result | Return |
|---|---|
| **Fourier families, sharp.** On both complete two-parameter Fourier families, their transposes and all equivalents, M = 36(\|sin(2x−y)\| + \|sin(x+y)\| + \|sin(x−2y)\|)². Hence M < 26 ⇒ ν < 0.3584. | A, B, C |
| **Full-Hadamard tube around the families.** Within phase distance 0.042 of either family, M < 26 ⇒ ν < 0.55. This holds for non-affine H too. | C (B: radius 1/40) |
| **Hadamard-corner stratum.** If some corner is an order-3 Hadamard, H is a Fourier-family member or Tao. So confinement holds on that stratum, and on a thin collar around it (det² ≥ 27 − 10⁻¹⁶). | A, C |
| **Local-minimum reformulation.** ν is finite, attained and continuous. Given the certified local lemma, confinement is equivalent to: no local minimum of M with M < 26 and ν > 0.55. | A, B, C |
| **One-partition theorem.** No local minimum with 0 < M < 26 has all its active corners inside a single 3+3 partition. This uses the chart coverage on 0 < M < 26; the exact barrier is (233472√6 − 488448)/3125 > 26. | B |
| **Sharper gauge.** d_F ≤ 0.0914 ⇒ ν < 0.55. Our original rounded radius 0.09138 was off by 10⁻⁵; our docs now use 0.0913. | A, B, C |
| **Chart denominators.** On physical corners with R ≥ ε: g ≥ (ε/2)^{1/3}, \|P_j\|² ≥ ε/36, n ≥ g/27 and ρ ≥ g/54. | C |
| **Global identities.** Every row triple has permanent-square sum 72. Determinant/permanent balance holds for complementary blocks, and every row triple has a split with det² ≥ 54/5. | A, B, C |

## Where a counterexample would have to live

Combining the returns, a counterexample H must satisfy all of the following:
- 0 < M(H) < 26 and ν(H) > 0.55;
- phase distance greater than 0.042 from both Fourier families;
- no corner with det² ≥ 27 − 10⁻¹⁶;
- H is a local minimum of M whose active corners span **several** 3+3 partitions, with 0 in the convex hull of at most five active gradients.

Cross-partition ties do occur at low M: an exact Fourier-family point has 72 active corners across 18 partitions. So closing the gap needs control of the gradients, not just a count of ties.

**Numerically there is nothing there.** Local minimum searches (ours with 2,000 starts; the agents' with 30, 183 and 8 starts) find only F6 (M = 0) and values at or above 205.42 (205.42, Tao at 243, 250.74, 256, 260.62).

## Two routes to closing the gap

1. **Analytic.** Exclude cross-partition convex balances of active gradients with 0 < M < 26, for example with a gradient-coupling inequality across partitions.
2. **Computational.** Use a certified chart cover of {seeds with 0 < R < 26} ([`../confine/`](../confine/README.md)).
   - Each cell exits by maximality exclusion, by the ν ≤ 0.55 ball, or by one of the proved regions above, such as the 0.042 Fourier tube or the corner-stratum collar.
   - A 512-job random sample on rusty left no open leaves, but about 5% of jobs (the low-R sheets) run for hours.
   - The estimated full cost is about 6·10⁴ CPU-hours.

## Contents

- `handoff/`: the round-1 prompt and float toolkit sent to the agents.
- `handoff2/PROMPT.md`: the round-2 prompt (8 Oct). It is narrowed to the cross-partition local-minimum case, states the round-1 results as usable facts, and corrects the coverage statement F7.
- `returns/A_block_locus/`: the Fourier-block locus, a descent theorem on that locus, the gauge, and the general identities.
- `returns/B_partition/`: the one-partition critical-point theorem, the 1/40 Fourier tube, the chart regularity, and the cross-partition example.
- `returns/C_fourier_tube/`: the 0.042 Fourier tube via a global gradient bound of 1767, the Hadamard-corner classification and collar, and the chart denominators.
