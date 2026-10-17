# C⁶ has no four mutually unbiased bases

**Theorem.** There are no four mutually unbiased bases (MUBs) in C⁶.

The proof has four steps:
1. One exact algebraic fact about a four-variable polynomial.
2. One topological fact about the space of Hadamard matrices.
3. One local exclusion lemma.
4. One finite certified computation.

Steps 1 and 2 are pure mathematics. Steps 3 and 4 are computer-assisted, with every constant enclosed in interval arithmetic.

---

## 0. Setting

**Reduction to Hadamard matrices.** Rotate a set of four MUBs so that the first is the standard basis I. The second basis is then H/√6, where H is a complex Hadamard matrix of order 6 (|H_ij| = 1, HH* = 6I). Call H a **quartet edge** if I and H/√6 extend to four MUBs. The theorem says that no H is a quartet edge.

**Equivalence.** H ≅ H′ if H′ = P D₁ H D₂ Q, with P and Q permutation matrices and D₁ and D₂ diagonal unitaries. Write 𝓗 for the set of order-6 Hadamard matrices.

**Symmetries.** Being a quartet edge is invariant under:
- equivalence;
- conjugation H ↦ H̄;
- transposition H ↦ Hᵀ (apply the unitary H*/√6 to all four bases, then conjugate).

**Tao's matrix.** S₆ = (e(k_ij/3)) is an isolated point of 𝓗/≅ and is not a quartet edge. Both facts come from our own machinery: S₆ is a *zero-dimensional* ball Record (Step 3, Remark 3.3). Let

  X = (𝓗/≅) ∖ {[S₆]},

with the quotient phase metric δ(H, K) = min{‖v‖ : v horizontal, H ≅ K ∘ e^{iv}}. A real 6×6 matrix is *horizontal* if all its row and column sums vanish.

**Corner seeds.** For θ ∈ T⁴, let E(θ) = [[1,1,1],[1,a,b],[1,c,d]] with a, b, c, d = e^{iθ₁}, …, e^{iθ₄}. The classification invariant of this corner is R(θ) = 4g²η − χ² ([`MinimalConstruction/`](MinimalConstruction/README.md)). On the strict seeds S = {R > 0}, an explicit formula gives a Hadamard completion H₊(θ). Relative to the classification [CT], the reconstruction facts MC1–MC5 say: every class other than F6 and S₆ is [H₊(θ)] or [conj H₊(θ)] for some θ ∈ S.

## Step 1. The maxima of R (exact algebra, no classification)

> **Theorem 1.** Every positive local maximum of R on T⁴ lies in one orbit of 18 points under the 144 seed symmetries:
>
>   θ* = α(1, 2, −1, −2), α = arccos(1/4), R(θ*) = 3¹³/2¹².
>
> (The Hessian there is negative definite, so these 18 points are exactly the positive local maxima, and max R = 3¹³/2¹².)

**Coordinates.** Normalise the even products (ad, b, c) and the odd products (bc, d, a) of the corner so that each triple has product 1. Let U and V be their traces. Each lies in the filled deltoid 𝒟, and the trace map is an open quotient by S₃. Put A = U + V, B = U − V, u = |A|² and v = |B|². Then

  R = ℛ(A, B) = 4(2v − 3u)²(v − 2u) − C², C = (3u − v)(v − u + 12)/2 − 2 Re(AB²).

A local maximum on T⁴ is therefore a local maximum of ℛ relative to 𝒟 × 𝒟.

**1. No interior maximum.** *Every critical point of ℛ on ℂ² with ℛ > 0 has a direction of positive second derivative.*
- ℛ is invariant under (A, B) ↦ (ζ̄²A, ζB), so we may take B = √v > 0 and A = x + iy. Positivity gives d = v − 2u > 0.
- H_v = 4g(6v − 11u) − 2CC_v with g, 6v − 11u > 0, so C ≠ 0. Then yH_x − xH_y = 4vyC forces y = 0.
- At x = −h ≤ 0 and v = 2h² + d, the Jacobian c_x f_v − c_v f_x equals −8(h² + 2d)W(h, d), where W has nonnegative coefficients and W ≥ 6d² > 0. Hence x > 0.
- Then f_v = 0 forces c < 0. Finally xH_yy = −4vc > 0.

So both traces cannot be interior, and the old interior sextic, resultant and Sturm census are not needed.

**2. Both traces lie on the boundary.**
- **One smooth boundary trace, the other interior.** The invariant circle orbit enters the interior to first order, or else has d²Δ/dτ² = −(9/2)(r + 2)²|z³ − 1|⁴ < 0.
- **A cusp with an interior partner.** Excluded by the factorisation ℛ = −4FG² and a positive cubic Bernstein certificate.

