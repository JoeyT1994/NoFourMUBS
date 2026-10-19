# Handoff S: exclude the two critical-strip endpoints by counting

## What it would remove
`lean/NoFourMUBS/PRM/CoverageEndP7.lean` (28.5 KB), `CoverageEndEqui.lean` (20 KB), and the two exclusion proofs
`MinimalConstruction/Proofs/CRITICAL_P7_EXCLUSION.md` and `CRITICAL_EQUI_CORRELATION_EXCLUSION.md` with their
verifiers.

## Current proof (PROOF.md Theorem 2.5)
In an all-critical, non-F6 Hadamard matrix with all 3×3 minors invertible, every corner of a three-row strip has
p ∈ {0, 5} or p = p* (an irrational number in (17/3, 29/5)), or is one of two rational **endpoints**:
- p = 7 (in return K's parameter k = 2|J|/(9 − p)², this is k = 1);
- the equicorrelated case p = 27/5 (k = 1/3).

The endpoints are excluded by two separate arguments (a 20-corner sum, or in Lean one corner of signature −56 − 8i,
for p = 7; a field-degree argument, or in Lean (w³ − 8a)(w³ + a)² = 0, for the equicorrelated case). The count
Σ_{20 corners} p_C = 108 then excludes the rest.

The count alone cannot exclude the endpoints: 2·7 + 8·5 = 54 and 10·(27/5) = 54 both satisfy the ten-corner rule
Σ_{C∋c} p_C = 54, and 108 = 4·7 + 16·5 = 20·(27/5) satisfies the twenty-corner rule.

## The statement to look for
> **Lemma S.** Find a second linear (or quadratic) rule over the ten corners containing a fixed column c of a strip,
> forced by row orthogonality and the vanishing strip moments, for example a fixed value of Σ_{C∋c} J_C,
> Σ_{C∋c} X_C, Σ_{C∋c} k_C or Σ_{C∋c} p_C², such that together with Σ_{C∋c} p_C = 54 no multiset of corner types
> containing an endpoint is feasible.

For each corner type, the values of (p, J, X, Y, Z, k) are known from the classification (corners with p = 0, p = 5,
p = p*, p = 7, p = 27/5), so the feasibility check is a finite integer problem once the rule is known.

## Deliver
The rule with its proof from row orthogonality, and the finite feasibility check.

**Difficulty:** medium. **Plausibility:** low–medium (mixtures of corner types may still balance; a negative answer,
showing that no such linear rule exists, is also useful).
