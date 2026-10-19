# C⁶ has no four mutually unbiased bases

> **Theorem.** There are no four mutually unbiased bases (MUBs) in ℂ⁶.

## The idea in one page

Rotate four MUBs so that the first is the standard basis. The second basis is then H/√6 for a complex Hadamard
matrix H of order 6. Call H a **quartet edge** when this pair extends to four MUBs. The theorem says that no H is a
quartet edge.

The proof sees the space of Hadamard matrices in two ways.

- **Globally, through corners.** Every non-Tao Hadamard matrix other than F6 is built from a single 3×3 *corner*
  by an explicit reconstruction, the **matched completion**. Corners are parametrised by a 4-torus of seeds. The
  function R on seeds that controls the reconstruction has its maxima in a single orbit (Step 1). Together these make
  the space X of non-Tao classes **connected** (Step 2).
- **Locally, through balls.** A ball of radius 0.08 around a Hadamard matrix can be certified to contain no quartet
  edge by a finite interval computation (Step 3). Finitely many such balls, 12,021, whose boundaries map back inside
  the family, cover a nonempty open-and-closed subset of X (Step 4).

Since X is connected, that subset is all of X. So no non-Tao Hadamard is a quartet edge, and Tao's matrix is
excluded separately. No classification of order-6 Hadamard matrices is used.

| Step | Content | How it is checked |
|---|---|---|
| 1 | The positive local maxima of R form one 18-point orbit | Exact algebra (651 claims); **in Lean** |
| 2 | Reconstruction (matched completions: existence, uniqueness, converse, coverage) and connectedness of X | Paper proofs with exact certificates; **in Lean** (connectedness through the maximum principle, §2.3) |
| 3 | A ball Record plus Stage C contains no quartet edge | Proved inequalities (**in Lean**), evaluated in interval arithmetic |
| 4 | A finite atlas of 12,021 Records covers X | Certified computation, replicated by an independent implementation |

**How the pieces fit.**

```
Theorem 1 (maxima of R) ──→ Lemma 1.1 (maximum principle) ─────────────┐
Lemma 2.1 (side quadratic) ─→ 2.2 existence ─→ 2.3 uniqueness ─────────┤
                              2.2 ─→ 2.4 converse ──┐                  │
                              2.5 coverage ─────────┴→ 2.6 exact reach ┴→ Theorem 2 (X connected)
Lemma 3.1 (normal bound) + Lemma 3.2 (Stage C) ─→ each Record excludes quartet edges
Lemma 4.1 (boundary transfer) + Lemma 4.2 (coverage) + Theorem 2 ─→ the atlas covers X ─→ no four MUBs
```

Step 2 is the minimal reconstruction ([`MinimalConstruction/`](MinimalConstruction/README.md)): a corner seed, its two
sides and the forced fourth block. That folder's README maps each of its documents to the theorem here that uses it,
with a notation table.

---

## 0. Setting

**Reduction to Hadamard matrices.** A complex Hadamard matrix of order 6 has |H_ij| = 1 and HH* = 6I; write 𝓗 for
the set of them. Call H a **quartet edge** if I and H/√6 extend to four MUBs.

**Equivalence.** H ≅ H′ if H′ = P D₁ H D₂ Q, with P and Q permutation matrices and D₁ and D₂ diagonal unitaries.

**Symmetries.** Being a quartet edge is invariant under:
- equivalence;
- conjugation H ↦ H̄;
- transposition H ↦ Hᵀ (apply the unitary H*/√6 to all four bases, then conjugate).

**Tao's matrix.** S₆ = (e(k_ij/3)) is an isolated point of 𝓗/≅ and is not a quartet edge. Both facts come from our
own machinery: S₆ is a *zero-dimensional* ball Record (Step 3, Remark 3.3). Let

  X = (𝓗/≅) ∖ {[S₆]},

with the quotient phase metric δ(H, K) = min{‖v‖ : v horizontal, H ≅ K ∘ e^{iv}}. A real 6×6 matrix is
*horizontal* if all its row and column sums vanish.

## Step 1. The maxima of R (exact algebra)

**Corners and R.** Write a dephased Hadamard matrix in 3×3 blocks, H = [[E, B], [C, D]]. Its leading block is a
**corner** E(θ) = [[1,1,1],[1,a,b],[1,c,d]], with seed θ ∈ T⁴ and a, b, c, d = e^{iθ₁}, …, e^{iθ₄}. The corner
determines the scalar R(θ) = 4g²η − χ² (Step 2.1 gives the formulas).

