# Stage C, self-contained (Lemma 3.2 of PROOF.md)

> **Correction (9 Oct 2026).** The first version used the per-column bound r in three remainder terms that sum over columns: the vector test, the squared increment and the cross and pure-δ terms. Those terms need ‖δ‖_F. An independent audit caught this. The terms below are corrected, and the atlas was re-certified with them (`results/RECEIPT.md`).

This note states and proves every inequality used by `stagec.py`, in our notation. The method — cover the unbiased vectors by labels, then rule out two orthogonal 6-cliques with all cross pairs unbiased — follows [OAI] §6, which in turn builds on Jaming et al. Nothing below relies on their text for correctness.

## Units

Stage C works in **cycles**: R, r_H, n, r_col and r_F (radians in Lemma 3.1) are divided by 2π. The frame T is unchanged: δ = Tη + ν becomes δ/2π = T(η/2π) + ν/2π.

## Setting

Phases are in cycles: e(t) = exp(2πit), applied entrywise. A Record ball is the set of Hadamards A' = e(P + δ), where:
- δ is horizontal;
- δ = Tη + ν, with ‖η‖ ≤ r_H and ‖ν‖ ≤ n (Lemma 3.1);
- every column satisfies ‖δ_{:,i}‖ ≤ r, and the whole matrix satisfies ‖δ‖_F ≤ r_F.
  - We use r = r_col = maxᵢ‖Tᵢ‖r_H + n and r_F = min(R, √λ_max r_H + n). Always r_F ≤ √6·r.
  - Terms bounded column by column use r. Terms that sum over columns use r_F, or the ℓ¹ form with r, whichever is smaller.

Let K ≥ ‖e(P)/√6‖_op. It is bounded in Arb by ‖M‖₂² ≤ maxᵢ Σⱼ |(M*M)ᵢⱼ|.

Suppose two further bases exist besides I and A'/√6. Each of their twelve vectors is unbiased to I, so it has the form e(β)/√6. After a global phase we may take β₀ = 0 and β₁…β₅ ∈ [0, 1]. Within each basis the vectors are pairwise orthogonal. Across the two bases every pair is unbiased. All twelve vectors are unbiased to every column of A'/√6, and all share **one** δ.

## C1. Bins

At resolution M ∈ {12, 24, 48, 96}, cover [0, 1]⁵ by the closed boxes Πⱼ [bⱼ/M, (bⱼ + 1)/M]. Take a vector in a bin with midpoint u (u₀ = 0). Up to a global phase, its phases are u + x, where x is the mean-free version of a displacement d with d₀ = 0 and |dⱼ| ≤ a = 1/(2M). Then:

  Σx = 0, ‖x‖ ≤ X = √(29/6)·a, ‖x‖₁ ≤ Λ = 5a, ‖x‖_∞ ≤ I = 3a/2.

(Λ is written `L` in the code. It is unrelated to the Lipschitz constant L = 2√3 of Lemma 3.1.)

*Proof.* Each norm is convex in (d₁, …, d₅), so its maximum is at a vertex.
- At a vertex, ‖x‖² = 5a² − (Σd)²/6, and Σd is an odd multiple of a.
- The ℓ¹ values at the vertices are 10a/6, 4a and 5a.
- The centring map has coefficient 5/6 on d_j and −1/6 on each other coordinate. ∎

Refinement replaces a bin by its 32 closed children, which cover it exactly. So every actual vector stays in some retained path, including on bin and torus boundaries.

## C2. Single-vector tests (`single_tests`, `tangent_tests`)

Let q_ji = e(u_j − P_ji)/√6, S_i = Σ_j q_ji, and S′_i = Σ_j q_ji e(x_j − δ_ji). Unbiasedness to column i means |S′_i| = 1.

**(a) Direct test.**

  ‖S′ − S‖ ≤ 2π(KX + r_F), |S′_i − S_i| ≤ 2π(Λ/√6 + r) =: τ.

So a bin can be discarded if some |S_i| lies outside [1 − τ, 1 + τ], or if Σᵢ(|S_i| − 1)² > (2π(KX + r_F))².

