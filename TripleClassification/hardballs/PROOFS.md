# Hard balls: what the witness relies on

The witness (`witness.py`, `moving.py`) chains three reviewed results through two elementary facts (E1, E2), and
uses two new statements, **P1 and P2, which are UNREVIEWED**. P1 is used in every localisation. P2 is an alternative
acceptance bound in the symmetry step; a pattern accepted by the native bound alone does not need it. Both reduce
to the reviewed statements when their new data is zero (Λ = 0 in P1; the native bound is always also computed in F).

Notation is that of PROOF_815.md §2–§5. All transition matrices have unit-modulus entries, H = e^{iq}, K = e^{iy}
(index 6r + c), and F ∈ ℝ⁶⁶ consists of the 30 K-Gram components and the 36 mixed residuals |(H*K)_ab|²/6 − 1. E is
the Helmert injection ℝ³⁰ → column-centred phases ℝ³⁶ (an isometry).

## Reviewed results used

- **N9. Native fine bins** (family_neighbourhoods/PROOF.md §9, `fine_patterns.refine`). For a pattern of the cell's
  complete cover, every column of every actual completing basis lies in one of its colour's retained closed bins:
  centre 2π(0, k₁, …, k₅)/192, mean-zero phase radius ρ = π√(29/6)/m. An empty complete search is an exclusion.
- **A. The anisotropic annulus lemma and its Fourier/tensor bounds** (PROOF_815.md §3–§7 of
  handoffs/ret_TC_tail_20261101, audited in global/AUDIT_815.md). P1 below uses from it:
  (i) the universal bounds ‖F_HH‖ ≤ 2√6, ‖F_HK‖ ≤ 2 (§3 (1));
  (ii) for G(ζ) = BF(q\*, y\* + ETζ), the exact 180-ridge form and the blockwise remainder bound
  ‖G_a(ζ) − G_a(0) − (DG(0)ζ)_a‖ ≤ P_a(‖ζ_s‖, ‖ζ_w‖), with P_a the degree-8 Gram-tensor polynomial plus the ninth-order
  tail (§5 (7)), nonnegative coefficients, increasing in both arguments;
  (iii) the norm-variable box search (§7).
- **N6. Native averaged moving contraction** (family_neighbourhoods/PROOF.md §6, NATIVE_REVIEW.md), in the frozen
  `moving_symmetry.prove`. Its K enclosure is v_c = v₀,c + T_c u + e_c with ‖e_c‖ ≤ ε_c (mean-zero), where u is the
  H coordinate of the cell's normal form. It accepts when q = η + ‖Δc‖ + r‖[V₁ … V₄]‖ + h + R < 1 (notation in P2).

## P1. Localisation with a u-affine reference (UNREVIEWED)

**Data.** The cell's normal form q = Q₀ + Uu + ½H₂(u ⊗ u) + Xξ, with ‖u‖ ≤ r and ‖ξ‖ ≤ τ. Exact q\* ∈ ℝ³⁶ and an exact
column-centred y\* ∈ ℝ³⁶; exact T (30×30, invertible), B (30×66) and Λ (30×4). All are arbitrary; floats propose
Λ = −BJ_HU. Put

- e_H = ‖Q₀ − q\*‖ + ½‖H₂‖r² + ‖X‖τ, so h := q − q\* − Uu has ‖h‖ ≤ e_H; and D = ‖U‖r + e_H ≥ ‖q − q\*‖;
- J_H = F_H(q\*, y\*) (66×36); G(ζ) = BF(q\*, y\* + ETζ), L = DG(0) − I;
- C_j = B·F_HK(q\*, y\*)[Ue_j, ET·] (30×30, j = 1..4), where F_HK(q\*, y\*)[d, e] has mixed component (a, b) equal to
  −⅓ Σ_{s<t} cos φ_{ab,st} (d_{ta} − d_{sa})(e_{sb} − e_{tb}), with φ_{ab,st} = −q\*_{sa} + y\*_{sb} + q\*_{ta} − y\*_{tb},
  and Gram components zero;
- K_u = (I + L)Λ + BJ_HU (30×4), and M (30×16) with M[i, 4j+k] = (C_jΛ)[i, k];
- for a block a ∈ {s (rows 1–28), w (rows 29–30)}: ‖·_a‖ is the spectral norm of the rows in a; λ = ‖Λ‖,
  λ_a = ‖Λ_a‖, b_a = ‖B_a‖, t = ‖T‖, and [C]_a = [C₁ C₂ C₃ C₄]_a (30 × 120).

