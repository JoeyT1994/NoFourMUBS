# The native certifier's independent review, and what changed

The native whole-ball certifier (`proof/theorems/TC_triple_classification/family_neighbourhoods/run.py`, binding
`aaab342c…`) and its recognition argument were reviewed independently on 1 November 2026. The full return is
`handoffs/ret_TC_native_review_20261101/` (not in the repository; `REVIEW.md` there answers the sixteen questions of the
brief).

**Verdict.** The native all-completions argument is sound for a record's own analytic Hadamard branch, given C1, the
normal-form theorem and Stage C's error theorem with its input hypotheses.
- **Recognition:** the global cyclic normalisation, the Fourier block form (22) for every symmetric triple, the
  amplitude bounds, and the product case.
- **Covariance:** exact, checked over all 432,000 legal actions.
- **Averaged symmetry bound:** checked term by term.
- **Cover, contraction and exclusion code:** checked.
- **Native tests:** the 11 supplied tests pass.

## F1 (major): a cell record's branch must be identified with the ball's

A record built for a dyadic cell (`build_record`) is checked to contain the cell in seed coordinates
(`cell_geometry`). That does not show that the record's analytic branch is the original ball's, so a certificate on
the record did not yet carry over to the ball's matrices. This affects every leaf below level 0, native and plane;
the one-leaf native certificates (level 0, the original record) are unaffected.

**Repair, now in the checker.** `code/branch_overlap.py` checks, for every leaf below level 0, the sufficient
condition of the review's overlap lemma (`subcell_overlap_lemma.md` of the return). Take one seed θ* strictly
inside both balls, a peripheral row/column permutation Π (rows and columns 3–5) and an integer phase matrix N. Then
the following implies that the two branches agree, up to Π and phase gauges, on the whole common seed domain:

  ‖X_p⁺ (Π p_c(w_c) + 2π h(N) − p_p(w_p))‖ + ‖X_p⁺ Π X_c‖ τ_c < τ_p.

So the record's all-K classification or emptiness holds for every matrix of the ball over the cell.

For cells of levels 1–2 the record is about as large as the ball (τ_c close to τ_p) and this bound cannot close. The
checker then uses a centre form of the same lemma: at a record's own centre its actual point is its certified centre
Hadamard matrix, enclosed by the normal form's Q0, so the τ term drops. Since the lemma's conclusion is an equality,
the roles of the two records may be exchanged. The centre form is our sharpening of the reviewer's lemma; its
justification is in `branch_overlap.py`'s docstring.

A corner cell meets the ball only at its boundary, so its record ball is almost tangent to the original ball and the
two balls share no interior point. For such a cell the original ball's normal form is certified on a radius 1% (or
5%) larger. Its centre data Q0, U, H2 and X do not depend on the radius. On the original ball its branch is the
original branch, by uniqueness in the larger tube. The first rechecks refused 29 corner cells of balls 550, 2536 and
1850 at level 3, and the larger normal form identifies all 29, with margins of 2–6 times.

`onetree.py` requires the witness in `leaf_check` and `native_check` below level 0, and `check.json` records its hash
(`checker_sha256`).
- **Tests:** `code/test_branch_overlap.py` identifies cells of levels 1–8 on three balls, every form, in 0.1–0.2 s
  each, with margins of 3–8 times, and it refuses a record of another ball.
- **Recheck:** every tree certificate is being re-checked with the witness.

## F2 (minor): conjugation is not needed in recognition

The recognition argument related the two quadratic signs of the product case "by simultaneous conjugation", which an
equivalence without antiunitaries does not allow. The return replaces it with an explicit unitary. With D_σ =
diag(ω^{σt²}) and P_σ e_s = e_{σs},

  F₃ D_σ F₃ = iσ D_{−σ} F₃ P_σ D_{−σ},

so the common unitary H₂ ⊗ F₃, followed by exchanging the first two bases, takes the product triple of one sign to
the other, up to column monomials. The return checks these identities in exact integer rings. The classification's
equivalence therefore needs only unitaries, column monomials and permutations of the three bases. The theorem
statement should say that permutations of the three bases are allowed.

## F3 (minor): the symmetry bound is an averaged derivative estimate

The default q of `moving_symmetry.py` bounds the integrated derivative on the segment from the group average to the
solution (`family_neighbourhoods/PROOF.md` §6), not every Jacobian along it (§4's older route). The review checked
the averaged inequality term by term. The proof document should present §6 as the theorem.

## Remarks

- **R1.** A bare `run_ball` row does not evaluate Stage C's input preconditions. `onetree.py` always runs
  `stagec_guard.check` after the native call and refuses the leaf if it fails, so every native leaf has the gate.
- **R2.** The reviewer could not replay atlas balls, because the atlas file was not in the package. `onetree.py check`
  replays every native leaf against the pinned atlas.