**3. The double boundary.** Here ℛ = −256 L²M²N in square coordinates (c, h).
- An explicit eliminant, with cofactors of 11 and 22 terms, leaves one positive stationary branch.
- On that branch, the actual transverse curvature is 660(46y + 9) > 4125/32. Every physical root of 4y² + 6y + 1 lies in (−49/256, −3/16), by a secant identity.
- On h = 1, four positive Bernstein expansions leave only (c, h) = (1/4, 1). Its lifts are exactly the 18-point orbit, with q = (1 + i√15)/4.

**Certificates.** 651 exact claims, checked with integers and rationals only, in 7 s (`lean/Step1Gen`, `verify_certificates.py`; proof documents in `proof/coverage/returns/C_step1_saddle`). All of Step 1 is proved in Lean, using only standard axioms: the 216 certificate theorems of library `Step1` and the analytic assembly in `lean/NoFourMUBs/Step1/`. Theorem 1 is `Step1Geo.maximumCensus`, with the explicit anchors `Step1Geo.anchors`. The earlier resultant/Sturm proofs A and B (`returns/A_deltoid`, `returns/B_exact_quotient`) remain as independent cross-checks. Proof B also shows why no interval box cover could work here: at the F3 seed, R, ∇R and Hess R all vanish, with strict seeds arbitrarily close.

## Step 2. X is connected

> **Theorem 2.** X is connected. (S₆ is isolated by Remark 3.3.)

The proof below uses MC1–MC5, and so [CT], at step 4. The route without the classification follows it, after matched existence.

**Proof.**
1. **Sheet parity.** Let L be a seed symmetry with transposition bit τ and conjugation bit κ. Then [H_σ(Lθ)] = 𝒞^κ 𝒯^τ [H_{(−1)^{τ+κ}σ}(θ)]. The maximal seed E(x) = [[1,1,1],[1,x,x²],[1,x⁻¹,x⁻²]] has two exact frame symmetries. Together these give H₊(Lθ*) ≅ K* for all 144 maps L: a single class.
2. **Continuity.** θ ↦ [H₊(θ)] is continuous on S, including across root cuts and sign switches.
3. **Every component of S reaches K\*.** Each component of S has compact closure, R > 0 inside and R = 0 on its boundary, so it contains a local maximum of R. By Step 1 that maximum lies in the orbit of θ*. So every component maps into one connected set A = {[H₊(θ)] : θ ∈ S} containing [K*], and conj A is connected too.
4. **MC1 and MC5** give X = A ∪ conj A ∪ {[F6]}.
5. **Joining at F6.** The family [[F₃, F₃], [F₃D(t), −F₃D(t)]], with D(t) = diag(1, e^{it}, 1), tends to F₂⊗F₃ ≅ F6. Its cross-ratio e^{it} keeps it away from F6 and S₆ for 0 < t < π/3. So [F6] lies in the closure of both A and conj A. ∎

Details: [`proof/coverage/returns/A_deltoid/CONNECTEDNESS.md`](proof/coverage/returns/A_deltoid/CONNECTEDNESS.md) and `SHEETS_TOPOLOGY.md`, with return B as an independent check.

**Matched existence without the classification.** At every strict seed the positive matched completion exists, with no appeal to [CT]:
- *Sides* ([`returns/F_side_existence`](proof/coverage/returns/F_side_existence/SIDE_EXISTENCE.md)). The explicit side constructor gives horizontal and vertical phase sides with Gram matrices 6I − EE*, 6I − E*E and signatures (χ ± i√R)/2, by explicit polynomial identities with integer cofactors (no irreducibility or density argument).
- *Flatness* ([`returns/E_matched_flatness`](proof/coverage/returns/E_matched_flatness/FLATNESS.md)).
  - For any such sides, the defect Δ_ij = |D_ij|² − 1 of the forced block D = −CE*G_h⁻¹B has zero row and column sums.
  - The change of coordinates W = V̄ΔB̄ᵀ is invertible, and its first row and column vanish, so flatness reduces to four weighted third-moment defects.
  - Their eight coefficients vanish identically in ℚ(a, b, c, d), with integer cofactors. The fourth-moment identities proposed earlier are also certified, as an independent second proof.

This is `MatchedExistence` (L1) of the Lean route, now proved by certified computation and in Lean (`L1.matchedExistence`, kernel-checked from the certificates). It removes [CT] from MC4's matched half.

