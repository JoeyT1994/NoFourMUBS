**Update:** [EXPANDED.md](EXPANDED.md) increases the F6 radius to **1/30**.
Its fresh 7,485,187-node integer cover and all 1176 exact graph-pair
comparisons pass. Replay `verify_expanded.py`; the older certificate below
is retained unchanged. The whole-family radius stays 1/16384.

# F6 quartet-exclusion radius 1/36

**Proved, unconditional, computer-assisted:** no quartet edge lies at
maximum-column projector distance ≤1/36 from the F6 monomial orbit.
[Proof](PROOF.md).

A fresh integer cover confines every approximately common-flat ray
(raw Fourier amplitude error ≤1/6) to 48 supplied projective balls of
radius 1/6. Sharp angle bounds give an exact compatibility graph.
All 52 candidate C bases have no compatible D basis.

The certificate has 6,143,299 cover nodes, no unresolved leaves, and
48 exact feasible-ray controls. It is replayed with undefined-behaviour
sanitization. Centre completeness comes from the exhaustive cover, not
from a numerical root count.

    python3 -B ProvenResults/FourierNeighbourhood/ClusterTube/verify.py

This larger radius is local to **F6**. The full Fourier-family radius
remains 1/16384. The earlier 1/1024 theorem remains stronger in its
four-ray-plus-anchor scope; this new result excludes four full bases.
No production seed-box or R=0 lifting result is claimed here.
