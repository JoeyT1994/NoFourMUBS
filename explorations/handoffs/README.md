# Open handoffs

Statements whose proof would simplify the proof further. Each folder is a self-contained brief: what to prove, what
may be used, what to deliver and how it will be checked. Labels: **PROVED** (paper proof), **CERTIFIED** (exact
computation, replayable), **NUMERICAL** (evidence only), **CONJECTURE**.

| Brief | Statement | What it would remove | Difficulty |
|---|---|---|---|
| [`Q_fourier_anchor`](Q_fourier_anchor/BRIEF.md) | One explicit strict corner of the Fourier family K(t) for small t > 0, with R(t) in closed form; the Fourier family then anchors side existence and coverage instead of H₀ | `Step2/BaseAnchor.lean` (73 KB), its generator, `anchor.py`, the `anchor` certificate field | Low |
| [`R_flatness_structural`](R_flatness_structural/BRIEF.md) | A third-moment transport identity making W₁₁ = 0 follow from the side quadratic and the λ-identities, without expansion | `L1/FlatData.lean` (229 KB), `FlatCheckW11` (3 min, 11 GB) | High |
| [`S_endpoints_by_counting`](S_endpoints_by_counting/BRIEF.md) | A second ten-corner rule that, with Σ p = 54, excludes the two critical-strip endpoints | `PRM/CoverageEndP7`, `CoverageEndEqui` (48 KB), two exclusion proofs | Medium |
| [`O_zeroj_without_square_sum`](O_zeroj_without_square_sum/BRIEF.md) | Zero-J critical strips without the twenty-corner square sum (target K = (1−z)(z+3)³); return K's signed sums provably do not suffice here | `CoverageStripIdZeroData` (216 KB) and the rest of the square-sum toolchain | Medium–high |
| [`P_atlas_free`](P_atlas_free/BRIEF.md) | Replace the atlas by algebra: prove F (every MUB triple has a Fourier-type transition) via (A) triples with a Fourier edge, (B) local completeness along them, (C) no compact Fourier-free component of triple space | Steps 3–4 (the atlas, Stage C, boundary transfers) and the kernel atlas | Very high (C is the core of the MMVW triple conjecture). **Partly returned** ([`../returns/P_atlas_free`](../returns/P_atlas_free/REVIEW.md)): B done, A local; A + C open |

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
