# ℂ⁶ has no four mutually unbiased bases

> **Theorem.** There are no four mutually unbiased bases (MUBs) in ℂ⁶.

## The idea in one page

Rotate four MUBs so that the first is the standard basis. The second basis is then H/√6 for a complex Hadamard
matrix H of order six. Call H, or the pair {I₆, H/√6}, **extendable** when this pair extends to four MUBs
(`QuartetEdge` in Lean). The theorem says that no H is extendable.

The proof sees the space of Hadamard matrices in two ways.

- **Globally, through corners.** Every non-Tao Hadamard matrix other than F₆ is built from a single 3×3 *corner*
  by an explicit reconstruction, the **matched completion**. Corners are parametrised by a 4-torus 𝕋⁴ of seeds. The
  function R on seeds that controls the reconstruction has its maxima in a single orbit (Step 1). Together these make
  the space 𝒳 of non-Tao classes **connected** (Step 2).
- **Locally, through seed balls.** Since the corner seed determines the matrix, the same four phases serve as local
  coordinates. A small ellipsoid of seeds can be certified to contain no extendable H by one centre computation and
  the local tests of Step 3 (Stage C in the code). Near F₆, where the reconstruction degenerates, a separate theorem
  excludes every extendable H within phase distance 7/40 (Step 4). Finitely many seed balls and one ball at F₆, whose
  boundaries map back inside the family, cover a nonempty open-and-closed subset of 𝒳 (Step 5).

Since 𝒳 is connected, that subset is all of 𝒳. So no non-Tao Hadamard matrix is extendable, and Tao's matrix is
excluded separately. No classification of order-six Hadamard matrices is used.

| Step | Content | How it is checked |
|---|---|---|
| 1 | The positive local maxima of R form one 18-point orbit | Exact algebra (651 claims), **in Lean** |
| 2 | Reconstruction (matched completions: existence, uniqueness, converse, coverage) and connectedness of 𝒳 | Paper proofs with exact certificates, **in Lean** (connectedness through the maximum principle, §2.3) |
| 3 | A seed ball that passes the local tests contains no extendable H | Proved inequalities (**in Lean**), one Arb computation per ball |
| 4 | No extendable H within phase distance 7/40 of F₆ | Exact cover, **in Lean, hypothesis-free** |
| 5 | A finite atlas of seed balls and one ball at F₆ covers 𝒳 | Certified computation, replicated by an independent implementation |

**How the pieces fit.**

```
Proposition 1 (the maxima of R) ──→ Lemma 1.1 (Ω is connected) ────────┐
Lemma 2.1 (side quadratic) ─→ 2.2 existence ─→ 2.3 uniqueness ─────────┤
                              2.2 ─→ 2.4 converse ──┐                  │
                              2.5 coverage ─────────┴→ 2.6 exact reach ┴→ Theorem 2 (connectedness)
Lemma 3.1 (completion enclosure) + Lemma 3.2 (local tests) ─→ no seed ball contains an extendable H
Theorem 4.1 (exclusion near F₆) + Theorem 4.2 (chart at F₆) ─→ the ball at F₆ contains no extendable H
Theorem 4.3 (Fourier transfer) ─→ transfers into the ball at F₆ need no side data
Lemma 5.1 (transfers) + Lemma 5.2 (coverage) + Theorem 2 ─→ the atlas covers 𝒳 ─→ no four MUBs
```

Step 2 is the paper's minimal four-phase reconstruction ([`MinimalReconstruction/`](MinimalReconstruction/README.md)):
a corner seed, its two side blocks and the forced fourth block. That folder's README maps each of its documents to the
theorem here that uses it, with a notation table.

---

## 0. Setting

**Reduction to Hadamard matrices.** A complex Hadamard matrix of order six has |H_ij| = 1 and HH† = 6I₆. Call H
**extendable** if I₆ and H/√6 extend to four MUBs.

**Equivalence.** H ∼ H′ if H′ = P D₁ H D₂ Q, with P and Q permutation matrices and D₁ and D₂ diagonal unitaries. Write
[H] for the class of H and ℋ₆ for the set of all classes of order-six Hadamard matrices.

**Symmetries.** Being extendable is invariant under equivalence, under conjugation H ↦ H̄, and under transposition
H ↦ Hᵀ (apply the unitary H†/√6 to all four bases, then conjugate).

**Tao's matrix.** Tao's matrix 𝒯 = (e(k_ij/3)) is an isolated point of ℋ₆ and is not extendable. Both facts are
known: isolation from [TZ06], and [BW09] proves the stronger fact that 𝒯 admits no third basis. They are re-derived
here: 𝒯 is a
*zero-dimensional* record (Step 3, Remark 3.3). Let

  𝒳 = ℋ₆ ∖ {[𝒯]},

with the phase distance of the paper's Methods, d_ph([H], [K]) = inf ‖Q_H − Q_K‖_F over representatives
e^{iQ_H} ∼ H and e^{iQ_K} ∼ K, with Q_H and Q_K real phase matrices. Row and column phases add constants to the rows
and columns of a phase matrix, so equivalently d_ph([H], [K]) = min{‖v‖_F : v ∈ V, H ∼ K ∘ e^{iv}}, where V is the
space of real 6×6 matrices whose row and column sums all vanish and h is the projection onto V.

## Step 1. The maxima of R (exact algebra)

**Corners and R.** Write a dephased Hadamard matrix in 3×3 blocks, H = [[E, B], [C, D]]. Its leading block is a
**corner** E(θ) = [[1,1,1],[1,e^{iθ₁},e^{iθ₂}],[1,e^{iθ₃},e^{iθ₄}]], with seed θ ∈ 𝕋⁴. The corner determines the
scalar R(θ) = 4g²η − χ² (Step 2.1 gives the formulas).

> **Proposition 1 (the maxima of R) — SM Proposition S.1, Positive local maxima.** Every positive local maximum of R
> on 𝕋⁴ lies in one orbit of 18 points under the 144 seed symmetries:
>
>   θ* = α(1, 2, −1, −2), α = arccos(1/4), R(θ*) = 3¹³/2¹².
>
> (The Hessian there is negative definite, so these 18 points are exactly the positive local maxima, and max R = 3¹³/2¹².)

Proposition 1 is used once, through the following lemma.

> **Lemma 1.1 (the strict seeds are connected) — SM, Positive maxima and connected strict seeds.**
> Ω = {θ ∈ 𝕋⁴ : R(θ) > 0} is connected, indeed path connected.

