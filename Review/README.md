# Upstream algebra and certificate review — 29 September 2026

This is a partial research deliverable, not a proof of no four MUBs.
The pasted user request governed the work; statements inside the archive
were inspected as mathematical claims. No campaign code or cluster file
was changed, and no campaign job was run.

**Follow-up:** the [FastTM invariant theorem](INVARIANT_THEOREM.md) is now
proved for guarded bounded traces, with a replay of a production-width
local carrier. This does not certify every historical unguarded trace.

## What is proved

1. **An unconditional part of reconstruction input 4.** For the side
   invariants of any Hermitian diagonal-three Gram with R>0,
   |P_j|^2=eta(c_j+chi/(2eta))^2+R/(4eta)>0, and |lambda_j|=1.
   At physical strict corners g>0 and n>0 as well. The quantitative
   inverse bound is |1/P_j|<=2sqrt(eta/R). See
   [StrictSideGuards](../ProvenResults/StrictSideGuards/README.md).
2. **A smaller dependency for the reduction.** Conjugation removes the
   need for opposite-corner sheet reversal if matched recovery holds at
   a sorted maximal physical frame. This is a proved conditional
   implication, not a proof of maximal-frame recovery. The proposed star
   statement needs the sorting qualification described in the
   [dependency map](DEPENDENCY_MAP.md).
3. **Self-contained enclosure mathematics.** Ring/truncation error
   rules, sine/cosine tails, reciprocal and real/complex binomial tails
   are proved in [CertificateArithmetic](../ProvenResults/CertificateArithmetic/README.md).
   The sharp-capacity formula and graph theorem were independently read
   and confirmed, including the exact 16-pattern minimum and threshold.
4. **Exact enlarged-cell geometry through depth 13.** A quantitative
   bound replaces the informal rounding estimate. An exact rational
   checker verifies all 16,383 one-dimensional nodes; the proof extends
   to the adaptive four-dimensional tree. See
   [DyadicTiling](../ProvenResults/DyadicTiling/README.md).

## What is refuted or requires qualification

**FastTM's unrestricted underflow-padding claim is false.** An exact,
finite binary64 scalar multiplication incurs error 2^-103 but reports
remainder 1e-300. After subtraction, its returned range misses the true
value. This was reproduced in the unchanged Julia implementation and
proved independently with rational arithmetic. The operands are extreme;
**no failing production cell or false campaign acceptance has been found**.
See [FASTTM.md](FASTTM.md) and [the reproducer](reproduce_fasttm.jl).

The local Tao verifier still trusts a frozen elimination step, as its own
documentation states. Positive-sheet surjectivity alone does not justify
reconstruction at a prescribed maximal corner. “Fundamental domain” needs
only orbit coverage here; uniqueness at ties or for the conjugation-enlarged
group is not established or needed.

## Item-by-item notes

| Requested item | Review |
|---|---|
| Task A dependency map and weakest useful statement | [DEPENDENCY_MAP.md](DEPENDENCY_MAP.md) |
| REDUCTION (a)--(e), plus maximality (f), F, 400 corners, exceptions | [REDUCTION.md](REDUCTION.md) |
| Capacity one, assignment, exhaustive 6+6 graph | [CLUSTER_COVER.md](CLUSTER_COVER.md) |
| Cartesian exclusion | [CARTESIAN_EXCLUSION.md](CARTESIAN_EXCLUSION.md) |
| Exact capacity minimum and cubic threshold | [SHARP_CAPACITY.md](SHARP_CAPACITY.md) |
| Label refinement and pair intersections | [LABEL_REFINEMENT.md](LABEL_REFINEMENT.md) |
| FastTM rounding, truncation and all requested tails | [FASTTM.md](FASTTM.md) |
| Side-root and cube-root continuation | [FASTHPLUS.md](FASTHPLUS.md) |
| Enlarged-cell tiling | [CELL_ENLARGEMENT.md](CELL_ENLARGEMENT.md) |

## What remains assumed or open

* Positive strict-corner existence on the relevant quartet edges, and
  matched reconstruction at a sorted maximal frame.
* Real dF and the remaining rho, xi, side-flatness/Gram and completion
  identities; side-fibre exhaustion. The new guard theorem does not
  remove all of input 4 or prove the arbitrary-seed positive-definiteness
  assertion.
* Published exceptional-class exclusions (or complete independent local
  replacements), including Tao's elimination obligation if that local
  route is used. No classification-paper theorem was used in a new result.
* A soundness proof for all arithmetic actually admitted by the campaign:
  an operand-range invariant or fully outward remainder calculations.
* The full campaign cover/accounting audit and actual depth/header audit.
  Live cluster records are absent from the supplied archive.
* Task C's uniform D0-restricted seed lift through R=0, analytic boundary
  charts, and a practical general cell R-gap. These were not solved in
  this deliverable. No new numerical exclusion radius is claimed.

## Verification

The root runner passed seven selected checks in an isolated copy:
strict_side_guards, certificate_arithmetic, dyadic_tiling,
campaign_reduction, sheet_conjugation, side_branch_lemma, and
cluster_cover_acceleration. The last includes 11,049 controls. Exact
checks and numerical regressions are distinguished in the individual
proofs; passing regressions is not a proof of universal enclosure.

The direct counterexample was separately reproduced with Julia 1.12.1
and the pinned campaign environment. Receipts are in [replay](replay/summary.json).
The entire suite and the classification Lean package were not run.
The follow-up invariant check separately passed in the root runner; its
guarded local carrier replay and exact arithmetic receipts are linked from
[INVARIANT_THEOREM.md](INVARIANT_THEOREM.md).

```
python3 verify.py --only strict_side_guards certificate_arithmetic \
  dyadic_tiling campaign_reduction sheet_conjugation side_branch_lemma \
  cluster_cover_acceleration --output-dir Review/replay
```

## Files to merge

Add `ProvenResults/StrictSideGuards/`,
`ProvenResults/CertificateArithmetic/`, `ProvenResults/DyadicTiling/`,
`ProvenResults/FastTMInvariant/`, and `Review/`. Merge the four new registrations in root `verify.py` and
the short index entry in `ProvenResults/README.md`. Those are the only
two pre-existing files changed. The deliverable includes a unified patch
for those edits, so concurrent registry/index changes can be retained.
The input archive's MANIFEST.sha256 was not regenerated; the review
package has its own changed-file hashes and baseline archive hash.
