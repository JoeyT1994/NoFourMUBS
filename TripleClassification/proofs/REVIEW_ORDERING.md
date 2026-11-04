# Review of the minimum-transition ordering argument

Independent referee report on the ordering witness used in seed balls 1035, 1217, 1622 and 2705, at `main` 638dd1a5c
(3 November 2026). Read: [`ORDERING.md`](ORDERING.md) §1–4;
[`ordering.py`](../certifier/certifier/ordering.py); its use in
[`normal_form_leaf.py`](../certifier/certifier/normal_form_leaf.py) and [`verify.py`](../certifier/certifier/verify.py);
the pinned [`pr4/gamma_test.py`](../certifier/certifier/pr4/gamma_test.py) (manifest hash) and
[`pr4/gamma_exact.py`](../certifier/certifier/pr4/gamma_exact.py) (`APPROVED` hash), both loaded through
[`pinned.py`](../certifier/certifier/pinned.py); the column tubes in `family_neighbourhoods/native_columns.py`; SM
Lemma *Minimum transition* and the text around it (`supp_body.tex` 711–747, 1044–1053; `methods.tex` 219–223,
Overleaf a46937d). No pinned file or certificate was changed.

**Verdict.** Items 1–5 below are **PROVED**. The argument, and the code that runs it, are sound. I found no gap and no
counterexample. Four statements in the documents are wrong or out of date (§6). None of them touches soundness, but
three are in the paper.

## 1. The upper bound on Γ_F(L) (ORDERING.md §3): PROVED

*Fixed centre.* `Hc`, `Kc` and `Lc` are Arb/acb balls. The argument uses one point of them:
H_c* = exp(i·mid Q₀), K_c* = exp(i·mid v0) and L_c* = H_c*^* K_c*/√6. Each lies in its ball.
- `dH` (`gamma_test.py:135-136`) adds the centre radius rad(Q₀,ᵢ) to the motion bound, so |Qᵢ − mid Q₀,ᵢ| ≤ hradᵢ for
  every H in the cell.
- `pr` (`ordering.py:85`) adds Σₐ rad(v0ₐ), which is at least the 2-norm of the radius vector, to `phase_radius`.

So ‖H − H_c*‖_F ≤ d_H and ‖V_k − mid v0_k‖ ≤ pr_k, using |e^{ia} − e^{ib}| ≤ |a − b|. ORDERING.md §2 leaves both
radius terms out of its formulas for d_H and pr_k. The code has them (§6.4).

*Motion terms.* Row i of H₂ is stored against w⊗w (36×16, `native_columns.py:84`). Since ‖w⊗w‖ = ‖w‖²,
|½H₂,ᵢ[w,w]| ≤ ½‖H₂,ᵢ‖r². The terms ‖Uᵢ‖r and ‖Xᵢ‖τ follow by Cauchy–Schwarz. Every norm is built from
`abs(·).upper()`, so it bounds every coefficient in the balls.

*Gauge.* `native_columns.contract` bounds ‖V_k − v0_k‖ for the mean-zero lift V_k = C·(any lift) of each completing
column. Here C = I − 11ᵀ/6, and exp(iCV) is the column times a unit scalar. Multiplying column k of K by e^{iφ}
multiplies column k of L = H*K/√6 by e^{iφ}, a column phase of L. By (Γ1), Γ_F(L) and Γ_F(K) are unchanged. The
mean-zero representative is therefore a valid choice for both bounds.

*s and d_k.* ‖H_c*‖²_op = λ_max(H_c*^*H_c*) ≤ 6 + ‖H_c*^*H_c* − 6I‖_op ≤ 6 + ‖·‖_F. `gamma_test.py:143-148` encloses
this as G2 = Σ|g|.upper². It squares the upper bound of |g| rather than the ball itself, which avoids the flint 0.9
NaN when the ball contains 0. Column k of L − L_c* is H_c*^*(K_k − K*_ck)/√6 + (H − H_c*)^*K_k/√6, with ‖K_k‖ = √6. So
‖(L − L_c*)_k‖ ≤ s·pr_k + ‖H − H_c*‖_op ≤ s·pr_k + d_H = d_k (`ordering.py:89`).

*Arg bound.* Suppose |t − c| ≤ δ < |c|. The disk of radius δ about c misses 0 and subtends the half-angle asin(δ/|c|)
at the origin. So the lift arg t := arg c + (the principal difference) satisfies |arg t − arg c| ≤ asin(|t − c|/|c|).
- With y = |t − c|/|c| ≤ d_k/m ≤ x_max < 1, and asin(y)/y = Σ c_n y^{2n} (cₙ > 0) increasing on [0, 1),
  asin(y) ≤ κ·y ≤ κ|t − c|/m.
