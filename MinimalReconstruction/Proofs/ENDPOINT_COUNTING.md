# Endpoints by counting

From return S ([`MinimalReconstruction/returns/S_endpoints_by_counting`](../returns/S_endpoints_by_counting/PROOF.md),
§§2, 3 and 7). Lean: `lean/NoFourMUBs/PRM/CoverageEndCount.lean` (`CoverageTen.anchored_count`). Verifier:
`verify_endpoint_counting.py`.

**Theorem.** Let `T` be three orthogonal unimodular rows of length six, and `c` a column. The ten corners `C ∋ c` cannot
all be of the following types (the candidates of CRITICAL_STRIP_CLASSIFICATION.md, after the geometric alternative is
routed to F6):

| Type | `p_C` | `J_C` | further data |
|---|---|---|---|
| zero, five | 0, 5 | 0 | |
| exceptional | `p⋆ = 9 − 4/(1+κ²)`, `3κ³+κ²+κ−1 = 0`, `κ > 0` | any | |
| equicorrelated endpoint | 27/5 | ±54/25 | `X_C = Y_C = Z_C = 9/5` |
| endpoint `p = 7` | 7 | ±2 | `{X_C, Y_C, Z_C} = {1, 1, 5}` |

So no all-critical Hadamard matrix other than F6 exists (STRICT_CORNER_COVERAGE.md), and neither endpoint needs a
separate exclusion.

Notation: for a corner `C`, `s_C, t_C, r_C` are the off-diagonal Gram entries, `X = |s|²`, `Y = |t|²`, `Z = |r|²`,
`p = X + Y + Z`, `J = 2 Re(s r t̄)` (signed; complementary corners have the same `X, Y, Z, p` and opposite `J`).

## 1. Three universal identities

They use only unit entries and orthogonal rows.

1. **First moment.** `Σ_{C∋c} p_C = 54` (the anchored half of the fixed-row sum 108).
2. **Vertex sums of `J`.** For every column `i ≠ c`, `d_i = Σ_{C ⊇ {c,i}} J_C = 0`. With `a, b, γ` the relative phases
   of the row pairs `(0,1), (1,2), (2,0)` (so `Σa = Σb = Σγ = 0`, `a_j b_j = γ̄_j`, `a_j γ_j = b̄_j`, `b_j γ_j = ā_j`, whence
   `Σ ab = Σ aγ = Σ bγ = 0`, and `a_j b_j γ_j = 1`), the complex sum over the four corners through `{0, i}` is
   ```
   Σ_k (a_0+a_i+a_k)(b_0+b_i+b_k)(γ_0+γ_i+γ_k)
     = (b_0+b_i)(γ_0+γ_i)Σa + (a_0+a_i)(γ_0+γ_i)Σb + (a_0+a_i)(b_0+b_i)Σγ
       + (γ_0+γ_i)Σab + (b_0+b_i)Σaγ + (a_0+a_i)Σbγ − 2u_0 − 2u_i + Σ_{j≠0,i} u_j,   u_j = a_j b_j γ_j − 1,
   ```
   which vanishes; `J_C = 2 Re(a_C b_C γ_C)`. (The return derives it from `Σ_{C∋c} J_C = 0`, by Cauchy–Binet and
   `|det E_C|² = 27 − 3p_C ∓ J_C`, and complementation.)
3. **Fourth moment.** For six unit numbers `u_j` with zero sum, `Σ_{C∋c} |Σ_{j∈C} u_j|⁴ = 54 + |Σ_j u_j²|²`. Applied to
   the row pair `(0,1)`: `Σ_{C∋c} X_C² ≥ 54`.

## 2. The window of `p⋆`

`κ ∈ (11733/25000, 4697/10000)` (the cubic is increasing on `κ > 0` and changes sign there), so
`p⋆ ∈ (5.722, 5.723)` (`p⋆ ≈ 5.722206`). An irrationality argument would do as well; the window is what the Lean
proof uses. The window must be this narrow: with `(17/3, 29/5)` a corner value such as `143/25` would satisfy every
count below.

## 3. The count

*No exceptional corner.* For a corner in the window, `5p − 28 ∈ (0.61, 0.615)`; for the others `5p` is an integer
(0, 25, 27, 35). If `n ≥ 1` corners are in the window, `270 − Σ⌊5p⌋` is an integer in `[0.61n, 0.615n]`, and there is
none for `1 ≤ n ≤ 10`.

*Signs balance at every vertex.* Identify the ten corners with the edges of `K₅` on the other five columns. At a vertex,
`d_i = 0` reads `2A + (54/25)B = 0`, where `A` (resp. `B`) is the number of positive minus negative `p = 7` (resp.
equicorrelated) edges there; `|A|, |B| ≤ 4` forces `A = B = 0`. Summing over vertices, both endpoint types have as many
positive as negative corners, so both counts `n₇`, `n_e` are even.

*Counts.* `25n₅ + 35n₇ + 27n_e = 270` with `n₀ + n₅ + n₇ + n_e = 10` has the solutions `(n₀,n₅,n₇,n_e)` =
`(0,0,0,10), (0,4,1,5), (0,8,2,0), (2,1,7,0)`; with even endpoint counts only the first and third remain.

* Ten equicorrelated corners: `Σ X_C² = 10 · (9/5)² = 162/5 < 54`, against the fourth moment.
* Two `p = 7` corners, one with `J = 2`, one with `J = −2` (signs balance): every vertex has as many positive as negative
  edges, so the two edges have the same endpoints. For an edge `k = {i, j}`: `2 a⁺_k ≤ P_i + P_j = N_i + N_j ≤ a⁻_k + 1`
  (`P`, `N` the positive and negative degrees, `Σ a⁻ = 1`), and `a⁺_k + a⁻_k ≤ 1`, so no edge is positive. ∎

The return's single quadratic rule `Σ_{C∋c}(X²+Y²+Z²) − 6Σ_i d_i² = 162 + Σ_{a<b}|M_ab|² ≥ 162` (its §§1–6) packages the
same three identities; the unbundled count above is the one formalised.

## Verification

`python3 verify_endpoint_counting.py` (standard library, exact): the return's universal algebra (fourth moment, anchored
cubic sums, rank-one determinant, exact phase strips over `Q(ω)`), the pair-anchored identity above, the window, the
count profiles with parity, the vertex balance, all signed two-edge placements and the ten-equicorrelated bound.
