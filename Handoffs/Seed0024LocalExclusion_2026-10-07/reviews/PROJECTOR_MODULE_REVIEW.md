# Independent review of the rounding and column modules

Reviewer: seed0024_averaging. Review includes full source reading, source-hash matching to successful guarded Lean receipts, and inspection of the printed axiom audits. This is independent of the author. All printed audits use only `propext`, `Classical.choice`, and `Quot.sound`. Physical proof admission remains **false**.

## RepeatedFourierColumns

Source SHA-256: `c02fd6db83ec819755432870325852d02f734ea88ad1587a764e6f86c8f07f87`.
Successful receipt: `local-route/phase2-projector/check-columns-04/RESULT.json`.

The module uses actual normalized six-entry complex columns and an explicit common half-phase row gauge. It proves unit mass, exact overlaps, and both overlap-infidelity bounds by the same quadratic expression divided by 18. The repeated phases are `[0,0,x,x,y,y]`, which is the orientation required by the local construction. The global cosine inequality is proved from resident Taylor estimates. No closeness or phase-existence oracle is hidden in these statements.

## PiRounding

Source SHA-256: `ab8f869c0891f16c65cf34a3096bf34678d0f8d16534f313802224cc4192e865`.
Successful receipt: `local-route/phase2-projector/check-rounding-02/RESULT.json`.

The lattice integer is the actual floor of `x / pi + 1/2`. The residue is proved to belong to `[-pi/2, pi/2)`, and its absolute sine equals that of the original phase. The bound `arcsin u <= (51/50) u` on `[0,1/6]` is derived from the exact sine Taylor estimate. The three-residue relation is forced by the original relation `A+B=C` and an integer multiple of pi of absolute value less than 1. Thus the total residue bound `<17/100` and exact residual relation are conclusions, not assumptions.

## RoundedFourierOverlap

Source SHA-256: `b56724a34feba763945a449d080b6d44ff257c77b9504a7c7d6e2b5c9b8521be`.
Successful receipt: `local-route/phase2-projector/check-rounded-columns-01/RESULT.json`.

The reference alpha and beta are explicit integer-pi lattice phases. The phase errors are actual differences from these references; their two linear formulas in the rounded residues are exact algebra. The scalar variance bound follows from the three-residue relation and the squared l1 bound. Both overlap conclusions reuse the actual columns and exactly the same row gauge, and are strictly greater than `1-(1/60)^2`.

## Admission boundary

These modules faithfully prove their stated scalar and concrete-column claims. The lattice matrix still has to be identified with the F6 monomial orbit, and column-overlap infidelity still has to be identified with the operator norm of the rank-one projector difference. The physical matrix construction and the final distance composition also remain separate obligations. This review does not establish local exclusion or any sector closure.
