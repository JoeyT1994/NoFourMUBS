# Direct seed lifting: proof replay and production limitation

`summary.json` records five passing checks: the new direct lift, the
Fourier-block and cubic-pair dependencies, the complementary-corner
code, and regular side charts. The root runner executed them in an
isolated copy. This is not a replay of all 54 registered checks.

The new theorem is
[DIRECT_LIFT.md](../../ProvenResults/FourierNeighbourhood/SeedLifting/DIRECT_LIFT.md).
It uses the accepted strict reconstruction inputs. The retained patch
has transverse half-width 2×10⁻⁷ radians and tangential half-width π/512;
its certified carrier distance is less than 0.000054<1/16384.

`production_benchmark.json` is a separate usefulness test. It applies
all 72 frames to each of the 53 unresolved boxes retained in the existing
600-cell production sample, at phase half-width π/512. **Zero boxes are
excluded.** This negative benchmark must not be replaced by the positive
thin-patch control when describing campaign savings.

Replay the benchmark from the project root:

    python3 -B ProvenResults/FourierNeighbourhood/SeedLifting/benchmark_direct.py --output /tmp/direct-lift-production.json

`source_hashes.json` freezes the new implementation and the relevant
proof/implementation inputs. Historical receipts are retained separately.
