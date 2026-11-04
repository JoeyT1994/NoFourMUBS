# Minimal reconstruction

This folder proves Step 2 of [`PROOF.md`](../PROOF.md), the four-phase reconstruction (the paper's reconstruction
theorem, SM Propositions S.2–S.5), without using any classification of Hadamard matrices. The definitions are in
[`RECONSTRUCTION.md`](RECONSTRUCTION.md).

A strict seed θ ∈ 𝕋⁴, one with R(θ) > 0, determines an order-six complex Hadamard matrix. The steps are:
1. Form the corner E(θ) = [[1,1,1],[1,e^{iθ₁},e^{iθ₂}],[1,e^{iθ₃},e^{iθ₄}]] and its overlap matrices
   G_h = BB† = 6I₃ − EE†, G_v = CᵀC̄ = 6I₃ − EᵀĒ.
2. Compute the invariants and the root ζ = −Ψ(B)/g = (χ + i√R)/(2g) (notation below).
3. Choose a block B with BB† = G_h and label Ψ(B) = Ψ₋, and a block C with CᵀC̄ = G_v and label Ψ(C) = Ψ₊ = conj Ψ(B).
4. Set D = −CE†G_h⁻¹B. The result H₊(θ) = [[E, B], [C, D]] is a complex Hadamard matrix (every entry of D has
   modulus one) and is unique up to equivalence.

Every class other than [F₆] and Tao's class is [H₊(θ)] for some strict seed θ (the paper's reconstruction theorem,
using block exchange). `PROOF.md` Theorems 2.2–2.5 and Corollary 2.6 reach every such class as [H₊(θ)] or its
conjugate. The construction is a surjection, not an injective parametrisation. F₆ denotes
the single Fourier matrix, not its two-parameter family.

## How this folder feeds the proof

| [`PROOF.md`](../PROOF.md) | Paper | Proved by | Where |
|---|---|---|---|
| Lemma 2.1 (side quadratic, R = 4(Im Ψ(B))²) | SM Proposition S.2 (the identities for a block) | the λ-identities | `PROOF.md` §2.1 and [`Proofs/SIDE_FIBER.md`](Proofs/SIDE_FIBER.md) §1 |
| Theorem 2.2 (matched existence): the blocks B and C | SM Proposition S.2 (Reconstruction of B and C) | the Jacobian identity of `J_side_existence` and the maximum principle | [`returns/J_side_existence/`](returns/J_side_existence/RESULT.md) |
| Theorem 2.2: every entry of D has modulus one | SM Proposition S.3 (Completion and continuity) | one entry of the defect matrix W plus relabelling | [`returns/E_matched_flatness/`](returns/E_matched_flatness/FLATNESS.md) |
| Theorem 2.3 (matched uniqueness) | SM Proposition S.2 (uniqueness) | a Vieta argument | `PROOF.md` §2.2 ([`Proofs/SIDE_FIBER.md`](Proofs/SIDE_FIBER.md) §4 is the same argument) |
| Theorem 2.4 (nonmatched converse) | SM Proposition S.4 (Equal roots at a strict corner) | projector argument and Fourier normal form | [`returns/G_prm/PRM.md`](returns/G_prm/PRM.md) |
| Theorem 2.5 (strict-corner coverage) | SM Proposition S.5 (Vanishing of R at every corner) | classification of three complete rows with R = 0 at every corner, and counting | [`Proofs/`](Proofs/README.md), with the packages for Theorem 2.5 listed below |

`python3 Proofs/verify_dossier.py` replays the checks in `Proofs/` (run by the root `verify.py`).

## Contents

