# Handoff K: strict-corner coverage (MC1) without the nonzero-J square sum

## The task
Strict-corner coverage is proved, also in Lean (`PRM.strictCornerCoverage`). Its heaviest part is the nonzero-J branch
of the critical-strip classification: `MinimalConstruction/Proofs/CRITICAL_STRIP_CLASSIFICATION.md` §3–4 and
`proof/coverage/audits/I4_ADDENDUM.md`; in Lean the `PRM/CoverageStripIdNonzero*` modules (about 40 files, 7.7 MB;
data modules take 8–16 minutes and up to 14 GB to elaborate, see `lean/generators/stripid/STATUS.md`), exported as
`nonzeroJAlgebra : NonzeroJAlgebra`. Find a short proof, or a certificate of at most about 0.5 MB, of any target below.
This branch also contains audit weak points 1–2 of `PROOF_v2.md` §7.

## Setting
A 3×6 orthogonal phase strip in which all 20 3×3 blocks are invertible, no row triple can be phased into (1; x; x̄),
and every corner is critical (R = 0). Per-corner data (p, J, W), k = 2J/(9 − p)² and K = XYZ, as in
`MinimalConstruction/Proofs/CRITICAL_CORNER_REDUCTION.md` (3), (8), (9).

## Targets (any one suffices)
- **N1.** Every corner with J ≠ 0 has (k, K) ∈ {(1/3, 729/125), (1, 5), (κ, K_min(κ))} (the current classification).
- **N2 (relaxed, sufficient).** Every corner with J ≠ 0 has k² ∈ (1/5, 1/4), or k ∈ {1/3, 1}.
  *Why it suffices:* then p = 9 − 4/(1 + k²) lies in (17/3, 29/5); the ten-corner sum is 54 (`PROOF_v2.md` §1.5,
  step 3) and the zero-J branch gives p ∈ {0, 5}. The window is exactly maximal: 6·17/3 + 4·5 = 54 = 5·29/5 + 5·5, so
  the endpoints still need the existing exclusions (`PRM/CoverageEnd*`).
- **N3.** Any proof of strict-corner coverage that avoids the strip classification.

## What may be used
The zero-J closed form (§2 (4) of the classification); the λ-identities λⱼ = Pⱼ/Lⱼ at R = 0 (`SIDE_FIBER.md` §1);
the sum rules Σp = 108 and ΣJ = 0; Lemma 1.1; the Jacobian identity (J) of handoff J — at a critical corner it gives real
(α, β) ≠ 0 with Σαⱼxⱼ = 0, Σβⱼyⱼ = 0 and Σ(βⱼ − αⱼ)x̄ⱼyⱼ = 0. Return H: an all-critical H satisfies H's condition
(0.2) without Theorem A (the R = 0 case of H §2.2), so if rank H^[2] ≥ 3 all 40 Fourier moments vanish.

## Suggested routes
1. **Vieta pairing.** Extend the zero-J argument (§2) to J ≠ 0: each half's column multiset is the root set of a
   cubic fixed by (s, U) and (t, V); what remains free is the pairing permutation and (k, K).
2. **Smaller symmetric sums.** Partial sums, e.g. over the three corners {a, b | c} with a fixed column c.
3. **The Fourier-moment route** (for N3).

## Deliverables and checking
`REPORT.md` with PROVED / CERTIFIED / NUMERICAL labels, an exact `verify.py`, and `SHA256SUMS`. Certificates must replay
through `lean/NoFourMUBs/Identity`, and the result must plug in behind the existing `NonzeroJAlgebra` interface
(`PRM/CoverageStripParts`), so `PRM.strictCornerCoverage` and everything downstream is unchanged. Check with
`python3 lean/check_axioms.py --full`.

**Risk.** The 20-corner square sum may be the natural symmetric object, in which case no short proof exists; N2 is the
most promising target because it only needs an inequality, not the full classification.