**Step 2 without the classification** ([`returns/G_prm`](proof/coverage/returns/G_prm/PRM.md), 14 Oct; independently audited with no errors found, [`audits/AUDIT_2026-10-15.md`](proof/coverage/audits/AUDIT_2026-10-15.md); proved in Lean).
- *Theorem A (strict nonmatched converse).* If a Hadamard has a strict corner (R > 0) whose two sides are not matched, it is Tao.
  - Compare it with the matched completion of the same top three rows, which exists by L1 for any horizontal side.
  - Strict side fibres are finite, so the two sets of bottom rows are orthonormal bases of the same 3-space with no common ray.
  - A dimension count then gives a real diagonal D_w ≠ 0 with P D_w P = 0, where P projects onto that 3-space. The complementary projection Q satisfies |P_jk| = |Q_jk|, which splits the six columns into two orthogonal triples, so the matrix has a 3×3 Hadamard block.
  - An elementary Fourier normal form and an exact census of 81 cases, together with 400 whole-family Laurent identities showing that the Fourier families are matched at every corner, leave only Tao.
- *Theorem B (PR-M on the guarded locus).* This follows from A through the exact identity ω_n = −δ_p²R/|f₆|², and because no Tao frame is product regular. Theorem B is not on the critical path: neither this proof nor the Lean development uses it ([`audits/AUDIT_THEOREM_B_2026-10-15.md`](proof/coverage/audits/AUDIT_THEOREM_B_2026-10-15.md)).
- *Theorem C (exact reach).* With the critical-strip results of `MinimalConstruction/Proofs` (critical-strip classification, endpoint exclusions, the sum rule over a fixed row triple, and the Fourier critical locus), which use no [CT] input, every non-Tao class is [F6], or [H₊(θ)] or [conj H₊(θ)] for a strict θ. This is the `MatchedExactReach` statement of the Lean route.

With L1 and L2, the matched class map θ ↦ [H₊(θ)] is continuous. Steps 3 and 5 of the proof of Theorem 2 then give X = A ∪ conj A ∪ {[F6]} connected, with no appeal to [CT]. On this route the reconstruction stays the backbone. H₊(θ) is the object: L1 certifies its side recipe (MC2–MC3, `SIDE_FIBER.md`) and its forced block. MC1 is rederived from the dossier's own critical-strip proofs, with only the Fourier normal form of `FOURIER_ROUTING.md` reproved. MC4's nonmatched converse and MC5 are replaced by Theorem A and exact reach.

**Corollary (coverage).** Let 𝓡 be a finite family of closed Records (Step 3), and let 𝓡̂ be its closure under Γ = {id, conjugation, transposition, conjugate-transpose}. Γ maps a Record ball to a Record ball of the same radius and preserves quartet edges. Let W be the set of classes of Hadamards in ⋃𝓡̂. Suppose:
1. W contains a non-Tao class;
2. every Hadamard on the boundary of a Record in 𝓡 is equivalent, after some g ∈ Γ, to one in the interior of a Record in 𝓡.

Then W ⊇ X.

*Proof.* Applying g ∈ Γ, condition 2 holds for every Record in 𝓡̂, with targets in 𝓡̂. So every point of W has a representative in the interior of some Record in 𝓡̂.
- W ∩ X is open: if H = e^{i(P + δ)} with ‖δ‖ < R and δ(H, K) < R − ‖δ‖, then K ≅ e^{i(P + δ + v)} with ‖δ + v‖ < R.
- W ∩ X is closed: it is a finite union of compact images.
- W ∩ X is nonempty.

Since X is connected, W ∩ X = X. ∎

## Step 3. Local exclusion: ball Records

A **ball Record** is a set B_r = {e^{i(P+δ)} : δ horizontal, ‖δ‖ ≤ R}, where P is a rational phase centre, together with:
- a rational tangent frame T (36×4);
- σ > 0, certified by an Arb Cholesky factorisation, with ‖Jν‖ ≥ σ‖ν‖ on the normal space N.

> **Lemma 3.1 (normal bound).** Every Hadamard in B_r has δ = Tη + ν with ‖η‖ ≤ r_H and ‖ν‖ ≤ n(R).
>
> Here n(R) = (σ − √(σ² − 2Lb))/L, with b = e₀ + j₁ r_H + (L/2) λ_max(G) r_H² and L = 2√3.

