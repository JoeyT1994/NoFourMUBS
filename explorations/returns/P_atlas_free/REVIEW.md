# Review of return P (17 Oct 2026)

**Return:** `P_atlas_free_return.zip` (550 KB; SHA-256 `12d5b87d…201d`, in
`proof/coverage/returns/SOURCE_ZIPS.sha256`), from handoff P (`../../handoffs/P_atlas_free/BRIEF.md`). Kept here without
its `provenance/` folder (copies of our own inputs); the original zip is kept outside git, and its `verify_all.py`
should be run from the unpacked original, since `SHA256SUMS` also lists the provenance files.

## Claims (the return's labels)
- **Global A, C, F, F′: NOT ESTABLISHED.** The atlas stays.
- **PROVED / CERTIFIED:** the exceptional product triple I, F₂⊗F₃, diag(1, ω, ω, i, iω, iω)·F₂⊗F₃ has full Jacobian
  rank 55 (exact inverse over ℚ(√3)), hence a closed isolation cube of radius 1/256; with return L's component theorem,
  the continuous component and the product class are each complete components, so B holds and the remaining targets
  are **A + C**.
- **PROVED / CERTIFIED:** at the Fourier pair with D = diag(1, 1, i), exactly 48 common rays and eight companion bases,
  locally complete in the two Fourier parameters (no explicit radius).
- **PROVED:** on the Fourier-free domain the common-ray algebra has length 252 − 2Z₂(H) (≤ 252 physical rays), and the
  Fourier-free triple and quartet spaces have real dimension ≤ 4.
- **PROVED / CERTIFIED:** stronger necessary quartet inequalities (λ_min(Q^Γ) ≤ −(√10 − 3)/6, rank S ≥ 17, a triangle
  bound).
- **Corrections to the brief** (accepted, and fixed in the brief): Lemma 0's product must range over all **400**
  positional 3×3 minors (or return L's thirty-factor predicate), not the twenty corners of one strip — exact
  counterexample N(i, 1) with rows reordered; a maximum over a 2-dimensional triple component does not force the
  seed derivatives of R to vanish, so the suggested maximum principle does not work as stated; and the naive
  Fritz–John system is vacuous (ker Jᵀ has dimension ≥ 41 everywhere).

## What we checked
- All files match `SHA256SUMS`; code scanned (standard library only; no network; the runner uses a temporary copy).
- `python3 -S verify_all.py`: all four exact gates pass (4 s), certificates reproduced byte for byte.
- **Independent check** (`review/check_product_triple_rank.py`, our code): the product triple is a MUB triple and its
  96×55 Jacobian has rank 55 (smallest singular value 0.29) — isolated, as claimed.
- Not checked by us: the written analytic arguments (local completeness, the dimension bound).

## Status
Useful partial progress toward the atlas-free route; nothing in the proof changes. Handoff P stays open for A + C.
