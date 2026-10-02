# Uniform Fourier tube and an obstruction to seed lifting

**Historical radius, current obstruction.** The later
[PracticalTube certificate](../PracticalTube/README.md) supersedes the
radius below with **1/16384**. The unrestricted-lifting counterexample
remains relevant. This folder retains both original results.

1. **Uniform matrix exclusion proved:** every quartet edge has
   `d_Four > δ`, where **δ = 2^(−2^590)**. This covers the whole Fourier
   family, its transpose and all equivalences. It follows from the
   published Fourier exclusion and an explicit algebraic minimum bound.
   **The radius is far too small for campaign use.**
2. **Unrestricted seed lifting refuted:** the exact atlas seed
   `(ω,ω²,(4+3i)/5,(21+20i)/29)` has R<3 but its H₊ carrier has
   `d_Four>1/40`. All 400 raw 3-by-3 minors are certified greater than
   4/5. This seed is outside D₀, so a D₀-restricted estimate remains open.

The proofs are [PROOF.md](PROOF.md) and
[SEED_OBSTRUCTION.md](SEED_OBSTRUCTION.md). The second result uses the
accepted local reconstruction identities; the first does not.

## Replay

From the project root:

    python3 verify.py --only fourier_uniform_tube --jobs 1 --output-dir Verification/T2_uniform_tube_replay

Or run this folder's `verify.py` directly. It needs python-flint for
outward Arb arithmetic. The arithmetic and minor replay takes less than
one second. The [retained receipt](../../../Verification/T2_uniform_tube_2026-09-28/fourier_uniform_tube.txt)
records its acceptance. The two published theorem inputs are stated in
the proof and are not reproved by this verifier.

No enormous integer denominator is allocated: the radius is symbolic,
and the verifier checks its exponent inequalities exactly.

## Campaign consequence

These original results alone do not enable a seed prune. The whole-family
matrix radius 1/16384 is now supplied by PracticalTube. The seed-to-carrier
estimate must include a restriction that excludes the certified example,
such as D₀ if that restricted statement can be proved, or retain enough
completion information to identify the relevant branch.

The seed atlas remains correct and its distance routine remains usable
for proximity measurements. Membership in that atlas alone cannot be
used to infer that H₊ belongs to, or approaches, the Fourier family.