*Proof.* Write Φ(δ) for the off-diagonal part of e^{i(P+δ)}e^{i(P+δ)}* and J = Φ′(0). Entry (a, b) of the remainder Φ(δ) − Φ(0) − Jδ is Σ_c Z_ac Z̄_bc (e^{iy_c} − 1 − iy_c) with y_c = δ_ac − δ_bc. Since |e^{iy} − 1 − iy| ≤ y²/2, its modulus is at most ½‖r_a − r_b‖², where r_a is row a of δ. Now ‖r_a − r_b‖² ≤ 2‖δ‖² and Σ_{a<b} ‖r_a − r_b‖² ≤ 6‖δ‖², so ‖Φ(δ) − Φ(0) − Jδ‖ ≤ √3‖δ‖² = (L/2)‖δ‖², for every δ and every centre. If e^{i(P+δ)} is Hadamard, then Φ(δ) = 0. Hence σ‖ν‖ ≤ ‖Jν‖ ≤ e₀ + j₁‖η‖ + √3(λ_max‖η‖² + ‖ν‖²), using Tη ⟂ ν. Since ‖ν‖ ≤ R < σ/L, ‖ν‖ lies below the smaller root of this quadratic. No Taylor theorem is needed. This is proved in Lean ([`lean/NoFourMUBs/NormalBound.lean`](lean/NoFourMUBs/NormalBound.lean): `outNorm_rem_le`, `normal_bound_root`). ∎

> **Lemma 3.2 (Stage C, after [OAI] §6).** Suppose the vector-bin cover, the label clustering, the O/U edge tests (including the joint test 6.23) and the exact two-clique search succeed for (P, T, r_H, n, r_col, r_F), where r_col bounds the columns of δ and r_F its Frobenius norm. Then no Hadamard in B_r is a quartet edge.

**Proofs.** Every Stage C inequality, the label lemma and the correctness of the clique search are stated and proved in our notation in [`proof/atlas/STAGEC.md`](proof/atlas/STAGEC.md).

**Code.** [`proof/atlas/ballrecord.py`](proof/atlas/ballrecord.py) and [`stagec.py`](proof/atlas/stagec.py).

**Rigour** ([`RIGOUR.md`](proof/atlas/RIGOUR.md)):
- σ, e₀, j₁ and the Gram bounds are computed in Arb or exactly.
- Exponentials in Stage C come from Arb tables.
- All other float comparisons carry a margin of 10⁻⁷, against a per-expression error budget below 10⁻¹⁰.
- An Arb replay of sampled rejections confirms every one.

Records pass at R = 0.08 rad, about 0.5 s each.

> **Remark 3.3 (S₆ is a zero-dimensional Record).** At S₆ the horizontal spectrum of JᵀJ is exactly {9/2 (×16), 12 (×9)}. An exact rational check gives M(M − 9/2)(M − 12) = 0 and the traces, and shows that the 11-dimensional gauge space is the kernel. So J is injective on all 25 horizontal directions, with σ = 3/√2 exactly; T is empty and r_H = 0.
> - *Isolation.* Φ(0) = 0 at S₆. So for any Hadamard e^{i(P+δ)} with δ horizontal, the remainder bound gives σ‖δ‖ ≤ √3‖δ‖². Hence δ = 0 or ‖δ‖ ≥ σ/√3 = √(3/2). So S₆ is isolated in 𝓗/≅ (Lean: `isolation`).
> - *Exclusion.* Stage C passes on the ball of radius R = 0.08, so S₆ is not a quartet edge.
>
> This is [`proof/atlas/tao.py`](proof/atlas/tao.py), which runs in about 2 s.

## Step 4. A finite atlas

> **Lemma 4.1 (4-dimensional boundary transfer).** Let s and t be ball Records, A a signed permutation of the 36 entries (row and column permutations, transposition, conjugation) and N an integer winding. Put c = h(A P_s + 2πN − P_t) and M = h(A T_s). If
>
>   sup_{η ∈ box} ‖c + Mη‖ + n_s < R_t,
>
> then every boundary Hadamard of s whose tangent coordinate lies in the box is equivalent to an interior point of t.

Because of the normal bound, the boundary of a Record needs only a 4-dimensional cover by η-boxes, not a 25-dimensional one.

**The computation** ([`proof/atlas/`](proof/atlas/README.md)):
1. `atlas.py` grows ball Records breadth-first from a seed centre until every Record's boundary is transferred.
2. `certify.py` re-checks every Record independently: σ, the normal bound, Stage C, and a replay of the boundary tree with Arb transfer constants.
3. `nonempty.py` and `anchor.py` place F6 and the explicit maximum-anchor completion H₀ inside Records.

