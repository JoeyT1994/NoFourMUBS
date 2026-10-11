# Steps 1 and 2: the maxima of R, and connectedness

Six returned handoffs prove or audit Steps 1 and 2. Each is kept with its proofs and verifiers; the original zips' SHA-256 hashes are in `returns/SOURCE_ZIPS.sha256`. Every acceptance decision is exact: polynomial identities, Bernstein and Sturm certificates, and rational interval signs.

| Return | Role | Replay |
|---|---|---|
| [`C_step1_saddle/`](returns/C_step1_saddle/README.md) | **Step 1, primary proof.** A direct saddle theorem removes the interior sextic; the rest is 651 exact claims. Certificates and Lean live in `lean/Step1Gen/`, and Step 1 is fully proved in Lean | `python3 lean/Step1Gen/verify_certificates.py` (7 s) |
| [`A_deltoid/`](returns/A_deltoid/README.md) | **Step 2.** Sheet parity, continuity of θ ↦ [H₊(θ)], and connectedness of X (`CONNECTEDNESS.md`, `SHEETS_TOPOLOGY.md`). It also gives a deltoid-route proof of Step 1 | `cd returns/A_deltoid && python3 verify_all.py` (6 s) |
| [`B_exact_quotient/`](returns/B_exact_quotient/README.md) | **Cross-check.** An independent exact proof of Step 1 and of the quotient coverage. It also shows no interval box cover of T⁴ can terminate: R, ∇R and Hess R vanish at the F3 seed | `cd returns/B_exact_quotient && python3 verify_all.py` (7 s) |
| [`D_step2_audit/`](returns/D_step2_audit/README.md) | **Audit and blueprint** of Step 2 against the upstream Lean classification. It is the route the Lean formalisation follows, and it found the PR-M point | `cd returns/D_step2_audit/certificates && python3 verify_l2_identities.py` |
| [`F_side_existence/`](returns/F_side_existence/SIDE_EXISTENCE.md) | **Matched existence, sides.** At every strict seed, explicit phase sides with the prescribed Gram matrices and signatures, by polynomial identities with integer cofactors | `cd returns/F_side_existence && python3 verify_all.py` (16 s) |
| [`E_matched_flatness/`](returns/E_matched_flatness/FLATNESS.md) | **Matched existence, flatness.** The forced block of any matched pair of sides is unimodular. Flatness reduces to four weighted third-moment defects, whose eight coefficients vanish identically; the fourth-moment identity (L-id) is certified as a second proof | `cd returns/E_matched_flatness && python3 verify_all.py` (90 s) |

`verify.py` runs C, A, B, F and E.

## What is proved

**Claim A (Step 1, no classification input).** The positive local maxima of R on T⁴ are exactly the 18-point orbit, under the 144 seed maps, of θ* = (α, 2α, −α, −2α), α = arccos(1/4), with R(θ*) = 3¹³/2¹². The Hessian there is negative definite.

**Claim B (relative to MC2–MC5).** Exact sheet parity: [H_σ(Lθ)] = 𝒞^κ 𝒯^τ [H_{(−1)^{τ+κ}σ}(θ)]. Two frame symmetries at the maximum give H₊(Lθ*) ≅ K* for all 144 maps L, so the maxima carry a single class.

**Claim C (relative to MC1–MC5).** θ ↦ [H₊(θ)] is continuous on {R > 0}, and every component of {R > 0} contains a maximum.

**Theorem 2.** X = (𝓗/≅) ∖ {[S₆]} is connected. The images of H₊ and of conj H₊ are connected, since every component reaches [K*]. The family [[F₃, F₃], [F₃D(t), −F₃D(t)]] joins both images to F6.

**Matched existence (L1), without [CT].** By F and E, every strict seed has a positive matched Hadamard completion. This is the `MatchedExistence` input of the Lean main theorem `no_four_mubs_main`; the Lean port of its certificates is pending.

**Coverage corollary** ([`../atlas/COVERAGE.md`](../atlas/COVERAGE.md)). A nonempty finite union of Records in which every boundary Hadamard has an interior representative contains X. In Lean this is `Step2.coverage_of_connected`.

**Inputs.** Claims B and C, and so Theorem 2, rest on MC1–MC5 ([`../../MinimalConstruction/`](../../MinimalConstruction/README.md)), relative to the classification [CT], and on the isolation of S₆. Claim A and matched existence use neither. The open point is PR-M (`../../PROOF.md`, trust boundary).
