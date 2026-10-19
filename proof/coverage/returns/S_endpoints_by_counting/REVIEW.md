# Review of return S (18 Oct 2026)

**Return:** `S_endpoints_by_counting_result.zip` (SHA-256 `3cacc11f…6829`), from handoff S
(`explorations/handoffs/S_endpoints_by_counting/BRIEF.md`).

**Claim.** PROVED: for any 3×6 strip with unit entries and orthogonal rows and a fixed column c,
Q_c = Σ_{C∋c}(X² + Y² + Z²) − 6Σᵢ dᵢ² = 162 + Σ_{a<b}|M_ab|² ≥ 162, where dᵢ = Σ_{C⊇{c,i}} J_C. It rests on three facts:
Σ_{C∋c} J_C = 0 (Cauchy–Binet with |det E_C|² = 27 − 3p − J), dᵢ = 0 (J of complementary corners are opposite), and a
fourth-moment identity. With Σp = 54 and p* irrational, the four surviving count patterns all give Q ≤ 158 < 162, so
both endpoints (p = 7, and the equicorrelated p = 27/5) are excluded for every mixture. §7 gives a simpler unbundled
argument (parity of the endpoint counts; two nonzero-J edges cannot make every dᵢ vanish; Σ X² = 162/5 < 54).

**Checks.** `SHA256SUMS` matches; code scanned (standard library only); both verifiers pass (`verify.py` imports its
sibling, so run it with its folder on the path). Independent: on 200 random Fourier-family and Tao strips and 50 generic
orthogonal strips, Σp = 54, ΣJ = 0, every dᵢ = 0, Q = 162 + Σ|M|² and |det|² = 27 − 3p − J hold to 1e-7; the four
patterns and the §7 argument re-derived. No circularity: the endpoints are disjuncts of the classification, and their
exclusion is a separate input.

**Lean caveat.** Lean's `pStar_bounds` gives only 17/3 < p* < 29/5, which admits patterns with p* corners once endpoints
are allowed (e.g. 143/25). Tighten the bracket (p* ≈ 5.72221; e.g. (5.722, 5.723)) or prove p* irrational.

**Status.** Accepted; being integrated. Then deletable: `PRM/CoverageEndP7`, `CoverageEndEqui`, `CoverageEndpoints`
(about 51 KB) and the two exclusion proofs in `MinimalConstruction/Proofs/`.
