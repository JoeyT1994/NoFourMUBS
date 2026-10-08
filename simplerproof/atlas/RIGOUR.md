# Rigour of the ball-Record Stage C

**What a ball Record certifies.** Take a centre P (float phases, used as exact rationals) and a radius R. Then no Hadamard e^{i(P+δ)} with horizontal ‖δ‖ ≤ R is a quartet edge.

## 1. Normal bound (`ballrecord.py`): rigorous, in Arb

- **σ.** σ is certified by an Arb Cholesky factorisation of N_bᵀ(JᵀJ − σ²)N_b, where N_b is a rational basis of N projected exactly onto N.
- **The other constants.** e₀ ≥ ‖Φ(0)‖ and j₁ ≥ ‖JT‖ come from Arb enclosures, the latter through an operator-norm upper bound. λ_max(G) and ‖G^{−1/2}‖ are float eigenvalues of the exact 4×4 Gram matrix G, inflated by 10⁻⁶ relative; that inflation dwarfs any eigensolver error in a well-conditioned 4×4 matrix. *To harden:* replace them with an Arb Gershgorin or Cholesky bound.
- **The second-derivative bound.** L = 2√3 is base-independent. For horizontal w, w′:
  - Φ″[w, w′] has entries −Σ_c a_c (w_ic − w_jc)(w′_ic − w′_jc) with |a_c| = 1;
  - by Cauchy–Schwarz, ‖Φ″‖² ≤ Σ_{i<j} ‖w_i − w_j‖² ‖w′_i − w′_j‖²;
  - Σ_{i<j} ‖w_i − w_j‖² = 6‖w‖² for horizontal w;
  - and max_{i,j} ‖w′_i − w′_j‖² ≤ 2‖w′‖².

  Hence ‖Φ″‖ ≤ √12 ‖w‖‖w′‖.
- **The frame mismatch.** Stage C uses the float rounding T_f of the exact frame T. The discrepancy (T − T_f)η is added to the normal bound.

## 2. Stage C (`stagec.py`): float with explicit margins

**Exponentials.** Every bin midpoint is k/192. So e(u_j) and e(u_j − v_j) are read from `EXP192`, the float roundings of Arb values of e(k/192), with error ≤ 2⁻⁵³ per coordinate. The 36 values e(−P_ji) are computed the same way per centre. No library sine or cosine enters any decision.

**Operator norm.** K ≥ ‖e(P)/√6‖₂ uses the bound ‖A‖₂² ≤ maxᵢ Σⱼ |(A*A)_ij|, evaluated in Arb.

**All other arithmetic** is IEEE binary64 basic operations (round to nearest; numpy reductions as sums), applied to quantities with bounded magnitude:

| Quantity | Bound |
|---|---|
| \|S_i\| | ≤ √6 |
| \|q_ji\| | ≤ 1/√6 |
| \|J_ij\| | ≤ 1 |
| \|T entries\| | ≤ 1 |
| \|y_i\| | ≤ 1 (directions are normalised; Lemma 6.3 holds for every real y, so the float y is used as exact) |
| a, X, L, I, r, r_H, n | < 1 |
| K | < 1.01 |

Each tested expression (6.7, 6.12, 6.11, 6.16, 6.20, 6.21) is a sum of at most a few hundred such products and quotients. So its absolute float error is below 10⁻¹⁰, and every comparison carries MARGIN = 10⁻⁷ in the conservative direction:
- a bin or edge is **kept** when lhs ≤ rhs + MARGIN;
- a cluster radius is s = ‖h‖(1 + 10⁻¹²) + X_M + 10⁻⁹, with ‖h‖ ≤ 0.042 computed from exact integer wraps.

The graph search works on booleans and is exact.

**Inputs from the preprint, used as stated.** Lemmas 6.1–6.6 (single-vector bounds, Taylor estimate, clustering, distinct labels, edge equations), applied with our r, r_H and n. The cap of 5·10⁶ steps on the graph search can only produce a failure, never an acceptance.

## Still to do for a fully audited certificate

1. A written per-expression error bound, in the style of their Appendix A, replacing the blanket "below 10⁻¹⁰" above.
2. Arb bounds for λ_max(G) and ‖G^{−1/2}‖.
3. An independent replay of a random sample of rejected bins and absent edges in Arb.
