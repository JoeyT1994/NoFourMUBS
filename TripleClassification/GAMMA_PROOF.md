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
- **Patterns:** a complete set of six-colour patterns covering every third basis K. The cover's binary64 error budget
  needs the Stage C magnitude preconditions, so a cell closed by a score rule must pass them too (§5).
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

## 4. Arithmetic, and the threshold for H

**All in Arb.** `code/gamma_test.py` computes every quantity of §3 in Arb:
- m and d_k;
- x_max, κ = asin(x)/x (which increases on [0, 1)) and E;
- the centre scores, by one alignment, evaluated in Arb.

The centre balls' own radii are added to d_H and to pr_k, so the bound holds about a fixed centre point. Each upper
bound is stored as a binary64 number rounded outward, written in hex. The minimum and maximum are taken by exact
comparisons of those binary64 endpoints.

**The threshold for H, per cell.** (Γ4) needs a lower bound of Γ_F(H) over the cell only, not over the whole original
ball. It takes the larger of two bounds:
- the ball's certified bound (Γ5);
- this cell's bound, Γ_lo(H_c) − (2/5)·d_H. Here Γ_lo(H_c) is a lower bound at the centre's binary64 phases,
  minimised over all 14,400 alignments. Each coordinate is computed in float64 within an absolute error DELTA = 10⁻¹²:
  the inputs are exact binary64 with |P| < 100, and only a few roundings occur per plaquette. The circular distance is
  1-Lipschitz, so Σ max(0, dist − DELTA)² is at most the exact cost. The float sum of 225 terms is scaled by
  (1 − 10⁻⁹), and the square root is taken in Arb. On test matrices this bound is within 10⁻¹⁰ of the upper bound.

## 5. The discharge rules and what the auditor checks

An open pattern is discharged in either of two ways:
- **fourier:** its upper bound min(Γ_F(L), Γ_F(K)) is at most 19/50. By (Γ3), every zero in the pattern lies in a
  classified triple.
- **ordering:** that upper bound is below the cell's threshold for H (§4). By (Γ4), the pattern is not this ball's
  task.

**Scope.** Ordering closures hold in the restricted sense of (Γ4), so the global theorem needs every ball closed in
that sense. Fourier closures count unconditionally, subject to (Γ3)'s hypotheses.

**Score-first certification.** `code/score_first_run.py` runs the frozen certifier on sub-balls. Inside `run_ball`, it
scores each pattern with `gamma_test.pattern` before the frozen per-pattern step. A discharged pattern skips the
expensive certification and is recorded as DISCHARGED. Every other pattern goes through the frozen step unchanged.
Its row and score receipt are bound to its own hash and to `gamma_test.py`'s.

**What the auditor checks.** `code/audit_select.py` treats a cell the certifier left open as closed only when all of
the following hold:
- **the row:** C1 ok and the normal form CERTIFIED;
- **a matching score receipt** for the same:
  - sub-atlas hash;
  - record hash;
  - certifier binding;
  - pinned `gamma_test.py` hash;
  - certifier-closed patterns, which also pass the usual q < 1 checks;
  - pattern count;
- **every remaining pattern discharged,** re-derived in exact rational arithmetic from the receipt's binary64 upper
  bounds:
  - against 19/50;
  - against the larger of the pinned ball bound (`gamma_lower.json`, hash-checked) and the receipt's cell bound.

The receipts' true/false flags are not used.

**Stage C.** A discharged cell relies on the certifier's complete cover, as a certified one does, so the assembly
(`code/assemble.py`) and `code/verify_ball.py` require its Stage C PASS as well. The auditor lists the cells it
discharged for this. *Correction, 29 October 2026, 16:10:* until then only CERTIFIED rows were required to pass;
the sidecar now also checks the open rows, and closures that used the score are recounted once their rows pass.

**Trees.** A layer may omit the children of cells a score receipt closes (`code/tree_build.py`). Its target mask must
lie between:
- the cells the audit still needs;
- all the cells the certifier left open.

When a sub-ball carries two full receipts (a resumed run), the closed one is kept, or else one listing all its
patterns, and it is checked in full. A score receipt may list only some of a cell's open patterns; the others then
need another rule. For
each ball, the assembly prefers the tree using the fewest added ingredients:
1. the certifier alone;
2. then the Fourier rule;
3. then the ordering rule;
4. then anchored-column exclusions (`ANCHORED_PROOF.md`), with any remaining patterns discharged by the score.

## 6. Points for the reviewer

1. §3: the operator-norm bound on H_c; the use of ‖K_k‖ = √6 for actual zeros; the asin step and the branch choice.
2. Whether pr_k (`phase_radius` from `native_columns.contract`) bounds ‖V_k − v0_k‖₂ for every actual zero in the
   pattern over the whole sub-ball, in the mean-zero gauge used by v0.
3. That h_i correctly bounds each entry's phase motion from the normal-form model, using the same norms as
   `native_columns.build`.
4. That (Γ3) and (Γ4) are used within their stated hypotheses, and that no Γ_F-closed ball is among the 39 that (Γ3)
   needs.
5. §4: the float64 margin DELTA for the exhaustive centre bound, and that the per-cell threshold is a valid lower
   bound of Γ_F(H) over the cell.
6. That wrapping `run.final_pattern` in `score_first_run.py` leaves the frozen certifier's verdict logic intact for
   every pattern it does not discharge. *Correction, 29 October 2026:* the frozen step calls `final_pattern` again
   with `allow_fine=False` on a refined cover, and the wrapper in `score_first_run_v0.py` and `_v1.py` did not accept
   that argument. Every sub-ball reaching the fine path therefore ended NOT ESTABLISHED with a TypeError and no
   pattern list: fail-closed, no verdict changed, but those cells could not be closed. The current runner passes the
   inner call straight to the frozen step. Its score-only mode (`TC_SCORE_ONLY=1`) records undischarged patterns as
   NOT ESTABLISHED without certifying them, and the incomplete rows are being rerun that way.
