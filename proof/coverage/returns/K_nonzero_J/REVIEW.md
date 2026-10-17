# Review of return K (17 Oct 2026)

**Input:** handoff package `K_nonzero_J_strips_368fbe04.zip` (SHA-256 `3753fc4a…a609`), from `proof/coverage/handoffs/K_nonzero_J_strips/BRIEF.md` at commit `368fbe04`.
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
- **Extra:** `SUPPLEMENTARY_RANK_LEMMA.md` claims every order-6 complex Hadamard has entrywise-square rank ≥ 3, which
  would remove the rank hypothesis from return H's Fourier criterion. Not used by N1/N2; not yet reviewed.