> **Theorem 1.** Every positive local maximum of R on T⁴ lies in one orbit of 18 points under the 144 seed symmetries:
>
>   θ* = α(1, 2, −1, −2), α = arccos(1/4), R(θ*) = 3¹³/2¹².
>
> (The Hessian there is negative definite, so these 18 points are exactly the positive local maxima, and max R = 3¹³/2¹².)

Theorem 1 is used in one form, three times (Theorems 2.2 and 2, and the Lean coverage route):

> **Lemma 1.1 (maximum principle).** Let S = {θ ∈ T⁴ : R(θ) > 0}. If U ⊆ S is open and closed in S and contains the
> 18 maxima of Theorem 1, then U = S.

*Proof.* Otherwise V = S ∖ U is nonempty, open and closed in S. Maximise R on the closure of V in the compact torus
T⁴. The maximum is positive, so it is attained in S, hence in V (closed in S); V is open in T⁴, so it is a positive
local maximum of R. By Theorem 1 it is one of the 18 maxima, which lie in U. ∎

The same argument shows that a **nonempty** U ⊆ S, open and closed in S, contains a positive local maximum (maximise
R on the closure of U). So it suffices that U is nonempty and that, once U contains one of the 18 maxima, it contains
all of them. This is the form used below, with the seed symmetries moving one maximum to the others.

**Coordinates.** Normalise the even products (ad, b, c) and the odd products (bc, d, a) of the corner so that each triple has product 1. Let U and V be their traces. Each lies in the filled deltoid 𝒟, and the trace map is an open quotient by S₃. Put A = U + V, B = U − V, u = |A|² and v = |B|². Then

  R = ℛ(A, B) = 4(2v − 3u)²(v − 2u) − C², C = (3u − v)(v − u + 12)/2 − 2 Re(AB²).

A local maximum on T⁴ is therefore a local maximum of ℛ relative to 𝒟 × 𝒟.

**1. No interior maximum.** *Every critical point of ℛ on ℂ² with ℛ > 0 has a direction of positive second derivative.*
- ℛ is invariant under (A, B) ↦ (ζ̄²A, ζB), so we may take B = √v > 0 and A = x + iy. Positivity gives d = v − 2u > 0.
- H_v = 4g(6v − 11u) − 2CC_v with g, 6v − 11u > 0, so C ≠ 0. Then yH_x − xH_y = 4vyC forces y = 0.
- At x = −h ≤ 0 and v = 2h² + d, the Jacobian c_x f_v − c_v f_x equals −8(h² + 2d)W(h, d), where W has nonnegative coefficients and W ≥ 6d² > 0. Hence x > 0.
- Then f_v = 0 forces c < 0. Finally xH_yy = −4vc > 0.

So both traces cannot be interior.

**2. Both traces lie on the boundary.**
- **One smooth boundary trace, the other interior.** The invariant circle orbit enters the interior to first order, or else has d²Δ/dτ² = −(9/2)(r + 2)²|z³ − 1|⁴ < 0.
- **A cusp with an interior partner.** Excluded by the factorisation ℛ = −4FG² and a positive cubic Bernstein certificate.

**3. The double boundary.** Here ℛ = −256 L²M²N in square coordinates (c, h).
- An explicit eliminant, with cofactors of 11 and 22 terms, leaves one positive stationary branch.
- On that branch, the actual transverse curvature is 660(46y + 9) > 4125/32. Every physical root of 4y² + 6y + 1 lies in (−49/256, −3/16), by a secant identity.
- On h = 1, four positive Bernstein expansions leave only (c, h) = (1/4, 1). Its lifts are exactly the 18-point orbit, with q = (1 + i√15)/4.

**Certificates.** 651 exact claims, checked with integers and rationals only, in seconds (`lean/Step1Gen`, `verify_certificates.py`; proof documents in [`proof/coverage/returns/C_step1_saddle`](proof/coverage/returns/C_step1_saddle/)). All of Step 1 is proved in Lean, using only standard axioms: the 216 certificate theorems of library `Step1` and the analytic assembly in `lean/NoFourMUBs/Step1/`. Theorem 1 is `Step1Geo.maximumCensus`, with the explicit anchors `Step1Geo.anchors`. The earlier resultant/Sturm proofs A and B (`returns/A_deltoid`, `returns/B_exact_quotient`) remain as independent cross-checks. Proof B also shows why no interval box cover could work here: at the F3 seed, R, ∇R and Hess R all vanish, with strict seeds arbitrarily close.

## Step 2. Reconstruction, and X is connected

### 2.1 Corner invariants and the side quadratic

