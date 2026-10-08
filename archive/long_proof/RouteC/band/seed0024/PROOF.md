# Closing the 36 boxes at the (0,0,2,4)-class seeds

*Status: certificate PASS, 7 Oct 2026. Receipt: `close36_receipt.json`. Controls: `controls36.py`.*

## Statement

Let θ lie in one of the 36 boxes of `seed_boxes38.jsonl` near the seeds ±θ*, where θ* = (0, 0, 2π/3, −2π/3). Let H be any order-6 complex Hadamard matrix whose dephased leading corner is E(θ). Then:

- **(A)** if M(H) < 5, then d_F(H) < 1/30; or
- **(B)** some corner of H has R > cap, where cap ≥ sup over the box of R(E).

Here M(H) is the largest corner discriminant of H.

**Consequence.** Suppose E is a maximal corner of H. Then M(H) = R(E) ≤ cap < 5, so (B) is impossible and (A) puts H in the 1/30 F6 tube. ClusterTube shows no quartet edge lies there. Hence no θ in these boxes is the maximal-corner seed of a quartet edge. This closes the last 36 post-E rows.

## Why the corner chart cannot do this

At θ*, rows 0 and 1 of E are equal, so g = det(6I − EE†) = 0 in every frame. The completions form a continuum through F6.

`seed_quartic.py` proves exactly that R = −1296·q(h)² + O(h⁵). R is positive only on a thin cusp around the cone q = 0, and that cusp is the only place completions exist, because every corner of a Hadamard has R ≥ 0.

## Proof

All constants are computed in Arb by `close36.py`. Write t = max|θ₁|, |θ₂| ≤ 1.534·10⁻³, and t′ for the distance of θ₃, θ₄ from θ₃*, θ₄*, with t′ ≤ 1.023·10⁻³. Conjugation maps −θ* to θ* and preserves R, M and d_F, so assume the seed is θ*. Dephase H.

1. **Row 1.** Row 1 = (1, a, b, x). Orthogonality to row 0 gives Σ|x_j + 1|² = 2(1 − cos θ₁) + 2(1 − cos θ₂) ≤ 2t².

2. **Half-row sums.** Every other row r = (f, g) is orthogonal to rows 0 and 1. That gives 2Σf = −(f·α + g·β), so |Σf| = |Σg| ≤ L = (2 + √6)·t/2.

3. **Triple lemma.** Suppose |1 + z₁ + z₂| ≤ L for unit z. Then |cos φ₁ + ½| ≤ L + L²/2. So, up to swapping, z₁ lies within κ₁L of ω and z₂ within κ₂L of ω², with κ₂ = 1 + κ₁ (κ₁ ≈ 1.19).
   - Each half-row is therefore a near-zero-sum triple. Each row r ≥ 2 is (P or P̄, μ_r(σ_r + d_r)), where P = (1, ω, ω²), μ_r is the row's fourth entry, and |d_r| ≤ κ₂L.

4. **Orientation counts.** Orthogonality of columns 0 and 1 gives (n′ − 1)·i√3 = O(t), so n′ = 1. Hence exactly two rows have orientation P (row 2 and a partner) and two have P̄. This is `NEAR_F6_CLOSURE.md` §5.
   - Let k be a P̄ row. The relation ⟨r₂, r_k⟩ = 0 forces σ_k = σ̄₂.

5. **Pairing.** Same-orientation rows satisfy ⟨f, f′⟩ ≈ 3, which forces σ′ = σ and |μ′ + μ| ≤ p. The bounds are p ≈ 0.0124 for the P pair and p_ν ≈ 0.0156 for the P̄ pair.

6. **The model point K.** Set K(μ, ν) = rows 1⁶; (1,1,1,−1,−1,−1); (P, μσ); (P, −μσ); (P̄, νσ̄); (P̄, −νσ̄). This is an exact Hadamard, and it lies on the seed continuum S.
   - With μ = μ₂ and ν = μ_k, rows 0, 1, 2 and k of H lie within ε_pf = 0.00748 of K, in maximum entry error.
   - The whole phase-difference matrix has Frobenius norm at most DF = 0.0562.

7. **Branch (B), corners.** For B on the same rows as A, R(A) = (2·Im q(B))², with q(B) = perm(B)·det(B)²/∏B_ij (`RouteC/averaging`). The polynomial 2·Im q has 48 unit terms of ℓ¹-degree 8 or 12, so it is 432-Lipschitz in the maximum entry error.
   - On rows {i, j, k}, with i ∈ {0, 1}, j in the P pair and k in the P̄ pair, √R(A_H) ≥ |2·Im q(B_K)| − 432·ε_pf.
   - If a partner row is used, the parameter read from it moves by at most 1.001·p (or 1.001·p_ν), so the cell is enlarged by that amount.

8. **Branch (A), tube.** H = G ∘ e^{i(φ_K + Δ)} for a dephased F6-orbit member G = Π F Π′. So H is equivalent to F ∘ e^{iψ} with ‖P_hor ψ‖ ≤ ‖P_hor φ_K‖ + DF.
   - If that is at most 3/10, the lemma agent's theorem (`simplerproof/averaging_lemma/PRACTICAL_LOCAL.tex`, verifier PASS) gives: M < 5 implies d_F ≤ 0.03280 < 1/30.

9. **Certified cover.** For both σ, every cell of the (α, β) torus (μ = e^{iα}, ν = e^{iβ}) satisfies one of:
   - (A): sup ‖P_hor φ_K‖ ≤ 3/10 − DF = 0.2438 for an explicit G;
   - (B): inf |2·Im q(B_K)| > 432·ε_pf + √cap = 3.233 for an explicit corner.

   The arithmetic is outward Arb. The cover uses 24,560 cells per σ: 1,848 closed by (A) and 17,148 by (B). ∎

## Controls (`controls36.py`)

- **Bound check.** On 717 numerical completions at cusp points at the maximal distance, rows 0, 1, 2 and k are within 0.0028 of K (bound 0.0075). The Frobenius phase error is at most 0.0061 (bound 0.056).
- **Non-vacuity.**
  - Raising the corner threshold by 50% makes the cover fail.
  - Shrinking the tube radius to 0.15 makes the cover fail.

## Inputs

1. **ClusterTube** (F6 tube 1/30). Unconditional.
2. **The identity R(A) = (2·Im q(B))²** (`RouteC/averaging`). Exact.
3. **`PRACTICAL_LOCAL.tex`.** This is the local theorem at F6, from the averaging-lemma work: exact-arithmetic certificate, written proof. It still needs an independent review.
4. **`NEAR_F6_CLOSURE.md` §5** for the orientation count. This step is elementary and is re-derived above.
5. **The box caps,** computed with the Arb Taylor cap of R(E) (`seed_boxes38_Rcap.json`, via `cert.R_cap_arb`).

The certificate uses no reconstruction formula and no MC inputs.
