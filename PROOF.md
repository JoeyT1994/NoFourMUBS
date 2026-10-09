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

> **Theorem 1.** The positive local maxima of R on T⁴ form exactly one orbit of 18 points under the 144 seed symmetries:
>
>   θ* = α(1, 2, −1, −2), α = arccos(1/4), R(θ*) = 3¹³/2¹².
>
> The Hessian there is negative definite. In particular max R = 3¹³/2¹².

**Proof idea.**
1. **Change of variables.** Normalise the even products (ad, b, c) and the odd products (bc, d, a) of the corner so that each triple has product 1. Let U and V be their traces; each lies in the filled deltoid.
2. **Compact form.** With A = U + V and B = U − V, u = |A|² and v = |B|²:
   - g = 2v − 3u and η = v − 2u;
   - R = 4g²η − χ², where χ = (3u − v)(v − u + 12)/2 − 2 Re(AB²).
3. **Circle symmetry.** R is invariant under (A, B) ↦ (e^{−2iτ}A, e^{iτ}B).
   - In the double interior, one resultant leaves two real critical candidates. Both have an increasing direction, by d²R/dψ² = −4χxv > 0.
   - With one trace on a smooth boundary point, the orbit enters the interior, by a curvature identity.
   - A cusp is excluded directly.
   - So both traces lie on the deltoid boundary.
4. **Boundary case.** The two-boundary problem is classified exactly. One spurious value, 25(25 − 11√5)/2, has positive transverse curvature, so it is not a maximum.

**Certificates.** All acceptance decisions are exact: Laurent identities, resultants, Gröbner bases, Sturm counts and rational intervals. They are in [`proof/coverage/`](proof/coverage/README.md). Two independent proofs, A (`returns/A_deltoid`) and B (`returns/B_exact_quotient`), each replay in under 10 s. Proof B also shows why no interval box cover could do this: at the F3 seed, R, ∇R and Hess R all vanish, with strict seeds arbitrarily close.

## Step 2. X is connected (relative to the classification)

> **Theorem 2.** Assume MC1–MC5. Then X is connected. (S₆ is isolated by Remark 3.3.)

**Proof.**
1. **Sheet parity.** Let L be a seed symmetry with transposition bit τ and conjugation bit κ. Then [H_σ(Lθ)] = 𝒞^κ 𝒯^τ [H_{(−1)^{τ+κ}σ}(θ)]. The maximal seed E(x) = [[1,1,1],[1,x,x²],[1,x⁻¹,x⁻²]] has two exact frame symmetries. Together these give H₊(Lθ*) ≅ K* for all 144 maps L: a single class.
2. **Continuity.** θ ↦ [H₊(θ)] is continuous on S, including across root cuts and sign switches.
3. **Every component of S reaches K\*.** Each component of S has compact closure, R > 0 inside and R = 0 on its boundary, so it contains a local maximum of R. By Step 1 that maximum lies in the orbit of θ*. So every component maps into one connected set A = {[H₊(θ)] : θ ∈ S} containing [K*], and conj A is connected too.
4. **MC1 and MC5** give X = A ∪ conj A ∪ {[F6]}.
5. **Joining at F6.** The family [[F₃, F₃], [F₃D(t), −F₃D(t)]], with D(t) = diag(1, e^{it}, 1), tends to F₂⊗F₃ ≅ F6. Its cross-ratio e^{it} keeps it away from F6 and S₆ for 0 < t < π/3. So [F6] lies in the closure of both A and conj A. ∎

Details: [`proof/coverage/returns/A_deltoid/CONNECTEDNESS.md`](proof/coverage/returns/A_deltoid/CONNECTEDNESS.md) and `SHEETS_TOPOLOGY.md`, with return B as an independent check.

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
> Here n(R) = (σ − √(σ² − 2Lb))/L, with b = e₀ + j₁ r_H + (L/2) λ_max(G) r_H² and L = 2√3, the base-independent bound on ‖Φ″‖.

> **Lemma 3.2 (Stage C, after [OAI] §6).** Suppose the vector-bin cover, the label clustering, the O/U edge tests (including the joint test 6.23) and the exact two-clique search succeed for (P, T, r_H, n, r_col, r_F), where r_col bounds the columns of δ and r_F its Frobenius norm. Then no Hadamard in B_r is a quartet edge.