**Claim.** Write a putative zero over the cell as y = y\* + ET(z + Λu), and put S = ‖z_s‖, W = ‖z_w‖, ρ = ‖z‖,
ρ_ζ = ρ + λr. Then for each block a,

‖z_a‖ ≤ ‖G_a(0)‖ + η_a + β_aρ + γ_a(ρ) + P_a(S + λ_s r, W + λ_w r),

where η_a = r‖(K_u)_a‖ + e_H‖(BJ_H)_a‖ + r²‖M_a‖ + √6 b_a D², β_a = ‖L_a‖ + r‖[C]_a‖, and
γ_a(ρ) = 2b_a t e_H ρ_ζ + √2 b_a t² D ρ_ζ².

**Proof.** Put ζ = z + Λu, p = q − q\* = Uu + h, and k = ETζ, so y = y\* + k with ‖k‖ ≤ tρ_ζ and
‖ζ_a‖ ≤ ‖z_a‖ + λ_a r. At a zero,

0 = BF(q, y) = G(ζ) + B[F(q\* + p, y) − F(q\*, y)].

(a) G(ζ) = G(0) + (I + L)ζ + N(ζ), with ‖N_a‖ ≤ P_a(‖ζ_s‖, ‖ζ_w‖) ≤ P_a(S + λ_s r, W + λ_w r) by A(ii) and
monotonicity.

(b) Taylor in p at fixed y: F(q\* + p, y) − F(q\*, y) = F_H(q\*, y)p + R₁, ‖R₁‖ ≤ ½‖F_HH‖‖p‖² ≤ √6D² by A(i).

(c) Taylor in k at fixed q\*, applied to p: F_H(q\*, y\* + k)p = J_Hp + F_HK(q\*, y\*)[p, k] + R₂ with
‖R₂‖ ≤ ½ sup‖F_HKK‖ ‖p‖‖k‖². Bound F_HKK: only mixed components depend on H, and for H-direction d and K-directions
e, e′ the (a, b) component is at most ⅓ Σ_{s<t} |d_{ta} − d_{sa}||e_{sb} − e_{tb}||e′_{sb} − e′_{tb}| ≤
⅓·√2‖d_a‖·6‖e_b‖‖e′_b‖ = 2√2‖d_a‖‖e_b‖‖e′_b‖. This uses |x − y| ≤ √2(x² + y²)^{1/2} and
Σ_{s<t}(e_s − e_t)² = 6‖e‖² − (Σe_s)² ≤ 6‖e‖² with Cauchy–Schwarz. Summing squares over (a, b):
‖F_HKK[d, e, e′]‖² ≤ 8 Σ_a‖d_a‖² Σ_b‖e_b‖²‖e′_b‖² ≤ 8‖d‖²‖e‖²‖e′‖². So ‖F_HKK‖ ≤ 2√2 and ‖R₂‖ ≤ √2 D t²ρ_ζ².

(d) Split F_HK(q\*, y\*)[p, k] = F_HK[Uu, ETz] + F_HK[Uu, ETΛu] + F_HK[h, k]. After B these are Σ_j u_jC_jz, the
quadratic form Q(u) = Σ_j u_jC_jΛu = M(u ⊗ u), and a term of norm at most ‖B_a‖·2·e_H·tρ_ζ by A(i). Moreover
B_aJ_Hp = (BJ_HU)_a u + (BJ_H)_a h.

Collecting terms, the u-linear parts combine as (I + L)Λu + BJ_HUu = K_uu, and

z = −[G(0) + Lz + K_uu + N(ζ) + BJ_Hh + Σ_j u_jC_jz + M(u ⊗ u) + BF_HK[h, k] + BR₂ + BR₁].

Take the norm of block a, using ‖Σ_j u_jC_jz‖_a ≤ ‖[C]_a‖‖u‖‖z‖ (since Σ_j u_jC_jz = [C](u ⊗ z)), ‖u ⊗ u‖ = ‖u‖²
and ‖u‖ ≤ r. This gives the claim. ∎