*Proof.* Each component of Ω has compact closure in 𝕋⁴ with R = 0 on its boundary, so R attains a positive local
maximum inside it. By Proposition 1 it is one of the 18 maxima. It remains to join the 18 maxima inside Ω. Let
e⁽ⁱ⁾(t) be the triple with entry e^{−2it} at position i and e^{it} at the other two positions, and let θ_ij(t, s) be
the seed with (e^{iθ₁}, e^{iθ₂}, e^{iθ₃}, e^{iθ₄}) = (e₁/o₂, o₁/e₃, o₁/e₂, e₁/o₃) for e = e⁽ⁱ⁾(t) and o = e⁽ʲ⁾(s).
The nine placements θ_ij at (t, s) = (α, −α) and (−α, α) are exactly the 18 maxima. On s = −t, with c = cos t,
R = 256(1−2c)(1+2c)⁵(1+2c²)²(4c³−2c+1)², positive for 0 ≤ c ≤ 1/4, so each maximum reaches the circle s = t + π
inside Ω. On that circle R ≡ 256. At (t, s) = (0, π) the three placements of e give the same seed, and at (π, 0)
those of o do, so the nine circles are joined in a 3 × 3 grid. All 18 maxima, and so all components, lie in one path
component. ∎

So a subset of Ω that is open and closed in Ω and nonempty is all of Ω. This is how the lemma is used below.
The identities are replayed exactly by [`Connectedness/omega_connected/verify_paths.py`](Connectedness/omega_connected/verify_paths.py).
*Lean:* `Step2.isConnected_strict` (`Step2/StrictConnected`), with the paths through Lean's Step 1 coordinates.

**Coordinates.** Normalise the even products (e^{i(θ₁+θ₄)}, e^{iθ₂}, e^{iθ₃}) and the odd products (e^{i(θ₂+θ₃)}, e^{iθ₄}, e^{iθ₁}) of the corner so that each triple has product 1. Let U and V be their traces. Each lies in the filled deltoid {Δ ≤ 0}, with Δ(z) = |z|⁴ + 18|z|² − 8 Re(z³) − 27, and the trace map is an open quotient by S₃. Put A = U + V, B = U − V, u = |A|² and v = |B|². Then

  R = ℛ(A, B) = 4g²η − χ², g = 2v − 3u, η = v − 2u, χ = (3u − v)(v − u + 12)/2 − 2 Re(AB²).

A local maximum on 𝕋⁴ is therefore a local maximum of ℛ relative to {Δ ≤ 0} × {Δ ≤ 0}.

**1. No interior maximum.** *Every critical point of ℛ on ℂ² with ℛ > 0 has a direction of positive second derivative.*
- ℛ is invariant under (A, B) ↦ (e^{−2iτ}A, e^{iτ}B), so one may take B = √v > 0 and A = x + iy. Positivity gives η = v − 2u > 0.
- ∂_v R = 4g(6v − 11u) − 2χ ∂_vχ with g, 6v − 11u > 0, so χ ≠ 0. Then y ∂_x R − x ∂_y R = 4vyχ forces y = 0.
- On y = 0 write f = R and χ for the bracket. At x = −h ≤ 0 and v = 2h² + η, the Jacobian ∂_xχ ∂_v f − ∂_vχ ∂_x f equals −8(h² + 2η)W(h, η), where W has nonnegative coefficients and W ≥ 6η² > 0. Hence x > 0.
- Then ∂_v f = 0 forces χ < 0. Finally xR'' = −4vχ > 0, where R'' is the second derivative of R in y.

So both traces cannot be interior.

**2. Both traces lie on the boundary.**
- **One smooth boundary trace, the other interior.** The invariant circle orbit enters the interior to first order, or else has d²Δ/dτ² = −(9/2)(r + 2)²|z³ − 1|⁴ < 0.
- **A cusp with an interior partner.** Excluded by the factorisation ℛ = −4FG² and a positive cubic Bernstein certificate.

**3. The double boundary.** Here ℛ = −256 L²M²N in square coordinates (c, h).
- An explicit eliminant, with cofactors of 11 and 22 terms, leaves one positive stationary branch.
- On that branch, the actual transverse curvature is 660(46y + 9) > 4125/32. Every physical root of 4y² + 6y + 1 lies in (−49/256, −3/16), by a secant identity.
- On h = 1, four positive Bernstein expansions leave only (c, h) = (1/4, 1). Its lifts are exactly the 18-point orbit, with q = (1 + i√15)/4.

**Certificates.** 651 exact claims, checked with integers and rationals only, in seconds (`lean/Step1Gen`, `verify_certificates.py`, proof documents in [`Connectedness/returns/C_step1_saddle`](Connectedness/returns/C_step1_saddle/)). Proposition 1 is proved in Lean, using only standard axioms: the 96 certificate theorems of library `Step1` that it needs (interior, single boundary, double boundary) and the analytic assembly in `lean/NoFourMUBs/Step1/`. The remaining certificates (curvature, cusps, endpoints, orbit census) are checked exactly by `verify_certificates.py` but are not needed by the proof. Proposition 1 is `Step1Geo.maximumCensus`, with the explicit anchors `Step1Geo.anchors`. Two resultant/Sturm proofs (`returns/A_deltoid`, `returns/B_exact_quotient`) are independent cross-checks. The second also shows why no interval box cover could work here: at the F₃ seed, R, ∇R and Hess R all vanish, with strict seeds arbitrarily close.

## Step 2. Reconstruction, and 𝒳 is connected

### 2.1 Corner invariants and the side quadratic

**Invariants.** For a corner E with H = [[E, B], [C, D]], the other blocks have the overlap matrices
G_h = BB† = 6I₃ − EE† and G_v = CᵀC̄ = 6I₃ − EᵀĒ. Write s, t, r for the off-diagonal entries (G_h)₂₁, (G_h)₃₁,
(G_h)₃₂, and put X = |s|², Y = |t|², Z = |r|², p = X + Y + Z, J = 2 Re(s r t̄), W = XY + XZ + YZ − XYZ. Then

  g = 27 − 3p + J = |det B|²,  η = 9 − p + J,  χ = W − (p−9)(p−18) + (p−15)J,  R = 4g²η − χ².

The block C, through G_v, has the same g, η and χ.

**Labels.** For a 3×3 block S with unit entries, its label is Ψ(S) = perm(S) det(S)² / ∏ⱼₖ Sⱼₖ. It is invariant under
row and column permutations, row and column phases, and transposition.

