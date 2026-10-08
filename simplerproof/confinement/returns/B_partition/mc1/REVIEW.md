# Independent review of critical-stratum logic

Reviewed:

- `critical_exceptions/QZERO_CRITICAL.md`, especially §§2 and6;
- `critical/CHIRALITY_CRITICAL.md`;
- `critical/CHIRALITY_PAIR.md`;
- the physical boundary/KKT scope of `mc1/complement_minimax/COMPLEMENT_MINIMAX.md`.

**Verdict: correct within the stated hypotheses.** The rank-at-least-two argument,
adjugate continuation, and both rank-two and rank-three Hessian tangent-inclusion
arguments are sound. The chirality rank-three argument includes the one-zero-Gram
entry case. The polynomial eliminations retain all necessary exceptional branches,
including a vanishing tie-constraint gradient and resultant degree drops. The
regular minimax calculation omits no physical KKT boundary multiplier: its physical
inequalities are strict and its invariant coordinates are locally open.

One harmless sign inconsistency was found: the two chirality notes initially used
`gradient = multiplier * gradient(D)` while their difference formulas and verifiers
used `gradient + multiplier * gradient(D) = 0`. The author corrected the two
statements. Because these multipliers range over all real numbers, no elimination
or conclusion changed.

For clarity, the chirality-pair proof's passage to `(h,B,J)` coordinates in its
all-distinct case uses the fact that `(X,Y,Z)->(p,W)` then has rank two. The only
rank failures are all-equal variables or two variables equal one, both excluded
there.

The conclusions still concern a single active corner or the identified
complementary pair. Other independent active corner gradients need not share the
proved descent direction. The separately assigned double-zero analysis was not
part of this review. Global applications use the stated restricted F7 coverage
and analytic-provider hypotheses.

A fuller explanation of the rank and boundary checks is recorded in
`CRITICAL_LOGIC_REVIEW.md`.
