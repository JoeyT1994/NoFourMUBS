# MUB triples in C6 — crossing continuation, 28 October 2026

This package answers the four questions in `input/BRIEF.md`. Start with
`CONTINUATION.md`; the detailed proofs are in `larger_crossing.md`,
`lemma_audit.md`, `FAMILY_TUBES.md`, and `gluing.md`.

## Main results

| Result | Status and scope |
|---|---|
| Full crossing classification ball of radius **1/50 = 0.02** for both recorded crossing patterns | **PROVED from the supplied exact structure, physical action, normal inverse, coefficient-amplitude certificates, and recognition theorem.** New restricted-frequency and scalar calculations are independently verified here. |
| Qualitative crossing-surface input removed from the classification proof | **PROVED.** Average the obstruction map over the order-three actions; representation theory forces its reduced residual to vanish on the two axes. |
| Exact regular-family tube of radius **r < 1/40 = 0.025** at `a=(1,i,i), b=(1,1,-1)` | **PROVED from the canonical construction**, with a new interval-and-integer certificate for the moving singular value. |
| Open uniform family-interval tube of radius `(1-delta)/(60 kappa)` | **PROVED.** A general theorem, a standalone enclosure checker, and a verified small reference patch are included. |
| Same-anchor horizontal gluing bound `distance <= sqrt(261)|gamma|/4 <= 4.04|gamma|` for `|gamma|<=1/2` | **PROVED.** Outside a union covering all matching radius-0.02 crossing balls, `|gamma|>=1/202`; other alignment constants are also given. |

All phase norms use **radians**. The horizontal norm is inherited from the
72-entry orthogonal gauge quotient. A correctly aligned 55-coordinate dephased
ball of the same radius satisfies the horizontal bound. Dephasing and changing
the anchor require the metric distinctions explained in the proofs.

## Reproduce the independent checks

Run with Python 3 and its standard library, without `-O`:

```sh
python verify_all.py
```

This checks source hashes and rational domination of the supplied Arb intervals;
recomputes the restricted cubic-frequency Gram bounds for both patterns; checks
every new crossing scalar inequality with exact rational arithmetic; verifies
the saved regular-family certificate using directed intervals and exact integer
linear algebra; and exercises the family-interval checker on a rigorous small
reference neighborhood and an inconclusive wider enclosure. It writes
`VERIFIED.json` and the individual verification receipts.

The uploaded project Python files are retained under `input/` as unchanged
reference material. **They are never imported or executed by these verifiers.**
NumPy is needed only for the optional `regular_reference.py --build` discovery
mode; it is not needed to verify the saved rational certificate.

## Dependency boundary

The new archive supplied exact-plane and derivative receipts, but omitted
`results/exact_centres.json`, the imported project infrastructure, and the
complete all-K inclusion receipt. This package checks all five attached source
files whose hashes occur in the radius receipt. It does not claim to replay
the omitted centre construction or all-K calculation.

The new radius is a theorem about actual zeros in aligned phase neighborhoods.
It becomes a larger certified X-ball core only after the existing project
recomputes the original-to-phase enclosure and its exhaustive cover/accounting.
Concrete endpoint-to-pattern alignment also needs the omitted centre matrices
or equivalent matching certificates. The qualitative surface theorem is no
longer an input to the new crossing classification argument.

## Files

| File | Purpose |
|---|---|
| `CONTINUATION.md` | Results, answers to the brief, and integration instructions |
| `larger_crossing.md` | Complete radius-0.02 theorem and derivative majorants |
| `lemma_audit.md` | Original lemma audit, complete fixed-space hypothesis, equivariant obstruction |
| `projected_frequency_bounds.py` | Exact `Q(sqrt(3))` verification using the supplied fixed-plane data |
| `crossing_scalar_certificate.py` | Exact rational verification of the enlarged crossing inequalities |
| `FAMILY_TUBES.md` | Centre-specific and parameter-uniform tubes, normalization, alignment |
| `regular_reference.py`, `regular_reference_certificate.json` | Independent exact-reference construction and saved rational preconditioner |
| `family_interval_check.py` | Conservative uniform certificate from a complete interval Jacobian enclosure |
| `interval_support.py` | Directed interval arithmetic used by the regular certificate |
| `gluing.md` | Constructive crossing-distance estimate and all metric constants |
| `reference/REGULAR_TUBE_PROOF.md` | Earlier proof of the global Hessian bound 60 and the generic regular tube |
| `reference/regular_CHECKPOINT.md` | Supplied canonical family construction and recognition input |
| `input/` | Unchanged updated brief, crossing documents, and supplied read-only sources/receipts |
| `VERIFIED.json`, `SHA256SUMS.json` | Verification scope/results and package file hashes |

No global classification or completion of the remaining X-ball/seed shells is
claimed. The proven local bounds supply stronger predicates for that work.