> **Lemma 2.1 (the side quadratic) — SM Proposition S.2, Eq. (side identities).** For a normalised side B = (1; x; y)
> with det B ≠ 0, its label satisfies |Ψ(B)|² = g²η and χ = −2 Re Ψ(B). Hence ζ = −Ψ(B)/g is a root of
> ζ² − (χ/g)ζ + η = 0, and **R = 4 (Im Ψ(B))²** ≥ 0.

So a corner is **strict** (R > 0) exactly when the label of its complementary side is not real. The label then takes
one of the two values Ψ± = (−χ ± i√R)/2, and ζ takes the values −Ψ∓/g = (χ ± i√R)/(2g).

*Proof.* There are two inputs:
- |perm B|² = η, a Laurent identity in the six unit entries.
- The λ-identity λ₃ P̄₃ = g + c₃ ζ̄ of the paper's Methods, with |λ₃| = 1, c₃ = 9 − X and
  P₃ = s t̄² + r̄² s̄ + (3 − X) r̄ t̄ a polynomial in the overlap matrix, combined with the norm identity
  |P₃|² = g² + c₃χ + c₃²η.

Together these give c₃(g(ζ + ζ̄) − χ) = 0, and c₃ ≠ 0 whenever det B ≠ 0. *Lean:* `Side.TS_root`,
`Side.RS_eq_im_sq` (`lean/NoFourMUBs/PRM/SideRoot.lean`), where indices run from 0, so that Lean's `P2`, λ₂ and c₂ are
P₃, λ₃ and c₃ here. ∎

**Matched completions.** A dephased Hadamard matrix with strict leading corner E(θ) is **matched** if the labels of
its two sides are conjugate, Ψ(C) = conj Ψ(B). Write H₊(θ) for a matched completion with Ψ(B) = Ψ₋ and
Ψ(C) = Ψ₊, f₊(θ) = [H₊(θ)] and 𝒜 = f₊(Ω).

### 2.2 Existence, uniqueness, the converse and coverage

> **Theorem 2.2 (matched existence) — SM Propositions S.2 (Reconstruction of B and C) and S.3 (Completion and
> continuity).** Every strict seed has a matched Hadamard completion.

*Proof.* There are two certified steps:
- **Sides.** For each strict seed, each of its two overlap matrices and each of the two labels Ψ±, there is an actual
  normalised phase side with that overlap matrix and label. In the angles φ ∈ ℝ⁶ of a side, the overlap map
  φ ↦ (s, t, r) ∈ ℂ³, viewed as ℝ⁶, has Jacobian determinant ¼ Im Ψ (**identity (J)**: the derivative of
  (s, s̄, t, t̄, r, r̄) has determinant Ψ̄ − Ψ, the Laplace expansion into two products of 3×3 determinants). By
  Lemma 2.1 it is nonzero wherever R > 0, so by the inverse function theorem the strict seeds whose overlap matrix is
  realised with Im Ψ < 0 form an open set. So does the set U of strict seeds whose G_h is realised with
  Im Ψ(B) < 0 and whose G_v is realised with Im Ψ(C) > 0. U is also closed in Ω = {R > 0}: the sides form a
  compact torus, and Im Ψ cannot reach 0 over R > 0. U is nonempty: the Fourier path
  H(t) = [[F₃, F₃], [F₃D(t), −F₃D(t)]], D(t) = diag(1, e^{it}, 1), has a corner (rows I = {2, 4, 6} and columns
  J = {1, 3, 5}) with R(t) = 144 sin²t (1 + cos t)² > 0 for 0 < t < π, and H(t) is a matched completion there, by the
  explicit labels 2Ψ(B) = −χ − i√R and 2Ψ(C) = −χ + i√R
  ([`MinimalReconstruction/returns/Q_fourier_anchor`](MinimalReconstruction/returns/Q_fourier_anchor/PROOF.md)). The
  sides of H₊(θ) lie in U. So U is a nonempty open and closed subset of Ω, and U = Ω by Lemma 1.1.
  Conjugating seed and side gives the other root ([`MinimalReconstruction/returns/J_side_existence/RESULT.md`](MinimalReconstruction/returns/J_side_existence/RESULT.md)). The flatness step uses any actual sides, so it applies at each seed of U before
  U = Ω is known.
- **Flatness.** For *any* actual sides B, C with conjugate labels, the forced block D = −CE†G_h⁻¹B has unimodular
  entries. The completion always satisfies HH† = 6I₆. Its defect matrix (|D_kl|² − 1)_kl has zero row and column
  sums, so it is determined by the weighted defects W = C̄ᵀ (|D_kl|² − 1)_kl B̄ᵀ, whose first row and column vanish.
  The remaining entries are W₂₂, W₂₃, W₃₂, W₃₃, and W = 0 forces |D_kl| = 1 since B and C are invertible. Exchanging
  rows 2, 3 of E and B (or columns 2, 3 of E and C) leaves D unchanged, keeps the seed strict and the sides actual,
  and permutes the indices of W, so every defect is W₂₂ at a relabelled seed. With the roots z = −Ψ(B)/g and
  w = −Ψ(C)/g, W₂₂ = J₁₀/(d_h d_v g)·(z + w − χ/g) + J₁₁/(d_h d_v)·(zw − η), which vanishes for conjugate labels
  (z + w = χ/g, zw = η by Lemma 2.1). Here the third moments are written Q⁽¹⁾(G, z) = (H₀ + g z H₁)/d_G with
  d_G = P₁P̄₂, U = E†·adj(G_h) and J_ij = tr(V_iᵀ U H_j U†), where the moment labels H_j, V_i, J_ij and the residuals
  F₀, F₁ keep the zero-based indices of the Lean module `L1/FlatCircuits`. The decomposition holds because the two
  residuals F₀, F₁ vanish identically as rational functions of e^{iθ₁}, …, e^{iθ₄}
  ([`MinimalReconstruction/theorems/R2_flatness_cross_side`](MinimalReconstruction/theorems/R2_flatness_cross_side/REVIEW.md)).
  A second proof, with eight larger coefficient identities, is in
  [`MinimalReconstruction/returns/E_matched_flatness`](MinimalReconstruction/returns/E_matched_flatness/FLATNESS.md). The
  relabelling is proved in [`RELABELLING.md`](MinimalReconstruction/returns/E_matched_flatness/RELABELLING.md).

