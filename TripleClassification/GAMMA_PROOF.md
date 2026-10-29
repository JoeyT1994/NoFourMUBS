# Discharging open patterns with the labelled Fourier score

*Draft for review. The inputs labelled **RETURN** are from the collaborator's 29 October returns (`TC_ordering_result`,
`TC_questions_3_4_results`); the bound in §3 is new here and needs checking.*

## 1. The score and its two uses

Unit-entry Hadamards. For a real 6×6 phase array Q, the plaquette vector RQ ∈ ℝ²²⁵ is

    (RQ)_(ik;jl) = Q_ij + Q_kl − Q_il − Q_kj   (i < k, j < l).

For labels a, b, each a permutation of 0, …, 5 with first entry 0 (14,400 alignments in all), put
v(a,b)_(ik;jl) = (a_i − a_k)(b_j − b_l). The **labelled Fourier score** is

    Γ_F(exp iQ) = (1/15) min_(a,b) ‖ dist_2π( RQ − (π/3) v(a,b) ) ‖₂.

**RETURN, PROVED:**
- **(Γ1) Invariance.** Γ_F is invariant under row and column phases, permutations, conjugation, transpose and
  adjoint. It vanishes exactly on the Fourier class.
- **(Γ2) Lipschitz bound.** For real arrays P and Q,
  |Γ_F(exp iQ) − Γ_F(exp iP)| ≤ (2/5)‖hor(Q − P)‖_F ≤ (2/5)‖Q − P‖_F.
- **(Γ3) Fourier neighbourhood.** Every MUB triple with a transition T satisfying Γ_F(T) ≤ 19/50 is classified.

  This assumes:
  - the atlas covers every Hadamard class;
  - the X-ball and the 2,373 whole-ball certificates hold;
  - Tao's S₆ has no third basis;
  - the 39 listed split balls are closed.

  On our single route all 39 are closed by certifier-only trees (`results/balls.tsv`), which use no Γ_F discharge,
  so (Γ3) is not circular.
- **(Γ4) Minimum-transition reduction.** It suffices that each seed ball classify the triples whose first transition
  H has Γ_F(H) ≤ Γ_F(K) and Γ_F(H) ≤ Γ_F(L), where L = H*K/√6. A pattern may therefore be discharged when, over the
  whole pattern, min(Γ_F(K), Γ_F(L)) < Γ_F(H) strictly. Ties stay in.
- **(Γ5) Lower bounds on H.** For each of the 402 seeds not closed directly, the return gives a certified lower bound
  of Γ_F(H) over the whole original ball: an exhaustive 14,400-alignment computation at the centre, minus (2/5) of
  the C1 phase radius. All 56 open balls have a bound of at least 0.502.

  A sub-ball lies inside its original ball, so the bound applies to every cell.

## 2. What a pattern provides

For a sub-ball record, the frozen certifier computes three things (**INHERITED**):
- **H's enclosure:** Q(w) = Q₀ + U·w + ½H₂[w,w] + X·ξ, with ‖w‖ ≤ r and ‖ξ‖ ≤ τ. This needs C1 ok and the normal form
  CERTIFIED, which the auditor requires.
- **Patterns:** a complete set of six-colour patterns covering every third basis K.
- **Column bounds:** for each pattern and column k, every actual zero has column phases V_k (mean-zero gauge) with
  ‖V_k − v0_k‖₂ ≤ pr_k (`phase_radius`).

**H's motion.** Write H_c = exp(iQ₀) and h_i = ‖U_i‖·r + ‖H₂,i‖·r²/2 + ‖X_i‖·τ for the 36 entries. Since
|e^{ia} − e^{ib}| ≤ |a − b|, it follows that ‖H − H_c‖_F ≤ (Σ h_i²)^{1/2} =: d_H.

## 3. The bound on L = H*K/√6 (new; please check)

Let K_c have columns exp(i v0_k), and put L_c = H_c*K_c/√6, computed as an acb matrix. For an actual zero, column k of
L − L_c is

    H_c*(K_k − K_ck)/√6 + (H − H_c)*K_k/√6.

