# C⁶ has no four mutually unbiased bases

*Draft of a clean, self-contained write-up (15 Oct 2026). It follows the route that uses no classification of
order-6 Hadamard matrices. `PROOF.md` remains the reference until this draft is reviewed.*

> **Theorem.** There are no four mutually unbiased bases in ℂ⁶.

## The idea in one page

Rotate four MUBs so that the first is the standard basis. The second basis is then H/√6 for a complex Hadamard
matrix H of order 6. Call H a **quartet edge** when this pair extends to four MUBs. The theorem says that no H is a
quartet edge.

The proof sees the space of Hadamard matrices in two ways.

- **Globally, through corners.** Every non-Tao Hadamard matrix other than F6 is built from a single 3×3 *corner*
  by an explicit reconstruction, the **matched completion**. Corners are parametrised by a 4-torus of seeds.
  The function R on seeds that controls the reconstruction has its maxima in a single orbit. These two facts
  make the space X of non-Tao classes **connected** (§2, §3).
- **Locally, through balls.** A ball of radius 0.08 around a Hadamard matrix can be certified to contain no
  quartet edge, by a finite interval computation (§4). Finitely many such balls, 12,021, whose boundaries map
  back inside the family, cover a nonempty open-and-closed subset of X (§5).

Since X is connected, that subset is all of X. So no non-Tao Hadamard is a quartet edge, and Tao's matrix is
excluded separately.

| Part | Content | How it is checked |
|---|---|---|
| §1 | Reconstruction: the corner invariants, matched completions, and when they exist and are unique | Paper proofs with exact certificates; **all in Lean** |
| §2 | The maxima of R form one orbit | Exact algebra (651 claims); **in Lean** |
| §3 | X is connected | Topology; **in Lean** |
| §4 | Ball Records contain no quartet edge | Proved inequalities (**in Lean**) evaluated in interval arithmetic |
| §5 | A finite atlas covers X | Certified computation, replicated by an independent implementation |

---

## 0. Setting

**Equivalence.** H ≅ H′ if H′ = P D₁ H D₂ Q, with P and Q permutation matrices and D₁ and D₂ unitary diagonal.
𝓗 is the set of order-6 Hadamard matrices. Being a quartet edge is invariant under equivalence, under
conjugation, and under transposition. For transposition, apply H*/√6 to all four bases and conjugate.

**Tao's matrix** S₆ = (ω^{k_ij}), with ω a primitive cube root of unity, is an isolated point of 𝓗/≅ and is not a
quartet edge (Remark 4.3). Let

  X = (𝓗/≅) ∖ {[S₆]},

with the quotient phase metric δ(H, K) = min{‖v‖ : v horizontal, H ≅ K ∘ e^{iv}}. A real 6×6 matrix is
**horizontal** when its row and column sums vanish.

## 1. Corners and the matched completion

**Corners.** Write a dephased Hadamard matrix in 3×3 blocks, H = [[E, B], [C, D]]. Its leading block is a
**corner** E = E(θ) = [[1,1,1],[1,a,b],[1,c,d]], with seed θ ∈ T⁴ and a, b, c, d = e^{iθ₁}, …, e^{iθ₄}.

**Invariants.** The other three blocks satisfy BB* = 6I − EE* =: G and C*C = 6I − E*E. Write s, t, r for the
off-diagonal entries G₂₁, G₃₁, G₃₂, and put X = |s|², Y = |t|², Z = |r|², p = X + Y + Z, J = 2 Re(s r t̄),
W = XY + XZ + YZ − XYZ. Then

  g = 27 − 3p + J = |det B|²,  η = 9 − p + J,  χ = W − (p−9)(p−18) + (p−15)J,  R = 4g²η − χ².

The vertical side C has the same g, η and χ.

**Side signature.** For a 3×3 phase block X, put Ψ(X) = perm(X) det(X)² / ∏ᵢⱼ Xᵢⱼ. It is invariant under row and
column permutations, row and column phases, and transposition.

> **Lemma 1.1 (the side quadratic).** For a normalised side B = (1; x; y) with det B ≠ 0, its signature
> T = −Ψ(B) satisfies T T̄ = g²η and T + T̄ = χ. Hence T is a root of ζ² − χζ + g²η, and
> **R = 4 (Im T)²** ≥ 0.

So a corner is **strict** (R > 0) exactly when the signature of its complementary side is not real. Its two roots
are then ζ± = (χ ± i√R)/2.

