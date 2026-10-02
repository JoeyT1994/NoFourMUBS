# Data kept outside git

Everything acceptance-relevant is either committed or identified here by SHA-256. A file listed here is
not part of the repository, but its identity is fixed.

## GitHub release assets (files over 50 MB)

| File | Size (bytes) | SHA-256 | Release |
|---|---:|---|---|
| `ProvenResults/ActiveShoulderClosure_v2/data/shoulder_forest.jsonl.gz` | 81,325,429 | `443b1d594acc6e4dda3d80692908e63a0a1b5f4fa6553dae1bdb6fe1286aeba3` | `data-2026-10-02` |

To restore it, download the asset into its path and check the hash (`shasum -a 256 -c`). It is pinned by
`ProvenResults/ActiveShoulderClosure_v2/INPUTS.json`, so its verifier refuses a mismatched copy.

## Superseded guarded-run branch-layer evidence

These five directories under `Verification/` hold 61,386 files, about 786 MB. They are evidence from the
superseded `nofourmubs_guarded_2026-09-29` run, kept for history only; no current result depends on them.

- `BranchLayer_2026-09-29a`
- `BranchLayer_F3_joint_20260930a`
- `BranchLayer_guarded_20260930a`
- `BranchLayer_guarded_inventory_20260930T1159Z`
- `BranchLayer_local_20260929b`

Every file's SHA-256 is listed in `archive_manifests/branchlayer_guarded_evidence_sha256.txt.gz`. That
manifest's own SHA-256 is `28aa37d1e31d7834be2fe604f248a8dc81d85c084db898516b4fcbf0766034c2`. The master
copy is on the integrator's machine. It is to be archived with the release bundle.

## Cluster ledgers of the run of record

The bulk ledgers of `nofourmubs_rescaled_2026-09-30` and `nofourmubs_branch95_full_2026-10-01`, several GB,
are on rusty (`~/Documents/QuantumPhysics/ClusterScripts/`). Their hashes and audit receipts are committed
under `Verification/rescaled_run_audits_2026-10-01/`:
- `ledger_sha256_*.txt`;
- `pass3_sha256.txt`;
- the `audit_exact_*` receipts.

They are to be archived with the release, on Zenodo or Flatiron storage.

## Submodule

`ClassificationPaper/CertificatesandLean` is the collaborator repository
`git@github.com:mateocardeneswuttig/all_hadamard_matrices_in_dimension_six.git`, pinned at commit
`57b03025ecbe259e474281f49e201ea7cb474e34`.
