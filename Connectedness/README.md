# Connectedness

Step 1 and §2.3 of [`PROOF.md`](../PROOF.md): the space X of non-Tao Hadamard classes is connected. Together with the
minimal reconstruction ([`../MinimalReconstruction/`](../MinimalReconstruction/README.md)), this is the global half of
the proof. The local half is the cover ([`../PhaseCover/`](../PhaseCover/README.md)) and the exclusion it carries
([`../QuartetExclusion/`](../QuartetExclusion/README.md)).

## The statements

A corner seed θ ∈ T⁴ determines the scalar R(θ) = 4g²η − χ² (`PROOF.md` §2.1). Strict seeds (R > 0) are those
the reconstruction acts on.

- **Theorem 1 (the maxima of R).** Every positive local maximum of R on T⁴ lies in one orbit of 18 points under
  the 144 seed symmetries: θ* = α(1, 2, −1, −2), α = arccos(1/4), R(θ*) = 3¹³/2¹². The Hessian there is negative
  definite.
- **Lemma 1.1.** The strict seeds S = {R > 0} form a path-connected set. Each component of S contains one of the 18
  maxima, and explicit paths inside S join them.
- **Theorem 2.** X is connected. The class map θ ↦ [H₊(θ)] is continuous on S, so its image A is connected. The
  family [[F₃, F₃], [F₃D(t), −F₃D(t)]] puts [F6] in the closure of both A and conj A. By exact reach (Corollary 2.6,
  from the reconstruction), X = A ∪ conj A ∪ {[F6]}.

All acceptance decisions are exact: polynomial identities, Sturm and Bernstein certificates, and rational signs.
Theorem 1 and Lemma 1.1 are proved in Lean (`isConnected_strict`).

## Contents

| Path | Proves | Replay |
|---|---|---|
| [`returns/C_step1_saddle/`](returns/C_step1_saddle/README.md) | **Theorem 1**: a direct saddle theorem and 651 exact claims, with certificates and Lean generators in `lean/Step1Gen/` | `python3 lean/Step1Gen/verify_certificates.py` |
| [`omega_connected/verify_paths.py`](omega_connected/verify_paths.py) | **Lemma 1.1**: the path identities joining the 18 maxima inside S | run by `verify.py` |
| [`returns/A_deltoid/`](returns/A_deltoid/README.md) | **Theorem 2**: sheet parity, continuity of θ ↦ [H₊(θ)], the joining family at F6 (`CONNECTEDNESS.md`, `SHEETS_TOPOLOGY.md`) | `cd returns/A_deltoid && python3 verify_all.py` |
| [`returns/B_exact_quotient/`](returns/B_exact_quotient/README.md) | Cross-check: an independent exact proof of Step 1 and of the quotient coverage. It also shows that no interval box cover of T⁴ can terminate (R, ∇R and Hess R vanish at the F3 seed) | run by `verify.py` |

Each folder under `returns/` holds one proof with its write-up, verifiers and certificates.

`python3 verify.py` at the repository root replays everything here exactly. [`tests/negative_exact.py`](tests/negative_exact.py)
checks that the exact Step 1 checker rejects deliberately corrupted certificates.