The vector bound needs the **Frobenius** bound: summing the per-column bounds 2π‖δ_{:,i}‖ in ℓ² gives 2π‖δ‖_F.

*Proof.* Change x first and then δ.
- The x-change is Q applied to (e(x_j) − 1)_j. Q is unitarily equivalent to e(P)/√6, so its norm is ≤ 2πKX.
- The δ-change in component i is at most (2π/√6)Σ_j|δ_ji| ≤ 2π‖δ_{:,i}‖. Their ℓ² norm over i is ≤ 2π‖δ‖_F.
- Then use ||S_i| − |S′_i|| ≤ |S_i − S′_i|. ∎

**(b) Linearised test.** Let c_i = (|S_i|² − 1)/(4π), J_ij = −Im(S̄_i q_ji) and B_ik = Σ_j J_ij T_{(j,i),k}. For every real y ∈ R⁶:

  |y·c| ≤ a Σ_{j>0} |(Jᵀy)_j| + r_H ‖Bᵀy‖ + 𝓔(y),

  𝓔(y) = n N_y + π[ min(‖y‖_∞(KX + r_F)², ‖y‖₁(KX + r)²) + min(G_y X², K‖S∘y‖ I X)
              + (2/√6) X min(‖S∘y‖₂ r_F, ‖S∘y‖₁ r) + (1/√6) min(‖S∘y‖_∞ r_F², ‖S∘y‖₁ r²) ],

where N_y = (Σ y_i² J_ij²)^{1/2} and G_y = max_j |Σ_i y_i S̄_i q_ji|. A bin violating this for one proposed y is discarded.

*Proof.*
1. Expand (|S′_i|² − 1)/(4π) = c_i + Σ_j J_ij (x_j − δ_ji) + |S′_i − S_i|²/(4π) + Re(S̄_i ρ_i)/(2π), where ρ_i is the second-order exponential remainder.
2. Weight by y and bound the remainder terms. Each has two valid forms, and we take the smaller:
   - the squared increment Σᵢ yᵢ|S′ᵢ − Sᵢ|²/(4π): either ‖y‖_∞‖S′ − S‖²/(4π) with (a), or ‖y‖₁ maxᵢ|S′ᵢ − Sᵢ|²/(4π) with |S′ᵢ − Sᵢ| ≤ 2π(KX + r);
   - the remainder ρ, split as e(x)e(−δ) − 1 − 2πi(x − δ) = [e(x) − 1 − 2πix] + [e(−δ) − 1 + 2πiδ] + (e(x) − 1)(e(−δ) − 1), using |e(t) − 1| ≤ 2π|t| and |e(t) − 1 − 2πit| ≤ 2π²t²:
     - the pure-x part gives min(G_y X², K‖S∘y‖ I X);
     - the cross part is (2π/√6)Σᵢ|yᵢSᵢ| X‖δ_{:,i}‖, which is ≤ (2π/√6) X‖S∘y‖₂ r_F by Cauchy–Schwarz over i, or ≤ (2π/√6) X‖S∘y‖₁ r;
     - the pure-δ part is (π/√6)Σᵢ|yᵢSᵢ|‖δ_{:,i}‖², which is ≤ (π/√6)‖S∘y‖_∞ r_F², or ≤ (π/√6)‖S∘y‖₁ r².
3. Substitute δ = Tη + ν. The linear δ-term becomes (Bη)_i, with error ≤ n N_y.
4. Take the supremum over the bin (Jx = Jd, since each row of J sums to 0) and over ‖η‖ ≤ r_H. ∎

**Scalar test (6.12).** This applies (b) to one component i, without decomposing δ, so there is no n-term. A bin is discarded if

  |c_i| > a Σ_{j>0}|J_ij| + r‖J_{i,:}‖ + ρ,
  ρ = min{ π[(KX + r)² + S_max(KIX + (2Xr + r²)/√6)], π[(Λ/√6 + r)² + S_max(X + r)²/√6] }.

Every term here is per column, so r is the right bound. Any y is valid in (b), so the least-squares proposal needs no justification.

## C3. Labels (`cluster`)

