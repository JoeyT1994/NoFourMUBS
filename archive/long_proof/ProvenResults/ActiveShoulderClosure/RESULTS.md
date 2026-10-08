# Active shoulder result — incomplete closure

**The requested whole-region certificate was not completed.** This
release contains new regional matrix-tube theorems, a validated all-pairing
root/completion kernel, a complete audited but partly open region
partition, certified subsets, and a bounded shardable continuation driver.
No global no-four-MUB conclusion is asserted.

## Proved additions

Five closed Fourier parameter cells now have **direct projector radius
1/36**, improving their previous 1/48 or 1/96 radii. Their fresh complete
integer covers visit **45,139,727 nodes**; all exact graph obstructions
and **1,920 positive controls** pass. The cells and proof are in
REGIONAL_TUBES.md. A sixth attempted improvement, at (10,2), has an
explicit uncovered ray cell and is not adopted.

The native-coordinate root kernel validates all three roots of each
side cubic by Rouche disks, reconstructs the other side coordinates,
validates the completion residual, and handles all four pairings.
Acceptances use outward Arb arithmetic or exact rational containment.
The actual transposed carrier is tested for the other Fourier orientation.

## Exact region and retained partition

| Item | Result |
|---|---:|
| Supplied guarded boxes | 80,613 |
| Contained in the explicit rational region S | 80,613 |
| Rational grid roots of side length 1/256 radians | 1,609 |
| Complete partition leaves, including open leaves | 9,387 |
| Accepting leaves replayed at 160 bits | 3,047 |
| Open partition leaves | 6,340 |
| Entire grid roots closed | 3 |
| Independently replayed supplemental pilot boxes | 87 |

The partition is complete as geometry, **not as an exclusion certificate**.
Unattempted roots and exhausted budgets are explicit open leaves.
Supplemental boxes may overlap the partition and are useful certified
subsets of S; they do not close its remaining leaves. The unavailable
full-run population has not been proved contained in S.

## Predicate pilot on every supplied box

Every record was passed to `certify_box` with its exact binary64 center
and a rational outward radius enclosing **pi/8192 + 2^-40**.

| Class | Inputs | Accepted by this release | Not certified |
|---|---:|---:|---:|
| active (1,2,2,4) | 77,137 | 88 | 77,049 |
| stationary (2,4,4,2) | 2,354 | 0 | 2,354 |
| old (4,5,0,3) | 1,122 | 0 | 1,122 |
| **Total** | **80,613** | **88** | **80,525** |

Of the 88 accepted inputs, 87 use a supplemental box certificate and
one uses only the retained partition. The others have an exact
intersection with an open partition leaf. Many such roots were not
searched: **80,525 is not a count of demonstrated kernel failures**.
It is the exact number not certified by the released finite subset.

The receipt directory contains:

- `replay/pilot.jsonl.gz`: all 80,613 outcomes, in source order;
- `replay/uncovered.jsonl.gz`: all 80,525 uncovered inputs with their
  original text, exact rational centers/radius and first open-leaf reason;
- `replay/leaf_replay.jsonl.gz`: the complete accepting-leaf replay;
- `replay/extra_tubes/`: all five new covers and exact graphs;
- `replay/RECEIPT.json`: source/runtime fingerprints, counts and timings.

The complete containment pass took approximately 11 CPU-seconds, about
0.14 milliseconds per supplied box, including certificate loading.
Consult the receipt for the measured value on the replaying machine.

## Kernel benchmark and early-warning resolution

A deterministic selection of 134 inputs, including specifically difficult
examples, was evaluated by the kernel rather than just by containment.
The final method closes **87/134 at full guarded width**, in about
26 CPU-seconds, and **134/134 at zero width**. These are different claims:
center closure does not close the corresponding input box.

The initial projected-reference diagnostic did reveal distances beyond
the available 1/96 tubes around the 0.05–0.09-radian seed-surface band.
The full floating frame scan has maximum best pinned-coordinate distance
about 0.09255 radians. Those frame distances are proposals, not accepting
seed-to-matrix conversions.

An improved reference search using nearby 1/48 cells left one sampled
center with selected-reference projector distance about 0.0218, just
beyond 1/48. The five new 1/36 tubes remove that sampled obstruction and
also close its full-width box. No root collision was demonstrated by
these tests. Whole-box root-derivative/enclosure failures remain in the
stationary and old patches, and wide independent tau enclosures remain
an obstacle near R=0. There is no uniform stability/separation theorem
for the whole shoulder in this release.

## Cost and stopping point

The final capped regional search attempted 3,532 nodes over 16 roots in
435.16 CPU-seconds; one complete root closed. The literal uniform
binary depth-12 traversal of S, at the measured node cost, projects to
**about 451 CPU-hours**, before refining any remaining failures. That
expansion was not launched. This is a workload model, not a lower bound
on an improved adaptive algorithm or a prediction of successful closure.

A per-box first pass at the measured scale would cost roughly 2,700
CPU-hours on 50 million inputs, also before refining failures. The
shardable regional driver, budget semantics, and next obligations are
in README.md and COST_ESTIMATE.md. No remote computation was performed.

## Verification status and provenance

The clean replay on the extracted standalone archive passes input hashes,
exact region regeneration, all partition checks, exact algebra and
arithmetic controls, all 3,047 accepting leaves, all 87 supplemental
boxes, and all five new matrix-tube covers/graphs. It still returns
**exit code 2** and `whole_region: INCOMPLETE`, as required when the
requested closure is not established. Its independently scoped
`partial_audit` is PASS.

The replay uses Python 3.10.6, python-flint 0.9.0, NumPy 2.2.6, SymPy
1.14.0 and a C++17 compiler with undefined-behaviour sanitization.
Python 3.11 / Rocky Linux execution has not been tested locally. The
version and binary fingerprints are retained; C++17 plus UBSan is needed
to replay the five new tubes.

All **64,539 original files** were compared by SHA-256 with the supplied
ZIP: no changed or missing original file, and no addition outside the
two authorized new directories. INPUTS.json pins 1,361 adopted source,
data and context files. Upstream reconstruction/tube theorems are named
and pinned; their entire historical proof suites are not claimed to have
been rerun. The delivery SHA-256 manifest covers the additive files and
retained receipt. Nothing in this release upgrades an open computation
or a finite center test into the requested whole-region theorem.