**Invariants.** For a corner E with H = [[E, B], [C, D]], the other blocks satisfy BB* = 6I − EE* =: G and
C*C = 6I − E*E. Write s, t, r for the off-diagonal entries G₂₁, G₃₁, G₃₂, and put X = |s|², Y = |t|², Z = |r|²,
p = X + Y + Z, J = 2 Re(s r t̄), W = XY + XZ + YZ − XYZ. Then

  g = 27 − 3p + J = |det B|²,  η = 9 − p + J,  χ = W − (p−9)(p−18) + (p−15)J,  R = 4g²η − χ².

The vertical side C has the same g, η and χ.

**Side signature.** For a 3×3 phase block X, put Ψ(X) = perm(X) det(X)² / ∏ᵢⱼ Xᵢⱼ. It is invariant under row and
column permutations, row and column phases, and transposition.

> **Lemma 2.1 (the side quadratic).** For a normalised side B = (1; x; y) with det B ≠ 0, its signature
> T = −Ψ(B) satisfies T T̄ = g²η and T + T̄ = χ. Hence T is a root of ζ² − χζ + g²η, and **R = 4 (Im T)²** ≥ 0.

So a corner is **strict** (R > 0) exactly when the signature of its complementary side is not real. Its two roots
are then ζ± = (χ ± i√R)/2.

*Proof.* There are two inputs:
- |perm B|² = η, a Laurent identity in the six unit entries;
- the "λ-identity" λ₂ P̄₂ = g + c₂ z̄, with |λ₂| = 1, z = T/g, c₂ = 9 − X and P₂ an explicit Gram polynomial,
  combined with the norm identity |P₂|² = g² + c₂χ + c₂²η.

Together these give c₂(g(z + z̄) − χ) = 0, and c₂ ≠ 0 whenever det B ≠ 0. *Lean:* `Side.TS_root`,
`Side.RS_eq_im_sq` (`lean/NoFourMUBs/PRM/SideRoot.lean`). ∎

**Matched completions.** A dephased Hadamard matrix with strict leading corner E(θ) is **matched** if its two side
signatures are conjugate, −Ψ(B) = ζ₊ and −Ψ(C) = ζ₋. Write H₊(θ) for a matched completion and
A = {[H] : H matched at a strict seed}.

### 2.2 Existence, uniqueness, the converse and coverage

> **Theorem 2.2 (matched existence).** Every strict seed has a matched Hadamard completion.

*Proof.* There are two certified steps:
- **Sides.** For each strict seed, each of its two side Gram matrices and each root ζ, there is an actual
  normalised phase side with that Gram matrix and signature ζ. In the angles φ ∈ ℝ⁶ of a side, the Gram map
  φ ↦ (s, t, r) ∈ ℂ³ ≅ ℝ⁶ has Jacobian determinant ¼ Im Ψ (**identity (J)**: the derivative of
  (s, s̄, t, t̄, r, r̄) has determinant Ψ̄ − Ψ, the Laplace expansion into two products of 3×3 determinants). By
  Lemma 2.1 it is nonzero wherever R > 0, so by the inverse function theorem the strict seeds whose Gram matrix is
  realised with Im T > 0 form an open set. So does the set U of strict seeds whose horizontal Gram matrix is realised
  with Im T > 0 and whose vertical one is realised with Im T < 0. U is also closed in S = {R > 0}: the sides form a
  compact torus, and Im T cannot reach 0 over R > 0. U is nonempty: the Fourier family
  K(t) = [[F₃, F₃], [F₃D(t), −F₃D(t)]], D(t) = diag(1, e^{it}, 1), has a corner (zero-based rows 1, 3, 5 and columns 0, 2, 4)
  with R(t) = 144 sin²t (1 + cos t)² > 0 for 0 < t < π, and K(t) is a matched completion there, by explicit
  signatures 2T(B) = χ + i√R and 2T(C) = χ − i√R (return Q,
  [`proof/coverage/returns/Q_fourier_anchor`](proof/coverage/returns/Q_fourier_anchor/PROOF.md)). The sides of a
  matched completion lie in U. At a seed of U, the sides and the flatness step below give a matched completion, and
  the seed symmetries move it to all 18 maxima, whose sides then lie in U. So U = S by Lemma 1.1 (nonempty form).
  Conjugating seed and side gives the other root ([`proof/coverage/returns/J_side_existence/RESULT.md`](proof/coverage/returns/J_side_existence/RESULT.md)). The flatness step uses any actual sides, so it applies at each seed of U before
  U = S is known.
