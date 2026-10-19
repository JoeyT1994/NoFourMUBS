# Review of return R, partial (18 Oct 2026)

**Return:** `R_flatness_structural_partial.zip` (SHA-256 `f29546f3…942a`). Not used by the proof yet.

**PROVED:** single-side identities (a cofactor phase identity and a pointwise multiplication rule giving all three
λ-identities without expansion; |det E|² = 2g − 3η > 0 on strict corners); a conic normal form L_A = A^{∘2}(A^#)⁻¹ with
diag L = λ̄, det L = −(z + 2), a metric identity and a sparse formula; a projector formula vv* = G/3 + R₁ψ₁ + R₂ψ₂ with
five-entry R's; and the reduction |Dᵢⱼ|² − 1 = Σ 𝒞_pq ψ_{p,v}(vᵢ)ψ_{q,h}(bⱼ), 𝒞_pq = tr(R_{p,v}ᵀ K R_{q,h} K*), so Δ = 0
iff 𝒞 = 0. The baseline replay also shows W₁₁(z, w) = B₀(z + w − χ/g) + D₀(zw − η): matching enters only through
z + w = χ/g and zw = η.

**NOT ESTABLISHED:** 𝒞₁₁ = 0 for conjugate labels (the report's (7.1)). Rejected lead (correctly): Ψ(B) = conj Ψ(C) for
all complementary blocks fails at Tao.

**Checks.** 20/20 hashes; `verify_all.py --baseline --diagnostics` passes in 2.3 s. Independent numerical check on 40
side pairs over 10 strict corners: all side identities to 1e-14; the defect formula to 5e-13 including unmatched
pairs; 𝒞 vanishes exactly when the labels are conjugate.

**Next.** Handoff R2: prove (7.1) with the labels as independent variables, i.e. 𝒞₁₁ ∈ (z + w − h, zw − η).
