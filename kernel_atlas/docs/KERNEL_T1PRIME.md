# Kernel check of T1′: the normal tube (design note, 24 Oct 2026)

**Lean side (done).** `lean/NoFourMUBs/SeedAtlas/Method/NormalTube.lean` proves, with standard axioms only, everything
analytic that the refined T1′ test (FORMAT §6; piece A's `seedcert.nu_enclosure`, piece C's `normal_tube.jl`) needs.
The entry point is `Method.normal_tube`. Fix a record `(P, T, n₀)`, one point `η` of an η-box, and data `B` (the 21
columns of `N_b`), `Yre`/`Yim` (the `21 × 30` matrix `Y`), `x̃ = xt` and `c`. If the hypotheses below hold, then every
`ν` in the T1′ claim of `RecTargetHolds` has the following form:
- `ν = N_b x*`, with `‖x* − x̃‖ ≤ r_K`;
- `|ν_ac − (N_b x̃)_ac| ≤ ρ_ac r_K` entrywise.

The T1′ claim covers every `ν` that is horizontal, orthogonal to every `T_k` and has `‖ν‖ ≤ n₀`, with
`e^{i(P + Tη + ν)}` Hadamard. The corner test of FORMAT §4 then runs on the phase models `P + Tη + N_b x̃ ± ρ r_K`.

## 1. What the kernel supplies, per record (once)

| hypothesis | check (exact or rational) | discharge lemma |
|---|---|---|
| `T` horizontal, injective | row/column sums of the integer frame = 0; Gershgorin on the 4×4 Gram `TᵀT` | `xnorm_le_of_gram` (m = 4), `nbMap_injective_of` |
| `B_j ∈ N` | exact: row/column sums 0 and `⟨T_k, B_j⟩ = 0`. So `B` must be exactly in `N`, e.g. `Π_N` of an integer matrix, with rational entries and denominator `∝ det(TᵀT)` | `normalSpace` membership |
| `‖x‖ ≤ c_N ‖N_b x‖` | Gershgorin `λ ≤ 2G_jj − Σ_k \|G_jk\|` on `G = nbGram B` (21×21), `1 ≤ c_N² λ` | `xnorm_le_of_gram` |
| `‖N_b x‖ ≤ n_N ‖x‖` | `gershgorin_upper` on `nbGram B`: absolute row sums `≤ n_N²` | `frob_nbMap_le_of_gram` |
| row bounds `ρ_ac` | `Σ_k (B_k)_ac² ≤ ρ_ac²` (36 checks) | `abs_nbMap_apply_le` |

Use the Gram (2-norm) route for `n_N`, not `frob_nbMap_le`: for a near-orthonormal basis, Frobenius gives `n_N ≈ √21 ≈ 4.6`
where the certifiers have `‖N_b‖₂ ≈ 1`. That factor enters `q(r)` once in the `s_u` term and twice in the `r` term.
The same holds for `Y` (`xnorm_yMap_le_of_gram` rather than `xnorm_yMap_le`).

For the Taylor-model arithmetic, round `B` to the `2^{-60}` grid as `B̃`. Carry `(B − B̃) x̃` as a remainder of size
`2^{-60}`. The exact rational `B` appears only in the membership check and in the Lean statement.

## 2. What the kernel supplies, per η-box (`η = η_c + u`, `|u_j| ≤ h_j`)