- **Flatness.** For *any* actual sides B, C on conjugate roots, the forced block D = −C E* G⁻¹ B has unimodular
  entries. The completion always satisfies HH* = 6I. Its defect matrix Δᵢⱼ = |Dᵢⱼ|² − 1 has zero row and column sums,
  so it is determined by the weighted defects W = C̄ᵀ Δ B̄ᵀ, whose first row and column vanish; the remaining entries
  are W₁₁, W₁₂, W₂₁, W₂₂ (zero-based indices), and W = 0 forces Δ = 0 since B and C are invertible. Exchanging rows 1, 2 of E and B (or columns
  1, 2 of E and C) leaves D unchanged, keeps the seed strict and the sides actual, and permutes the indices of W, so
  every defect is W₁₁ at a relabelled seed. The two coefficients of W₁₁ vanish identically in ℚ(a, b, c, d)
  ([`proof/coverage/returns/E_matched_flatness`](proof/coverage/returns/E_matched_flatness/FLATNESS.md); the
  relabelling is handoff M, proved in [`ALGEBRAIC_PROOFS.md`](proof/coverage/audits/AUDIT_2026-10-17/ALGEBRAIC_PROOFS.md)).

*Lean:* `L1.matchedExistence`. Side existence is `L1.sides_all`, with `L1.exists_side_h` and `L1.exists_side_v`
(`L1/SideJacobian`, `L1/SideCover`, `L1/Existence`); the pointwise step is `L1.matched_of_sides`, the Fourier
anchor `Step2.matched_fourier` (`Step2/FourierAnchor`) and the transport `Step2.eq_univ_of_anchor_transport`; the two flatness identities of W₁₁ are re-checked by the kernel through a verified Kronecker
polynomial-identity checker, and the relabelling is `L1.FlatCircuits.W_zero` (with `W_rowPerm`, `W_colPerm`). ∎

> **Theorem 2.3 (matched uniqueness).** Two matched completions of the same strict seed are equivalent.

*Proof.* The data (s, t, r, T) of a strict side determine its row products and permanent: the λ-identities above
are linear in them, and Im T ≠ 0. A Vieta argument then determines the side up to a column permutation. Matched
uniqueness follows, since the forced block is determined by the sides. *Lean:* `Step2.matchedUniqueness`. ∎

> **Theorem 2.4 (the nonmatched converse).** If a Hadamard matrix has a strict corner whose two side signatures
> are *not* conjugate, it is equivalent to S₆.

*Proof* ([`proof/coverage/returns/G_prm/PRM.md`](proof/coverage/returns/G_prm/PRM.md) §§2–5). Let M be such a
matrix, dephased at the corner, with horizontal signature ζ. Its vertical signature is then ζ as well (Lemma 2.1).
1. **Comparison.** Theorem 2.2 gives an actual vertical side on ζ̄. With M's own horizontal side, its forced block is
   flat. So there is a matched completion H₀ with the **same top three rows** T as M.
2. **No shared ray.** Two strict sides on different roots share no column. If they shared one, the two remaining
   column pairs would have the same Gram data. Either they coincide (so the signatures agree), or they have one of
   three degenerate shapes, each with a real signature. So no bottom row of M is proportional to a bottom row of H₀.
   The two bottom-row bases are orthonormal bases of the same 3-space, the orthogonal complement of T's rows, with
   no common ray.
3. **A diagonal relation.** Hermitian operators diagonal in both bases are scalar, so a dimension count gives a
   nonzero real diagonal D_w with P D_w P = 0, where P projects onto that 3-space. Its complement Q = I − P has
   |Pⱼₖ| = |Qⱼₖ|, which forces Q D_w Q = 0, i.e. (wⱼ + wₖ) Qⱼₖ = 0.
4. **A Hadamard block.** A strict strip has no proportional columns. So all |wⱼ| are equal and nonzero, and the
   three columns of either sign are pairwise orthogonal: a 3×3 Hadamard block.
5. **Fourier normal form.** A Hadamard matrix with such a block reduces to a Fourier normal form. Exhausting it,
   using a three-point Fourier criterion and an exact census of the cubic cases, leaves Tao's orbit or the two
   Fourier families. The Fourier families are matched at every corner (400 Laurent identities on paper; 200 are
   kernel-checked in Lean and the rest follow by conjugation). So M is Tao.

Independently audited with no errors found ([`proof/coverage/audits/AUDIT_2026-10-15.md`](proof/coverage/audits/AUDIT_2026-10-15.md)).
*Lean:* `PRM.nonmatched_tao` (`lean/NoFourMUBs/PRM/Converse.lean` and its imports). ∎

> **Theorem 2.5 (strict-corner coverage).** Every Hadamard matrix not equivalent to F6 has a strict corner.

