# Verification: receipts and the final ledger

| Folder | What it verifies |
|---|---|
| [ledger_2026-10-07c](ledger_2026-10-07c/README.md) | **The final ledger.** All 45,713,468 post-E branch-layer rows, with the certificate closing each one. 0 open, 0 delegated |
| [band_2026-10-07](band_2026-10-07/README.md) | Band-certificate production: 6,408 input boxes, 6,370 accepted. The 38 boxes at exact seeds are closed by [`seed0024`](../RouteC/band/seed0024/PROOF.md) |
| [active_shoulder_2026-10-01](active_shoulder_2026-10-01/README.md) | Clean replay of [ActiveShoulderClosure](../ProvenResults/ActiveShoulderClosure/README.md) |
| [signed_corner_psd_2026-09-30](signed_corner_psd_2026-09-30/README.md) | Clean replay of [SignedCornerPSDPrune](../ProvenResults/SignedCornerPSDPrune/README.md) |
| [branch_helper_2026-09-30](branch_helper_2026-09-30/README.md) | Local verification of [SymmetricSignedCornerPrune](../ProvenResults/SymmetricSignedCornerPrune/README.md) |
| [T2_F6_cluster_tube_2026-09-29](T2_F6_cluster_tube_2026-09-29/README.md), [T2_F6_expanded_tube_2026-09-29](T2_F6_expanded_tube_2026-09-29/README.md) | [ClusterTube](../ProvenResults/FourierNeighbourhood/ClusterTube/README.md): the F6 tube at radius 1/36, then 1/30 |
| [T2_practical_partition_2026-09-28](T2_practical_partition_2026-09-28/README.md), [T2_practical_tube_2026-09-28](T2_practical_tube_2026-09-28/) | [PracticalTube](../ProvenResults/FourierNeighbourhood/PracticalTube/README.md): the uniform Fourier-family tube, radius 1/16384 |
| [T2_regional_matrix_tubes_2026-09-29](T2_regional_matrix_tubes_2026-09-29/README.md) | [WideFamilyTube](../ProvenResults/FourierNeighbourhood/WideFamilyTube/README.md): regional radii 1/256 on 191 parameter boxes |
| [T2_moving_reference_2026-09-29](T2_moving_reference_2026-09-29/certificate.json) | The moving-reference criterion of [SeedLifting](../ProvenResults/FourierNeighbourhood/SeedLifting/MOVING_REFERENCE.md) |

## Receipts kept elsewhere

- **The wide F6 tube and the local lemma:** [`simplerproof/widetube/results/`](../simplerproof/widetube/results/).
- **The (0,0,2,4) seed closure:** [`RouteC/band/seed0024/close36_receipt.json`](../RouteC/band/seed0024/close36_receipt.json).

The large raw outputs (the band tapes and the frontier records) are on the Flatiron cluster. The ledger checks each one against its sha256 before crediting a row.

## Rerunning

`python3 verify.py` (from the repository root) replays every registered exact check and writes `summary.json` to `--output-dir`.