- Summing the squares over each column gives ‖arg L − arg L_c*‖_F ≤ (κ/m)(Σ d_k²)^{1/2} = E.
- Then (Γ2) holds for any real lifts, since Γ_F depends on Q only modulo 2π entrywise. For actual zeros |t| = 1, so
  exp(i·arg L) = L.

The argument also works for |t| ≠ 1; unimodularity is used only in that last identification.

*Centre score.* `score_upper` (`gamma_test.py:104-111`) evaluates one alignment over Arb balls. For every point x* of
the ball x, |x* − 2πn| ≥ dist_{2π}(x*). So √(acc.upper)/15 bounds Γ_F at every point of the `PL` ball, L_c*'s
arguments included. If an L_c entry straddles the negative real axis, `acb.arg` returns a ball containing [−π, π].
The bound then only gets larger.

`ordering.py:91-99` matches §3 step for step. `m` and `max(dk)` are minima and maxima of exact binary64 points, and
`m > 0`, `xm < 1` and `xm > 0` are exact comparisons. κ is computed at `xm` ≥ the true x_max, which is valid because κ
is monotone. E and the result are rounded up.

## 2. The bound on Γ_F(K) and the use of (Γ2): PROVED

Γ_F(K) ≤ Γ_F(exp i·mid v0) + (2/5)‖V − mid v0‖_F ≤ centre + (2/5)(Σ pr_k²)^{1/2} (`ordering.py:100-101`, with
`prs` = up(pr)). The centre uses the witness's alignment over the v0 balls.

(Γ2) itself checks out. R kills row and column constants, so RX = R·h(X), where h removes the row and column means.
For h(X) = X, all cross terms of Σ_{i,k,j,l}(X_ij + X_kl − X_il − X_kj)² vanish. That leaves 144‖X‖², or 36‖X‖² over
i < k, j < l. So ‖RX‖ = 6‖h(X)‖_F. The circular distance is 1-Lipschitz entrywise, and a minimum over alignments of
1-Lipschitz functions is 1-Lipschitz. This gives the constant 6/15 = 2/5.

*hor() against the mean-zero gauge.* The code never uses the sharper hor() form. Both bounds use the weaker
(2/5)‖Q − P‖_F. That form holds for any real arrays, so it does not matter whether v0 or V is mean-zero. It only
matters that exp(iV) is K up to column phases, which the gauge paragraph of §1 establishes. There is nothing to
mismatch.

## 3. The lower bound on Γ_F(H) (ORDERING.md §4): PROVED

*`gamma_exact.table`* (`gamma_exact.py:25-41`):
- The binary64 phases p are exact Arb points.
- For each of the 225 plaquettes and each r ∈ {0, …, 5} it encloses d = Rp − rπ/3. It certifies e = |d − 2πn| < 2π
  (refusing otherwise), so dist_{2π}(d*) = min(e*, 2π − e*) for every d* in the ball.
- It takes m = min(lower(e), lower(2π − e)), set to 0 if not positive, as an exact point.
- It stores ⌊lower(m²·2⁴⁸)⌋ as an exact integer.

Every table entry is therefore at most the exact scaled squared distance.

*`score_lower`* (`gamma_exact.py:44-53`):
- v(a,b) mod 6 = ((a_i − a_k) mod 6)((b_j − b_l) mod 6) mod 6, and (π/3)·6 = 2π, so the gather
  `T[x, y, (a[x]·A[b][y]) % 6]` picks the right shift for all 14,400 alignments.
- The sums are exact int64. They are at most 225·π²·2⁴⁸ < 2⁶³.
- The result lo(√(best·2⁻⁴⁸)/15) is a binary64 number ≤ Γ_F(exp ip).

The flooring loses at most 225·2⁻⁴⁸ of cost, about 6·10⁻⁸ in Γ_F near 0 and negligible at Γ_F ≈ 0.5. My test first
flagged this and then confirmed it is exactly this loss.

*d′* (`ordering.py:72-74`). Per entry, d′ is the motion bound plus |Q₀,ᵢ − pᵢ|.upper over the whole centre ball, with
pᵢ = float(mid Q₀,ᵢ). Every H phase in the cell is within that of pᵢ. So
Γ_F(H) ≥ score_lower(p) − (2/5)‖Q − p‖_F ≥ lo(score_lower − (2/5)d′) = g_cell. Then g_h = max(0, g_cell), which is
valid because Γ_F ≥ 0.