*Lean:* `L1.matchedExistence`. Side existence is `L1.sides_all`, with `L1.exists_side_h` and `L1.exists_side_v`
(`L1/SideJacobian`, `L1/SideCover`, `L1/Existence`). The pointwise step is `L1.matched_of_sides`, the Fourier
anchor `Step2.matched_fourier` (`Step2/FourierAnchor`) and connectedness `Step2.isConnected_strict`. The two residual identities F₀ = F₁ = 0 are checked by the kernel through a verified Kronecker
polynomial-identity checker (`L1/FlatCheckF`, about a second each), and the relabelling is `L1.FlatCircuits.W_zero` (with `W_rowPerm`, `W_colPerm`). ∎

> **Theorem 2.3 (matched uniqueness) — SM Proposition S.2, uniqueness.** Two completions H₊(θ) of the same strict
> seed, that is, matched with Ψ(B) = Ψ₋, are equivalent.

*Proof.* The data (s, t, r, Ψ(B)) of a strict side determine its row products and permanent: the λ-identities above
are linear in them, and Im Ψ(B) ≠ 0. A Vieta argument then determines the side up to a column permutation. Matched
uniqueness follows, since the forced block is determined by the sides. *Lean:* `Step2.matchedUniqueness`. ∎

> **Theorem 2.4 (the nonmatched converse) — SM Proposition S.4, Equal roots at a strict corner.** If a Hadamard
> matrix has a strict corner whose two side labels are *not* conjugate, it is equivalent to Tao's matrix.

*Proof* ([`MinimalReconstruction/returns/G_prm/PRM.md`](MinimalReconstruction/returns/G_prm/PRM.md) §§2–5). Let M be such a
matrix, dephased at the corner, with horizontal label Ψ(B). Its vertical label is then Ψ(C) = Ψ(B) (Lemma 2.1).
1. **Comparison.** Theorem 2.2 gives an actual vertical side with the conjugate label. With M's own horizontal side,
   its forced block is flat. So there is a matched completion H₀ with the **same top three rows** T as M.
2. **No shared ray.** Two strict sides with different labels share no column. If they shared one, the two remaining
   column pairs would have the same overlap data. Either they coincide (so the labels agree), or they have one of
   three degenerate shapes, each with a real label. So no bottom row of M is proportional to a bottom row of H₀.
   The two bottom-row bases are orthonormal bases of the same 3-space, the orthogonal complement of T's rows, with
   no common ray.
3. **A diagonal relation.** Hermitian operators diagonal in both bases are scalar, so a dimension count gives a
   nonzero real diagonal D_w with P D_w P = 0, where P projects onto that 3-space. Its complement Q = I − P has
   |Pⱼₖ| = |Qⱼₖ|, which forces Q D_w Q = 0, i.e. (wⱼ + wₖ) Qⱼₖ = 0.
4. **A Hadamard block.** Three complete rows containing a strict corner have no proportional columns. So all |wⱼ|
   are equal and nonzero, and the three columns of either sign are pairwise orthogonal: a 3×3 Hadamard block.
5. **Fourier normal form.** A Hadamard matrix with such a block reduces to a Fourier normal form. Exhausting it,
   using a three-point Fourier criterion and an exact census of the cubic cases, leaves Tao's orbit or the two
   Fourier families. The Fourier families are matched at every corner (400 Laurent identities on paper, of which 200
   are kernel-checked in Lean and the rest follow by conjugation). So M is equivalent to Tao's matrix.

The proof of no four MUBs needs only the weaker conclusion of step 5, *M is Tao's matrix or in a Fourier family*,
since the Fourier families are covered directly (see the coverage proof after Lemma 5.2).

*Lean:* `PRM.nonmatched_tao_or_fourier` (`lean/NoFourMUBs/PRM/Converse.lean`), the weaker form used by the proof. The
full statement is `PRM.nonmatched_tao` (`PRM/FourierMatch.lean`, used only by the Fourier-vanishing module). ∎

> **Theorem 2.5 (strict-corner coverage) — SM Proposition S.5, Vanishing of R at every corner.** Every Hadamard
> matrix not equivalent to F₆ has a strict corner.

*Proof* ([`MinimalReconstruction/Proofs/STRICT_CORNER_COVERAGE.md`](MinimalReconstruction/Proofs/STRICT_CORNER_COVERAGE.md),
with `PRM.md` §7.1). Suppose R = 0 at every corner of H and H ≁ F₆.
1. **Routing.** A singular 3×3 minor, or three rows phased into (1; x; x̄), would put H in a Fourier family
   (elementary, `PRM.md` §7.1). A member of a Fourier family with R = 0 at every corner is equivalent to F₆
   (`FOURIER_CRITICAL_LOCUS.md`). So all minors are invertible, and no row triple is of that form. (The proof of no
   four MUBs needs only "H is in a Fourier family" here, not the census of `FOURIER_CRITICAL_LOCUS.md`.)
2. **Three complete rows with R = 0 at every corner.** On any three complete rows with all twenty blocks invertible
   and R = 0 at every corner, each corner has p ∈ {0, 5}, or one of two rational endpoints, or p = p* := 9 − 4/(1 + k²),
   where k > 0 solves 3k³ + k² + k − 1 = 0.
   - *The case J = 0* ([`MinimalReconstruction/returns/O_zeroj_unsquared`](MinimalReconstruction/returns/O_zeroj_unsquared/REPORT.md)):
     two *unsquared* weighted sums over the nine mixed corners vanish when R = 0 at every corner. With exact scalar
     algebra they force XYZ = (1 − z)(z + 3)³, and the geometric step follows from λ₁ = 1 and Σ xⱼyⱼ = 3.
   - *The case J ≠ 0* ([`MinimalReconstruction/returns/K_nonzero_J/REPORT.md`](MinimalReconstruction/returns/K_nonzero_J/REPORT.md)):
     two sums of the *unsquared* corner label, Σ_C D_C with D_C = Ψ(E_C) − conj Ψ(E_C), and its xy-weighted version,
     vanish when R = 0 at every corner. The first is Σ_C D_C = M̄₁₁ M₂,₋₁ M₋₁,₂ − M₁₁ M̄₂,₋₁ M̄₋₁,₂ in the row
     moments M_ab = Σⱼ xⱼᵃ yⱼᵇ. With the cleared λ-identities and a universal 24-term identity these sums force
     Im(s̄ r̄ t) = 0 or a repeated modulus, poles included. This leaves four one-parameter curves. On each curve, if
     all six λ-denominators were nonzero the weighted sum would equal an explicit nonzero value, so some
     denominator vanishes. The product of the six denominators, factored on the four curves, gives exactly the
     three candidates.
