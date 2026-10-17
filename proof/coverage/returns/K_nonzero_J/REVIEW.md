# Review of return K (17 Oct 2026)

**Input:** handoff package `K_nonzero_J_strips_368fbe04.zip` (SHA-256 `3753fc4a…a609`), from the brief in `handoff/BRIEF.md` at commit `368fbe04`.
**Return:** `K_nonzero_J_return_2026-10-17.zip` (SHA-256 in `../SOURCE_ZIPS.sha256`), unpacked here unchanged; `review/` is ours.

## Claim
Target N1 of the brief, hence N2: on an all-critical orthogonal phase strip, every corner with J ≠ 0 has
(k, K) ∈ {(1/3, 729/125), (1, 5), (κ, 16κ²/(1+κ²)⁴)} with κ the positive root of 3k³ + k² + k − 1, and so
1/5 < κ² < 1/4, i.e. 17/3 < p < 29/5 — exactly the nonzero-J half of `TopStripClassification`
(`lean/NoFourMUBs/PRM/CoverageInputs.lean`). The proof uses two sums of the unsquared corner signature (REPORT §2),
a universal identity (§3, (6)), four one-parameter curves (§4), an exact sign table under nonzero-L hypotheses (§5) and
the product of the six λ-denominators (§6). It does not use the twenty-corner square sum, the quartic Q(k, K), or its
Bernstein/Sturm certificates. Inputs used: `CRITICAL_CORNER_REDUCTION.md`, `SIDE_FIBER.md` §1, and R = 4 (Im Ψ)².

## What we checked
- **Integrity.** All 26 files match `SHA256SUMS`.
- **The return's own replay** (Python 3.13, sympy 1.14.0, python-flint 0.9.0, run isolated with `-I` from outside the
  folder): `verify.py` — ALL EXACT CHECKS PASSED (55 integer polynomial identities, ~4 s); `--circuits-only` — all 55
  circuits pass with the standard library only; `--self-test` — the circuit checker rejects a target altered by +1.
  The code was read first: no subprocess, network, eval/exec or pickle; it writes only to a temporary directory.
- **Independent checks** (`review/check_K_return.py`, written by us, not derived from the return's code):
  - identity (6), Ā B C − A B̄ C̄ = (1 + k²p)(s r t̄ − s̄ r̄ t)(X − Y)(Y − Z)(Z − X), expands to zero symbolically in
    independent variables;
  - identities (3) Σ_C D_C = ā b c − a b̄ c̄ and (4) (the xy-weighted sum) hold on 400 random orthogonal 3×6 strips
    taken from Fourier-family Hadamards, to ~4e-13;
  - the N2 window: G(u) = 9u³ + 5u² + 3u − 1 has G(1/5) = −16/125 and G(1/4) = 13/64.

## Status
- **Mathematics: accepted** (PROVED paper deductions + CERTIFIED finite algebra, replayed here; key identities
  independently re-checked).
- **Lean: integrated (17 Oct 2026)**, see `INTEGRATED.md`: `PRM/CoverageSigned*.lean` prove the nonzero-J half of
  `TopStripClassification`. `Final.no_four_mubs` uses them (standard axioms only), and the
  `PRM/CoverageStripIdNonzero*` square-sum modules, the quartic sign certificate and their generators are
  removed.
- **Extra, reviewed and accepted:** `SUPPLEMENTARY_RANK_LEMMA.md` proves that for n > 4, n ≡ 2 (mod 4), every complex
  Hadamard of order n has entrywise-square rank ≥ 3 (in particular every order-6 Hadamard). We checked the proof by hand:
  Lemma 1's count forces a = b = c = d = n/4; its extension to phase vectors with proportional squares (rephase to equal
  squares, divide by one vector) is sound; Lemma 2 is "a line meets a circle in at most two points"; the rank-2 case
  splits correctly (≥ 3 values of u: rows fall into two proportional-square classes; exactly two values: squared columns
  take two values, so columns fall into two equal-square classes), each class has at most two members by Lemma 1, so
  n ≤ 4. `support/verify_rank.py` passes. Independent test (`review/check_rank.py`): rank H^[2] = 3 for F₆ and for all
  2,000 random members of the two-parameter Fourier family under random equivalences, and 6 for Tao's matrix — so the
  bound is attained on a two-parameter family; brute force confirms no three pairwise orthogonal sign vectors of length 6.
  **What it simplifies:** in Lean, `FourierVanishing.exists_good` (`FourierVanishing/Main.lean`) obtains its
  nonsingular H[I,J]^[2] from `PRM.strictCornerCoverage` (the whole MC1 chain) plus a separate Fourier-class case; the
  lemma supplies it for every order-6 Hadamard, so Fourier vanishing (return H) no longer depends on strict-corner
  coverage. Return H's criterion then needs only (0.2), i.e. the nonmatched converse. Not formalized: Fourier vanishing is not
  used by the main theorem, so the change would add Lean without simplifying the proof (decision of 17 Oct 2026).