**Remarks.** With Λ = 0 the claim is PROOF_815.md (2) with a sharper first-order H–K term: r‖[C]_a‖ + γ_a in place
of 2b_aDt. The search is §7 unchanged, with the initial radius R + λr for z and the weak cap wcap + λ_wr, since
‖z‖ ≤ ‖ζ‖ + λr and ‖z_w‖ ≤ ‖ζ_w‖ + λ_wr. Here R and wcap bound ζ through E1. A search that leaves only boxes inside
‖z‖ < t₀ gives K = y\* + ETΛu + e with ‖e‖ ≤ t·t₀, which is N6's enclosure with carrier T_c = (ETΛ)_c (rows 6r + c)
and ε_c = t·t₀ (E2).

## P2. Moving contraction with a u-affine preconditioner (UNREVIEWED)

**Setting** (N6, PROOF.md §6). x is a putative solution in the joint gauge, x̄ its group average (canonically fixed),
e = x − x̄ ∈ range E, and A₀ = E A′ Q_Y is the native preconditioner, so A₀F(x̄) = 0. The native proof writes
M(u) = ∫₀¹ DF(x̄ + se) ds and shows, for every u with ‖u‖ ≤ r,

A₀M(u)E = E + Δ₀ + Δ_c + Σ_k u_kV_k + Δ_rest,

with ‖Δ₀‖ ≤ η (the inverse defect), Δ_c the signed constant term (from m/2), V_k = A₀D²F(a)[((I + G)/2)WL e_k, E·]
the signed carrier terms, and ‖Δ_rest‖ ≤ h + R (the unknown-error Hessian term and the Fourier remainder). In the
code, Δ_c and [V₁ … V₄] are `(signed[0][0]+signed[1][0])/2` and `(signed[0][1]+signed[1][1])/2`; η, h and R are
`defect`, `hessian_error` and `remainder_norm`. Each V_k has range in range E and satisfies V_kE = V_k: its right
factor is the `le` = LMAT·E product.

**Claim.** Let ν = ‖[V₁ V₂ V₃ V₄]‖ (72 × 288) and μ = ‖[V_jV_k]_{j,k=1..4}‖ (72 × 1152, horizontal blocks). If

q₂ = μr² + (1 + νr)(η + ‖Δ_c‖ + h + R) < 1,

then every putative solution in N6's enclosure has e = 0, i.e. it has the balanced order-three symmetry.

**Proof.** For the solution's own u, set Π(u) = I − Σ_k u_kV_k and A(u) = Π(u)A₀. A(u) depends only on u, which is
fixed for the given solution, and A(u)F(x̄) = Π(u)A₀F(x̄) = 0. Hence, exactly as in §6,
0 = A(u)(F(x) − F(x̄)) = A(u)M(u)e. Since V_kE = V_k, we have Π(u)E = E − Σu_kV_k and

E − A(u)M(u)E = Σ_{j,k} u_ju_kV_jV_k − Π(u)(Δ₀ + Δ_c + Δ_rest).

The norm of the first term is at most μ‖u‖² ≤ μr², because Σu_ju_kV_jV_k x = [V_jV_k](u ⊗ u ⊗ x). Also
‖Π(u)‖ ≤ 1 + νr. So ‖E − A(u)M(u)E‖ ≤ q₂ < 1 on range E, and e = Ee = 0. ∎

The code accepts when min(q_native, q₂) < 1. Every number is an Arb spectral-norm bound (wholeball.spectral), and
`moving.parts` is `moving_symmetry.prove` verbatim up to its final combination.

## Elementary facts

**E1. Enclosure from bins.** For unit n ∈ ℝ² put a = T^{-T}(0, n) with column blocks a_c ∈ ℝ⁵. If column c lies in a
bin with Helmert centre d (relative to y\*) and radius ρ, then n·ζ_w = Σ_c a_c·x_c ≤ Σ_c max_bins(a_c·d + ρ‖a_c‖).
This is PROOF_815.md (8) with p = 0, using that the support function of a union is the maximum of the supports;
the 64-direction cover then gives (9). Also ‖ζ‖ ≤ ‖T^{-1}‖(Σ_c m_c²)^{1/2}, where m_c = max over bins of ‖d‖ + ρ. Bin
windings relative to y\* are proposals: translating a bin by 2π in an entry describes the same K columns.

**E2. From localisation to N6.** ‖ETw‖ ≤ ‖T‖‖w‖, and each column's centred error is at most the whole matrix's, so
every column gets ε_c = ‖T‖t₀. Permuting K's columns permutes F and leaves the zero set unchanged; this is how
patterns share a reference.

**Outcome per pattern.** EXCLUDED (N9, or P1's search with no box left inside), CLASSIFIED (P1, then N6 or P2 with
q < 1), or OPEN.