**Covering.** A label is the closed vector ball 𝔅(v, s) = {λ e(v + x)/√6 : |λ| = 1, Σx = 0, ‖x‖ ≤ s}. Each retained bin midpoint u is assigned to a centre v, with h the mean-free integer wrap of u − v (computed in exact integers, units 1/192). If s ≥ ‖h‖ + X, then 𝔅(v, s) covers the bin.

*Proof.* The phase difference from v is h + x, up to an integer vector and a scalar. It is mean-free with norm ≤ ‖h‖ + X. ∎

**Distinct labels.** If s < 0.1, two vectors in one label are neither orthogonal nor unbiased.

*Proof.* Their unscaled inner product is Σ_j e(z_j), with ‖z‖ ≤ 2s < 0.2. So |Σ_j e(z_j)| ≥ 6 − 2π√6‖z‖ > 6 − 0.4π√6 > √6. Orthogonality needs the value 0; unbiasedness needs √6. ∎

So the twelve vectors occupy **twelve distinct labels**.

## C4. Edges (`edges`, `joint_filter`)

For labels (u, s_u) and (v, s_v), let Q_j = e(u_j − v_j), S = ΣQ_j and r_e = s_u + s_v. The actual sum is S′ = Σ Q_j e(z_j), with ‖z‖ ≤ r_e.

**Direct tests.**
- An O edge needs |S| ≤ 2π√6·r_e.
- A U edge needs ||S| − √6| ≤ 2π√6·r_e.

**Support tests.** Let D_O be the 2×6 matrix with columns (−Im Q_j, Re Q_j), and D_U = (Re S·D_O,1 + Im S·D_O,2)/6.
- Orthogonality forces ‖(Re S, Im S)/(2π) + D_O z‖ ≤ π r_e², and hence |S|²/(2π) ≤ 6 r_e‖D_U‖ + π r_e²|S|.
- Unbiasedness forces |(|S|²/6 − 1)/(4π) + D_U z| ≤ π r_e²(1 + |S|/6), and hence the supported scalar version.

*Proof.* The remainder of e(z) to first order is ≤ 2π²‖z‖². Pair the orthogonality equation with S. For unbiasedness, expand |S′|². ∎

**Joint test (common η).** For an edge of type E (with D_E, q_E and E_E as above) and any y₀, y₁ ∈ R⁶ and y_e:

  |y₀·c⁰ + y₁·c¹ + y_e·q_E| ≤ Σ_t [s_t‖J_tᵀy_t ± D_Eᵀy_e‖ + 𝓔_t^{ball}(y_t)] + r_H‖B₀ᵀy₀ + B₁ᵀy₁‖ + E_E‖y_e‖.

Here 𝓔^{ball} is 𝓔 with X replaced by s_t, using only the G_y form of the pure-x remainder, which is valid on the whole ball. The r / r_F alternatives are as in C2b.

*Proof.* Add the two weighted single-vector equations (C2b, at the label centres) and the weighted edge equation. The vector displacements x₀ and x₁ range over their balls. The Hadamard displacement η is **shared**, so its coefficients combine before the norm is taken. ∎

## C5. The graph search (`two_cliques`)

Let 𝒪 and 𝒰 be the retained edge sets. Two further bases give disjoint sets A and B with |A| = |B| = 6, where A and B are 𝒪-cliques and every pair in A × B is a 𝒰-edge.

`two_cliques` enumerates **every** 6-clique A of 𝒪: depth-first, each clique produced once, from its least vertex upwards. For each A it searches the common 𝒰-neighbourhood D = ∩_{a∈A} 𝒰(a) for a 6-clique of 𝒪. D is disjoint from A, since 𝒰 has no loops. If no A admits a B, the configuration is impossible.

The search is exhaustive and exact on bitsets. Hitting the step cap is reported as a failure, never as an exclusion.

## C6. Arithmetic

Exponentials come from Arb tables. Comparisons are float with margin 10⁻⁷, against a per-expression error below 10⁻¹⁰ (`RIGOUR.md` §3). An independent Arb replay of sampled rejections confirms every one (`arb_replay.py`).