3. **Counting** ([`ENDPOINT_COUNTING.md`](MinimalReconstruction/Proofs/ENDPOINT_COUNTING.md),
   [`MinimalReconstruction/returns/S_endpoints_by_counting`](MinimalReconstruction/returns/S_endpoints_by_counting/PROOF.md)). Fix a
   column c and identify the ten corners C ∋ c with the edges of K₅ on the other columns. There are three universal
   identities (unit entries, orthogonal rows): Σ_{C∋c} p_C = 54, the signed vertex sums d_i = Σ_{C⊇{c,i}} J_C vanish
   (the anchored determinant sum Σ_{C∋c} |det E_C|² = 108 with |det E_C|² = 27 − 3p_C − J_C, and opposite J on
   complementary corners), and Σ_{C∋c} X_C² = 54 + |Σ_j u_j²|² ≥ 54 for one row pair. Since p* is irrational (the
   cubic has no rational root, so k has degree 3), Σ p = 54 leaves no corner at p*. At each vertex d_i = 0 reads
   2A + (54/25)B = 0 for the signed counts A, B ≤ 4 of the two endpoint types, so A = B = 0 and both endpoint counts
   are even. Then 25n₅ + 35n₇ + 27n_e = 270 leaves ten equicorrelated corners (Σ X² = 162/5 < 54) or two p = 7
   corners, whose two edges cannot balance every vertex. ∎

