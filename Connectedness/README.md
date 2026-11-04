# Connectedness

Step 1 and §2.3 of [`PROOF.md`](../PROOF.md): the space 𝒳 of non-Tao Hadamard classes is connected (the paper's
connectedness theorem). Together with the minimal reconstruction
([`../MinimalReconstruction/`](../MinimalReconstruction/README.md)), this is the global half of the proof. The local
half is the cover ([`../PhaseCover/`](../PhaseCover/README.md)) and the exclusion it carries
([`../QuartetExclusion/`](../QuartetExclusion/README.md)).

## The statements

A seed θ ∈ 𝕋⁴ determines the corner E(θ) and the scalar R(θ) = 4g²η − χ² (`PROOF.md` §2.1). The strict seeds form
the region Ω = {θ ∈ 𝕋⁴ : R(θ) > 0} on which the reconstruction acts.

- **Proposition 1 (the maxima of R), SM Proposition S.1.** Every positive local maximum of R on 𝕋⁴ lies in one orbit
  of 18 points under the 144 seed symmetries: θ* = α(1, 2, −1, −2), α = arccos(1/4), R(θ*) = 3¹³/2¹². The Hessian
  there is negative definite.
- **Lemma 1.1.** The region Ω of strict seeds is path connected. Each component of Ω contains one of the 18 maxima,
  and explicit paths inside Ω join them.
- **Theorem 2 (connectedness)**, the paper's connectedness theorem. 𝒳 is connected. The reconstruction map
  f₊(θ) = [H₊(θ)] is continuous on Ω, so its image 𝒜 = f₊(Ω) is connected. The Fourier path
  H(t) = [[F₃, F₃], [F₃D(t), −F₃D(t)]], D(t) = diag(1, e^{it}, 1), puts [F₆] in the closure of 𝒜. By the
  reconstruction theorem, with block exchange, 𝒳 = 𝒜 ∪ {[F₆]}. `PROOF.md` conjugates the matrix instead of exchanging
  blocks, so its exact reach (Corollary 2.6) reads 𝒳 = 𝒜 ∪ conj 𝒜 ∪ {[F₆]}, and the Fourier path puts [F₆] in the
  closure of conj 𝒜 as well.

All acceptance decisions are exact: polynomial identities, Sturm and Bernstein certificates, and rational signs.
Proposition 1 and Lemma 1.1 are proved in Lean (`isConnected_strict`).

## Contents

| Path | Proves | Replay |
|---|---|---|
| [`returns/C_step1_saddle/`](returns/C_step1_saddle/README.md) | **Proposition 1** (SM Proposition S.1): a direct saddle theorem and 651 exact claims, with certificates and Lean generators in `lean/Step1Gen/` | `python3 lean/Step1Gen/verify_certificates.py` |
| [`omega_connected/verify_paths.py`](omega_connected/verify_paths.py) | **Lemma 1.1**: the path identities joining the 18 maxima inside Ω | run by `verify.py` |
| [`returns/A_deltoid/`](returns/A_deltoid/README.md) | **Theorem 2**: sheet parity, continuity of θ ↦ [H₊(θ)], the Fourier path H(t) to F₆ (`CONNECTEDNESS.md`, `SHEETS_TOPOLOGY.md`) | `cd returns/A_deltoid && python3 verify_all.py` |
| [`returns/B_exact_quotient/`](returns/B_exact_quotient/README.md) | Cross-check: an independent exact proof of Step 1 and of the quotient coverage. It also shows that no interval box cover of 𝕋⁴ can terminate (R, ∇R and Hess R vanish at the seed whose corner is F₃) | run by `verify.py` |

Each folder under `returns/` holds one proof with its write-up, verifiers and certificates.

`python3 verify.py` at the repository root replays everything here exactly. [`tests/negative_exact.py`](tests/negative_exact.py)
checks that the exact Step 1 checker rejects deliberately corrupted certificates.
