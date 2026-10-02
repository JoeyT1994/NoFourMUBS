# F6 radius 1/36: complete cover and exact compatibility graph

`certificate.json` records the successful standalone fresh replay. It
includes all 52 candidate C six-cliques and their D-candidate sets,
source hashes, rounded-centre hash, trig-table hash, and cover-log hash.
`cover.txt` records 48 exact chirp controls, each centre's inclusion-leaf
count, and the complete 6,143,299-node cover. There are no unresolved
leaves. Compilation enabled undefined-behaviour sanitization.

The proven scope is
[PROOF.md](../../ProvenResults/FourierNeighbourhood/ClusterTube/PROOF.md):
four full MUBs are excluded at maximum-column projector distance ≤1/36
from the F6 monomial orbit. The family-wide theorem remains 1/16384.
This certificate does not supply a production seed-box exclusion.

`arithmetic.hpp` is the exact prefix extracted from the previously
audited PracticalTube integer scalar test. `centers.txt` contains rounded
integer coordinates regenerated from exact unit-circle rational centres.
Neither an assumed root list nor sampled completeness is used.

`root/summary.json` records the separate root-runner replay of
`fourier_f6_cluster_tube` and `fourier_seed_lifting` in an isolated copy.
The latter now also checks the exact exceptional cases and matrix
identities supporting the strict B_F completion theorem. This is not a
claim to have rerun all 55 registered checks together.

Replay the full matrix certificate:

    python3 -B ProvenResults/FourierNeighbourhood/ClusterTube/verify.py --output-dir /tmp/f6-cluster-tube

`source_hashes.json` freezes the relevant current proofs and scripts.