| Path | Proves (in `PROOF.md`) | Replay |
|---|---|---|
| [`RECONSTRUCTION.md`](RECONSTRUCTION.md), [`Proofs/`](Proofs/README.md) | The definitions, Lemma 2.1 and the blocks with a given overlap matrix, and **Theorem 2.5** (strict-corner coverage: the classification of three complete rows with R = 0 at every corner, the routing to the Fourier families, the case J = 0, the ten-corner count) | `python3 Proofs/verify_dossier.py` |
| [`returns/J_side_existence/`](returns/J_side_existence/RESULT.md) | **Theorem 2.2, the blocks**: the Jacobian identity \|det Dγ(φ)\| = ¼\|Im Ψ(S(φ))\| of the overlap map γ and the clopen/maximum argument | `python3 returns/J_side_existence/check_jacobian.py` |
| [`returns/Q_fourier_anchor/`](returns/Q_fourier_anchor/PROOF.md) | **Theorem 2.2, the anchor**: the Fourier path H(t) is matched at a strict corner with R(t) = 144 sin²t (1 + cos t)² > 0 (0 < t < π), which starts the clopen arguments for the existence of the blocks and for coverage | `cd returns/Q_fourier_anchor && python3 verify.py` |
| [`returns/E_matched_flatness/`](returns/E_matched_flatness/FLATNESS.md) | **Theorem 2.2, every entry of D has modulus one**: one entry (`W11`, W₂₂ in `PROOF.md`'s 1-based indexing) of the defect matrix W = V̄(\|D_kl\|² − 1)B̄ᵀ, V = Cᵀ, vanishes identically, and the other entries follow by relabelling | `cd returns/E_matched_flatness && python3 verify_all.py` |
| [`theorems/R2_flatness_cross_side/`](theorems/R2_flatness_cross_side/REVIEW.md) | Theorem 2.2, the same statement across the two blocks (`FLATNESS.md` §4) | its `verification/` scripts |
| [`returns/G_prm/`](returns/G_prm/PRM.md) | **Theorem 2.4** (the nonmatched converse, SM Proposition S.4) and Corollary 2.6 (exact reach): an 81-case Fourier census and Laurent identities | `cd returns/G_prm && python3 verify_all.py` |
| [`returns/K_nonzero_J/`](returns/K_nonzero_J/REPORT.md) | **Theorem 2.5, the case J ≠ 0**: two signed corner sums, a universal identity, four curves and the product of the λ-denominators | `cd returns/K_nonzero_J && python3 verify.py` |
| [`returns/O_zeroj_unsquared/`](returns/O_zeroj_unsquared/REPORT.md) | **Theorem 2.5, the case J = 0**: two unsquared weighted sums over the nine mixed corners force XYZ = (1 − z)(z + 3)³ | `cd returns/O_zeroj_unsquared && python3 verify.py` |
| [`returns/S_endpoints_by_counting/`](returns/S_endpoints_by_counting/PROOF.md) | **Theorem 2.5, the count**: three anchored identities exclude the two rational cases p = 27/5 and p = 7 and the irrational value p_* | `cd returns/S_endpoints_by_counting && python3 verify.py` |
| [`returns/F_side_existence/`](returns/F_side_existence/README.md) | Cross-check: an independent proof of the existence of the blocks by explicit radical formulas with integer-cofactor identities. The proof uses `J_side_existence/` instead | run by `verify.py` |
| [`theorems/H_fourier_vanishing/`](theorems/H_fourier_vanishing/) | SM Proposition S.8 (Fourier vanishing), for the paper, not used by the proof | — |

Each folder under `returns/` holds one proof with its write-up, exact verifiers and certificates. Every check is exact.
`python3 verify.py` replays all of them except the own scripts of `theorems/R2_flatness_cross_side/` and
`theorems/H_fourier_vanishing/`. Theorems 2.2–2.5 are also proved in Lean (see `PROOF.md`, *What is checked, and how*).

## Notation

This folder uses the paper's notation (Methods and the SM):

| Object | Notation |
|---|---|
| Seed and corner | θ = (θ₁,…,θ₄) ∈ 𝕋⁴, E(θ) with entries e^{iθ₁}, …, e^{iθ₄} |
| Overlap entries | s = (G_h)₂₁, t = (G_h)₃₁, r = (G_h)₃₂ of the overlap matrix G_h = BB† = 6I₃ − EE† |
| Invariants | X = \|s\|², Y = \|t\|², Z = \|r\|², p = X + Y + Z, J = 2 Re(s r t̄), W = XY + XZ + YZ − XYZ, g = 27 − 3p + J, η = 9 − p + J, χ, R = 4g²η − χ² |
| Labels | Ψ(B), Ψ(C) ∈ {Ψ₊, Ψ₋}, Ψ± = (−χ ± i√R)/2 |
| Root | ζ = −Ψ(B)/g (z in the SM), with \|ζ\|² = η. The two roots are z± = (χ ± i√R)/(2g) = −Ψ∓/g |
| Matched | Ψ(C) = conj Ψ(B) |
| Forced block | D = −CE†G_h⁻¹B |