*Proof* ([`MinimalConstruction/Proofs/STRICT_CORNER_COVERAGE.md`](MinimalConstruction/Proofs/STRICT_CORNER_COVERAGE.md),
with `PRM.md` §7.1). Suppose every corner of H is critical (R = 0) and H ≇ F6.
1. **Routing.** A singular 3×3 minor, or three rows phased into (1; x; x̄), would put H in a Fourier family
   (elementary, `PRM.md` §7.1). An all-critical member of a Fourier family is equivalent to F6
   (`FOURIER_CRITICAL_LOCUS.md`). So all minors are invertible, and no row triple is of that form.
2. **Critical-strip classification.** On any three-row strip with all twenty blocks invertible and every corner
   critical, each corner has p ∈ {0, 5}, or one of two rational endpoints, or p = p* := 9 − 4/(1 + κ²), where
   κ > 0 solves 3κ³ + κ² + κ − 1 = 0.
   - *Zero J* (`CRITICAL_STRIP_CLASSIFICATION.md`): a whole-strip square-sum identity and exact moment algebra.
   - *Nonzero J* ([`proof/coverage/returns/K_nonzero_J/REPORT.md`](proof/coverage/returns/K_nonzero_J/REPORT.md)):
     two sums of the *unsquared* corner signature, Σ_C D_C = ā b c − a b̄ c̄ and its xy-weighted version, vanish on
     an all-critical strip. With the cleared λ-identities and a universal 24-term identity they force
     Im(s̄ r̄ t) = 0 or a repeated modulus, poles included; this leaves four one-parameter curves. On each curve, if
     all six λ-denominators were nonzero the weighted sum would equal an explicit nonzero value, so some
     denominator vanishes; the product of the six denominators, factored on the four curves, gives exactly the
     three candidates.
   - The two endpoints are excluded separately (`CRITICAL_P7_EXCLUSION.md`, `CRITICAL_EQUI_CORRELATION_EXCLUSION.md`).
3. **Counting.** Over the twenty corners of a strip, Σ p_C = 108 (row orthogonality). The cubic
   3κ³ + κ² + κ − 1 has no rational root, so it is irreducible; then κ² is irrational (κ has degree 3), and so is
   p*. If n corners have p = p* and m have p = 5, then n p* + 5m = 108 forces n = 0, and 5m = 108 is impossible. ∎

*Lean:* `PRM.strictCornerCoverage` (`lean/NoFourMUBs/Final.lean`; modules `PRM/Coverage*.lean`). The Lean proof
counts differently: it fixes one column, uses the ten corners containing it (Σ p_C = 54) and the bounds
p* ∈ (17/3, 29/5), which avoids irrationality. It also differs from the paper in two places: the p = 7 endpoint is excluded by one corner of signature −56 − 8i instead of
the 20-corner sum, and the cube-root case of the equicorrelation endpoint uses (w³ − 8a)(w³ + a)² = 0 instead of a
field-degree argument. The zero-J square-sum identity is re-checked by the kernel (`PRM/CoverageStripIdZero*.lean`);
the nonzero-J stratum is `PRM/CoverageSigned*.lean`.

> **Corollary 2.6 (exact reach).** Every class of X is [F6], or in A, or in conj A.

*Proof.* Let H ≇ F6 be non-Tao. Take a strict corner (Theorem 2.5) and dephase. By Theorem 2.4 its sides are
matched. If the horizontal signature is ζ₋, conjugate the whole matrix. *Lean:* `PRM.exactReach`. ∎

### 2.3 Connectedness

> **Theorem 2.** X is connected.

*Proof.*
1. **Continuity.** The class map θ ↦ [H₊(θ)] on strict seeds is continuous: the matched relation is closed, 𝓗 is
   compact, and the matched class is unique (Theorems 2.2, 2.3).
2. **A is connected.** Each component of S has compact closure, with R = 0 on its boundary, so it contains a
   positive local maximum (the argument of Lemma 1.1). By Theorem 1 that maximum lies in the 18-point orbit, and all
   18 points give one class [K*]: let L be a seed symmetry with transposition bit τ and conjugation bit ε; then
   [H_σ(Lθ)] = 𝒞^ε 𝒯^τ [H_{(−1)^{τ+ε}σ}(θ)], and the maximal seed E(x) = [[1,1,1],[1,x,x²],[1,x⁻¹,x⁻²]] has two
   exact frame symmetries; the matched completion at θ* (Theorems 2.2 and 2.3) anchors the class. So
   the image of every component is connected and contains [K*], and A is connected. So is conj A.
3. **Joining at F6.** The family [[F₃, F₃], [F₃D(t), −F₃D(t)]], with D(t) = diag(1, e^{it}, 1), tends to
   F₂⊗F₃ ≅ F6 as t → 0. Its cross-ratio e^{it} keeps it away from F6 and S₆ for 0 < t < π/3. So [F6] lies in the
   closure of both A and conj A.
