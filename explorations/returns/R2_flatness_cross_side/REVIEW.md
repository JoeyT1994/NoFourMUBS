# Review of return R2 (23 Oct 2026)

**Return:** `R2_flatness_cross_side_return.zip` (SHA-256 `793750d2…`, in `proof/coverage/returns/SOURCE_ZIPS.sha256`), from
handoff R2 (`explorations/handoffs/R2_flatness_cross_side/BRIEF.md`).

**Claims.** NOT ESTABLISHED (stated by the return): a structural derivation of the cross-side cancellation.
CERTIFIED (the brief's fallback): with Q⁽¹⁾(G, z) = (H₀ + g z H₁)/d_G, d_G = P₀P̄₁, U = E*·adj(G_h) = −gK and
J_ij = tr(V_iᵀ U H_j U*) (no conjugation in the pairing),

  d_h d_v g² W₁₁ = g J₁₀ (z + w − h) + g² J₁₁ (zw − η) + F₀ + g z F₁,

and a 542-node integer Laurent circuit (8.5 KB) proves F₀ = F₁ = 0, so W₁₁ = J₁₀/(d_h d_v g)·(z + w − h) +
J₁₁/(d_h d_v)·(zw − η). PROVED: the change of coordinates W_b = M_v 𝒞 M_hᵀ with det M = (det Ā)²/3, |det M| = g/3, which
transfers the ideal membership to 𝒞₁₁.

**Checks.** All 28 files match `SHA256SUMS`; code scanned (standard library core, no network or eval). `verify_all.py`
passes (5.9 s); `--symbolic` passes all six scripts (7.7 s). Independent: on 6 random strict seeds, about 791,000
actual (B, V) side pairs found by Newton's method; W₁₁ computed directly from D = VᵀKB agrees with the closed form to
relative error 3e-11, vanishing (< 2e-11) exactly on matched pairs and up to 3.9 otherwise. F₀, F₁ vanish in exact
rational arithmetic at random non-unit points (formal Laurent identities). Controls (an extra g in H₁, or a conjugated
pairing) give nonzero residuals.

**Lean.** Our verified Kronecker checker can check F₀ and F₁ built directly from the existing `FlatCircuits`
definitions, with no JSON. A 60-line prototype (`review/R2Proto.lean`) checks both in about 16 s at `validR 1`
(290 s at `validR 2`), against about 5 min and 11 GB for today's `FlatCheckW11` + `FlatCheckMh` + `FlatCheckQv`.
A wrong target is rejected.

**Status.** Accepted (computational fallback); being integrated in place of `FlatData`'s third-moment data.
