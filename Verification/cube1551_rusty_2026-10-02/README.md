# ActiveF6Cube1551: clean replay on rusty (2 October 2026)

`ProvenResults/ActiveF6Cube1551/verify.py --jobs 64 --cpu-hours 12` was run on one rome node (slurm job 7161026), in
the production environment: Julia 1.12.7 with production sources `577018eb`, g++ 13.3.0 with UBSan, python-flint 0.9.0.

Result: **PASS**. The (1,5,5,1) and (5,1,1,5) guarded cubes (half-width π/512 + 2^-40) are closed. All 4,744 leaves were
replayed: side_lift 2,657; FourierTransverseStability_v2 443; Fourier_R_slabs 1,244; R_nonpositive 35;
accelerated_cover 365. The run took 4,531 CPU-s and 109 s of wall time. Together with the 88 cubes already closed,
all 90 production cubes are now closed.

Files:
- `RECEIPT.json`: the verifier's receipt;
- `leaves.jsonl.gz`: the per-leaf replay outcomes;
- `cube1551_replay.out`: the job log.