4. **Conclusion.** By Corollary 2.6, X = A ∪ conj A ∪ {[F6]}, which is therefore connected. ∎

Details: [`proof/coverage/returns/A_deltoid/CONNECTEDNESS.md`](proof/coverage/returns/A_deltoid/CONNECTEDNESS.md) and
`SHEETS_TOPOLOGY.md`, with return B as an independent check. *Lean:* `Step2.coverage_of_matched_density` and its inputs.

## Step 3. Local exclusion: ball Records

A **ball Record** is a set B_r = {e^{i(P+δ)} : δ horizontal, ‖δ‖ ≤ R}, where P is a rational phase centre, together with:
- a rational tangent frame T (36×4);
- σ > 0, certified by an Arb Cholesky factorisation, with ‖Jν‖ ≥ σ‖ν‖ on the normal space N.

> **Lemma 3.1 (normal bound).** Every Hadamard in B_r has δ = Tη + ν with ‖η‖ ≤ r_H and ‖ν‖ ≤ n(R).
>
> Here n(R) = (σ − √(σ² − 2Lb))/L, with b = e₀ + j₁ r_H + (L/2) λ_max(G) r_H² and L = 2√3.

*Proof.* Write Φ(δ) for the off-diagonal part of e^{i(P+δ)}e^{i(P+δ)}* and J = Φ′(0). Entry (a, b) of the remainder Φ(δ) − Φ(0) − Jδ is Σ_c Z_ac Z̄_bc (e^{iy_c} − 1 − iy_c) with y_c = δ_ac − δ_bc. Since |e^{iy} − 1 − iy| ≤ y²/2, its modulus is at most ½‖r_a − r_b‖², where r_a is row a of δ. Now ‖r_a − r_b‖² ≤ 2‖δ‖² and Σ_{a<b} ‖r_a − r_b‖² ≤ 6‖δ‖², so ‖Φ(δ) − Φ(0) − Jδ‖ ≤ √3‖δ‖² = (L/2)‖δ‖², for every δ and every centre. If e^{i(P+δ)} is Hadamard, then Φ(δ) = 0. Hence σ‖ν‖ ≤ ‖Jν‖ ≤ e₀ + j₁‖η‖ + √3(λ_max‖η‖² + ‖ν‖²), using Tη ⟂ ν. Since ‖ν‖ ≤ R < σ/L, ‖ν‖ lies below the smaller root of this quadratic. No Taylor theorem is needed. This is proved in Lean ([`lean/NoFourMUBs/NormalBound.lean`](lean/NoFourMUBs/NormalBound.lean): `outNorm_rem_le`, `normal_bound_root`). ∎

> **Lemma 3.2 (Stage C, after [OAI] §6).** Suppose the vector-bin cover, the label clustering, the O/U edge tests (including the joint test 6.23) and the exact two-clique search succeed for (P, T, r_H, n, r_col, r_F), where r_col bounds the columns of δ and r_F its Frobenius norm. Then no Hadamard in B_r is a quartet edge.

**Proofs.** Every Stage C inequality, the label lemma and the correctness of the clique search are stated and proved in our notation in [`proof/atlas/STAGEC.md`](proof/atlas/STAGEC.md), and in Lean (`lean/NoFourMUBs/StageC/`).

**Code.** [`proof/atlas/ballrecord.py`](proof/atlas/ballrecord.py) and [`stagec.py`](proof/atlas/stagec.py).

**Rigour** ([`RIGOUR.md`](proof/atlas/RIGOUR.md)):
- σ, e₀, j₁ and the Gram bounds are computed in Arb or exactly.
- Exponentials in Stage C come from Arb tables.
- All other float comparisons carry a margin of 10⁻⁷, against a per-expression error budget below 10⁻¹⁰.
- An Arb replay of sampled rejections confirms every one.

> **Remark 3.3 (S₆ is a zero-dimensional Record).** At S₆ the horizontal spectrum of JᵀJ is exactly {9/2 (×16), 12 (×9)}. An exact rational check gives M(M − 9/2)(M − 12) = 0 and the traces, and shows that the 11-dimensional gauge space is the kernel. So J is injective on all 25 horizontal directions, with σ = 3/√2 exactly; T is empty and r_H = 0.
> - *Isolation.* Φ(0) = 0 at S₆. So for any Hadamard e^{i(P+δ)} with δ horizontal, the remainder bound gives σ‖δ‖ ≤ √3‖δ‖². Hence δ = 0 or ‖δ‖ ≥ σ/√3 = √(3/2). So S₆ is isolated in 𝓗/≅ (Lean: `isolation`).
> - *Exclusion.* Stage C passes on the ball of radius R = 0.08, so S₆ is not a quartet edge.
>
> This is [`proof/atlas/tao.py`](proof/atlas/tao.py).

