# Rigour of the ball-Record Stage C

**What a ball Record certifies.** Take a centre P (float phases, used as exact rationals) and a radius R. Then no Hadamard e^{i(P+δ)} with horizontal ‖δ‖ ≤ R is a quartet edge.

## 1. Normal bound (`ballrecord.py`): rigorous, in Arb

- **σ.** σ is certified by an Arb Cholesky factorisation of N_bᵀ(JᵀJ − σ²)N_b, where N_b is a rational basis of N projected exactly onto N.
- **The other constants.** e₀ ≥ ‖Φ(0)‖ and j₁ ≥ ‖JT‖ come from Arb enclosures, the latter through an operator-norm upper bound. λ_max(G) and ‖G^{−1/2}‖ come from exact Gershgorin bounds on the rational 4×4 Gram matrix G = TᵀT, which is within 10⁻⁹ of I: λ_max ≤ maxᵢ Σⱼ|G_ij| and λ_min ≥ minᵢ (G_ii − Σ_{j≠i}|G_ij|) > 0, computed in exact rationals.
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

## 3. Per-expression floating-point error budget

We use the standard model fl(a ∘ b) = (a ∘ b)(1 + ε) with |ε| ≤ u = 2⁻⁵³, and γ_k = ku/(1 − ku).
- A float sum of k terms, each of magnitude at most B, has error at most γ_{k−1}·kB.
- A product of k factors has relative error at most γ_k.
- The tabled exponentials carry an input error of at most u per real coordinate.

| Quantity | Formula | Error bound |
|---|---|---|
| S_i | Σⱼ e(u_j)e(−P_ji)/√6 | each product ≤ 1/√6 with relative error ≤ 4u + γ₃; the 6-term complex sum gives \|ΔS_i\| ≤ 6·(γ₆ + 4u)/√6·2 < 10⁻¹⁴ |
| \|S_i\|, c_i = (\|S_i\|² − 1)/4π | | ≤ 2√6·10⁻¹⁴ + γ₄·7 < 10⁻¹³ |
| J_ij, B_ik, G_y, N_y | | sums of ≤ 36 products of factors ≤ √6; < 10⁻¹² |
| Bin tests (6.7), (6.12), (6.11) | both sides | sums of ≤ 50 such terms with coefficients ≤ 10: < 10⁻¹⁰ |
| Edge tests (6.16), (6.20), (6.21), joint (6.23) | | at most 20 directions × 36 products; < 10⁻¹⁰ |
| Atlas transfer test | ‖c + Mη‖ + ‖M‖w + n < R_t | c is from Arb (radius < 10⁻²⁵); M is exact up to h's averaging (< 10⁻¹⁵); the 36-term norm error is < 10⁻¹³ |

The float y-directions are used as exact real numbers: the lemmas hold for every real y.

Every rejection uses the strict comparison lhs > rhs + MARGIN, with MARGIN = 10⁻⁷ in Stage C and 10⁻⁸ in the atlas transfers. Both margins exceed the summed error of the two sides by at least 100×. So a float rejection implies the exact rejection.

## 4. Independent Arb replay (`arb_replay.py`)

A random sample of float rejections is re-evaluated in Arb (120 bits) **without** the margin:
- bins rejected by (6.7) and (6.12);
- labels whose O or U edge was removed by (6.16), (6.20) or (6.21).

At the fold centre, with R = 0.08, all 150 sampled bin rejections and all 300 sampled edge removals are confirmed. Run `python3 arb_replay.py centre_fold52.json 0.08 150`.

## Status

All three items from the earlier to-do list are closed:
- the error budget (§3);
- the Arb Gram bounds (§1);
- the Arb replay (§4).

The remaining inputs from the preprint are Lemmas 6.1–6.7, which we use as stated. Their proofs are short and are reproduced in our notation in `stagec.py` and `ballrecord.py` docstrings.