*Proof.* There are two inputs:
- |perm B|² = η, a Laurent identity in the six unit entries;
- the "λ-identity" λ₂ P̄₂ = g + c₂ z̄, with |λ₂| = 1, z = T/g, c₂ = 9 − X and P₂ an explicit Gram polynomial,
  combined with the norm identity |P₂|² = g² + c₂χ + c₂²η.

Together these give c₂(g(z + z̄) − χ) = 0, and c₂ ≠ 0 whenever det B ≠ 0. *Lean:* `Side.TS_root`,
`Side.RS_eq_im_sq` (`lean/NoFourMUBs/PRM/SideRoot.lean`). ∎

**Matched completions.** A dephased Hadamard matrix with strict leading corner E(θ) is **matched** if its two
side signatures are conjugate, −Ψ(B) = ζ₊ and −Ψ(C) = ζ₋. Write A = {[H] : H matched at a strict seed}.

> **Theorem 1.2 (matched existence).** Every strict seed has a matched Hadamard completion.

*Proof.* There are two certified steps:
- **Sides.** For each strict Gram datum and each root ζ there is an actual normalised phase side with that Gram
  matrix and signature ζ. The proof uses explicit polynomial identities with integer cofactors
  (`proof/coverage/returns/F_side_existence`).
- **Flatness.** For *any* actual sides B, C on conjugate roots, the forced block D = −C E* G⁻¹ B has
  unimodular entries. The completion always satisfies HH* = 6I. Its defect matrix |Dᵢⱼ|² − 1 has zero row and
  column sums, so it is determined by four weighted third-moment defects. Their eight coefficients vanish
  identically in ℚ(a, b, c, d) (`proof/coverage/returns/E_matched_flatness`).

*Lean:* `L1.matchedExistence`. Every identity is re-checked by the kernel through a verified Kronecker
polynomial-identity checker. ∎

> **Theorem 1.3 (matched uniqueness).** Two matched completions of the same strict seed are equivalent.

*Proof.* The data (s, t, r, T) of a strict side determine its row products and permanent: the λ-identities above
are linear in them, and Im T ≠ 0. A Vieta argument then determines the side up to a column permutation. Matched
uniqueness follows, since the forced block is determined by the sides. *Lean:* `Step2.matchedUniqueness`. ∎

> **Theorem 1.4 (the nonmatched converse).** If a Hadamard matrix has a strict corner whose two side
> signatures are *not* conjugate, it is equivalent to S₆.

*Proof* (`proof/coverage/returns/G_prm/PRM.md` §§2–5). Let M be such a matrix, dephased at the corner, with
horizontal signature ζ. Its vertical signature is then ζ as well (Lemma 1.1).
1. **Comparison.** Theorem 1.2 gives an actual vertical side on ζ̄ (side existence). With M's own horizontal
   side, its forced block is flat (flatness holds for any sides on conjugate roots). So there is a matched
   completion H₀ with the **same top three rows** T as M.
2. **No shared ray.** Two strict sides on different roots share no column. If they shared one, the two
   remaining column pairs would have the same Gram data. Either they coincide (so the signatures agree), or they
   have one of three degenerate shapes, and each degenerate shape has a real signature. So no bottom row of M is proportional
   to a bottom row of H₀. The two bottom-row bases are orthonormal bases of the same 3-space, the orthogonal
   complement of T's rows, with no common ray.
3. **A diagonal relation.** Hermitian operators diagonal in both bases are scalar, so a dimension count gives a
   nonzero real diagonal D_w with P D_w P = 0, where P projects onto that 3-space. Its complement Q = I − P has
   |Pⱼₖ| = |Qⱼₖ|, which forces Q D_w Q = 0, i.e. (wⱼ + wₖ) Qⱼₖ = 0.
4. **A Hadamard block.** A strict strip has no proportional columns. So all |wⱼ| are equal and nonzero, and the
   three columns of either sign are pairwise orthogonal: a 3×3 Hadamard block.
5. **Fourier normal form.** A Hadamard matrix with such a block reduces to a Fourier normal form. Exhausting it,
   using a three-point Fourier criterion and an exact census of the cubic cases, leaves Tao's orbit or the two
   Fourier families. The Fourier families are matched at every corner (200 kernel-checked Laurent identities,
   plus conjugation). So M is Tao.

*Lean:* `PRM.nonmatched_tao` (`lean/NoFourMUBs/PRM/Converse.lean` and its imports). Upstream's Fourier
normalisation and cubic census are used. ∎

> **Theorem 1.5 (strict-corner coverage).** Every Hadamard matrix not equivalent to F6 has a strict corner.