## Step 4. A finite atlas

> **Lemma 4.1 (4-dimensional boundary transfer).** Let s and t be ball Records, A a signed permutation of the 36 entries (row and column permutations, transposition, conjugation) and N an integer winding. Put c = h(A P_s + 2πN − P_t) and M = h(A T_s). If
>
>   sup_{η ∈ box} ‖c + Mη‖ + n_s < R_t,
>
> then every boundary Hadamard of s whose tangent coordinate lies in the box is equivalent to an interior point of t.

Because of the normal bound, the boundary of a Record needs only a 4-dimensional cover by η-boxes, not a 25-dimensional one. *Lean:* `Transfer.lean`.

> **Lemma 4.2 (coverage).** Let 𝓡 be a finite family of closed Records (Step 3), and let 𝓡̂ be its closure under Γ = {id, conjugation, transposition, conjugate-transpose}. Γ maps a Record ball to a Record ball of the same radius and preserves quartet edges. Let W be the set of classes of Hadamards in ⋃𝓡̂. Suppose:
> 1. W contains a non-Tao class;
> 2. every Hadamard on the boundary of a Record in 𝓡 is equivalent, after some g ∈ Γ, to one in the interior of a Record in 𝓡.
>
> Then W ⊇ X.

*Proof.* Applying g ∈ Γ, condition 2 holds for every Record in 𝓡̂, with targets in 𝓡̂. So every point of W has a representative in the interior of some Record in 𝓡̂.
- W ∩ X is open: if H = e^{i(P + δ)} with ‖δ‖ < R and δ(H, K) < R − ‖δ‖, then K ≅ e^{i(P + δ + v)} with ‖δ + v‖ < R.
- W ∩ X is closed: it is a finite union of compact images.
- W ∩ X is nonempty.

Since X is connected (Theorem 2), W ∩ X = X. ∎

*Lean:* `recordClopen_of_atlas` gives the open–closed step. Theorem 2 is not formalised as a standalone
statement. `Final.no_four_mubs` uses the direct route `Step2.coverage_of_matched_density`: W pulled back to the
strict seeds is open and closed in S. It is nonempty: the certificate puts F6 in the interior of a Record, so W is a
neighbourhood of [F6]; the Fourier family K(t) tends to F6, so [K(t)] ∈ W for small t > 0; and K(t) is matched at a
strict corner (return Q, `Step2.exists_matched_mem`). With one maximum it contains all 18, since the seed symmetries
move matched completions between them and the matched class is unique (Theorem 2.3). So by Lemma 1.1 it is all of S,
W contains A and conj A, and X = A ∪ conj A ∪ {[F6]} by Corollary 2.6.

**The computation** ([`proof/atlas/`](proof/atlas/README.md)):
1. `atlas.py` grows ball Records breadth-first from a seed centre until every Record's boundary is transferred.
2. `certify.py` re-checks every Record independently: σ, the normal bound, Stage C, and a replay of the boundary tree with Arb transfer constants. It trusts only the centre phases, radii, label radii, integer frames and target lists of the certificate.
3. `nonempty.py` places F6 inside a Record.

**Result** ([`proof/atlas/results/RECEIPT.md`](proof/atlas/results/RECEIPT.md)):
- **The atlas.** 12,021 ball Records: 10,497 at R = 0.08, 1,029 at 0.063, 419 at 0.05 and 76 at 0.04. Every boundary is transferred, with on average 58 transfer targets per Record.
- **Certification.** `certify.py` certifies all 12,021 (about 1.9 CPU-hours; 14 minutes with 8 workers on an Apple M5 Max). An independent Julia implementation written from this specification ([`proof/independent/`](proof/independent/README.md)) passes all 12,021 as well (24 minutes on one 128-core node).
- **Nonemptiness.** F6 lies in the interior of Record 877, at distance 0.023 < 0.08. This one membership also anchors the reconstruction in Lean (return Q).
- **Certificate.** `atlas_certificate.json.gz` (16 MB, with integer tangent frames).

## Conclusion

By Step 4 and Lemma 4.2, every class in X lies in some ball Record. By Step 3, no Hadamard in a Record is a quartet edge. S₆ is not a quartet edge, by Remark 3.3. Hence no order-6 Hadamard matrix is a quartet edge, and ℂ⁶ has no four MUBs. ∎

