# Handoffs: statements whose proof would simplify the proof

Each folder is a self-contained brief in the style of the returns' `inputs/BRIEF.md`. A brief states what to prove,
what may be used, what to deliver and how it will be checked. Labels: **PROVED** (paper proof), **CERTIFIED** (exact
computation, replayable here), **NUMERICAL** (evidence only), **CONJECTURE**.

| Brief | Statement | What it would remove | Difficulty |
|---|---|---|---|
| [`J_side_existence_jacobian`](J_side_existence_jacobian/BRIEF.md) | Side existence for both roots, from an exact Jacobian identity (CERTIFIED here) and a covering argument | Return F's radical construction (2.3 MB) and 12 of the 13 Lean `L1/Side*` modules (~54 kernel-minutes, 10 GB) | Low; **done** ([`RESULT.md`](J_side_existence_jacobian/RESULT.md)) |
| [`K_nonzero_J_strips`](K_nonzero_J_strips/BRIEF.md) | MC1's nonzero-J critical-strip branch from a short proof, or a relaxed window k² ∈ (1/5, 1/4) | Up to 40 `PRM/CoverageStripId*` modules (7.7 MB, data modules up to 16 min and 14 GB to elaborate) | High; **returned and verified** ([`returns/K_nonzero_J`](../returns/K_nonzero_J/REVIEW.md)); **integrated in Lean** ([`INTEGRATED.md`](../returns/K_nonzero_J/INTEGRATED.md)) |
| [`L_fourier_edge`](L_fourier_edge/BRIEF.md) | Every MUB triple (or quartet) in ℂ⁶ has a transition of Fourier type (CONJECTURE) | The 4-D atlas and nearly all of Steps 1–3, replaced by a 2-parameter exclusion on the Fourier family | Very high |

A fourth candidate, the second-order "route 2" analytic lemmas that would let Stage C run with far fewer Records, is
already briefed in `proof/atlas/route2/MILESTONE1.md` §12, preserved at the git tag `archive-2026-10-17`.

Considered and rejected (survey of 17 Oct 2026): sharper normal-bound constants (the radius cap comes from Stage C's
second-order remainder, not from L or σ; L = 6/√5 shrinks r_col by only ~3%), further symmetry reduction (transfers
already work modulo Γ; the 144 seed maps act on T⁴, not on X), cheaper boundary transfers (~2% of the kernel cost), and
flatness by analytic continuation from H₀ (circular without the identity or [CT]).
