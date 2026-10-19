# Handoff R2: the cross-side step of structural flatness

Follows handoff R; its partial return is in `explorations/returns/R_flatness_structural/` (read `REPORT.md` and
`proofs/`). Everything on a single side is done. What is missing is one identity coupling the two sides through K.

## Setting (return R's notation)
Corner E with G_h = 6I − EE*, G_v = 6I − EᵀĒ, F = 6I − E*E = G_vᵀ, K = −E*G_h⁻¹ (so K G_h K* = 6F⁻¹ − I). A normalised
side A with Gram G and label z has L_A = A^{∘2}(A^#)⁻¹, and return R proves L G^T = 𝒯(G) − z̄D_λ, diag L = λ̄,
det L = −(z + 2), and vv* = G/3 + R₁ψ₁ + R₂ψ₂ for each column v, where R₁, R₂ have five nonzero entries and are built
from L. For the forced block D = Vᵀ K B (sides B on (G_h, z), V on (G_v, w)):

  |Dᵢⱼ|² − 1 = Σ_{p,q} 𝒞_pq ψ_{p,v}(vᵢ) ψ_{q,h}(bⱼ),  𝒞_pq = tr(R_{p,v}ᵀ K R_{q,h} K*),

so flatness is 𝒞 = 0. Numerically 𝒞 vanishes exactly when w = z̄.

## The statement to prove
> **Lemma R2.** Treat the two labels as independent variables z (horizontal) and w (vertical), using that L, R₁, R₂
> are affine in the label and λ is determined by λⱼP̄ⱼ = g + cⱼz̄. Then 𝒞₁₁(z, w) lies in the ideal
> (z + w − χ/g, zw − η), universally over strict corners.

Since the conjugate label w = z̄ satisfies z + w = χ/g and zw = η (Lemma 2.1), this gives 𝒞₁₁ = 0 for matched sides, and
handoff M's relabelling gives the other entries. The existing certificate already has this shape:
W₁₁(z, w) = B₀(z + w − χ/g) + D₀(zw − η) with B₀ = C₀ and A₀ + (χ/g)C₀ + ηD₀ = 0 (return R's baseline replay). The task
is to find B₀ and D₀ structurally, from the metric identity, the sparse formula, K G_h K* = 6F⁻¹ − I and the corner–side
coupling L_B G_hᵀ + L_E(EE*)ᵀ = diag(t_B + t_E), instead of by expansion.

Also give the exact relation between 𝒞 and W = V̄ΔB̄ᵀ, so that "W₁₁ alone suffices" (handoff M) carries over to 𝒞₁₁.

## Fallback
If no structural proof appears, measure the size of a rational certificate for 𝒞₁₁ = 0 (in the ideal form above) against
the current one (`lean/NoFourMUBS/L1/FlatData.lean`, 229 KB). A much smaller certificate is already worth integrating.

**Difficulty:** medium–high. **Payoff:** `FlatData.lean` and about 3 min and 11 GB of the Lean build.