| hypothesis | how (Poly.lean second-order models, `Has` semantics, pointwise in `u`) |
|---|---|
| A1 `‖Y Φ_P(Tη + N_b x̃(η))‖ ≤ b_F` | `δ̃ = T(η_c+u) + B̃ x̃(u)`: 36 real models (`lin`, 21 terms each). Then 90 phase differences `δ̃_ac − δ̃_bc`, 90 `expI` (constant `e^{i(P_ac − P_bc + c_ac − c_bc)}` from `cisRound`), 15 sums of 6, Re/Im, and 21 `lin` of 30 terms (`Y`). Finally `Σ_k bnd(row_k)² ≤ b_F²` |
| `‖δ̃ − c‖_F ≤ s_u` | `c` = the constant terms of `δ̃` (grid), `Σ_e bnd(δ̃_e − c_e)² ≤ s_u²` |
| A2 `‖x − Y J_{P+c} N_b x‖ ≤ ε₀ ‖x‖` | `epsMat = I − Y J(c) B`. `J(c)` has 12 nonzeros per row, entries `∓sin`, `±cos` of the 90 angles. Bound `\|epsMat\| ≤ Ā` entrywise with rational enclosures, then check `Σ Ā² ≤ ε₀²` (`heps_of_epsMat`) |
| `‖Y w‖ ≤ y_N ‖w‖` (Hermitian `w`) | `gershgorin_upper` on `yGram` (= `Y Yᵀ`, 21×21), then `xnorm_yMap_le_of_gram` |
| start, A3 | `‖x̃‖ ≤ s_x` (21 `bnd`); `r₀ ≥ c_N n₀ + s_x`; rationals `r_{k+1} ≥ b_F + q(r_k) r_k` with `q(r) = ε₀ + y_N L n_N (s_u + n_N r)` and `L = 3.4642 ≥ 2√3` (`12 ≤ L²`). The sharper `q_h` (`s_u + n_N r/2`, `tube_step_h`) is also proved. No contraction condition: stop at the last step that improves |

`c` and `Y` can be shared by the sibling boxes of one parent. A2, the `Y` bound and the 90 `cisRound`s are then paid
once per parent box. `s_u` grows accordingly.

## 3. Cost estimate per η-box

Unit: one complex second-order product ≈ **5.5 ms** of kernel time (KERNEL_SEED §3). Estimated per-integer-operation
cost, including overhead: ≈ 14 µs. These are estimates, not measurements.

| step | work | estimate |
|---|---|---|
| `δ̃` (36 × 21-term real lin) | ≈ 11k real coefficient products (45k if done with the complex `lin`) | 0.15–0.6 s |
| 90 `expI` | ≈ 1–2 products each | 0.5–1.0 s |
| `YΦ` (21 × 30-term lin) | ≈ 9.5k products | 0.15–0.5 s |
| `b_F`, `s_u`, `s_x`, iteration | ≈ 80 `bnd`, a few rationals | < 0.05 s |
| A2: 90 `cisRound`, `J(c)B̃` (7.6k), `Y(J B̃)` (13k), `Ā`, `ε₀` | ≈ 21k rational products | 0.3–0.5 s (per parent if shared) |
| `yGram` + Gershgorin | ≈ 6.6k products | ≈ 0.1 s (per `Y`) |
| T1 corner test on `P + δ̃ ± ρ r` | as a general-T1 seed box: ≈ 36 `expI` + ≈ 40 products for the two `Ψ` | ≈ 0.5 s |
| **total** | **≈ 250–450 product-equivalents** | **≈ 1.5–3 s** per η-box (a C1 box is ≈ 10 s) |

Per record, once: exact `B ∈ N` (≈ 12k big-rational products), `nbGram B` (≈ 8k), and the Gershgorin checks. This is
≈ 1–2 s.

**Second versus third order.** Second-order models move the cubic terms of each `e^{i·}` into remainders. These do
not cancel across the 90 exponentials, so `b_F` is a sum of `|δ|³/6` terms. Piece A also uses second-order models and
gets `r ≈ 4·10⁻⁶` on level-4 boxes. Piece C's third-order `β` gets `≈ 1·10⁻⁶`. A kernel check with `Poly.lean` as it
is should therefore reproduce piece A's radii, not piece C's. Where more is needed, the options are:
- one more box level: 16× the boxes, and `r ∝ b_F ∝ h³` drops ≈ 8× per level (piece A: 3·10⁻⁴, 3·10⁻⁵, 4·10⁻⁶ at
  levels 2–4);
- a degree-3 `Poly` (35 monomials instead of 15, ≈ 5× per product).
