# Notation shared by the targets

Everything here is as in the code ([Certification/](../NumericalCampaign/Certification/README.md)) and the reduction
([REDUCTION.md](../NumericalCampaign/REDUCTION.md)).

## Seeds and the corner invariant

- **Seeds.** θ = (θ₁, θ₂, θ₃, θ₄) ∈ T⁴ = [−π, π)⁴, with a = e^{iθ₁}, …, d = e^{iθ₄}.
- **Dephased corner.** E = [[1, 1, 1], [1, a, b], [1, c, d]].
- **Row and column Grams.** For a 3×3 matrix M with unimodular entries, let G = 6I − M M†.
  The diagonal of G is 3. Its off‑diagonals are s = G₂₁, t = G₃₁, r = G₃₂.
  - The row Gram of E is G_h = 6I − E E†.
  - The column Gram of E is G_v = 6I − Eᵀ Ē.
- **Invariants.** With X, Y, Z = |s|², |t|², |r|²:

      p = X + Y + Z,   J = 2 Re(s r t̄),   W = XY + XZ + YZ − XYZ,
      g = 27 − 3p + J,   η = 9 − p + J,   χ = W − (p − 9)(p − 18) + (p − 15) J,
      R(M) = 4 g² η − χ².

  This is `R_float` in [domain.jl](../NumericalCampaign/Certification/domain.jl). p and W are even in (s, t, r); J is odd.
- **Exact facts** ([Domain/verify_reduction.py](../NumericalCampaign/Domain/verify_reduction.py)):
  - R is invariant under row and column orderings (after re-dephasing), transpose and conjugation.
  - Negating (s, t, r) maps R(p, J, W) to R(p, −J, W) (check 5).
- **Shorthand.** R(θ) = R(E); R_c is the R of corner c.

## The positive sheet

- **H₊(θ)** is the positive-sheet reconstruction of a complex Hadamard matrix of order 6 with
  top-left corner E. It is defined for R(θ) > 0
  ([MinimalConstruction/RECONSTRUCTION.md](../MinimalConstruction/RECONSTRUCTION.md) §3;
  the Taylor-model version is [fasthplus.jl](../NumericalCampaign/Certification/fasthplus.jl)).
- **Radical chain.** H₊ is built from E through √R, then a side square root δ on each side
  (h, v), then a cube root w on each side, plus divisions by g, by ρ = (n + Re dF)/2 and by
  the side vectors P_j.
- **Degeneration at R = 0.** The two sheets H₊ and H₋ meet there, and the side constructor
  degenerates: the enclosure of ρ reaches 0.
- **Accepted inputs.** The reconstruction's denominators are accepted as nonvanishing only on
  R > 0 ([ASSUMPTIONS.md](../MinimalConstruction/ASSUMPTIONS.md)).
- **Blocks.** H₊ = [[E, B], [C, D]] with 3×3 blocks.
- **Corners.** A positional corner c = (rows, cols) is a choice of 3 of the 6 rows and 3 of the
  6 columns, giving 20 × 20 = 400 corners. Corner (012|012) is E.

## The domain

- **F.** Xh ≥ Yh ≥ Zh, Xv ≥ Yv ≥ Zv, and (Xh, Yh, Zh) ≥_lex (Xv, Yv, Zv). This is a
  fundamental domain for orderings and transposition, and has volume 1/72 of T⁴.
- **D₀.** R(θ) > 0 and R(θ) ≥ R_c for all 400 corners c of H₊(θ). Its volume is about
  0.64% of T⁴.
- **D₀ ∩ F** has volume about 8.9·10⁻⁵ of T⁴.
- **Reduction.** Every non‑F6, non‑Tao Hadamard is equivalent, up to conjugation, to some
  H₊(θ) with θ ∈ D₀ ∩ F. So "no θ ∈ D₀ ∩ F gives a quartet edge" implies that there are no
  four MUBs in C⁶. This is conditional on the accepted inputs.

## Distances and rays

- **d_F(U).** The distance of a unitary U to the F6 orbit, as defined in
  [ProvenResults/FourierNeighbourhood](../ProvenResults/FourierNeighbourhood/README.md).
  D2 proves that every quartet edge has d_F > 1/1024.
- **Common unbiased rays of (I, H).** These are z = (1, e^{iφ₁}, …, e^{iφ₅}) with
  f_j(φ) = |Σ_k conj(H_kj) z_k|² − 6 = 0 for j = 1, …, 6. Since Σ_j f_j ≡ 0, there are 5
  independent equations.
- **Jacobian.** J(φ) is the 6×5 matrix ∂f/∂φ, and σ_min(J) is its smallest singular value.
  - A **fold** is a point where σ_min(J) = 0 at a real ray (two rays merge).
  - A **ghost** is a near-miss: |f| is small and σ_min(J) is small, but there is no real
    ray there.
