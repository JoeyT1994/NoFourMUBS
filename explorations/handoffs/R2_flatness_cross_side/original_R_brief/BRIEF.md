# Handoff R: matched flatness without the polynomial expansion

## What it would remove
`lean/NoFourMUBS/L1/FlatData.lean` (229 KB of Kronecker-coded numerators), `FlatCheckW11` (about 3 min and 11 GB to
build), and most of `FlatCheckMh`/`FlatCheckQv`. Matched flatness would then be a short structural proof.

## Current proof (return E, `proof/coverage/returns/E_matched_flatness/FLATNESS.md` §4, with handoff M)
Corner E, Gram matrices G_h = 6I − EE*, F = 6I − E*E = G_vᵀ. Sides B (BB* = G_h, label z) and C = Vᵀ (C*C = F, label
z̄). Put K = −E*G_h⁻¹ and D = CKB (the forced block). Then:
- I + E*G_h⁻¹E = 6F⁻¹ (the second-moment transport), so HH* = 6I with no flatness assumption.
- Δᵢⱼ = |Dᵢⱼ|² − 1 has zero line sums, and W = V̄ Δ B̄ᵀ vanishes in its first row and column.
- By handoff M, W = 0 follows from W₁₁ = 0 alone.
- (4.5): W_pq = Σ_{a,c} Q_v^{(p)}(z̄)_{ac} (K Q_h^{(q)}(z) K*)_{ac} − (G_v)_{0p}(G_h)_{0q}, with the third-moment
  matrices Q^{(p)}_{ac} = Σⱼ A_{aj} conj(A_{cj} A_{pj}) given in closed form by (4.3)–(4.4) in s, t, r, S, T, z and the
  λ-quantities.
- Substituting z̄ = h − z (h = χ/g) and z² = hz − η leaves two coefficients F₀¹¹, F₁¹¹ ∈ ℚ(a, b, c, d), which are
  checked to vanish by brute expansion.

## The statement to look for
> **Lemma R (third-moment transport).** Find an identity expressing M^{(q)}(z) = K Q_h^{(q)}(z) K* through
> F⁻¹, Q_v^{(p)}(z̄) (or its transpose) and terms supported on the first row and column, with coefficients in
> g, η, χ and z. Substituted into (4.5), it should make W₁₁ = 0 follow from the side quadratic gz² − χz + gη = 0
> and the λ-identities λⱼ P̄ⱼ = g + cⱼ z̄ (`PROOF.md` Lemma 2.1), with no expansion in a, b, c, d.

The second-moment identity I + E*G_h⁻¹E = 6F⁻¹ is the model: it is exactly the statement that K transports G_h to
6F⁻¹ − I. Matching enters only through z̄ = h − z, and the identities fail for the unmatched pairing, so the lemma
must use the conjugate labels.

**A weaker fallback** that is still useful: a per-entry statement |(Vᵀ K B)ᵢⱼ| = 1 for actual sides on conjugate
labels, proved column by column (one column b of B, one row v of Vᵀ), with the λ-identities.

## Deliver
A proof of Lemma R or of the fallback, written in this notation, with an exact check of any identity it asserts.

**Difficulty:** high (nothing in the data shows the factorisation yet). **Payoff:** the largest remaining certificate
in the matched-existence route, about 4 min and 11 GB of the Lean build.
