# Handoff: the single-matrix Fourier-vanishing theorem from the minimal reconstruction

## The task

Prove, from our minimal four-phase reconstruction, the following theorem, and deliver an exact, replayable
certificate.

> **Theorem (Fourier vanishing).** Let H be an order-6 complex Hadamard matrix (|H_ij| = 1, HH† = 6I) that is not
> equivalent to Tao's matrix S6. For every set I of three rows, with complement I^c,
>
>     M_I(H) = (1/6) Σ_{j=1}^{6} Π_{a∈I} H_aj · Π_{d∈I^c} conj(H_dj) = 0,
>
> and the same holds for H^T (every set of three columns against the complementary three).

S6 = [[1,1,1,1,1,1],[1,1,ω,ω,ω²,ω²],[1,ω,1,ω²,ω²,ω],[1,ω,ω²,1,ω,ω²],[1,ω²,ω²,ω,1,ω],[1,ω²,ω,ω²,ω,1]],
ω = e^{2πi/3}. The hypothesis is necessary: for S6, |M_I| = 1/2 for some I.

**Numerical evidence** (`check/check_vanishing.py`, numpy only): on 60 sampled centres of our 12,021-Record atlas,
max |M_I| is about 3e-14 (the order of their Hadamard residual), for rows and columns; it vanishes for F6; and it is
1/2 for S6. In our larger check (400 centres) the same held.

The theorem also appears in OpenAI's work (their Lean development formalises "Fourier vanishing"), but **we want our
own proof**, built only on our reconstruction, so that our draft paper can use it without importing anything.
`reference/draft_paper_main_body.tex`, Section II ("All other candidates reduce to Fourier"), shows how it is used:
together with the complementary identity Ψ(H[I,J]) = Ψ(H[I^c,J^c]) and an exact moment reduction it gives
𝒟(H) + (30 Re S(H) − 3)² = 0.

## What you may use (all proved; see `reference/PROOF_v2.md` §1 and §7)

- **Exact reach (coverage).** Every order-6 Hadamard class other than Tao's is [F6], or [H₊(θ)] or [conj H₊(θ)] for
  a *strict* seed θ ∈ T⁴ (R(θ) > 0). Proved without the classification [CT]: Theorems 1.2 (matched existence),
  1.3 (uniqueness), 1.4 (non-matched converse: a strict non-matched corner forces Tao) and 1.5 (strict-corner
  coverage), all in Lean.
- **The explicit matched completion H₊(θ).** Seed corner E(θ) = [[1,1,1],[1,a,b],[1,c,d]], side blocks B, C from the
  side recipe (`reference/MinimalConstruction/RECONSTRUCTION.md`, `Proofs/SIDE_FIBER.md`,
  `returns/F_side_existence_SIDE_EXISTENCE.md`), and the forced block D = −C E†(B†)⁻¹, flat by
  `returns/E_matched_flatness_FLATNESS.md`. `reference/MinimalConstruction/Implementation/model.py` implements it
  (`Model(seeds, sheet=1)`), with exact identities in `verify.py`.
- **The surrounding material**: `Proofs/FOURIER_ROUTING.md`, `FOURIER_CRITICAL_LOCUS.md`,
  `CRITICAL_CORNER_REDUCTION.md` (row-triple sum rules), `CRITICAL_STRIP_CLASSIFICATION.md`, `TAO_PAIRINGS.md`,
  `returns/G_prm_PRM.md`, and `archive_GLOBAL_IDENTITIES.md` (identities for complementary minors).

**Do not import** the classification [CT], OpenAI's theorem, or any unproved statement. Say explicitly if a step
needs anything beyond the list above.

## A suggested route (yours to change)

1. **Invariance.** M_I(H) = 0 is invariant under the equivalence: a column phase c_j enters as c_j³ c̄_j³ = 1, row
   phases give a common unit factor, permutations permute the twenty statements, and conjugation and transposition
   map the row and column statements to each other. So it suffices to check F6 and the matched completions H₊(θ),
   θ strict (and their conjugates).
2. **Reduce to identities in the seed.** With E, B, C, D explicit in (a, b, c, d) and the side data, each M_I(H₊(θ))
   is an algebraic expression on the strict domain. Prove it vanishes identically, e.g. by exact polynomial
   identities with integer cofactors (as in the flatness and side-existence certificates), using the Hadamard
   relations of the blocks. Use the symmetries (row-triple types relative to the 3+3 block split, the 144 seed
   symmetries, transposition) to cut the twenty row and twenty column cases down to a few.
3. **Closure.** If an identity is proved on a dense or open subset of the strict domain, extend by continuity, and
   say where.

## Deliverables

Return a folder (zip) with:
- `REPORT.md`: the statement, the proof, and a clear label on every claim: **PROVED** (paper proof), **CERTIFIED**
  (exact computation), **NUMERICAL** (evidence only), or **NOT ESTABLISHED**; a dependency list naming exactly which
  of the inputs above are used.
- An exact verifier (`verify.py`, rational or algebraic arithmetic; SymPy or python-flint are fine) that replays
  every certificate from scratch and exits nonzero on failure, plus its transcript.
- Certificates in a form a Lean kernel checker could replay later: polynomial identities with explicit integer
  cofactors, no floating point in any acceptance test.
- `SHA256SUMS` for the returned files.
