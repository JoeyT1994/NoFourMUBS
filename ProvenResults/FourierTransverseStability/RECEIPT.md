# Delivery receipt: FourierTransverseStability

**PASS: partial region-wide transverse theorem, not whole-shoulder closure.**

The complete theorem and its hypotheses are in `PROOF.md`. Two explicit
bands, together with their 144 listed leading-corner frame/conjugation
images, have the moving-reference bounds

- broad: `d_both <= max(4|u|,16|v|)`;
- thick: `d_both <= max((5/2)|u|,10|v|)`.

The normal coordinates u,v are radians. Family coordinates p,q are turns.
The seed half-widths, entry-phase caps and projector radii are distinct.
The relevant direct Fourier projector tube has radius **1/36**.

## Fresh complete replays

| Precision | Status | Accepted tiles | Unresolved tiles |
|---|---|---:|---:|
| 160 bits | PASS | 629 | 0 |
| 192 bits | PASS | 629 | 0 |

The broad cover has 454 leaves and maximum quadtree depth 7; the thick
cover has 175 leaves and maximum depth 5. Both exact normalized area
sums are one, with complete child coverage and closed boundaries.
Both replays include exact algebra, 14 rejection controls and geometric
positive controls. All four side pairings are covered by the proof.
The final replay manifests match the delivered proof, code and data.

The stored build plus the two final full replays used **1298.265
CPU-seconds**. Including the two initial full replays, the recorded build
and replay total is **1794.824 CPU-seconds = 0.498562
CPU-hours**. These figures describe the recorded build/replays, not an
invented exact accounting of every exploratory calculation. Computation
was local; no cluster or external computing service was used.

The upstream 1/36 matrix-tube theorem is a pinned, proved input. Its
separate five-cell 45-million-node proof was **not rerun** here. This
module freshly proves the seed-to-matrix lift. The new proof is not
formalized in Lean.

## An actual pilot subbox, without matrix lifting

`example.py` verifies an explicit guarded subbox of pilot row 22328
(one-based). Centers are the exact parent dyadics minus pi/65536;
half-width is pi/65536 + 2^-40. Its certified projector bound is less
than 0.008549; the exact rational upper bound is in the example receipt.
It is contained in the real parent under both supplied width conventions.
The check performs **zero matrix lifts**. It does not close the parent
and is not asserted to coincide with a rounded production-driver child.

## Additive boundary and limitations

All **2,441 core files and 27 frontier files** were compared to their
archive bytes: no changed or missing file. Everything new is confined to
`ProvenResults/FourierTransverseStability/`.

No coverage of the full S region, the low-R strata, the (2,4,4,2) patch,
or the (4,5,0,3) patch is asserted. No number of closed original frontier
boxes is asserted. The applicability predicate requires physicality and
maximality among **all 400 positional corners**, never just eligible ones.

Machine receipts: `receipts/REPLAY_160.json`, `receipts/REPLAY_192.json`,
`receipts/GUARDED_EXAMPLE.json`, `receipts/INPUT_PRESERVATION.json`,
and `receipts/DELIVERY.json`.