**In Lean** the whole argument is `NoFourMUBs.Final.no_four_mubs (C : AtlasCertificate) : ¬ FourMUBs` ([`lean/NoFourMUBs/Final.lean`](lean/NoFourMUBs/Final.lean)), using only `propext`, `Classical.choice` and `Quot.sound`. Its one input is the finite certificate of Step 4: Lean proves "if the 12,021 Records satisfy their inequalities, there are no four MUBs", and the inequalities themselves are checked by two independent interval implementations.

## What is checked, and how

| Ingredient | Paper proof | Computation | Lean |
|---|---|---|---|
| Theorem 1 (maxima of R) | return C | 651 exact claims | yes |
| Lemma 2.1 (side quadratic) | Step 2.1 | none | yes |
| Theorem 2.2 (matched existence) | return J (sides), return E (flatness), return Q (the Fourier anchor) | identity (J); exact flatness identities; return Q's 62 exact checks | yes (kernel re-checks every identity) |
| Theorem 2.3 (matched uniqueness) | Step 2.2 | none | yes |
| Theorem 2.4 (nonmatched converse) | return G §§2–5 | exact: 81-case census, Laurent identities | yes |
| Theorem 2.5 (strict-corner coverage) | `STRICT_CORNER_COVERAGE.md`; return K for nonzero J | exact identities | yes (kernel re-checks the zero-J square-sum identity and return K's signed corner expansion) |
| Lemma 1.1, Theorem 2 (connectedness) | Steps 1, 2.3 | none | Lemma 1.1 in the direct coverage route (`coverage_of_matched_density`); Theorem 2 not as a standalone theorem |
| Lemmas 3.1–3.2, Remark 3.3 | `STAGEC.md` | none | yes (as inequalities) |
| The atlas (Step 4) | Lemmas 4.1–4.2 | Arb and margined float; two independent implementations | the topology yes; the numbers are checked outside Lean |

**Inputs taken as given.** No classification of order-6 Hadamard matrices is used. The Stage C method follows
[OAI] §6, with every inequality reproved (`STAGEC.md`) and formalised.

**What remains outside Lean: the atlas numbers only.** An optional project checks them in the Lean kernel as well
([`kernel_atlas/`](kernel_atlas/README.md)); it is not needed for this proof.

## Verifying

```bash
pip install -r requirements.txt   # Python 3.10+: numpy, sympy, mpmath, python-flint
python3 verify.py                 # exact replays of Steps 1–3 (about 1 minute)
python3 verify.py --atlas -j 8    # also certify all 12,021 Records and F6 (about 1.9 CPU-hours; 14 min with 8 workers)
python3 verify.py --lean          # also build the Lean formalisation and audit its axioms (about 8 min with the Mathlib cache)
python3 verify.py --lean-full     # also build matched existence and NoFourMUBs.Final (about 12 min on an Apple M5 Max)
```

The independent Julia checker is run separately ([`proof/independent/README.md`](proof/independent/README.md)).
Where to look hardest, and the full status, are in [`AUDIT.md`](AUDIT.md).

## History

- The first complete proof used the corner chart directly: a maximal-corner domain, a branch layer and a 45.7M-row
  ledger, about 10⁵ core-hours. It is preserved, still replayable, at the git tag `archive-2026-10-11`
  (`archive/long_proof/`).
- The first minimal proof deduced X = A ∪ conj A ∪ {F6} from the classification [CT] through five reconstruction
  facts MC1–MC5 ([`MinimalConstruction/`](MinimalConstruction/README.md)). One of them (the nonmatched converse)
  imported [CT]'s minus-matching necessity (PR-M), whose supplied proof was incomplete. The route above replaces
  [CT] entirely: MC2–MC3 by Theorems 2.2–2.3; MC4–MC5 and PR-M by Theorem 2.4 (return G also proves PR-M on the
  guarded locus, its Theorem B, which is not on the critical path); MC1 by Theorem 2.5.
- Matched existence first used return F's explicit radical side construction; it now uses identity (J) (return J).
  The nonzero-J critical strips first used a twenty-corner square sum with a Bernstein/Sturm certificate; they now
  use return K's signed corner sums.
- The proof documents before this consolidation (the four-step PROOF.md with the [CT] route first, and the
  [CT]-free draft PROOF_v2.md) are preserved at the git tag `proof-docs-2026-10-17`.

## References

- [OAI] OpenAI, *The maximum number of mutually unbiased bases in dimension six*, preprint, 24 Sep 2026 (openai/math).
- [CT] M. Cárdenes Wuttig, J. Tindall, *A complete classification of complex Hadamard matrices of order six*,
  arXiv:2608.18053 (context for the reconstruction; not used by the proof).
