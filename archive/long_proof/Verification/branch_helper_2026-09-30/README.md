# Branch-helper return: local verification, 30 September 2026

The two modules came from the branch helper as an additive overlay. RETURN_MANIFEST.json is included,
and all 30 file hashes matched on receipt.

## ProvenResults/SymmetricSignedCornerPrune

- Registered in the root `verify.py` as `symmetric_signed_corner_prune`. The root runner passes
  `--project-root` and `--all`, and copies `branch_bins_study_2026-09-30`.
- Status: **PASS** (`root_check/`). 511 of 1,000 sample residual boxes are excluded from strict D₀,
  including 172 crossing R = 0. The six physical D₀ negative controls are rejected.
- Dependencies: the accepted strict side/completion exhaustion and the side-formula identities in
  `MinimalConstruction/ASSUMPTIONS.md`, both labelled in the module.

## ProvenResults/SideChartCover

Not registered: the Python verifier fails, see below.

1. **Python verifier: FAILS here.** `sidechart_python_verify_FAILS.txt` shows a `NameError` for
   `moments_poly_interval` inside the parallel replay worker. The helper's receipt reports PASS, so
   this is a packaging or environment bug for the helper to fix.
2. **Julia regression `test_regular.jl`.** The delivered file stops on a Julia soft-scope error: a
   global counter is updated inside a top-level loop.
   - With `global accepted` (`test_regular_with_global_fix.jl`), the test **passes**.
   - On 4 regular boxes, production `certify_cell_cover_accelerated` and `certify_cell_sidechart` both
     certify, in about 5.5 s and about 23 s.
3. **Julia cover pilot `pilot.jl`, unchanged**, in `sidechart_local_pilot/`. It ran on the first 40
   of its deterministic 1,000-box sample, from `posR_singular_boxes_level13.txt.gz`, singular boxes
   with R > 1.
   - **32 of 40 certified quartet-free**, at a mean of 39 CPU-s per box.
   - The other 8 failed side-model construction (`side_contraction`). No cover test failed.

The Julia runs used local Julia 1.12.1 with `NumericalCampaign/Certification/jlenv` and production
FastTM `7e9c0bc3…`.

**Integration gate before campaign use:**
- the helper fixes both bugs and the Python verifier passes;
- a cluster pilot on Julia 1.12.7 (`jlenv_cluster`);
- the module is registered.
