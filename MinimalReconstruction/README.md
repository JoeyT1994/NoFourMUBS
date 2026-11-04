# Minimal reconstruction

This folder proves Step 2 of [`PROOF.md`](../PROOF.md), the four-phase reconstruction, without using any classification
of Hadamard matrices. The definitions are in [`RECONSTRUCTION.md`](RECONSTRUCTION.md).

Four unit phases a, b, c, d with R > 0 determine an order-6 complex Hadamard matrix. The steps are:
1. Form the corner E = [[1,1,1],[1,a,b],[1,c,d]] and its Gram matrices G_h = 6I − EE*, G_v = 6I − EᵀĒ.
2. Compute the invariants and the two side labels z± = (χ ± i√R)/2g (notation below).
3. Choose a horizontal side B with BB* = G_h and label z₊, and a vertical side C with C*C = 6I − E*E (= G_vᵀ) and label z₋ = z̄₊.
4. Set D = −C E* G_h⁻¹ B. The result H₊(θ) = [[E, B], [C, D]] is Hadamard (flatness) and unique up to equivalence.

Every non-F6, non-Tao equivalence class is reached this way, at a strict seed and with an orientation o = ±1
(`PROOF.md` Theorems 2.2–2.5). The construction is a surjection, not an injective
parametrisation. F6 denotes the single Fourier matrix, not its two-parameter family.

## How this folder feeds the proof

| [`PROOF.md`](../PROOF.md) | Proved by | Where |
|---|---|---|
| Lemma 2.1 (side quadratic, R = 4(Im T)²) | the λ-identities | `PROOF.md` §2.1 and [`Proofs/SIDE_FIBER.md`](Proofs/SIDE_FIBER.md) §1 |
| Theorem 2.2 (matched existence): sides | identity (J) and the maximum principle | [`returns/J_side_existence/`](returns/J_side_existence/RESULT.md) |
| Theorem 2.2: flatness | one weighted defect W₁₁ plus relabelling | [`returns/E_matched_flatness/`](returns/E_matched_flatness/FLATNESS.md) |
| Theorem 2.3 (matched uniqueness) | a Vieta argument | `PROOF.md` §2.2 ([`Proofs/SIDE_FIBER.md`](Proofs/SIDE_FIBER.md) §4 is the same argument) |
| Theorem 2.4 (nonmatched converse) | projector argument and Fourier normal form | [`returns/G_prm/PRM.md`](returns/G_prm/PRM.md) |
| Theorem 2.5 (strict-corner coverage) | strip classification and counting | [`Proofs/`](Proofs/README.md), with the packages for Theorem 2.5 listed below |

`python3 Proofs/verify_dossier.py` replays the checks in `Proofs/` (run by the root `verify.py`).

## Contents

| Path | Proves (in `PROOF.md`) | Replay |
|---|---|---|
| [`RECONSTRUCTION.md`](RECONSTRUCTION.md), [`Proofs/`](Proofs/README.md) | The definitions, Lemma 2.1 and the side fibre, and **Theorem 2.5** (strict-corner coverage: the strip classification, routing, the zero-J strips, the endpoint count) | `python3 Proofs/verify_dossier.py` |
| [`returns/J_side_existence/`](returns/J_side_existence/RESULT.md) | **Theorem 2.2, sides**: the Jacobian identity det ∂(Gram)/∂(angles) = ¼ Im Ψ and the clopen/maximum argument | `python3 returns/J_side_existence/check_jacobian.py` |
| [`returns/Q_fourier_anchor/`](returns/Q_fourier_anchor/PROOF.md) | **Theorem 2.2, the anchor**: the Fourier family K(t) is matched at a strict corner with R(t) = 144 sin²t (1 + cos t)² > 0 (0 < t < π), which starts the clopen arguments for side existence and coverage | `cd returns/Q_fourier_anchor && python3 verify.py` |
| [`returns/E_matched_flatness/`](returns/E_matched_flatness/FLATNESS.md) | **Theorem 2.2, flatness**: one weighted third-moment defect W₁₁ vanishes identically, and the other three follow by relabelling | `cd returns/E_matched_flatness && python3 verify_all.py` |
| [`theorems/R2_flatness_cross_side/`](theorems/R2_flatness_cross_side/REVIEW.md) | Theorem 2.2, flatness across the sides (`FLATNESS.md` §4) | its `verification/` scripts |
| [`returns/G_prm/`](returns/G_prm/PRM.md) | **Theorem 2.4** (the nonmatched converse) and Corollary 2.6 (exact reach): an 81-case Fourier census and Laurent identities | `cd returns/G_prm && python3 verify_all.py` |
| [`returns/K_nonzero_J/`](returns/K_nonzero_J/REPORT.md) | **Theorem 2.5, nonzero-J critical strips**: two signed corner sums, a universal identity, four curves and the λ-denominator product | `cd returns/K_nonzero_J && python3 verify.py` |
| [`returns/O_zeroj_unsquared/`](returns/O_zeroj_unsquared/REPORT.md) | **Theorem 2.5, zero-J strips**: two unsquared weighted sums over the nine mixed corners force K = (1 − z)(z + 3)³ | `cd returns/O_zeroj_unsquared && python3 verify.py` |
| [`returns/S_endpoints_by_counting/`](returns/S_endpoints_by_counting/PROOF.md) | **Theorem 2.5, the count**: three anchored identities exclude both rational endpoints and the exceptional value | `cd returns/S_endpoints_by_counting && python3 verify.py` |
| [`returns/F_side_existence/`](returns/F_side_existence/README.md) | Cross-check: the earlier proof of side existence by explicit radical sides with integer-cofactor identities (superseded by J) | run by `verify.py` |
| [`theorems/H_fourier_vanishing/`](theorems/H_fourier_vanishing/) | For the paper, not used by the proof | — |

Each package under `returns/` is kept exactly as it was delivered, with its write-up, exact verifiers and
certificates, so its internal links may name older paths. The hashes of the original archives are in
[`../Connectedness/SOURCE_ZIPS.sha256`](../Connectedness/SOURCE_ZIPS.sha256). Every check is exact. `python3 verify.py`
replays all of them except R2's and H's own scripts. Theorems 2.2–2.5 are also proved in Lean (see `PROOF.md`,
*What is checked, and how*).

## Notation

`PROOF.md`, the paper and this folder name the same objects slightly differently:

| Object | This folder and the paper | `PROOF.md` |
|---|---|---|
| Seed and corner | θ = (θ₁,…,θ₄) ∈ T⁴, a, b, c, d = e^{iθ}, E(θ) | same |
| Gram entries | s = G₂₁, t = G₃₁, r = G₃₂ of G_h | same |
| Invariants | p, J, W₀, g, η, χ, R = 4g²η − χ² | same (W₀ is written W) |
| Side signature | z = Θ(B) = −Ψ(B)/g, with \|z\|² = η | T = −Ψ(B) = g z |
| Side labels | z± = (χ ± i√R)/2g | ζ± = (χ ± i√R)/2 = g z± |
| Matched | horizontal label z, vertical label z̄ | same |
| Forced block | D = −C E* G_h⁻¹ B | same |
