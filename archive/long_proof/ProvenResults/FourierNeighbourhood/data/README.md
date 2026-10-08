# Exact proof objects and full box encoding

All dimensions, normalizations, and acceptance inequalities are in PROOF.md.
No file below is a numerical substitute for an unreturned proof object.

## `field_coefficients.json`

Raw sixth roots `q^k=(a+i sqrt(3)b)/2`, their field convention, the
lexicographically ordered 15 pairs `(i,k)` with `i<k`, and all 6 by 15
residual coefficients. `verify.py` reconstructs and compares the file to
`R_j=|sum q^(-rj)z_r|^2-6`, not merely to another saved polynomial.

## `centers.json`

48 raw unit-phase vectors with first component 1. Each of the other five
components is `sign*(q+i p)^2/(q^2+p^2)`, where `sign=+1` or `-1` and the
stored fraction is `t=p/q`, `q>0`, `|p|<=q`. Divide the whole raw vector
by `sqrt(6)` to obtain a unit center. These are rational complex numbers,
not asserted exact common-unbiased roots. Their unit norms are verified.

## `cover.bin.gz` and `multipliers.i16.gz`

Gzip decompression gives a headerless preorder stream of unsigned-byte
opcodes, followed in sequence by exactly 32 complete binary trees, one
for each chart number 0 through 31. Chart bit `i` is the sign bit of
phase coordinate `i+1` in the formula of `coverage.json`.

Every tree starts at the **closed** cube `[-1,1]^5`. The integer endpoint
grid is `2^40`. The following opcodes completely specify every box:

| Opcode | Meaning |
|---|---|
| 0,...,4 | Split that coordinate at its exact midpoint; read lower child then upper child |
| 32,...,37 | Exclude using `+R_(op-32)` |
| 48,...,53 | Exclude using `-R_(op-48)` |
| 64 | Exclude using the next six-integer multiplier record |
| 128,...,175 | Include the whole box in the radius-`1/50` ball of center `op-128` |

All other opcodes are invalid. Both children include the split endpoint.
There is no default acceptance, dropped box, auxiliary unreturned interval
list, or unresolved tail. The 389,672 exact leaf boxes are fully represented
by these trees; storing their repeated endpoints uncompressed is unnecessary.

The multiplier stream is headerless, **little-endian**, signed 16-bit,
six integers per record, 116,723 records. Record consumption is strictly
in preorder whenever opcode 64 is encountered. Single-residual leaves
have their full multiplier implicit in the opcode. The verifier requires
both streams to be exhausted exactly.

`../dump_cover.py` expands any or all leaves to explicit JSON records.
For an exclusion record, the six weights act on the six residuals in
physical column order 0,...,5. For an inclusion record, the `center` index
is zero-based. Every coefficient and scalar bound is recomputed at the
box, using exact outward intervals; no stored floating-point lower bound
is trusted.

## `coverage.json`

Domain constants, chart formula, split convention, exact structural
counts, and per-chart leaf counts. The verifier checks these counts
against a full structural traversal and verifies every leaf inequality.
Counts alone are not the coverage proof.

## `compatibility_graph.json`

Both complete adjacency lists, thresholds, all 48 anchor records, their
unbiasedness neighbors, orthogonal triples in those neighbor sets, and
the zero four-clique counts. `verify.py` independently reconstructs every
edge from the rational center overlaps and enumerates all 23,760
anchor/four-neighbor choices. The saved graph is checked for equality
with this reconstruction.

## `domain.json`

Machine-readable summary of the exact physical carrier domain, error
bound, and explicit varying family. Its meaning is given by the analytic
proof; the defining inequalities do not assert global seed confinement.
The core verifier checks the operative constants and CRT maps itself;
`verify_seed_family.py` independently checks the optional family formulas.
