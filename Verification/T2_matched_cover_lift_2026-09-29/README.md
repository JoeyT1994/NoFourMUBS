# Larger matched-cover seed lift — PASS

The first F6 seed cube now has phase half-width **1/512**, four times
the previously certified radius. A complete 255-leaf seed partition
certifies 248 leaves by carrier proximity and 7 as outside D₀. Two
additional F6 seed classes are certified at half-widths 1/1024 and 1/2048.
The complete proof replays at 96 and 160 bits, with no unresolved leaf.

- `certificate.json` retains every outward leaf result at both precisions.
- `summary.json` records actual scope: a standalone verifier run, not an
  isolated root replay or an all-58-check run.
- `source_hashes.json` identifies the proof, verifier and dependencies.
- `RESEARCH_NOTES.md` records the remaining scope and unsuccessful probes.

The verifier audits the complete binary partition, checks all 400 F6
corner classes, compares matching implementations on 180470 side triples,
checks exact rational constants, and tests 216 transformed positive boxes
and fail-closed controls. The maximum row and column bounds on the first
cube are <0.02777<1/36. The underlying matrix tube is the separately
completed F6 ClusterTube theorem.

Proof: `ProvenResults/FourierNeighbourhood/SeedLifting/MATCHED_COVER_LIFT.md`.
The largest cube is still π times narrower than production half-width.
The whole-family and uniform small-R T2/T1′ tasks remain open.
