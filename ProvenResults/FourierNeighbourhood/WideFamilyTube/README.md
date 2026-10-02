# Larger regional Fourier-family matrix tubes

**Proved on 191 explicitly listed closed parameter boxes:** radius
**1/256**, including transpose and equivalences. Four boxes have radius
**1/128**. Direct-orientation radii are 1/96 and 1/48, respectively.

[Proof and parameter convention](PROOF.md).
[Exact region list and the 79 gaps](data/regions.json).

The whole-family uniform radius remains **1/16384**. The new proof does
not cover all 270 coarse parameter boxes at a larger radius.

Replay:

    python3 -B ProvenResults/FourierNeighbourhood/WideFamilyTube/verify.py --output-dir /tmp/regional-tube-replay

Every supplied centre is an exact rational unit ray. Its origin as a
numerical root proposal is irrelevant to acceptance: complete integer
torus covers and exact clique checks certify the exclusions.

The [regional seed lift](../SeedLifting/REGIONAL_SEED_LIFT.md) uses the
stronger `(3,0)` box to prove a nonvacuous D₀ seed cube at 8<R<9, around
a Fourier-family carrier that is not equivalent to F6.
