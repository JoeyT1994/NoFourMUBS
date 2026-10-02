# Complete production-width seed cube: PASS

Centre (4π/3,5π/3,0,π), half-width π/512. All 227 leaves certify at
96 and 160 bits: 207 enter the F6 radius 1/30 and 20 miss D₀. No leaf
uses a strict-R-only discard, so the physical statement includes R=0.
The whole cube has R<1/5 and contains genuine positive-R D₀ points.

`partition.json` is the complete exact dyadic partition. `precision96.jsonl`
and `precision160.jsonl` retain every passing leaf and its bounds/cover
statistics. Their paths, phase depths, reasons, strict distance bounds,
complete side-cover forest identities and proof-source hashes are audited.
`controls.json` separately covers exact partition completeness, all 72
frames, input/boundary/periodicity failures, R range and nonvacuity at
both precisions. Its controls-only scope is explicit.

The initial streaming replay checked 226 leaves before a completion race:
the final partition became visible before the last JSONL record was read.
It exited at the set-equality assertion, with no failed leaf. The exact
same proof-source hashes were rechecked, the final leaf replayed at 160
bits, and the full coverage/reason/distance controls repeated. This is
recorded in `completion_audit.json` and `completion_audit.txt`; the initial
progress log is retained. No incomplete audit is presented as a success.

`production_benchmark.json` uses the actual binary64 campaign half-width
plus 2^-40. It yields the four already-known D₀ exclusions, not an
additional quartet exclusion among those 53 sample boxes. This cube has
production width but is centred at an exact Fourier seed; shifted work
cells require a containment check or complete subdivision.

The root runner registers a full replay. This receipt is a standalone
complete proof audit, not a combined all-64-check root run. The uniform
whole-family seed criterion and matching T1′ threshold remain open.
