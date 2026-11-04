# Steps 1 and 2: proofs and certificates (combined index)

*A combined index of the proofs behind Steps 1–2. The main entry points are [`README.md`](README.md) here and
[`../MinimalReconstruction/README.md`](../MinimalReconstruction/README.md).*

Each proof behind Steps 1 and 2 of [`PROOF.md`](../PROOF.md) is a self-contained folder under `returns/`, with its
write-up, exact verifiers and certificates. Every acceptance decision is exact: polynomial identities, Bernstein and
Sturm certificates, and rational interval signs. The SHA-256 hashes of the source archives are in
[`SOURCE_ZIPS.sha256`](SOURCE_ZIPS.sha256). The theorems behind Steps 3–5 are in
[`proof/theorems/`](../proof/theorems/README.md).

## Used by the proof

Each replay command runs from the repository root.

| Folder | Proves (in `PROOF.md`) | Replay |
|---|---|---|
| [`C_step1_saddle/`](returns/C_step1_saddle/README.md) | **Proposition 1** (the maxima of R, SM Proposition S.1): a direct saddle theorem, then 651 exact claims, with certificates and Lean in `lean/Step1Gen/` | `python3 lean/Step1Gen/verify_certificates.py` |
| [`A_deltoid/`](returns/A_deltoid/README.md) | **Theorem 2** (connectedness, the paper's connectedness theorem): sheet parity, continuity of θ ↦ [H₊(θ)], the Fourier path H(t) to F₆ (`CONNECTEDNESS.md`, `SHEETS_TOPOLOGY.md`) | `cd Connectedness/returns/A_deltoid && python3 verify_all.py` |
| [`J_side_existence/`](../MinimalReconstruction/returns/J_side_existence/RESULT.md) | **Theorem 2.2, the blocks B and C** (SM Proposition S.2): the Jacobian identity \|det Dγ(φ)\| = ¼\|Im Ψ(S(φ))\| of the overlap map γ and the clopen/maximum argument (`RESULT.md`, identity check `check_jacobian.py`) | `cd MinimalReconstruction && python3 returns/J_side_existence/check_jacobian.py` |
| [`Q_fourier_anchor/`](../MinimalReconstruction/returns/Q_fourier_anchor/PROOF.md) | **Theorem 2.2 and Lemma 5.2 (coverage), the anchor**: the Fourier path H(t) is matched at a strict corner with R(t) = 144 sin²t (1 + cos t)² > 0 for 0 < t < π, which starts the clopen/maximum arguments for the existence of the blocks and for coverage ([`REVIEW.md`](../MinimalReconstruction/returns/Q_fourier_anchor/REVIEW.md), Lean `Step2/FourierAnchor`). | `cd MinimalReconstruction/returns/Q_fourier_anchor && python3 verify.py` |
| [`E_matched_flatness/`](../MinimalReconstruction/returns/E_matched_flatness/FLATNESS.md) | **Theorem 2.2, every entry of D has modulus one** (SM Proposition S.3): four entries of the defect matrix W = V̄(\|D_kl\|² − 1)B̄ᵀ, V = Cᵀ, whose eight coefficients vanish identically (a fourth-moment identity is certified as a second proof). The proof uses only the two coefficients of one entry (`W11`, W₂₂ in `PROOF.md`'s 1-based indexing) and gets the other three entries by relabelling ([`RELABELLING.md`](../MinimalReconstruction/returns/E_matched_flatness/RELABELLING.md)) | `cd MinimalReconstruction/returns/E_matched_flatness && python3 verify_all.py` |
| [`G_prm/`](../MinimalReconstruction/returns/G_prm/PRM.md) | **Theorem 2.4** (the nonmatched converse, SM Proposition S.4) and exact reach, by an 81-case Fourier census and Laurent identities. Its Theorem B is not used by the proof | `cd MinimalReconstruction/returns/G_prm && python3 verify_all.py` |
| [`K_nonzero_J/`](../MinimalReconstruction/returns/K_nonzero_J/REPORT.md) | **Theorem 2.5 (SM Proposition S.5), the case J ≠ 0**: two signed corner sums, a universal identity, four curves and the product of the λ-denominators ([`REVIEW.md`](../MinimalReconstruction/returns/K_nonzero_J/REVIEW.md), Lean `PRM/CoverageSigned*`) | `cd MinimalReconstruction/returns/K_nonzero_J && python3 verify.py` |
| [`O_zeroj_unsquared/`](../MinimalReconstruction/returns/O_zeroj_unsquared/REPORT.md) | **Theorem 2.5, the case J = 0**: two unsquared weighted sums over the nine mixed corners force XYZ = (1 − z)(z + 3)³, in Lean `PRM.Coverage.zeroJProduct` ([INTEGRATED](../MinimalReconstruction/returns/O_zeroj_unsquared/INTEGRATED.md), [REVIEW](../MinimalReconstruction/returns/O_zeroj_unsquared/REVIEW.md)) | `cd MinimalReconstruction/returns/O_zeroj_unsquared && python3 verify.py` |
| [`S_endpoints_by_counting/`](../MinimalReconstruction/returns/S_endpoints_by_counting/PROOF.md) | **Theorem 2.5, the count**: three anchored identities (Σ p = 54, vertex sums of the signed J, the fourth moment) exclude the two rational cases p = 27/5 and p = 7 and the irrational value p_* together ([`REVIEW.md`](../MinimalReconstruction/returns/S_endpoints_by_counting/REVIEW.md), `MinimalReconstruction/Proofs/ENDPOINT_COUNTING.md`, Lean `PRM/CoverageEndCount`) | `cd MinimalReconstruction/returns/S_endpoints_by_counting && python3 verify.py` (replayed through `verify_endpoint_counting.py`) |

The rest of Theorem 2.5 (the routing to the Fourier families and the case J = 0) is in
[`MinimalReconstruction/Proofs/`](../MinimalReconstruction/Proofs/README.md) (`STRICT_CORNER_COVERAGE.md` and the
files it cites). `python3 verify.py` replays all of the above.

## Cross-checks and provenance

| Folder | Role |
|---|---|
| [`B_exact_quotient/`](returns/B_exact_quotient/README.md) | Independent exact proof of Step 1 and of the quotient coverage. It also shows that no interval box cover of 𝕋⁴ can terminate (R, ∇R and Hess R vanish at the seed whose corner is F₃). Replayed by `verify.py` |
| [`F_side_existence/`](../MinimalReconstruction/returns/F_side_existence/README.md) | An independent proof of the existence of the blocks by explicit radical formulas with integer-cofactor identities. The proof uses `J_side_existence/` instead, and `verify.py` replays this folder as a cross-check |
