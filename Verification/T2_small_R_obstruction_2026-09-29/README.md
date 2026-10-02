# Certified obstruction to pairing the current Fourier tube with small R

`summary.json` records passing root-runner checks for two exact carrier
examples and the sheet-conjugation lemma. Both run in an isolated copy.
The theorem and its precise dependencies are in
[SMALL_R_OBSTRUCTION.md](../../ProvenResults/FourierNeighbourhood/SeedLifting/SMALL_R_OBSTRUCTION.md).

For each example, the new replay checks all 400 corner-R upper bounds
and all 400 raw 3×3 minor lower bounds with 256-bit Arb arithmetic.
Physicality uses the accepted local reconstruction identities. Maximal
corner normalization and sheet conjugation give positive-sheet examples
in D₀∩F; the proof does not rely on a numerical tie-breaking decision.

The two consequences are:

- Maximal R<18 can coexist with d_Four>1/300.
- Maximal R<1/200 can coexist with d_Four>1/16000>1/16384.

Thus the present 1/16384 matrix tube cannot support a uniform
`R<m ⇒ inside the tube` rule for any m≥1/200. No quartet is exhibited,
and a seed-proximity condition can still imply tube membership.

`source_hashes.json` freezes the implementation and relevant inputs.
