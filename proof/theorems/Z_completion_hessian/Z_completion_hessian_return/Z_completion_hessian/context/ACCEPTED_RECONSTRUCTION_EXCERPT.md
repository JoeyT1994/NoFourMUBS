# Supplied reconstruction dependency

This is an unchanged excerpt of the user-supplied PROOF.md, sections 2.1–2.2, through Theorem 2.3. It records the matched-flatness and strict-side uniqueness inputs used by this return. The statements and referenced Lean files are background supplied by the user; they are not independently re-proved by this package. The new upper-bound theorem is in THEOREM.md.

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

