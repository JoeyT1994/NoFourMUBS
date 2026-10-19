# Open handoffs

Statements whose proof would simplify the proof further. Each folder is a self-contained brief: what to prove, what
may be used, what to deliver and how it will be checked. Labels: **PROVED** (paper proof), **CERTIFIED** (exact
computation, replayable), **NUMERICAL** (evidence only), **CONJECTURE**.

| Brief | Statement | What it would remove | Difficulty |
|---|---|---|---|
| [`R2_flatness_cross_side`](R2_flatness_cross_side/BRIEF.md) | The cross-side step: 𝒞₁₁(z, w) lies in (z + w − χ/g, zw − η); everything single-sided is done (return R, partial) | `L1/FlatData.lean` (229 KB), `FlatCheckW11` (3 min, 11 GB) | Medium–high |
| [`P_atlas_free`](P_atlas_free/BRIEF.md) | Replace the atlas by algebra: prove F (every MUB triple has a Fourier-type transition) via (A) triples with a Fourier edge, (B) local completeness along them, (C) no compact Fourier-free component of triple space | Steps 3–4 (the atlas, Stage C, boundary transfers) and the kernel atlas | Very high (C is the core of the MMVW triple conjecture). **Partly returned** ([`../returns/P_atlas_free`](../returns/P_atlas_free/REVIEW.md)): B done, A local; A + C open |

**Returned and being integrated (18 Oct):** O (zero-J strips by unsquared sums), Q (Fourier-family anchor) and S
(endpoints by counting): [`proof/coverage/returns/`](../../proof/coverage/README.md). R returned partially
([`../returns/R_flatness_structural`](../returns/R_flatness_structural/REVIEW.md)); R2 is its remaining step.

**Completed handoffs.** J (side existence), K (nonzero-J strips) and M (flatness from one weighted defect) are part
of the proof:
[`proof/coverage/returns/J_side_existence`](../../proof/coverage/returns/J_side_existence/RESULT.md),
[`proof/coverage/returns/K_nonzero_J`](../../proof/coverage/returns/K_nonzero_J/REVIEW.md), and for M the brief
[`M_flatness_one_defect`](M_flatness_one_defect/BRIEF.md) with its proof in the 17 Oct audit
([`ALGEBRAIC_PROOFS.md`](../../proof/coverage/audits/AUDIT_2026-10-17/ALGEBRAIC_PROOFS.md)), in Lean as
`L1.FlatCircuits.W_zero` (the L1 route now builds in 366 s instead of 1,173 s). L (Fourier edge) and N
(second-order Stage C) returned results that the proof does not use: [`../returns/`](../returns/).

**Considered and rejected** (survey of 17 Oct 2026): sharper normal-bound constants (the radius cap comes from Stage
C's second-order remainder, not from L or σ), further symmetry reduction (transfers already work modulo Γ; the 144 seed
maps act on T⁴, not on X), cheaper boundary transfers (about 2% of the kernel cost), and flatness by analytic
continuation from H₀ (circular).