`GT.prep` also computes PR #4's float-margin `score_lower` (`gamma_test.py:59-85`, 141-142). `dict(ctx, g_cell=…,
g_h=…)` (`ordering.py:76`) overwrites that result, so it never reaches acceptance. It can only refuse a leaf
(|P| ≥ 100), never accept one.

## 4. The implementation does what §3–4 state: PROVED

- **Arithmetic.**
  - Every bound is Arb or exact integer arithmetic. Each stored quantity goes through `up`/`lo`
    (`gamma_test.py:88-101`, `gamma_exact.py:56-61`): convert to the nearest binary64, then step outward until the
    point bounds the Arb endpoint.
  - An infinite or NaN endpoint gives ±inf or NaN. `Fraction()` then raises, and the node is FAILED. That fails
    safe.
- **Comparison.** `Fraction(bound) < g_h` (`ordering.py:41`) compares exact rationals strictly. A bound equal to g_h is
  refused (test), so ties stay in.
- **Floating point.** It only proposes. `best_alignment` runs only in `propose`, which the search uses. The checker
  takes (a, b) from the certificate. `round(float(x.mid())/2π)` in `score_upper` and `table` only chooses a winding,
  and any winding gives a valid bound, because |x − 2πn| ≥ dist_{2π}(x) and `table` checks e < 2π.
- **Witness shape.** `valid` (`ordering.py:31-35`) checks:
  - the keys are exactly {mode, a, b};
  - mode is L or K;
  - a and b are lists of ints, not bools, forming permutations with first entry 0.

  Bool entries, tuples, extra or missing keys and a bad mode are all refused (test).
- **Pattern bookkeeping** (`normal_form_leaf.py:42-56`).
  - A pattern goes to the ordering check only if its index is *exactly* a key of `orders`. Every other pattern is
    replayed by the normal-form witness.
  - An alias key such as `'03'` or `'+3'` therefore cannot remove pattern 3 from the replay. `'+3'` is refused by
    `isdigit`, and `'03'` leaves pattern 3 to the normal-form witness, which then fails (test).
  - The cliques, column tubes and model come from `RC.setup` on the record, never from the certificate. Stored
    `setup_roots` only propose the columns, and the tubes are valid for any proposal.
  - The per-colour cache depends only on the colour and on the leaf's fixed context.
- **Scope.** A leaf is MINIMUM-TRANSITION exactly when it holds an ordering witness. `verify` reports
  `scope='minimum-transition'` exactly when such a leaf exists (`verify.py:79`). `results/balls.tsv` lists exactly
  1035, 1217, 1622 and 2705.

**Tests.** I added [`tests/test_ordering.py`](../certifier/tests/test_ordering.py), with 16 tests:
- The pinned bounds against an independent float Γ_F over all 14,400 alignments, on 8 arrays: Fourier phases,
  Fourier phases perturbed by 10⁻⁹, ±40-fold windings, π·1, and random arrays.
  - `score_lower` ≤ Γ_F and ≥ √(cost − 225·2⁻⁴⁸)/15.
  - `score_upper` ≥ Γ_F at the point and at random points of a 10⁻³ ball.
- Outward rounding of `up` and `lo`.
- Invariance and the Lipschitz constant with hor().
- The transpose transfer (item 5) on a generic representative of the Fourier triple.
- Strictness of the comparison, and the witness shape.
- Four tampered certificates on ball 1622's level-9 cell: ordering witness removed, given under an alias key, under a
  `+` key, and for a pattern that does not exist. All are refused (OPEN).

Test results: the existing suite gives 37 passed (`python -m pytest tests`, 8 min 40 s, serial). The new file gives 16 passed (1 min 55 s).

**Released certificates** (read-only copies from `release_assets/`, never modified):
- **Counts.** The four certificates hold **147,157 ordering witnesses in 14,855 leaves**, all in mode L:

  | Ball | Witnesses | Leaves |
  |---:|---:|---:|
  | 1035 | 24,608 | 2,618 |
  | 1217 | 14,048 | 1,505 |
  | 1622 | 70,967 | 6,747 |
  | 2705 | 37,534 | 3,985 |

- **Cross-check on one level-2 leaf per ball.** The leaf verifies.
  - Γ_F(H) at 300 sampled points of the cell is always above g_cell, by 0.018–0.022.
  - Γ_F(arg(H*K/√6)) at 300 random (H, K) within the tubes, with random column phases, is always below g_up.
- **Margins** g_h − g_up over a random sample of 60 leaves per ball (2,674 witnesses): all positive.

  | Ball | Least margin | Median |
  |---:|---:|---:|
  | 1035 | 8.9·10⁻³ | 0.106 |
  | 1217 | 1.4·10⁻² | 0.123 |
  | 1622 | 1.4·10⁻³ | 0.130 |
  | 2705 | 7.2·10⁻⁵ (leaf 3_4_2_4_3, pattern 0) | 0.107 |

  Even the least margin is about 10¹⁰ times the binary64 and Arb rounding, which is near 10⁻¹⁵. A small margin
  means the rigorous bounds are close to each other, not that the decision is fragile.

## 5. Minimum-transition scope survives the conjugation and transpose transfers: PROVED

The atlas covers H only up to Γ = {id, conjugation, transpose, conjugate transpose} (`supp_body.tex:504`, PhaseCover
Lemma 5.1). A ball with minimum-transition scope classifies the triples (I, H, K) with H in the ball and
Γ_F(H) ≤ min(Γ_F(K), Γ_F(L)). Suppose a triple's minimising transition H′ = g(H), with H in such a ball. The transfers
take its triple to one whose first transition is H. They keep that transition minimal because each acts on the three
scores by a permutation that fixes the first:
- **Conjugation.** (I, H, K) ↦ (I, H̄, K̄). The transitions become H̄, K̄ and L̄.
- **Conjugate transpose** (basis exchange). (H, I, K), multiplied on the left by H^*, gives (I, H^*, L). The
  transitions become H^*, L and (H^*)^*L/√6 = K.
- **Transpose** (basis exchange, then conjugation). This gives (I, H^T, L̄). The transitions become H^T, L̄ and
  conj(H)·L̄/√6 = K̄ (checked numerically in the tests).

Γ_F is invariant under conjugation, transpose and adjoint (Γ1: plaquettes remove phases, translations mod 6 restore
a₁ = b₁ = 0, and negating or exchanging the label sets gives conjugation and transpose). So the first score is fixed
and the other two are fixed or exchanged. The condition (eq:minimum-transition) is symmetric in K and L, so it is
preserved. Row and column operations on H act on K and L by row and column phases, permutations and adjoints, so
they preserve it too. Tao's class has no third basis, so a triple whose minimising transition is Tao's does not
exist.

The SM proof of the lemma (`supp_body.tex:738-741`) says the transfers "preserve both recognized types". It does not
say they preserve the minimality condition. The paragraph above is the missing sentence: an expository point, with
no new mathematics.

## 6. Statements to correct (no effect on soundness)

1. **`methods.tex:219` and the README/ORDERING.md** say that "a few near-miss patterns … resolve under neither test at
   any cell size".
   - The certificates hold 147,157 ordering discharges in 14,855 leaves, at levels 2–4.
   - `search/normal_form.py:55-57` uses the witness wherever the normal-form witness leaves a pattern open *in the
     current cell*. It does not wait until refinement is exhausted.

   Suggested wording: "In four of the 2,775 seed balls, patterns along a nearly flat direction are not resolved by
   either test at the cell sizes used; there a pattern may instead be discharged …". A count could also be given.
2. **`supp_body.tex:1053`** says "30 with minimum-transition scope". It is **4**: 1035, 1217, 1622 and 2705
   (`results/balls.tsv`, README).
3. **`supp_body.tex:1044`** says that an ordering certificate "also stores the three score bounds". It stores only
   the witness, a mode (L or K) and an alignment (a, b). The checker *recomputes* g_H and the chosen bound from the
   record. Suggested wording: "also stores, for each such pattern, the transition (K or L) and one alignment; the
   checker recomputes g_H and that bound and verifies Eq. (ordering-discharge)".
4. **ORDERING.md §2–3** leave out terms the code includes:
   - The radius of the centre balls: rad Q₀,ᵢ in d_H, and Σₐ rad v0ₐ in pr_k.
   - The fact that H_c and K_c denote the midpoints exp(i·mid Q₀) and exp(i·mid v0).
   - That the lower bound ignores the sharper ‖hor(·)‖ form. Also, the "|t| = 1" premise is needed only to identify
     exp(i·arg L) with L.

   The status line can now cite this review.

## Summary for citation

The minimum-transition ordering argument was refereed independently on 3 November 2026
([`proofs/REVIEW_ORDERING.md`](REVIEW_ORDERING.md)). It is used in four of the 2,775 seed balls (1035, 1217, 1622,
2705), where 147,157 patterns are discharged by comparing the labelled Fourier score Γ_F of the transitions.

The review checked each step by hand:
- the invariance, Lipschitz and minimum-transition statements, and that the minimality condition is preserved by the
  conjugation and transpose transfers of the cover;
- the upper bound on Γ_F(L) for L = H*K/√6: the column-phase gauge, the operator-norm bound, the motion d_k, and the
  argument bound asin(x)/x on disks avoiding zero;
- the bound on Γ_F(K);
- the exact lower bound on Γ_F(H): integer arithmetic over all 14,400 alignments, with the distance from the cell to
  the binary64 centre.

It also confirmed that the code computes every quantity in Arb or exact arithmetic, rounds outward, and accepts only
on a strict comparison of exact rationals, so ties are never discharged and floating point only proposes. It found no
gap. The independent cross-checks and tampered-certificate tests all passed. The only corrections are to descriptive
text: how many patterns use the argument, and the stale count of minimum-transition balls in the SM.