**Result** ([`proof/atlas/results/`](proof/atlas/results/RECEIPT.md)), with the corrected Stage C:
- **The atlas.** 12,021 ball Records: 10,497 at R = 0.08, 1,029 at 0.063, 419 at 0.05 and 76 at 0.04. Every boundary is transferred, with on average 58 transfer targets per Record.
- **Certification.** `certify.py` certifies all 12,021, and an independent Julia implementation (`proof/independent/`) passes all 12,021 as well (`proof/atlas/results/RECEIPT.md`).
- **Nonemptiness.** F6 lies in the interior of Record 877, at distance 0.023 < 0.08.
- **Cost.** About 1.9 CPU-hours to certify; `verify.py --atlas -j 8` takes 14 minutes on an Apple M5 Max (17 Oct 2026, `proof/atlas/results/RECEIPT.md`).
- **Certificate.** `atlas_certificate.json.gz` (16 MB, with integer tangent frames).

## Conclusion

By Step 4 and the Corollary to Step 2, every class in X lies in some ball Record. By Step 3, no Hadamard in a Record is a quartet edge. S₆ is not a quartet edge, by Remark 3.3. Hence no order-6 Hadamard matrix is a quartet edge, and C⁶ has no four MUBs. ∎

## Trust boundary

| Input | Used in | Status |
|---|---|---|
| Step 2 without [CT]: matched existence (L1), matched uniqueness (L2), exact reach (return G) | Step 2 | **Proved in Lean.** L1 and L2; Theorem A and the deduction of density from coverage (`PRM.nonmatched_tao`, `PRM.densityReach`, `no_four_mubs_of_coverage`); and strict-corner coverage (MC1, `PRM.strictCornerCoverage`), from the [CT]-free critical-strip proofs in `MinimalConstruction/Proofs`, with the kernel re-checking the sign certificate and both square-sum identities. On paper, exact reach is proved with exact certificates ([`returns/G_prm`](proof/coverage/returns/G_prm/PRM.md)). An independent audit of Theorem A, exact reach and coverage found no errors ([`audits/AUDIT_2026-10-15.md`](proof/coverage/audits/AUDIT_2026-10-15.md)). A floating-point stress test found every one of 8.0M strict corners of 20,016 completions matched, while Tao's strict corners are all nonmatched |
| The classification [CT], via MC1–MC5 | Step 2, earlier route | Superseded by the row above, which keeps the reconstruction (H₊(θ), its side recipe, and MC1 by the dossier's critical-strip proofs) and drops only its [CT] imports. Proved relative to [CT] in [`MinimalConstruction/Proofs`](MinimalConstruction/Proofs/README.md). That route imported [CT]'s necessary affine-minus matching (PR-M), whose supplied proof showed only F₊ ≢ 0. Return G's Theorem B now proves PR-M on the guarded locus with ω_n < 0 |
| The Stage C inequalities (after [OAI] §6) | Step 3 | Proved in [`proof/atlas/STAGEC.md`](proof/atlas/STAGEC.md) by elementary Taylor and Cauchy–Schwarz bounds, and in Lean |
| Computation | Steps 1 and 4 | Exact (Step 1, also kernel-checked in Lean); Arb plus margined binary64 (Steps 3–4), confirmed by an independent Julia implementation. **The atlas numbers are the only ingredient checked outside Lean** (an experimental kernel check is in [`kernel_atlas/`](kernel_atlas/README.md)) |

**In Lean**, the whole argument is `NoFourMUBs.Final.no_four_mubs (C : AtlasCertificate) : ¬ FourMUBs` ([`lean/NoFourMUBs/Final.lean`](lean/NoFourMUBs/Final.lean)), using only `propext`, `Classical.choice` and `Quot.sound`. Its one input is the finite certificate of Step 4.

## Verifying

```bash
pip install -r requirements.txt
python3 verify.py            # exact replays: Steps 1-2, matched existence, PR-M and exact reach, MC1-MC5, S6, Stage C Arb sample
python3 verify.py --atlas -j 8  # also certify all 12,021 Records, F6 and the anchor (~1.9 CPU-hours: 14 min with -j 8 on an M5 Max)
python3 verify.py --lean     # also build the Lean formalisation and audit its axioms
python3 verify.py --lean-full  # also build L1 and NoFourMUBs.Final (hours on a first build)
```

## History

The first complete proof used the corner chart directly: a maximal-corner domain, a branch layer and a 45.7M-row ledger, about 10⁵ core-hours. It is preserved, still replayable, at the git tag `archive-2026-10-11` (`archive/long_proof/`). The minimal proof replaces all of it with Steps 1–4.

## References

- [CT] M. Cárdenes Wuttig, J. Tindall, *A complete classification of complex Hadamard matrices of order six*, arXiv:2608.18053.
- [OAI] OpenAI, *The maximum number of mutually unbiased bases in dimension six*, preprint, 24 Sep 2026 (openai/math).
