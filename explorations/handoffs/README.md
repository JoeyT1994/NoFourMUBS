# Open handoffs

Statements whose proof would simplify the proof further. Each folder is a self-contained brief: what to prove, what
may be used, what to deliver and how it will be checked. Labels: **PROVED** (paper proof), **CERTIFIED** (exact
computation, replayable), **NUMERICAL** (evidence only), **CONJECTURE**.

| Brief | Statement | What it would remove | Difficulty |
|---|---|---|---|
| [`M_flatness_one_defect`](M_flatness_one_defect/BRIEF.md) | Matched flatness from one weighted defect: W₁₂, W₂₁, W₂₂ are W₁₁ at relabelled seeds (short lemma, checked by hand) | 3 of the 4 `L1/FlatCheckF*` modules (about 12 of 20 build-minutes, 11 GB each), about half of `FlatData`, `FlatCheckMh`, `FlatCheckQv` | Low (mainly Lean) |
| [`O_zeroj_without_square_sum`](O_zeroj_without_square_sum/BRIEF.md) | Zero-J critical strips without the twenty-corner square sum (target K = (1−z)(z+3)³); return K's signed sums provably do not suffice here | `CoverageStripIdZeroData` (216 KB) and the rest of the square-sum toolchain | Medium–high |
| [`P_atlas_free`](P_atlas_free/BRIEF.md) | Replace the atlas by algebra: prove F (every MUB triple has a Fourier-type transition) via (A) triples with a Fourier edge, (B) local completeness along them, (C) no compact Fourier-free component of triple space | Steps 3–4 (the atlas, Stage C, boundary transfers) and the kernel atlas | Very high (C is the core of the MMVW triple conjecture); A and B are tractable |

**Completed handoffs.** J (side existence) and K (nonzero-J strips) are part of the proof:
[`proof/coverage/returns/J_side_existence`](../../proof/coverage/returns/J_side_existence/RESULT.md),
[`proof/coverage/returns/K_nonzero_J`](../../proof/coverage/returns/K_nonzero_J/REVIEW.md). L (Fourier edge) and N
(second-order Stage C) returned results that the proof does not use: [`../returns/`](../returns/).

**Considered and rejected** (survey of 17 Oct 2026): sharper normal-bound constants (the radius cap comes from Stage
C's second-order remainder, not from L or σ), further symmetry reduction (transfers already work modulo Γ; the 144 seed
maps act on T⁴, not on X), cheaper boundary transfers (about 2% of the kernel cost), and flatness by analytic
continuation from H₀ (circular).