*Proof* (`MinimalConstruction/Proofs/STRICT_CORNER_COVERAGE.md`, with `PRM.md` §7.1). Suppose every corner of H
is critical (R = 0) and H ≇ F6.
1. **Routing.** A singular 3×3 minor, or three rows phased into (1; x; x̄), would put H in a Fourier family
   (elementary, `PRM.md` §7.1). An all-critical member of a Fourier family is equivalent to F6
   (`FOURIER_CRITICAL_LOCUS.md`). So all minors are invertible, and no row triple is of that form.
2. **Critical-strip classification** (`CRITICAL_STRIP_CLASSIFICATION.md`). On any three-row strip with all twenty
   blocks invertible and every corner critical, each corner has p ∈ {0, 5}, or one of two rational endpoints, or
   p = p* := 9 − 4/(1 + κ²), where κ > 0 solves 3κ³ + κ² + κ − 1 = 0. The proof is a whole-strip square-sum
   identity, exact moment algebra, and Bernstein/Sturm sign certificates. The two endpoints are excluded
   separately (`CRITICAL_P7_EXCLUSION.md`, `CRITICAL_EQUI_CORRELATION_EXCLUSION.md`).
   The explicit square sum on the nonzero-J stratum is S = −256 k²(3k²+1)³ Q(k, K)/(A₊²A₋²), up to a power of
   1 + k². Its denominator is verified exactly in `proof/coverage/audits/I4_ADDENDUM.md`.
3. **Counting.** κ ∈ (1/√5, 1/2), since the cubic is increasing for κ > 0 and changes sign there. Hence
   p* ∈ (17/3, 29/5). Fix one column of a strip. Over the ten corners containing it, Σ p_C = 54. This follows
   from row orthogonality, exactly as Σ over all twenty corners is 108; it is 108/2, because complementary
   corners have the same p. But ten numbers from
   {0, 5} ∪ (17/3, 29/5) cannot sum to 54: the sums ≡ 4 (mod 5) with only 0s and 5s are impossible, and the open
   intervals (17n/3 + 5m, 29n/5 + 5m) never contain 54. This is a contradiction. The interval must be open:
   with closed endpoints, six copies of 17/3 and four 5s would sum to 54. ∎

*Lean:* `PRM.strictCornerCoverage` (`lean/NoFourMUBs/Final.lean`; modules `PRM/Coverage*.lean`). The
counting step replaces the original irrationality argument, following an external return. The Lean proof also
differs from the paper in two places. The p = 7 endpoint is excluded by one corner of signature −56 − 8i, instead of
the 20-corner sum. The cube-root case of the equicorrelation endpoint uses (w³ − 8a)(w³ + a)² = 0, instead of
the field-degree argument. The Bernstein/Sturm certificate and the two square-sum identities are re-checked by
the kernel (`Identity/RootFree.lean`, `PRM/CoverageStripId*.lean`).

> **Corollary 1.6 (exact reach).** Every class of X is [F6], or in A, or in conj A.

*Proof.* Let H ≇ F6 be non-Tao. Take a strict corner (Theorem 1.5) and dephase. By Theorem 1.4 its sides are
matched. If the horizontal signature is ζ₋, conjugate the whole matrix. *Lean:* `PRM.exactReach`, assuming
Theorem 1.5. ∎

## 2. The maxima of R

> **Theorem 2.1.** Every positive local maximum of R on T⁴ lies in one orbit of 18 points under the 144 seed
> symmetries. The orbit is that of θ* = α(1, 2, −1, −2), with α = arccos(1/4) and R(θ*) = 3¹³/2¹².

*Proof outline.* Write R through the traces U and V of two normalised triples of corner products. Each trace
ranges over the filled deltoid. A saddle argument excludes interior critical points, and a smooth-boundary
argument excludes one interior trace. The double boundary leaves a single stationary branch, whose lifts are the
18-point orbit. In total this is 651 exact claims over the integers and rationals (`lean/Step1Gen`; proof
documents in `proof/coverage/returns/C_step1_saddle`). *Lean:* `Step1Geo.maximumCensus`. ∎

## 3. X is connected

> **Theorem 3.1.** X is connected.

*Proof.* There are four steps.
1. **Continuity.** The class map θ ↦ [H₊(θ)] on strict seeds is continuous. The matched relation is closed,
   𝓗 is compact, and the matched class is unique (Theorems 1.2, 1.3).
