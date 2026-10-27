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
- **Locally, through seed balls.** Since the corner seed determines the matrix, the same four phases serve as local
  coordinates. A small ellipsoid of seeds can be certified to contain no quartet edge by one centre computation and
  Stage C (Step 3). Near F6, where the reconstruction degenerates, a separate theorem excludes every quartet edge
  within distance 7/40 (Step 4). Finitely many seed balls and one ball at F6, whose boundaries map back inside the
  family, cover a nonempty open-and-closed subset of X (Step 5).

Since X is connected, that subset is all of X. So no non-Tao Hadamard is a quartet edge, and Tao's matrix is
excluded separately. No classification of order-6 Hadamard matrices is used.

| Step | Content | How it is checked |
|---|---|---|
| 1 | The positive local maxima of R form one 18-point orbit | Exact algebra (651 claims); **in Lean** |
| 2 | Reconstruction (matched completions: existence, uniqueness, converse, coverage) and connectedness of X | Paper proofs with exact certificates; **in Lean** (connectedness through the maximum principle, §2.3) |
| 3 | A seed ball plus Stage C contains no quartet edge | Proved inequalities (**in Lean**), one Arb computation per ball |
| 4 | No quartet edge within 7/40 of F6 | Exact cover; **in Lean, hypothesis-free** |
| 5 | A finite atlas of seed balls and one ball at F6 covers X | Certified computation, replicated by an independent implementation |

**How the pieces fit.**