**Proofs.** Every Stage C inequality, the label lemma and the correctness of the clique search are stated and proved in our notation in [`proof/atlas/STAGEC.md`](proof/atlas/STAGEC.md).

**Code.** [`proof/atlas/ballrecord.py`](proof/atlas/ballrecord.py) and [`stagec.py`](proof/atlas/stagec.py).

**Rigour** ([`RIGOUR.md`](proof/atlas/RIGOUR.md)):
- σ, e₀, j₁ and the Gram bounds are computed in Arb or exactly.
- Exponentials in Stage C come from Arb tables.
- All other float comparisons carry a margin of 10⁻⁷, against a per-expression error budget below 10⁻¹⁰.
- An Arb replay of sampled rejections confirms every one.

Records pass at R = 0.08 rad, about 0.5 s each.

> **Remark 3.3 (S₆ is a zero-dimensional Record).** At S₆, J is injective on the whole 25-dimensional horizontal space, with σ ≥ 2.1 certified by an Arb Cholesky factorisation. So T is empty and r_H = 0. Let the ball have R = 0.08.
> - *Uniqueness.* Since L·R = 0.28 < σ, the mean-value bound ‖Φ′(x) − Φ′(0)‖ ≤ L‖x‖ gives σ‖δ₁ − δ₂‖ ≤ L·R·‖δ₁ − δ₂‖. So the ball contains exactly one Hadamard, S₆ itself, and S₆ is isolated in 𝓗/≅.
> - *Exclusion.* Stage C passes on this ball, so S₆ is not a quartet edge.
>
> This is [`proof/atlas/tao.py`](proof/atlas/tao.py), which runs in under 1 s.

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
3. `nonempty.py` places F6 inside a Record.

**Result** ([`proof/atlas/results/`](proof/atlas/results/RECEIPT.md)). ⚠ *Re-certification in progress after the Stage C correction of 9 Oct; the numbers below are for the pre-correction atlas.*
- **The atlas.** 11,228 ball Records: 10,785 at R = 0.08, 334 at R = 0.063 and 109 at R = 0.05. Every boundary is transferred, with on average 56 transfer targets per Record.
- **Certification.** `certify.py` independently certifies all 11,228.
- **Nonemptiness.** F6 lies in the interior of Record 877, at distance 0.023 < 0.08.
- **Cost.** About 7 core-hours to build and about 4 core-hours to certify.
- **Certificate.** `atlas_certificate.json.gz` (5.9 MB).

## Conclusion

By Step 4 and the Corollary to Step 2, every class in X lies in some ball Record. By Step 3, no Hadamard in a Record is a quartet edge. S₆ is not a quartet edge, by Remark 3.3. Hence no order-6 Hadamard matrix is a quartet edge, and C⁶ has no four MUBs. ∎

## Trust boundary

| Input | Used in | Status |
|---|---|---|
| The classification [CT], via MC1–MC5 | Step 2 only | Proved relative to [CT] in [`MinimalConstruction/Proofs`](MinimalConstruction/Proofs/README.md), the current status. The "remains open" lines in `ASSUMPTIONS.md` are a hash-pinned historical section. [CT]'s exceptional Karlsson class H_cross is covered (MC1, MC4); see [`proof/LITERATURE.md`](proof/LITERATURE.md) |
| The Stage C inequalities (after [OAI] §6) | Step 3 | Proved in [`proof/atlas/STAGEC.md`](proof/atlas/STAGEC.md): elementary Taylor and Cauchy–Schwarz bounds |
| Computation | Steps 1 and 4 | Exact (Step 1); Arb plus margined binary64 (Steps 3–4) |

## Verifying

```bash
pip install -r requirements.txt
python3 verify.py            # Steps 1–2 exact replays, MC1–MC5, S₆ Record, Stage C Arb replay
python3 verify.py --atlas    # Step 4: certify all 11,228 Records (about 30 min on 8 cores)
```

## History

The first complete proof used the corner chart directly: a maximal-corner domain, a branch layer and a 45.7M-row ledger, about 10⁵ core-hours. It is archived, still replayable, in [`archive/long_proof/`](archive/long_proof/README.md). The minimal proof replaces all of it with Steps 1–4.

## References

- [CT] M. Cárdenes Wuttig, J. Tindall, *A complete classification of complex Hadamard matrices of order six*, arXiv:2608.18053.
- [OAI] OpenAI, *The maximum number of mutually unbiased bases in dimension six*, preprint, 24 Sep 2026 (openai/math).