*Lean:* `PRM.strictCornerCoverage` (`lean/NoFourMUBs/Final.lean`, modules `PRM/Coverage*.lean`), in the weaker form
"every Hadamard matrix not in a Fourier family has a strict corner" used by the proof. The form stated above is
`Coverage.strictCorner_of_not_F6` (`PRM/CoverageFourierLocus.lean`, outside the proof's import closure). The count is
`CoverageTen.anchored_count` (`PRM/CoverageEndCount.lean`). Instead of irrationality it uses p* ∈ (5.722, 5.723)
(`CoverageTen.pStar_bounds`), since the wider window (17/3, 29/5) would admit a corner value such as 143/25. The case
J = 0 is `PRM.Coverage.zeroJProduct` (`PRM/CoverageZeroJProduct.lean`, with the two mixed-sum identities re-checked
by the kernel in `PRM/CoverageMixedCheck*.lean`), and the case J ≠ 0 is `PRM/CoverageSigned*.lean`.

> **Corollary 2.6 (exact reach) — SM, Proof of both theorems.** Every class of 𝒳 is [F₆], or in 𝒜, or in conj 𝒜.

*Proof.* Let H ≁ F₆ be non-Tao. Take a strict corner (Theorem 2.5) and dephase. By Theorem 2.4 its sides are
matched. If Ψ(B) = Ψ₊, conjugate the whole matrix. *Lean:* `PRM.exactReach`. ∎

### 2.3 Connectedness

> **Theorem 2 (connectedness) — the paper's connectedness theorem.** 𝒳 is connected.

*Proof.*
1. **Continuity.** The class map f₊ : θ ↦ [H₊(θ)] on strict seeds is continuous: the matched relation is closed, the
   set of order-six Hadamard matrices is compact, and the class of H₊(θ) is unique (Theorems 2.2, 2.3).
2. **𝒜 is connected.** Ω is connected (Lemma 1.1), so its continuous image 𝒜 is connected (step 1), and so is
   conj 𝒜.
3. **Joining at F₆.** The Fourier path H(t) = [[F₃, F₃], [F₃D(t), −F₃D(t)]], with D(t) = diag(1, e^{it}, 1), tends
   to F₂⊗F₃ ∼ F₆ as t → 0. Its cross-ratio e^{it} keeps it away from F₆ and 𝒯 for 0 < t < π/3. So [F₆] lies in the
   closure of both 𝒜 and conj 𝒜.
4. **Conclusion.** By Corollary 2.6, 𝒳 = 𝒜 ∪ conj 𝒜 ∪ {[F₆]}, which is therefore connected. ∎

Details: [`Connectedness/returns/A_deltoid/CONNECTEDNESS.md`](Connectedness/returns/A_deltoid/CONNECTEDNESS.md) and
`SHEETS_TOPOLOGY.md`, with [`Connectedness/returns/B_exact_quotient`](Connectedness/returns/B_exact_quotient/) as an
independent check. *Lean:* `Step2.coverage_of_matched_density` and its inputs.

## Step 3. Local exclusion in seed coordinates

By Step 2, every non-Tao class other than [F₆] is the matched completion H_o(θ) of a strict seed θ ∈ Ω, with an
orientation o = sign Im Ψ(B). The paper's H₊ is o = −1, and the stored balls use o = +1, which is conj H₊(−θ). So the
four phases of a corner are coordinates for the whole space 𝒳 away from [F₆]. A **seed ball** is an ellipsoid of
seeds

  {θ(w) = θ₀ + M_{θ₀} w : ‖w‖₂ ≤ r_H} ⊂ Ω,  with an orientation o,

and its image is the set of classes [H_o(θ(w))], ‖w‖₂ ≤ r_H. Each ball carries a centre phase matrix P, a 36 × 4
frame U and a remainder n (all in V, that is, with zero row and column sums).

> **Lemma 3.1 (the completion enclosure) — SM, Completion enclosures on a seed ball.** For every ‖w‖₂ ≤ r_H the
> matched completion at θ(w) exists and is Hadamard with orientation o, and its phase matrix Q(w), with row and column
> phases removed and a suitable integer winding, satisfies
>
>   Q(w) = P + Uw + ν(w),  ‖ν(w)‖_F ≤ n.

*How it is certified* ([`proof/theorems/Z_completion_hessian/`](proof/theorems/Z_completion_hessian/REVIEW.md)). One
computation at the centre, with no subdivision of the ball. A frame-preserving contraction proves that the matched
branch exists on the whole ellipsoid (rate τ < 1). Two orientation margins fix both signs of Im Ψ throughout, from
the bound ‖D²ψ‖ ≤ 72 for ψ(a) = Im Ψ(e^{ia}) as a function of the nine phases a of a block. The enclosure is then
‖h(Q) − P − Uw‖ ≤ ½‖H₂‖ r_H² + ‖X‖τ, with the second-order term H₂ and the correction basis X of the SM, plus the
distance of the stored P and U from the exact ones. On the atlas the certified n is 1.0–1.4 × the remainder an
adaptive box partition gives, at about 300 × less cost. Theorem: `proof/theorems/Z_completion_hessian/`
(`THEOREM.md`). Code: [`proof/seed_atlas/cert/wholeball.py`](proof/seed_atlas/cert/wholeball.py). The box
partition remains the fallback where the contraction does not close.

> **Lemma 3.2 (the local tests, after [OAI] §6) — SM, Complete vector covers and pair tests.** Run the local tests on
> the enclosure P + Uw + ν (‖w‖₂ ≤ r_H, ‖ν‖_F ≤ n), with column radius r = max_c ‖U_c‖ r_H + n and Frobenius radius
> r_F = ‖U‖₂ r_H + n: vector phase boxes cover every vector unbiased to I₆ and H/√6, the retained boxes are grouped
> into labels, the orthogonality and unbiasedness edge tests (including the joint test 6.23) remove impossible edges,
> and an exhaustive search looks for two groups of six labels with an orthogonality edge between every pair within a
> group and an unbiasedness edge between every pair across the groups. If the cover, the grouping and the edge tests succeed and
> the search finds no such pair of groups, no H in the image of the ball is extendable.

The local tests see only a phase matrix and a radius, so they apply to a four-parameter family exactly as to a ball.
Every inequality of the local tests, the label lemma and the correctness of the exhaustive search are proved in the
repository's notation in [`proof/atlas/STAGEC.md`](proof/atlas/STAGEC.md), and in Lean (`lean/NoFourMUBs/StageC/`).
Code: [`proof/atlas/stagec.py`](proof/atlas/stagec.py). Rigour ([`RIGOUR.md`](proof/atlas/RIGOUR.md)): σ-type
constants in Arb or exactly, exponentials from Arb tables, and every other float comparison with a margin of 10⁻⁷
against an error budget below 10⁻¹⁰.

> **Remark 3.3 (Tao's matrix is a zero-dimensional record).** This is an independent check, at Tao's matrix 𝒯, of the
> two known facts of §0. At 𝒯 the spectrum of J_PᵀJ_P on V is exactly {9/2 (×16), 12 (×9)}, where J_P is the
> derivative of the row-overlap map Φ_P. So J_P is injective on all 25 directions of V, with σ = 3/√2 exactly.
> - *Isolation.* For any Hadamard e^{i(P+δ)} with δ ∈ V, ‖Φ_P(δ) − Φ_P(0) − J_Pδ‖ ≤ √3‖δ‖² (Lean:
>   `outNorm_rem_le`) gives σ‖δ‖ ≤ √3‖δ‖², so δ = 0 or ‖δ‖ ≥ √(3/2). So 𝒯 is isolated in ℋ₆ (Lean: `isolation`).
> - *Exclusion.* The local tests pass on the ball of radius 0.08 around 𝒯, so 𝒯 is not extendable.
>
> This is [`proof/atlas/tao.py`](proof/atlas/tao.py).

## Step 4. The neighbourhood of F₆

The reconstruction degenerates only at F₆, where R = 0 and the two orientations meet. There, the ball at F₆ needs no
local tests of its own.

> **Theorem 4.1 (no extendable H near F₆) — Methods and SM, Fourier neighborhood.** No complex Hadamard matrix within
> phase distance 7/40 of F₆ is extendable.

An exact finite cover with a quantitative margin proves it at 3/20 and at 9/20
([`QuartetExclusion/theorems/X_no_quartet_near_F6/`](QuartetExclusion/theorems/X_no_quartet_near_F6/REVIEW.md),
[`X_radius_045/`](QuartetExclusion/theorems/X_radius_045/REVIEW.md)). **In Lean, at 7/40 and with no hypotheses**:
`NoFourMUBs.X.Radius0175.no_quartet_near_F6_r0175` ([`lean/NoFourMUBs/X/`](lean/NoFourMUBs/X/README.md)), where a
normal-displacement bound reduces it to one certificate of the local tests at F₆, checked in the kernel.

> **Theorem 4.2 (the chart at F₆) — SM, Fourier neighborhood.** Near F₆ the corner on rows and columns 1, 2, 3
> parametrises every class by ξ = (θ₁ − θ₁⁰, θ₂ − θ₂⁰, θ₃ − θ₃⁰, y), θ⁰ = (1, 2, 2, 4)π/3, where y = −2 Im Ψ(B) is the
> signed root of R. The map ξ ↦ [H_F(ξ)] is a chart on an explicit ellipsoid around ξ = 0, covering every class within
> phase distance 0.15 of F₆, and F₆ = H_F(0).

The chart is proved in [`proof/theorems/U_fold_at_edge/`](proof/theorems/U_fold_at_edge/REVIEW.md) and
[`proof/theorems/W_f6_neighbourhood_chart/`](proof/theorems/W_f6_neighbourhood_chart/REVIEW.md). The **ball at F₆**
(the X-ball in the code) is the image of the stored ellipsoid D_F = {ξ = M_F w : ‖w‖₂ ≤ r_H} in this chart, with M_F
from the chart's tangent metric. It is certified like a seed ball: the enclosure by the chart's whole-ball model (one
centre computation, as in Lemma 3.1) in Arb, and by Krawczyk tubes of the chart's 7-unknown system in Julia. Its image
lies within phase distance 7/40 of F₆, so it contains no extendable H by Theorem 4.1. F₆ = H_F(0) is its centre.
Openness at y = 0 comes from the graph property near F₆ ([`SPEC.md`](proof/seed_atlas/SPEC.md) §10.1–10.2, Lean:
`SeedAtlas.EdgeX.isOpen_edgeInterior`).

> **Theorem 4.3 (transfers into the chart) — the SM's Fourier transfer theorem (SM, Boundary transfers).** Let K be
> Hadamard with an ordered corner (I, J), and let
> ξ′(K) = (θ′₁ − π/3, θ′₂ − 2π/3, θ′₃ − 2π/3, −2 Im Ψ(K[I, Jᶜ])). If ξ′(K) lies in a target contained in the
> ellipsoid E_{1/5} of the chart at F₆ and d_ph([K], [F₆]) ≤ 3/20, then K ∼ H_F(ξ′(K)).

The three corner phases pin the Fourier frame: only 72 of the 14,400 ordered corner pairs fit them, and each extends
to an automorphism of F₆. The chart's framed continuation then recovers the whole completion. The theorem uses no side
orders, side windings, orientation signs or tubes, and it holds across the fold y = 0
([`PhaseCover/theorems/XS_edge_side_orders/`](PhaseCover/theorems/XS_edge_side_orders/REVIEW.md), replayed).

## Step 5. The atlas covers 𝒳

> **Lemma 5.1 (transfers) — SM, Boundary transfers and closed subdivisions.** Every point of every ball's boundary
> sphere is, after a symmetry σ (identity, conjugation, transposition, conjugate transpose), in the interior of
> another ball. It is shown on a cover of the sphere ‖w‖₂ = r_H by spherical caps {w = r_H x : ‖x‖ = 1, v·x ≥ h},
> each with a certified target. There are three kinds of transfer (T0, T1 and T3 in the code):
> - **Same-corner:** θ itself in the target ball's ellipsoid (a linear condition), over the cap.
> - **Corner-change:** another ordered corner (I, J) of σ · H, whose seed θ′ is linear in the phases: θ′ in the
>   target's ellipsoid and both Ψ signs of the target's orientation, over the cap.
> - **Into the chart at F₆:** by Theorem 4.3, the corner parameter ξ′ in the ellipsoid of the ball at F₆, and K
>   within phase distance 3/20 of F₆, over the cap. No side data is needed.

*How it is certified.* Each cap's target condition is a norm bound
‖d + F x‖ < 1 on the cap for an affine predictor from the source ball's whole-ball model (Lemma 3.1, with the
output-weighted error terms and centre jets of `proof/theorems/ZT_wholeball_transfers/`), certified by a 5 × 5
positive-definite witness (an S-lemma certificate) with the model's remainder. The Ψ signs follow from the linear
minimum over the cap and ‖D²ψ‖ ≤ 72. A cap into the chart at F₆ carries two witnesses, one per condition of
Theorem 4.3, with the label remainder of y′ = −2 Im Ψ. The caps of a sphere cover it by an exact polar-facet
certificate: every vertex of {y : v_i·y ≤ h_i} lies in the closed unit ball, checked in integers.
Theorems: [`PhaseCover/theorems/ZC_cap_transfers/`](PhaseCover/theorems/ZC_cap_transfers/REVIEW.md) (seed spheres),
[`ZC2a_xball_sphere_caps/`](PhaseCover/theorems/ZC2a_xball_sphere_caps/README_RETURN.md) (the sphere of the ball at F₆),
[`ZC2b_t3_caps/`](PhaseCover/theorems/ZC2b_t3_caps/README.md) (caps into the chart at F₆). Code: [`proof/seed_atlas/cert/caps.py`](proof/seed_atlas/cert/caps.py), `cap_t3.py`,
`edgecaps.py`, `cap_coverage.py`. A sphere may instead be covered by dyadic boxes, each tested by the patch test of
`proof/theorems/ZT_wholeball_transfers/`. The present certificate uses caps only.

> **Lemma 5.2 (coverage) — SM Proposition S.6, Exclusion on the seed cover.** Let W be the union of the images of the
> seed balls and the ball at F₆, with their conjugates, transposes and conjugate transposes. Then W ∩ 𝒳 is open,
> closed and nonempty, so W ⊇ 𝒳.

*Proof.*
- **Closed:** a finite union of compact images.
- **Open:** at interior points of seed balls by the open-map lemma (`SeedAtlas.OpenMap`), at boundary points by
  Lemma 5.1, and at the ball at F₆ by its chart.
- **Nonempty:** F₆ = H_F(0) lies in the ball at F₆.

As in Step 2, W pulled back to the strict seeds is open and closed in Ω, and Ω is connected (Lemma 1.1), so W contains
𝒜 and conj 𝒜. The Fourier families are connected sets through [F₆] ⊂ W, and every non-Tao class is matched at a strict
corner or lies in a Fourier family (`PRM.nonmatched_tao_or_fourier`, `PRM.strictCornerCoverage`). Hence W ⊇ 𝒳. ∎

**The computation** ([`proof/seed_atlas/`](proof/seed_atlas/README.md)):
1. The driver grows seed balls breadth-first, covers each sphere by transfer boxes (the certificate covers it by caps), and covers the sphere of the ball
   at F₆.
2. [`cert/certify_seed_atlas.py`](proof/seed_atlas/cert/certify_seed_atlas.py) (Arb) re-checks every ball from the
   certificate alone: the enclosure (Lemma 3.1), the local tests (Lemma 3.2), every transfer cap (Lemma 5.1), the
   enclosure, image bound and transfers of the ball at F₆, and the coverage of every sphere.
3. [`proof/independent_seed/`](proof/independent_seed/README.md) re-checks the same certificate in Julia, written
   from the specification ([`FORMAT.md`](proof/seed_atlas/FORMAT.md)) only.

**Result:**

| | |
|---|---|
| seed balls | 2,775 (radii 0.015–0.125) |
| sphere caps | 97,780 on the seed balls (13,519 same-corner, 83,979 corner-change, 282 into the chart at F₆), 19,611 on the ball at F₆, 550,347 exact coverage facets, no boxes |
| ball at F₆ | tangent radius 0.13, image within phase distance 0.142 < 7/40 of F₆ (Arb 0.1411) |
| Arb certification | **PASS**, 0 failures in 2,778 items: 33 min on one 128-core node (25 core-hours of seed-ball work) |
| Julia certification | **PASS**, every check: 1 h 07 min on one 64-core node (`results/julia/`) |
| certificate | `proof/seed_atlas/results/seed_atlas_certificate.json.gz` (17 MB, SHA-256 `33ad9798eb7a5585c486f2427a6b223867a43b308b7f184467b4cd5956bd8baf`), Arb receipt `arb_receipt.json` |

**Status of Step 5 (27 Oct 2026).** Both certifiers pass the whole certificate. Every sphere is covered by certified caps (no boxes), every seed ball's enclosure is from cheap constants, and the transfers into the chart at F₆ are by Theorem 4.3 (no side data).

## Conclusion

By Lemma 5.2 every class in 𝒳 lies, up to conjugation and transposition, in a seed ball or the ball at F₆. No seed ball contains an extendable H
(Lemma 3.2), nor does the ball at F₆ (Theorem 4.1), and Tao's matrix is not extendable (Remark 3.3). Hence no
order-six Hadamard matrix is extendable, and ℂ⁶ has no four MUBs. ∎

**In Lean** the whole argument is
`NoFourMUBs.EdgeXFinal.no_four_mubs_seed (C : SeedAtlas.EdgeX.EdgeAtlasCertificate) : ¬ FourMUBs`
([`lean/NoFourMUBs/SeedAtlas/EdgeXFinal.lean`](lean/NoFourMUBs/SeedAtlas/EdgeXFinal.lean)), using only `propext`,
`Classical.choice` and `Quot.sound`. Its one input is the certificate of Step 5. The exclusion near F₆ enters as the
proved Theorem 4.1 at 7/40.

## What is checked, and how

| Ingredient | Paper | Written proof | Computation | Lean |
|---|---|---|---|---|
| Proposition 1 (maxima of R) | SM Proposition S.1 | [`C_step1_saddle`](Connectedness/returns/C_step1_saddle/) | 651 exact claims | yes |
| Lemma 2.1 (side quadratic) | SM Proposition S.2 | Step 2.1 | none | yes |
| Theorem 2.2 (matched existence) | SM Propositions S.2, S.3 | [`J_side_existence`](MinimalReconstruction/returns/J_side_existence/RESULT.md) (sides), [`E_matched_flatness`](MinimalReconstruction/returns/E_matched_flatness/FLATNESS.md) (flatness), [`Q_fourier_anchor`](MinimalReconstruction/returns/Q_fourier_anchor/PROOF.md) (the Fourier anchor) | identity (J), exact flatness identities, 62 exact checks at the Fourier anchor | yes (kernel re-checks every identity) |
| Theorem 2.3 (matched uniqueness) | SM Proposition S.2 | Step 2.2 | none | yes |
| Theorem 2.4 (nonmatched converse) | SM Proposition S.4 | [`PRM.md`](MinimalReconstruction/returns/G_prm/PRM.md) §§2–5 | exact: 81-case census (reduced to 4 cases in Lean), Laurent identities | yes, and the proof uses the form "Tao's matrix or Fourier family" |
| Theorem 2.5 (strict-corner coverage) | SM Proposition S.5 | `STRICT_CORNER_COVERAGE.md`, [`K_nonzero_J`](MinimalReconstruction/returns/K_nonzero_J/REPORT.md) for J ≠ 0, [`S_endpoints_by_counting`](MinimalReconstruction/returns/S_endpoints_by_counting/PROOF.md) for the count | exact identities | yes, in the form "no strict corner ⇒ Fourier family" |
| Lemma 1.1 (Ω connected), Theorem 2 | SM, Positive maxima and connected strict seeds, and the connectedness theorem | Steps 1, 2.3 | exact path identities | Lemma 1.1 yes (`isConnected_strict`), Theorem 2 in the direct coverage route |
| Lemma 3.1 (completion enclosure) | SM, Completion enclosures on a seed ball | [`Z_completion_hessian`](proof/theorems/Z_completion_hessian/REVIEW.md) | one Arb computation per ball | as a hypothesis of each seed-ball certificate |
| Lemma 3.2, Remark 3.3 (local tests, Tao's matrix) | SM, Complete vector covers and pair tests | `STAGEC.md` | Arb and margined float | yes (as inequalities) |
| Theorem 4.1 (no extendable H near F₆) | Methods and SM, Fourier neighborhood | [`X_no_quartet_near_F6`](QuartetExclusion/theorems/X_no_quartet_near_F6/REVIEW.md) | exact cover | **yes, at 7/40, hypothesis-free** |
| Theorem 4.2 (chart at F₆), the ball at F₆ | SM, Fourier neighborhood | [`U_fold_at_edge`](proof/theorems/U_fold_at_edge/REVIEW.md), [`W_f6_neighbourhood_chart`](proof/theorems/W_f6_neighbourhood_chart/REVIEW.md) | Krawczyk tubes | the chart's openness and uniqueness (`SeedAtlas/EdgeX*`) |
| Theorem 4.3 (transfers into the chart) | SM, the Fourier transfer theorem | [`XS_edge_side_orders`](PhaseCover/theorems/XS_edge_side_orders/REVIEW.md) (relative to the chart at F₆) | exact constants and census, per source region a distance bound and an ellipsoid test | as a hypothesis of the certificate of the ball at F₆ |
| Lemmas 5.1–5.2 (the atlas) | SM Proposition S.6, SM, Boundary transfers | Step 5, [`ZT_wholeball_transfers`](proof/theorems/ZT_wholeball_transfers/REVIEW.md) (the transfer test) | Arb and Julia, two independent implementations | the topology yes, the numbers are checked outside Lean |

**Inputs taken as given.** No classification of order-six Hadamard matrices is used. The local tests follow
[OAI] §6, with every inequality reproved (`STAGEC.md`) and formalised. The proof does not use OpenAI's proof or its Fourier
certificates [OAI-F].

**What remains outside Lean: the atlas numbers.** Lean proves that the atlas certificate excludes four MUBs. The
numbers in the certificate, the enclosure, local tests and transfers of each ball, are checked by the Arb and Julia
certifiers.

## Verifying

```bash
pip install -r requirements.txt   # Python 3.10+: numpy, sympy, mpmath, python-flint
python3 verify.py                 # exact replays of Steps 1–4 (about 1 minute)
python3 verify.py --atlas -j 8    # also certify the seed atlas (Step 5) in Arb
python3 verify.py --lean          # also build the Lean formalisation and audit its axioms
python3 verify.py --lean-full     # also build the main theorems and audit them
```

The independent Julia checker is run separately ([`proof/independent_seed/README.md`](proof/independent_seed/README.md)).

## References

- [OAI] OpenAI, *The maximum number of mutually unbiased bases in dimension six*, preprint, 24 Sep 2026 (openai/math).
- [OAI-F] OpenAI, *Exact Fourier certificates for complex Hadamard matrices of order six*, OpenAI Math Release
  preprint, 24 Sep 2026 (openai/math). Not used by the proof.
- [BW09] S. Brierley, S. Weigert, *Constructing mutually unbiased bases in dimension six*, Phys. Rev. A **79**, 052316
  (2009).
- [TZ06] W. Tadej, K. Życzkowski, *A concise guide to complex Hadamard matrices*, Open Syst. Inf. Dyn. **13**, 133–177
  (2006).
- [CT] M. Cárdenes Wuttig, J. Tindall, *A complete classification of complex Hadamard matrices of order six*,
  arXiv:2608.18053, with the Lean development
  [mateocardeneswuttig/all_hadamard_matrices_in_dimension_six](https://github.com/mateocardeneswuttig/all_hadamard_matrices_in_dimension_six)
  (context for the reconstruction, not used by the proof).