```
Theorem 1 (maxima of R) ──→ Lemma 1.1 (S is connected) ────────────────┐
Lemma 2.1 (side quadratic) ─→ 2.2 existence ─→ 2.3 uniqueness ─────────┤
                              2.2 ─→ 2.4 converse ──┐                  │
                              2.5 coverage ─────────┴→ 2.6 exact reach ┴→ Theorem 2 (X connected)
Lemma 3.1 (C1, return Z) + Lemma 3.2 (Stage C) ─→ each seed ball excludes quartet edges
Theorem 4.1 (return X) + Theorem 4.2 (edge chart) ─→ the ball at F6 excludes quartet edges
Theorem 4.3 (return XS) ─→ transfers into the ball at F6 need no side data
Lemma 5.1 (transfers) + Lemma 5.2 (coverage) + Theorem 2 ─→ the atlas covers X ─→ no four MUBs
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
own machinery: S₆ is a *zero-dimensional* record (Step 3, Remark 3.3). Let

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

Theorem 1 is used once, through the following lemma.

> **Lemma 1.1 (the strict seeds are connected).** S = {θ ∈ T⁴ : R(θ) > 0} is connected, indeed path connected.

*Proof.* Each component of S has compact closure in T⁴ with R = 0 on its boundary, so R attains a positive local
maximum inside it; by Theorem 1 it is one of the 18 maxima. It remains to join the 18 maxima inside S. With z = e^{it},
w = e^{is}, the triples e = (z⁻², z, z) and o = (w⁻², w, w), the distinct entry in any of the three positions, give
seeds (a, b, c, d) = (e₁/o₂, o₁/e₃, o₁/e₂, e₁/o₃); the nine placements at (t, s) = (α, −α) and (−α, α) are exactly the 18
maxima. On s = −t, with x = cos t, R = 256(1−2x)(1+2x)⁵(1+2x²)²(4x³−2x+1)², positive for 0 ≤ x ≤ 1/4, so each maximum
reaches the circle s = t + π inside S; on that circle R ≡ 256. At (0, π) the three placements of e give the same seed,
and at (π, 0) those of o do, so the nine circles are joined in a 3 × 3 grid. All 18 maxima, and so all components, lie
in one path component. ∎

So a subset of S that is open and closed in S and nonempty is all of S; this is how the lemma is used below.
The identities are replayed exactly by [`proof/coverage/omega_connected/verify_paths.py`](proof/coverage/omega_connected/verify_paths.py).
*Lean:* `Step2.isConnected_strict` (`Step2/StrictConnected`), with the paths through Lean's Step 1 coordinates.

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

**Certificates.** 651 exact claims, checked with integers and rationals only, in seconds (`lean/Step1Gen`, `verify_certificates.py`; proof documents in [`proof/coverage/returns/C_step1_saddle`](proof/coverage/returns/C_step1_saddle/)). Theorem 1 is proved in Lean, using only standard axioms: the 96 certificate theorems of library `Step1` that it needs (interior, single boundary, double boundary) and the analytic assembly in `lean/NoFourMUBs/Step1/`. The remaining certificates (curvature, cusps, endpoints, orbit census) are checked exactly by `verify_certificates.py` but are not needed by the proof. Theorem 1 is `Step1Geo.maximumCensus`, with the explicit anchors `Step1Geo.anchors`. The earlier resultant/Sturm proofs A and B (`returns/A_deltoid`, `returns/B_exact_quotient`) remain as independent cross-checks. Proof B also shows why no interval box cover could work here: at the F3 seed, R, ∇R and Hess R all vanish, with strict seeds arbitrarily close.

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
  matched completion lie in U. So U is a nonempty open and closed subset of S, and U = S by Lemma 1.1.
  Conjugating seed and side gives the other root ([`proof/coverage/returns/J_side_existence/RESULT.md`](proof/coverage/returns/J_side_existence/RESULT.md)). The flatness step uses any actual sides, so it applies at each seed of U before
  U = S is known.
- **Flatness.** For *any* actual sides B, C on conjugate roots, the forced block D = −C E* G⁻¹ B has unimodular
  entries. The completion always satisfies HH* = 6I. Its defect matrix Δᵢⱼ = |Dᵢⱼ|² − 1 has zero row and column sums,
  so it is determined by the weighted defects W = C̄ᵀ Δ B̄ᵀ, whose first row and column vanish; the remaining entries
  are W₁₁, W₁₂, W₂₁, W₂₂ (zero-based indices), and W = 0 forces Δ = 0 since B and C are invertible. Exchanging rows 1, 2 of E and B (or columns
  1, 2 of E and C) leaves D unchanged, keeps the seed strict and the sides actual, and permutes the indices of W, so
  every defect is W₁₁ at a relabelled seed. With horizontal label z and vertical label w,
  W₁₁ = J₁₀/(d_h d_v g)·(z + w − χ/g) + J₁₁/(d_h d_v)·(zw − η), which vanishes for matched labels (z + w = χ/g,
  zw = η by Lemma 2.1). Here the third moments are written Q⁽¹⁾(G, z) = (H₀ + g z H₁)/d_G with d_G = P₀P̄₁,
  U = E*·adj(G_h) and J_ij = tr(V_iᵀ U H_j U*); the decomposition holds because two residuals F₀, F₁ vanish
  identically in ℚ(a, b, c, d) (return R2, [`proof/theorems/R2_flatness_cross_side`](proof/theorems/R2_flatness_cross_side/REVIEW.md);
  first proved with eight larger coefficient identities, return E,
  [`proof/coverage/returns/E_matched_flatness`](proof/coverage/returns/E_matched_flatness/FLATNESS.md)). The
  relabelling is handoff M, proved in [`ALGEBRAIC_PROOFS.md`](proof/coverage/audits/AUDIT_2026-10-17/ALGEBRAIC_PROOFS.md).

*Lean:* `L1.matchedExistence`. Side existence is `L1.sides_all`, with `L1.exists_side_h` and `L1.exists_side_v`
(`L1/SideJacobian`, `L1/SideCover`, `L1/Existence`); the pointwise step is `L1.matched_of_sides`, the Fourier
anchor `Step2.matched_fourier` (`Step2/FourierAnchor`) and connectedness `Step2.isConnected_strict`; the two residual identities F₀ = F₁ = 0 are checked by the kernel through a verified Kronecker
polynomial-identity checker (`L1/FlatCheckF`, about a second each), and the relabelling is `L1.FlatCircuits.W_zero` (with `W_rowPerm`, `W_colPerm`). ∎

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

The proof of no four MUBs needs only the weaker conclusion of step 5, *M is Tao or in a Fourier family*, since the
Fourier families are covered directly (see the coverage proof after Lemma 5.2).

Independently audited with no errors found ([`proof/coverage/audits/AUDIT_2026-10-15.md`](proof/coverage/audits/AUDIT_2026-10-15.md)).
*Lean:* `PRM.nonmatched_tao_or_fourier` (`lean/NoFourMUBs/PRM/Converse.lean`), the weaker form used by the proof; the full
statement is `PRM.nonmatched_tao` (`PRM/FourierMatch.lean`, used only by the Fourier-vanishing module). ∎

> **Theorem 2.5 (strict-corner coverage).** Every Hadamard matrix not equivalent to F6 has a strict corner.

*Proof* ([`MinimalConstruction/Proofs/STRICT_CORNER_COVERAGE.md`](MinimalConstruction/Proofs/STRICT_CORNER_COVERAGE.md),
with `PRM.md` §7.1). Suppose every corner of H is critical (R = 0) and H ≇ F6.
1. **Routing.** A singular 3×3 minor, or three rows phased into (1; x; x̄), would put H in a Fourier family
   (elementary, `PRM.md` §7.1). An all-critical member of a Fourier family is equivalent to F6
   (`FOURIER_CRITICAL_LOCUS.md`). So all minors are invertible, and no row triple is of that form. (The proof of no
   four MUBs needs only "H is in a Fourier family" here, not the census of `FOURIER_CRITICAL_LOCUS.md`.)
2. **Critical-strip classification.** On any three-row strip with all twenty blocks invertible and every corner
   critical, each corner has p ∈ {0, 5}, or one of two rational endpoints, or p = p* := 9 − 4/(1 + κ²), where
   κ > 0 solves 3κ³ + κ² + κ − 1 = 0.
   - *Zero J* (return O, [`proof/coverage/returns/O_zeroj_unsquared`](proof/coverage/returns/O_zeroj_unsquared/REPORT.md)):
     two *unsquared* weighted sums over the nine mixed corners vanish on an all-critical strip; with exact scalar
     algebra they force K = (1 − z)(z + 3)³, and the geometric step follows from λ₀ = 1 and Σ xⱼyⱼ = 3.
   - *Nonzero J* ([`proof/coverage/returns/K_nonzero_J/REPORT.md`](proof/coverage/returns/K_nonzero_J/REPORT.md)):
     two sums of the *unsquared* corner signature, Σ_C D_C = ā b c − a b̄ c̄ and its xy-weighted version, vanish on
     an all-critical strip. With the cleared λ-identities and a universal 24-term identity they force
     Im(s̄ r̄ t) = 0 or a repeated modulus, poles included; this leaves four one-parameter curves. On each curve, if
     all six λ-denominators were nonzero the weighted sum would equal an explicit nonzero value, so some
     denominator vanishes; the product of the six denominators, factored on the four curves, gives exactly the
     three candidates.
3. **Counting** ([`ENDPOINT_COUNTING.md`](MinimalConstruction/Proofs/ENDPOINT_COUNTING.md), return S,
   [`proof/coverage/returns/S_endpoints_by_counting`](proof/coverage/returns/S_endpoints_by_counting/PROOF.md)). Fix a
   column c; identify the ten corners C ∋ c with the edges of K₅ on the other columns. Three universal identities
   (unit entries, orthogonal rows): Σ_{C∋c} p_C = 54; the signed vertex sums d_i = Σ_{C⊇{c,i}} J_C vanish (the
   anchored determinant sum Σ_{C∋c} |det E_C|² = 108 with |det E_C|² = 27 − 3p_C − J_C, and opposite J on
   complementary corners); and Σ_{C∋c} X_C² = 54 + |Σ_j u_j²|² ≥ 54 for one row pair. Since p* is irrational (the
   cubic has no rational root, so κ has degree 3), Σ p = 54 leaves no corner at p*. At each vertex d_i = 0 reads
   2A + (54/25)B = 0 for the signed counts A, B ≤ 4 of the two endpoint types, so A = B = 0 and both endpoint counts
   are even; 25n₅ + 35n₇ + 27n_e = 270 then leaves ten equicorrelated corners (Σ X² = 162/5 < 54) or two p = 7
   corners, whose two edges cannot balance every vertex. ∎

*Lean:* `PRM.strictCornerCoverage` (`lean/NoFourMUBs/Final.lean`; modules `PRM/Coverage*.lean`), in the weaker form
"every Hadamard matrix not in a Fourier family has a strict corner" used by the proof; the form stated above is
`Coverage.strictCorner_of_not_F6` (`PRM/CoverageFourierLocus.lean`, outside the proof's import closure). The count is
`CoverageTen.anchored_count` (`PRM/CoverageEndCount.lean`); instead of irrationality it uses p* ∈ (5.722, 5.723)
(`CoverageTen.pStar_bounds`; the wider window (17/3, 29/5) would admit a corner value such as 143/25). The zero-J
stratum is `PRM.Coverage.zeroJProduct` (`PRM/CoverageZeroJProduct.lean`, with the two mixed-sum identities re-checked
by the kernel in `PRM/CoverageMixedCheck*.lean`); the nonzero-J stratum is `PRM/CoverageSigned*.lean`.

> **Corollary 2.6 (exact reach).** Every class of X is [F6], or in A, or in conj A.

*Proof.* Let H ≇ F6 be non-Tao. Take a strict corner (Theorem 2.5) and dephase. By Theorem 2.4 its sides are
matched. If the horizontal signature is ζ₋, conjugate the whole matrix. *Lean:* `PRM.exactReach`. ∎

### 2.3 Connectedness

> **Theorem 2.** X is connected.

*Proof.*
1. **Continuity.** The class map θ ↦ [H₊(θ)] on strict seeds is continuous: the matched relation is closed, 𝓗 is
   compact, and the matched class is unique (Theorems 2.2, 2.3).
2. **A is connected.** S is connected (Lemma 1.1), so its continuous image A is connected (step 1), and so is
   conj A.
3. **Joining at F6.** The family [[F₃, F₃], [F₃D(t), −F₃D(t)]], with D(t) = diag(1, e^{it}, 1), tends to
   F₂⊗F₃ ≅ F6 as t → 0. Its cross-ratio e^{it} keeps it away from F6 and S₆ for 0 < t < π/3. So [F6] lies in the
   closure of both A and conj A.
4. **Conclusion.** By Corollary 2.6, X = A ∪ conj A ∪ {[F6]}, which is therefore connected. ∎

Details: [`proof/coverage/returns/A_deltoid/CONNECTEDNESS.md`](proof/coverage/returns/A_deltoid/CONNECTEDNESS.md) and
`SHEETS_TOPOLOGY.md`, with return B as an independent check. *Lean:* `Step2.coverage_of_matched_density` and its inputs.

## Step 3. Local exclusion in seed coordinates

By Step 2, every non-Tao class other than F6 is the matched completion H_o(θ) of a strict seed θ ∈ Ω = {R > 0}, with
an orientation o ∈ {±1}. So the four phases of a corner are coordinates for the whole space X away from F6. A **seed
ball** is an ellipsoid of seeds

  B = {θ₀ + M_θ w : ‖w‖ ≤ r} ⊂ Ω,  with an orientation o,

and its image is the set of classes [H_o(θ)], θ ∈ B. Each ball carries a centre phase matrix P, a 36 × 4 frame U and
a remainder n (all in the horizontal gauge: row and column sums zero).

> **Lemma 3.1 (C1: the completion is enclosed).** For every θ ∈ B the matched completion exists, is Hadamard with
> orientation o, and its phase matrix Q(θ) satisfies
>
>   ‖Q(θ) − P − U w − 2πN‖ ≤ n
>
> for an integer winding N, up to row and column phases.

*How it is certified (return Z).* One computation at the centre, with no subdivision of the ball. A frame-preserving
contraction proves that the matched branch exists on the whole ellipsoid (rate τ < 1). Two orientation margins, from
‖D²ψ‖ ≤ 72, fix both signs of Im Ψ throughout. The enclosure is then ‖hQ − P − U w‖ ≤ β r²/2 + ‖X‖τ, plus the
distance of the stored P and U from the exact ones. On the atlas the certified n is 1.0–1.4 × the remainder an
adaptive box partition gives, at about 300 × less cost. Theorem: `proof/theorems/Z_completion_hessian/`
(`THEOREM.md`); code: [`proof/seed_atlas/cert/wholeball.py`](proof/seed_atlas/cert/wholeball.py). The box
partition remains the fallback where the contraction does not close.

> **Lemma 3.2 (Stage C, after [OAI] §6).** Suppose the vector-bin cover, the label clustering, the O/U edge tests
> (including the joint test 6.23) and the exact two-clique search succeed on the enclosure P + U w + ν (‖w‖ ≤ r,
> ‖ν‖ ≤ n), with column radius r_col = t r + n and Frobenius radius r_F = ‖U‖₂ r + n. Then no Hadamard class in the
> image of B is a quartet edge.

Stage C sees only a phase matrix and a radius, so it applies to a four-parameter family exactly as to a ball. Every
Stage C inequality, the label lemma and the correctness of the clique search are proved in our notation in
[`proof/atlas/STAGEC.md`](proof/atlas/STAGEC.md), and in Lean (`lean/NoFourMUBs/StageC/`). Code:
[`proof/atlas/stagec.py`](proof/atlas/stagec.py). Rigour ([`RIGOUR.md`](proof/atlas/RIGOUR.md)): σ-type constants
in Arb or exactly; exponentials from Arb tables; every other float comparison with a margin of 10⁻⁷ against an error
budget below 10⁻¹⁰.

> **Remark 3.3 (S₆ is a zero-dimensional record).** At S₆ the horizontal spectrum of JᵀJ is exactly {9/2 (×16),
> 12 (×9)}, where J is the derivative of the off-diagonal Gram map. So J is injective on all 25 horizontal
> directions, with σ = 3/√2 exactly.
> - *Isolation.* For any Hadamard e^{i(P+δ)} with δ horizontal, ‖Φ(δ) − Φ(0) − Jδ‖ ≤ √3‖δ‖² (Lean:
>   `outNorm_rem_le`) gives σ‖δ‖ ≤ √3‖δ‖², so δ = 0 or ‖δ‖ ≥ √(3/2). So S₆ is isolated in 𝓗/≅ (Lean: `isolation`).
> - *Exclusion.* Stage C passes on the ball of radius 0.08 around S₆, so S₆ is not a quartet edge.
>
> This is [`proof/atlas/tao.py`](proof/atlas/tao.py).

## Step 4. The neighbourhood of F6

The reconstruction degenerates only at F6, where R = 0 and the two orientations meet. There, no Stage C is needed.

> **Theorem 4.1 (return X).** No complex Hadamard matrix within horizontal phase distance 7/40 of F6 is a quartet
> edge.

Return X proves it at 3/20 and at 9/20 by an exact finite cover with a quantitative margin
(`proof/theorems/X_no_quartet_near_F6/`, `X_radius_045/`). **In Lean, at 7/40 and with no hypotheses**:
`NoFourMUBs.X.Radius0175.no_quartet_near_F6_r0175` ([`lean/NoFourMUBs/X/`](lean/NoFourMUBs/X/README.md)), where a
normal-displacement bound reduces it to one Stage C certificate at F6, checked in the kernel.

> **Theorem 4.2 (returns U, W: the edge chart).** Near F6 the corner on rows and columns 0, 1, 2 parametrises every
> class by p = (θ₁, θ₂, θ₃, y), where y = −2 Im Ψ is the signed root of R. It is a chart on an explicit ellipsoid
> around p = 0, covering every class within distance 0.15 of F6.

The **X-ball** is the image of {p = M w : ‖w‖ ≤ r} in this chart, with M from W's tangent metric. It is certified like
a seed ball: C1 by the chart's whole-ball model (one centre computation, as in Lemma 3.1) in Arb, and by Krawczyk
tubes of the chart's 7-unknown system in Julia. Its image lies within distance 7/40 of F6, so it
is quartet-free by Theorem 4.1. F6 = H(0) is its centre. Openness at y = 0 comes from the graph property near F6
(SPEC §10.1–10.2; Lean: `SeedAtlas.EdgeX.isOpen_edgeInterior`).

> **Theorem 4.3 (return XS: transfers into the chart).** Let K be Hadamard with an ordered corner (I, J), and let
> p′(K) = (θ′₁ − π/3, θ′₂ − 2π/3, θ′₃ − 2π/3, −2 Im Ψ(K[I, Jᶜ])). If p′(K) lies in a target contained in W's
> ellipsoid E_{1/5} and d([K], [F6]) ≤ 3/20, then K ≅ H(p′(K)).

The three corner phases pin the Fourier frame: only 72 of the 14,400 ordered corner pairs fit them, and each extends
to an automorphism of F6. W's framed continuation then recovers the whole completion. The theorem uses no side orders,
side windings, orientation signs or tubes, and it holds across the fold y = 0
(`proof/theorems/XS_edge_side_orders/`, replayed).

## Step 5. The atlas covers X

> **Lemma 5.1 (transfers).** Every point of every ball's boundary sphere is, after a symmetry g ∈ Γ (identity,
> conjugation, transposition, conjugate-transpose), in the interior of another ball. It is shown on a cover of the
> sphere ‖w‖ = r by spherical caps {w = r x : ‖x‖ = 1, v·x ≥ h}, each with a certified target:
> - **T0:** the same corner: θ itself in the target ball's ellipsoid (a linear condition), over the cap;
> - **T1:** another ordered corner (I, J) of g · H, whose seed θ′ is linear in the phases: θ′ in the target's
>   ellipsoid and both Ψ signs of the target's orientation, over the cap;
> - **T3:** into the X-ball, by Theorem 4.3: the corner parameter p′ in the X-ball's ellipsoid, and K within phase
>   distance 3/20 of F6, over the cap. No side data is needed.

*How it is certified (returns ZC, ZC2a, ZC2b).* Each cap's target condition is a norm bound ‖d + F x‖ < 1 on the cap
for an affine predictor from the source ball's whole-ball model (Lemma 3.1; ZT's output-weighted error terms and
centre jets), certified by a 5 × 5 positive-definite witness (an S-lemma certificate) with the model's remainder.
The Ψ signs follow from the linear minimum over the cap and ‖D²ψ‖ ≤ 72. A T3 cap carries two witnesses, one per
condition of Theorem 4.3, with the signature remainder of y′ = −2 Im Ψ. The caps of a sphere cover it by an exact
polar-facet certificate: every vertex of {y : v_i·y ≤ h_i} lies in the closed unit ball, checked in integers.
Theorems: `proof/theorems/ZC_cap_transfers/` (seed spheres), `ZC2a_xball_sphere_caps/` (the X-ball's sphere),
`ZC2b_t3_caps/` (T3); code: [`proof/seed_atlas/cert/caps.py`](proof/seed_atlas/cert/caps.py), `cap_t3.py`,
`edgecaps.py`, `cap_coverage.py`. A sphere may instead be covered by dyadic boxes, each tested by ZT's patch test
(`proof/theorems/ZT_wholeball_transfers/`); the present certificate uses caps only.

> **Lemma 5.2 (coverage).** Let W be the set of classes in the atlas. Then W ∩ X is open, closed and nonempty, so
> W ⊇ X.

*Proof.*
- **Closed:** a finite union of compact images.
- **Open:** at interior points of seed balls by the open-map lemma (`SeedAtlas.OpenMap`); at boundary points by
  Lemma 5.1; at the X-ball by its chart.
- **Nonempty:** F6 = H(0) lies in the X-ball.

As in Step 2, W pulled back to the strict seeds is open and closed in S, and S is connected (Lemma 1.1), so W contains
A and conj A. The Fourier families are connected sets through [F6] ⊂ W, and every non-Tao class is matched at a strict
corner or lies in a Fourier family (`PRM.nonmatched_tao_or_fourier`, `PRM.strictCornerCoverage`). Hence W ⊇ X. ∎

**The computation** ([`proof/seed_atlas/`](proof/seed_atlas/README.md)):
1. The driver grows seed balls breadth-first, covers each sphere by transfer boxes, and covers the X-ball's sphere.
2. [`cert/certify_seed_atlas.py`](proof/seed_atlas/cert/certify_seed_atlas.py) (Arb) re-checks every ball from the
   certificate alone: C1 (Lemma 3.1), Stage C (Lemma 3.2), every transfer box (Lemma 5.1), the X-ball's C1, image
   bound and transfers, and the coverage of every sphere.
3. [`proof/independent_seed/`](proof/independent_seed/README.md) re-checks the same certificate in Julia, written
   from the specification ([`FORMAT.md`](proof/seed_atlas/FORMAT.md)) only.

**Result:**

| | |
|---|---|
| seed balls | 2,775 (radii 0.015–0.125) |
| sphere caps | 97,780 on the seed balls (T0 13,519; T1 83,979; T3 282), 19,611 on the X-ball; 550,347 exact coverage facets; no boxes |
| X-ball | tangent radius 0.13; image within phase distance 0.142 < 7/40 of F6 (Arb 0.1411) |
| Arb certification | **PASS**, 0 failures in 2,778 items: 33 min on one 128-core node (25 core-hours of seed-ball work) |
| Julia certification | **PASS**, every check: 1 h 07 min on one 64-core node (`results/julia/`) |
| certificate | `proof/seed_atlas/results/seed_atlas_certificate.json.gz` (17 MB, SHA-256 `33ad9798eb7a5585c486f2427a6b223867a43b308b7f184467b4cd5956bd8baf`); Arb receipt `arb_receipt.json` |

**Status (27 Oct 2026).** Both certifiers pass the whole certificate. Every sphere is covered by certified caps (no boxes), every seed ball's C1 is from cheap constants, and T3 is by Theorem 4.3 (no side data).

## Conclusion

By Lemma 5.2 every class in X lies in a seed ball or the X-ball. No seed ball contains a quartet edge (Lemma 3.2), nor
does the X-ball (Theorem 4.1), nor S₆ (Remark 3.3). Hence no order-6 Hadamard matrix is a quartet edge, and ℂ⁶ has no
four MUBs. ∎

**In Lean** the whole argument is
`NoFourMUBs.EdgeXFinal.no_four_mubs_seed (C : SeedAtlas.EdgeX.EdgeAtlasCertificate) : ¬ FourMUBs`
([`lean/NoFourMUBs/SeedAtlas/EdgeXFinal.lean`](lean/NoFourMUBs/SeedAtlas/EdgeXFinal.lean)), using only `propext`,
`Classical.choice` and `Quot.sound`. Its one input is the certificate of Step 5; return X enters as the proved
theorem at 7/40.

## What is checked, and how

| Ingredient | Paper proof | Computation | Lean |
|---|---|---|---|
| Theorem 1 (maxima of R) | return C | 651 exact claims | yes |
| Lemma 2.1 (side quadratic) | Step 2.1 | none | yes |
| Theorem 2.2 (matched existence) | return J (sides), return E (flatness), return Q (the Fourier anchor) | identity (J); exact flatness identities; return Q's 62 exact checks | yes (kernel re-checks every identity) |
| Theorem 2.3 (matched uniqueness) | Step 2.2 | none | yes |
| Theorem 2.4 (nonmatched converse) | return G §§2–5 | exact: 81-case census (reduced to 4 cases in Lean), Laurent identities | yes; the proof uses the form "Tao or Fourier family" |
| Theorem 2.5 (strict-corner coverage) | `STRICT_CORNER_COVERAGE.md`; return K for nonzero J; return S for the count | exact identities | yes, in the form "no strict corner ⇒ Fourier family" |
| Lemma 1.1 (S connected), Theorem 2 | Steps 1, 2.3 | exact path identities | Lemma 1.1 yes (`isConnected_strict`); Theorem 2 in the direct coverage route |
| Lemma 3.1 (C1) | return Z | one Arb computation per ball | the method's lemmas (`SeedAtlas/Method/`); the per-ball check in the kernel is in progress |
| Lemma 3.2, Remark 3.3 (Stage C, S₆) | `STAGEC.md` | Arb and margined float | yes (as inequalities) |
| Theorem 4.1 (no quartet near F6) | return X | exact cover | **yes, at 7/40, hypothesis-free** |
| Theorem 4.2 (edge chart), the X-ball | returns U, W | Krawczyk tubes | the chart's openness and uniqueness (`SeedAtlas/EdgeX*`) |
| Theorem 4.3 (transfers into the chart) | return XS (relative to W, U) | exact constants and census; per box a distance bound and an ellipsoid test | as a hypothesis of the X-ball certificate |
| Lemmas 5.1–5.2 (the atlas) | Step 5; return ZT (the transfer test) | Arb and Julia, two independent implementations | the topology yes; the numbers are checked outside Lean |

**Inputs taken as given.** No classification of order-6 Hadamard matrices is used. The Stage C method follows
[OAI] §6, with every inequality reproved (`STAGEC.md`) and formalised.

**What remains outside Lean: the atlas numbers.** The seed-ball kernel check (C1 by return Z's centre computation,
Stage C and the transfers, each decided by `decide +kernel`) is in progress in
[`kernel_atlas/`](kernel_atlas/README.md); with it, the theorem holds with no hypotheses.

## Verifying

```bash
pip install -r requirements.txt   # Python 3.10+: numpy, sympy, mpmath, python-flint
python3 verify.py                 # exact replays of Steps 1–4 (about 1 minute)
python3 verify.py --atlas -j 8    # also certify the seed atlas (Step 5) in Arb
python3 verify.py --lean          # also build the Lean formalisation and audit its axioms
python3 verify.py --lean-full     # also build the main theorems and audit them
```

The independent Julia checker is run separately ([`proof/independent_seed/README.md`](proof/independent_seed/README.md)).
Where to look hardest, and the full status, are in [`AUDIT.md`](AUDIT.md).

## References

- [OAI] OpenAI, *The maximum number of mutually unbiased bases in dimension six*, preprint, 24 Sep 2026 (openai/math).
- [CT] M. Cárdenes Wuttig, J. Tindall, *A complete classification of complex Hadamard matrices of order six*,
  arXiv:2608.18053 (context for the reconstruction; not used by the proof).