2. **A is connected.** Each component of the strict seed set S = {R > 0} has compact closure, with R = 0 on its
   boundary, so it contains a positive local maximum. By Theorem 2.1 that maximum lies in the 18-point orbit,
   and all 18 points give one class [K*]. This needs two frame symmetries and an explicit matched completion H₀
   at θ*. So the image of every component is connected and contains [K*], and A is connected. So is conj A.
3. **Joining at F6.** The family [[F₃, F₃], [F₃D(t), −F₃D(t)]], with D(t) = diag(1, e^{it}, 1), tends to
   F₂⊗F₃ ≅ F6 as t → 0. Its cross-ratio e^{it} keeps it away from F6 and S₆ for 0 < t < π/3. So [F6] lies in
   the closure of both A and conj A.
4. **Conclusion.** By Corollary 1.6, X = A ∪ conj A ∪ {[F6]}, which is therefore connected.

*Lean:* `Step2.coverage_of_matched_density` and its inputs. ∎

## 4. Local exclusion: ball Records

A **ball Record** is B = {e^{i(P+δ)} : δ horizontal, ‖δ‖ ≤ R} around a rational phase centre P. It comes with a
rational tangent frame T (36×4) and a certified lower bound σ for the smallest singular value of the Hadamard
Jacobian J on the normal space.

> **Lemma 4.1 (normal bound).** Every Hadamard matrix in B has δ = Tη + ν with ‖η‖ ≤ r_H and ‖ν‖ ≤ n(R), the smaller
> root of σν = e₀ + j₁r_H + √3(λ_max r_H² + ν²).

*Proof.* The remainder of the Hadamard map satisfies ‖Φ(δ) − Φ(0) − Jδ‖ ≤ √3‖δ‖², by |e^{iy} − 1 − iy| ≤ y²/2
and a row-difference count. *Lean:* `outNorm_rem_le`, `normal_bound_root`. ∎

> **Lemma 4.2 (Stage C, after [OAI] §6).** Suppose the following succeed for B:
> - the vector-bin cover of the vectors unbiased to I and to e^{i(P+δ)};
> - the label clustering;
> - the orthogonality and unbiasedness edge tests (with the joint test in the shared η);
> - the exact search for two disjoint orthogonal 6-cliques with all cross pairs unbiased.
>
> Then no Hadamard matrix in B is a quartet edge.

*Proof.* Every inequality is proved in `proof/atlas/STAGEC.md` (corrected 9 Oct for the Frobenius terms) and in
Lean (`lean/NoFourMUBs/StageC/`, `RecordCert.excludes`). ∎

> **Remark 4.3 (Tao).** At S₆ the Jacobian is injective on all 25 horizontal directions, with σ = 3/√2 exactly. So
> S₆ is isolated: σ‖δ‖ ≤ √3‖δ‖² forces δ = 0 or ‖δ‖ ≥ √(3/2). Stage C on its zero-dimensional ball shows that S₆ is
> not a quartet edge. *Lean:* `isolation`. ∎

## 5. A finite atlas

> **Lemma 5.1 (boundary transfer).** Let s and t be Records, A a signed permutation (rows, columns,
> transposition, conjugation) and N an integer winding. If sup over η in a box of ‖h(A P_s + 2πN − P_t) +
> h(A T_s)η‖ + n_s < R_t, then every boundary Hadamard of s with tangent coordinate in that box is equivalent to an
> interior point of t. By Lemma 4.1 the boundary needs only a 4-dimensional cover. *Lean:* `Transfer.lean`. ∎

> **Corollary 5.2.** Let 𝓡 be a finite family of Records, closed under conjugation and transposition. Suppose
> some Record contains a non-Tao class, and every boundary point of every Record transfers to the interior of a
> Record. Then the Records cover X.

*Proof.* The covered set is open (interiors), closed (a finite union of compact sets) and nonempty in the
connected space X. *Lean:* `recordClopen_of_atlas`, `Step2.coverage_of_connected`. ∎

**The atlas.**
- **Records.** 12,021 Records: 10,497 at R = 0.08, the rest at 0.063, 0.05 and 0.04. Each has passed Stage C
  and has its boundary transferred, to 58 targets on average.
- **Nonempty and anchored.** F6 lies in Record 877, and the anchor completion H₀ in Record 9319.
- **Certified twice.** `proof/atlas/certify.py` (Arb, plus binary64 with a margin of 10⁻⁷ against an error budget
  below 10⁻¹⁰) and an independent Julia implementation (`proof/independent/`) both pass every Record. About 5
  CPU-hours.

