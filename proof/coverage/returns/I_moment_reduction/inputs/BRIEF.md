# Handoff: the "exact moment reduction" of the draft paper, Section II

## The task

Our draft paper (`reference/draft_paper_main_body.tex`, Section II, paragraph "All other candidates reduce to
Fourier", lines ~105–140) uses an identity, its Eq. (sos), that it attributes to "SM Proposition S.7". We do not have
that proposition or any proof of it. Prove it from scratch and deliver an exact, replayable certificate.

**Definitions.** H is a 6×6 complex matrix with |H_ij| = 1. Rows and columns are indexed 1..6; I, J range over the
twenty 3-subsets, and Iᶜ, Jᶜ are complements. H[I,J] is the 3×3 block on rows I and columns J.

- For a 3×3 phase block X: Ψ(X) = perm(X) · det(X)² / Π_{a,b} X_ab. (perm has the determinant's six terms without
  signs. Ψ is unchanged by row and column phases, permutations and transposition.)
- 𝒟(H) = (1/400) Σ_{|I|=|J|=3} |Ψ(H[I,J]) − conj Ψ(H[Iᶜ,Jᶜ])|². (400 = 20².)
- S(H) = the average, over all 120 × 120 = 14,400 ordered 3×3 submatrices X = H[(r1,r2,r3),(c1,c2,c3)] (ordered
  distinct rows, ordered distinct columns), of X12 X13 X21 X23 X31 X32 / (X11 X22 X33)².
  Equivalently S = (1/400) Σ_{I,J} (1/6) Σ_σ P_X / Π_a X_{a,σ(a)}³ with X = H[I,J], P_X = Π X_ab, σ over the six
  bijections I → J. This "pairs of ordered triples" reading is ours; it is the one under which F6 gives 30 S = 3.
  S is invariant under row and column phases, permutations and transposition; conjugating H conjugates S.
- Fourier moments: M_I(H) = (1/6) Σ_j Π_{a∈I} H_aj · Π_{d∈Iᶜ} conj(H_dj), and M_I(Hᵀ) the same on columns.

> **Statement (draft Eq. (sos)).** Let H be an order-6 complex Hadamard matrix (|H_ij| = 1, HH† = 6I). Assume
>
> (V) M_I(H) = 0 and M_I(Hᵀ) = 0 for all twenty 3-subsets I, and
>
> (C) Ψ(H[I,J]) = Ψ(H[Iᶜ,Jᶜ]) for all |I| = |J| = 3 (unconjugated: the draft's Eq. (complement)).
>
> Then 𝒟(H) + (30 Re S(H) − 3)² = 0, that is, 𝒟(H) = 0 and Re S(H) = 1/10.

Under (C) one has 𝒟(H) = (1/100) Σ_{I,J} (Im Ψ(H[I,J]))², so the conclusion says: every Ψ(H[I,J]) is real and
Re S(H) = 1/10. The draft calls this an "exact rational moment reduction", which suggests a certificate expressing
400·𝒟 + 400·(30 Re S − 3)² (as a Laurent polynomial in the 36 entries, using conj H_ij = 1/H_ij) through the
hypothesis polynomials with explicit rational cofactors. We do not know that such a certificate exists in that
form. Prove the statement in whatever exact form you can, and state precisely which form you proved (pure
implication; ideal membership with explicit multipliers; a certificate with added sums of squares; etc.).

## What the numerics say (read this first) — NUMERICAL

`check/check_moment_reduction.py` (numpy only) reproduces all of this on F6, Tao, three members of the Fourier family
F6^(2)(a,b) and its transpose, and 200 atlas centres. We also ran it on all 12,021 atlas centres (the centres are
non-Tao Hadamards to ~1e-13; their Fourier moments vanish to ~5e-14).

1. **F6 satisfies both hypotheses, and the conclusion holds**: 𝒟 = 0, U = 0, Re S = 1/10 (to 1e-15), so the left
   side is 0. Here U(H) = (1/400) Σ |Ψ(H[I,J]) − Ψ(H[Iᶜ,Jᶜ])|² measures failure of (C).
2. **Tao's S6 satisfies (C) exactly** (U = 0) but not (V) (max |M_I| = 1/2). There 𝒟 = 2187/10, S = −7/20 and the left
   side is 8019/20 (values to 1e-12). So **(V) is necessary**: orthogonality and (C) alone do not give the
   conclusion.
3. **𝒟 = 0 at every non-Tao Hadamard tested** (max 1.6e-24 over all 12,021 centres). This is not a coincidence: return
   H §2 proves conjugate equality Ψ(H[I,J]) = conj Ψ(H[Iᶜ,Jᶜ]) at every corner of every non-Tao Hadamard (see
   below). Hence on non-Tao Hadamards the left side is just (30 Re S − 3)².
4. **(C) fails at every atlas centre**: U ranges over [0.021, 51.2] (the minimum 0.021 is centre 877, next to F6).
   Without (C) the left side is not zero: over all 12,021 centres Re S ∈ [1/30, 1/10] (Im S = 0 to 1e-15), so the left
   side ranges over [0, 4]. The value 4 (Re S = 1/30) is attained at centre 11226, where U = 51.2. The ratio
   (left side)/U is not constant (from ~0 to 0.078). So **(C) is necessary**. The statement is not an identity on
   Hadamards with vanishing moments. It is an implication, and any certificate must use (C) essentially.
5. **Re S = 1/10 does not characterise F6.** Re S = 1/10 holds on the whole Fourier family F6^(2)(a,b) and its
   transpose, where (V) holds, 𝒟 = 0, and (C) fails (U between 8 and 28 in our samples). Atlas centres 154 and 11344
   (left side ~1e-14) are of this kind. Re S was never above 1/10, so the second term appears to say "Re S is at its
   maximum". The content is in combining it with (C).
6. **A relation for Re S** (offered as a hint; it holds to 3e-15 on 800 atlas centres, F6 and F6^(2), and fails for
   Tao by −3/20):

       (R)   Re S = −41/10 + (5/54)·⟨Re Ψ⟩ + (1/36)·⟨g²⟩ − (1/162)·⟨g · Re Ψ⟩,

   averages ⟨·⟩ over the 400 blocks X = H[I,J], g = |det X|². (⟨g⟩ = 54/5 follows from Cauchy–Binet alone.) Since
   (R) fails at Tao, it presumably needs (V). This is the kind of reduction "modulo the moments" the draft's name
   suggests.
7. **No counterexample is possible numerically.** The only Hadamards known to satisfy (V) and (C) are the F6 class
   (see the next section for why, given proved results). The statement holds there. Numerically the statement is
   neither false nor ill-posed, but numerics cannot test it beyond F6. The value of a proof lies in its exact algebra.

## Why the paper may not need this identity

The draft uses Eq. (sos) only to obtain 𝒟(H) = 0, i.e. conjugate equality Ψ(H[I,J]) = conj Ψ(H[Iᶜ,Jᶜ]). With (C)
this makes every Ψ real, so R = 4(Im Ψ(B))² = 0 at every corner (all-critical), hence Fourier. The (30 Re S − 3)²
term is never used. The last step is proved in Lean as `PRM.strictCornerCoverage` (`lean/NoFourMUBs/Final.lean`,
statement in `PRM/Defs.lean`): every Hadamard not equivalent to F6 has a 3×3 block, after row and column
permutations, whose side signature (= −Ψ) has nonzero imaginary part.

Return H (`reference/returns/H_fourier_vanishing_REPORT.md`, §2) already proves conjugate equality at every corner
of every non-Tao Hadamard, including singular and non-strict corners: 𝒟(H) = 0 unconditionally for non-Tao H. It is
proved in Lean (`allCornersMatched` in `lean/NoFourMUBs/FourierVanishing/Corners.lean`, feeding
`NoFourMUBs.FourierVanishing.fourierVanishing`; see `reference/returns/H_fourier_vanishing_REVIEW.md`). It uses the
strict nonmatched converse ("strict nonmatched corner ⇒ Tao") and the side identities. The Fourier vanishing that
supplies (V) already depends on the same inputs, so a direct moment reduction would not remove any dependency from
the paper. So, as far as we can see, Section II could cite return H §2 together with Eq. (complement) and skip
Eq. (sos).

**We ask you to check this assessment and say plainly in REPORT.md whether Eq. (sos) is needed for the paper's
argument. In any case, prove the statement as given above.**

## What you may use

1. **Hadamard orthogonality**: |H_ij| = 1 and HH† = H†H = 6I, with everything that follows by algebra (for example
   H⁻¹ = H†/6, |det H| = 216, Jacobi's complementary-minor formula, Cauchy–Binet). Return H §§3–4 proves several such
   facts with certificates; you may reuse them with citation.
2. **The Fourier vanishing**, as hypothesis (V). It is now proved for every non-Tao Hadamard (return H,
   `reference/returns/H_fourier_vanishing_REPORT.md`; Lean `NoFourMUBs.FourierVanishing.fourierVanishing`).
3. **Eq. (complement)**, as hypothesis (C). Its proof in the draft (SM Proposition S.6) is not part of this task.

Your primary proof should use only 1–3: that is what "moment reduction" means. If you cannot avoid other inputs, for
example return H §2 (conjugate equality for non-Tao H) or strict-corner coverage, say exactly where they enter and
label that version separately. If you find that the statement cannot follow from 1–3 alone, say so and give the
evidence. Examples would be a point of a relaxation satisfying (V) and (C) where it fails, or an obstruction to the
claimed certificate form.

**Do not import** the classification [CT] (or any classification of order-six Hadamards), OpenAI's results, or any
unproved statement. This includes their "Fourier vanishing" formalisation; use return H instead. Do not cite the
missing SM Proposition S.7.

## A suggested route (yours to change)

1. **Normalise.** All hypotheses and both terms of the conclusion are invariant under row and column phases and
   permutations. Re S is invariant under conjugation and transposition. So you may dephase.
2. **Laurent form.** With conj H_ij = H_ij⁻¹, the quantities 400·𝒟, 14400·S, the moments and the complement
   residuals Ψ(H[I,J]) − Ψ(H[Iᶜ,Jᶜ]) are Laurent polynomials in the 36 entries; conj Ψ(X) is Ψ evaluated at the
   entrywise inverses, again a Laurent polynomial. Orthogonality is the 15 row relations Σ_j H_aj/H_bj = 0 (a < b),
   with the 15 column relations available as a consequence.
3. **Reduce.** Under (C), 𝒟 = (1/100) Σ (Im Ψ)². Look for an exact relation of the form
   (1/100) Σ (Im Ψ)² + (30 Re S − 3)² = Σ_k c_k h_k (+ squares you can sign), where h_k are the orthogonality,
   moment and complement polynomials and c_k are explicit. Relation (R) suggests first reducing S to block
   statistics (Re Ψ, g = |det|²) modulo (V) and orthogonality, using Jacobi to pair H[I,J] with H[Iᶜ,Jᶜ]
   (|det H[Iᶜ,Jᶜ]| = |det H[I,J]|). Symmetry (the 720² permutations, transpose) should cut the bookkeeping down.
4. **Sanity anchors.** Your certificate must evaluate to zero at F6. It must fail at Tao (which violates (V) only). It
   must not force Re S = 1/10 without (C) on generic Hadamards. It is consistent with Re S = 1/10 on F6^(2).

## Deliverables

Return a folder (zip) with:
- `REPORT.md`: the statement in the exact form proved, the proof, and a clear label on every claim: **PROVED**
  (paper proof), **CERTIFIED** (exact computation), **NUMERICAL** (evidence only), or **NOT ESTABLISHED**. Include a
  dependency list naming exactly which of inputs 1–3 (or anything else) are used, and a short section "Is Eq. (sos)
  needed for the paper?" with your answer.
- An exact verifier, `verify.py`, in integer or rational arithmetic (the standard library is preferred; SymPy or
  python-flint are fine). It must replay every certificate from scratch, regenerate its targets from the definitions,
  and exit nonzero on failure. Include its transcript.
- Certificates in a form a Lean kernel checker could replay later: polynomial (or Laurent polynomial) identities with
  explicit integer or rational cofactors, and no floating point in any acceptance test.
- `SHA256SUMS` for the returned files.

## Files in this handoff

- `BRIEF.md`: this file.
- `check/check_moment_reduction.py`, `check/atlas_centres_sample.json`: the numerical check. It needs numpy and runs in
  under a second: `python3 -I check/check_moment_reduction.py`. It prints the table behind the list above and exits 0
  if the pattern holds. The sample has 200 atlas centres, including 0, 154, 877, 878, 11226 and 11344.
- `reference/draft_paper_main_body.tex`: the draft. Eq. (psi), (complement), (defect), (sos) and the definition of
  S are in Section II.
- `reference/returns/H_fourier_vanishing_REPORT.md`: return H, the proved Fourier vanishing. §2 gives conjugate
  equality, §§3–4 give the Ψ identities and Jacobi.
- `reference/returns/H_fourier_vanishing_REVIEW.md`: our review of return H and its Lean status.
- `SHA256SUMS`.