- **First term.** ‖K_k − K_ck‖₂ ≤ ‖V_k − v0_k‖₂ ≤ pr_k, and ‖H_c‖_op ≤ (6 + ‖H_c*H_c − 6I‖_F)^{1/2}. Put
  s = ‖H_c‖_op/√6 bounded this way, so the first term is at most s·pr_k.
- **Second term.** K_k has norm √6 because K/√6 is unitary, so the second term is at most ‖H − H_c‖_op ≤ d_H.

So ‖(L − L_c)_k‖₂ ≤ d_k := s·pr_k + d_H.

**From complex errors to phases.** Every entry t of the actual L has |t| = 1. For an entry c of L_c with |c| ≥ m > 0
and |t − c| < |c|, the angle satisfies |arg t − arg c| ≤ asin(|t − c|/|c|). Since asin(x)/x increases on [0, 1),
with x_max = max_k d_k/m < 1 and κ = asin(x_max)/x_max, this gives |arg t − arg c| ≤ κ|t − c|/m. Summing squares
over the entries:

    ‖arg L − arg L_c‖_F ≤ (κ/m)(Σ_k d_k²)^{1/2} =: E,

with each angular difference taken in (−π, π].

**Conclusion (by Γ2).** Taking P = arg L_c and Q = arg L, entry by entry, with representatives within π:

    Γ_F(L) ≤ Γ_F(exp i·arg L_c) + (2/5)·E.

The first term is bounded above by evaluating one alignment, chosen by a floating-point search, in Arb. Any single
alignment bounds the minimum from above.

**K, directly.** The entries of K are exp(iV), so ‖V − v0‖_F ≤ (Σ_k pr_k²)^{1/2}, and

    Γ_F(K) ≤ Γ_F(exp i·v0) + (2/5)(Σ_k pr_k²)^{1/2}.

The column gauge and the mean-zero normalisation are harmless by (Γ1).

## 4. The discharge rules

`code/gamma_test.py` computes these bounds for every pattern the certifier did not close. That includes all patterns
of a timed-out row beyond the ones it finished. It records each open pattern as:
- **fourier** when min(bound on L, bound on K) ≤ 19/50; by (Γ3), every zero in the pattern lies in a classified
  triple;
- **ordering** when the minimum is below the ball's certified Γ_F(H) lower bound; by (Γ4), the pattern is not this
  ball's task.

**Scope.** Ordering closures are valid in the restricted sense of (Γ4). The global theorem then needs every ball
closed in that sense. Fourier closures count unconditionally, subject to (Γ3)'s hypotheses.

## 5. What the auditor checks

`code/audit_select.py --gamma … --gamma-sha … --gamma-rules …` treats a cell that the certifier left open as closed
when all of the following hold:
- its row has C1 ok and the normal form CERTIFIED;
- a gamma receipt, produced by the pinned `gamma_test.py`, names:
  - the layer's sub-atlas hash;
  - the record's SHA-256;
  - the certifier row's binding;
- the receipt's set of certifier-closed patterns equals the row's, and those patterns pass the usual q < 1 checks;
- its open patterns are exactly the rest of the recomputed pattern list;
- every one of them is discharged under an allowed rule.

The tree logic is otherwise unchanged. A layer still refines every cell the certifier left open, but cells under a
closed ancestor are not needed. The assembly prefers, for each ball, the tree using the fewest added ingredients:
1. the certifier alone;
2. then the Fourier rule;
3. then the ordering rule.

## 6. Points for the reviewer

1. §3: the operator-norm bound on H_c; the use of ‖K_k‖ = √6 for actual zeros; the asin step and the branch choice.
2. Whether pr_k (`phase_radius` from `native_columns.contract`) bounds ‖V_k − v0_k‖₂ for every actual zero in the
   pattern over the whole sub-ball, in the mean-zero gauge used by v0.
3. That h_i correctly bounds each entry's phase motion from the normal-form model, using the same norms as
   `native_columns.build`.
4. That (Γ3) and (Γ4) are used within their stated hypotheses, and that no Γ_F-closed ball is among the 39 that (Γ3)
   needs.