## 6. Conclusion

By Theorem 3.1 and Corollary 5.2, the Records cover X. By Lemma 4.2, no Hadamard matrix in a Record is a quartet
edge, and by Remark 4.3 neither is S₆. So no order-6 Hadamard matrix is a quartet edge, and ℂ⁶ has no four MUBs. ∎

In Lean the whole argument is `NoFourMUBs.Final.no_four_mubs (C : AtlasCertificate) : ¬ FourMUBs` (`lean/NoFourMUBs/Final.lean`). It
uses standard axioms only. **Its one input is the finite certificate of §5**: Lean proves "if the 12,021 Records satisfy
their inequalities, there are no four MUBs", and the inequalities themselves are checked by two independent
interval implementations (§5), not yet by Lean.

## 7. What is checked, and how

| Ingredient | Paper proof | Computation | Lean |
|---|---|---|---|
| Lemma 1.1 (side quadratic) | §1 | none | yes |
| Theorem 1.2 (matched existence) | returns E, F | exact identities | yes (kernel re-checks every identity) |
| Theorem 1.3 (matched uniqueness) | Step 2 blueprint, §7 | none | yes |
| Theorem 1.4 (nonmatched converse) | return G §§2–5 | exact: 81-case census, 400 Laurent identities | yes |
| Theorem 1.5 (coverage) | `STRICT_CORNER_COVERAGE.md` and its imports | exact identities; Bernstein/Sturm | yes (kernel re-checks the sign certificate and both square-sum identities) |
| Theorem 2.1 (maxima of R) | return C | 651 exact claims | yes |
| Theorem 3.1 (connectedness) | §3 | none | yes |
| Lemmas 4.1–4.2, Remark 4.3 | `STAGEC.md` | none | yes (as inequalities) |
| The atlas (§5) | Lemma 5.1, Corollary 5.2 | Arb and margined float; two independent implementations | the topology yes; the numbers checked outside Lean |

**Independent audit (15 Oct, `proof/coverage/audits/AUDIT_2026-10-15.md`).** No errors were found in Theorem 1.4,
Corollary 1.6 or Theorem 1.5. Every step of Theorem 1.4 was verified, matching the Lean proof, and the 81-case
census and the 400 corner identities were reproduced. All three versions of the final count of Theorem 1.5 are
correct, and the ten-corner version is used here. The weakest remaining points, ranked:
1. the nonzero-J branch of the critical-strip classification. It rests on a large exact identity and a
   Bernstein/Sturm certificate. Its full rational form, including the denominator, is now stated and verified
   (`I4_ADDENDUM.md` §1);
2. its pole cases. The row relabelling is now justified (`I4_ADDENDUM.md` §2);
3. its zero-J geometric-progression step;
4. the endpoint exclusions;
5. the routing lemmas.

All of these are now proved in Lean (`PRM.strictCornerCoverage`).

**What remains outside Lean: the atlas numbers only.** Every row of the table above is in Lean, except the evaluation of
the inequalities on the 12,021 concrete Records (§5), which are checked by Arb and by an independent Julia
implementation. An experimental project to check them in the Lean kernel is in `kernel_atlas/` (Record 100 is a
complete kernel-checked Record); it is not part of this proof.

**Theorem B audit (15 Oct, `proof/coverage/audits/AUDIT_THEOREM_B_2026-10-15.md`).** No errors were found. Return G's
Theorem B is not on the critical path: neither this proof nor the Lean development uses it.

## Appendix: superseded routes

The first proof (archived at git tag `archive-2026-10-11`) used a direct corner chart and a 45.7M-row ledger. The
first minimal proof deduced X = A ∪ conj A ∪ {F6} from the classification [CT] through five reconstruction facts
MC1–MC5. One of those (the nonmatched converse) imported [CT]'s minus-matching necessity (PR-M), whose supplied
proof was incomplete. The route above replaces [CT] entirely:
- MC2–MC3 by Theorems 1.2 and 1.3;
- MC4–MC5 and PR-M by Theorem 1.4 (which also proves PR-M on the guarded locus, return G Theorem B);
- MC1 by Theorem 1.5, using only the dossier's own critical-strip proofs.

## References

- [OAI] OpenAI, *The maximum number of mutually unbiased bases in dimension six*, preprint, 24 Sep 2026.
- [CT] M. Cárdenes Wuttig, J. Tindall, *A complete classification of complex Hadamard matrices of order six*,
  arXiv:2608.18053 (no longer used by the main route).
