# Active shoulder verification receipt

The delivered closure status is **INCOMPLETE**. The partial evidence audit
passes; this is not a complete exclusion of the shoulder region.

`replay/RECEIPT.json` is the clean replay of the final pinned module on
the extracted standalone archive. The default verifier exits 2 because
6,340 region leaves remain open. It independently validates all 3,047
accepting partition leaves, 87 supplemental boxes and five new regional
radius-1/36 matrix tubes, then runs exact containment on all 80,613 inputs.

The all-input result is 88 accepted and 80,525 not certified by this
release. `replay/uncovered.jsonl.gz` is the exact uncovered list, not a
sample. It includes original input text, exact center fractions and the
outward rational radius, with each first open-leaf reason.

`source_preservation.json` compares every one of the 64,539 original
files to the supplied archive by SHA-256. No original file was changed
or omitted, and all added files were within the two authorized new
folders. The mathematical, runtime and package-integrity scopes are
kept distinct in these receipts.

Reproduce from the NoFourMUBS root with a new output directory:

```sh
OPENBLAS_NUM_THREADS=1 python3 -B ProvenResults/ActiveShoulderClosure/verify.py \
  --jobs 4 --output-dir /tmp/shoulder-clean-replay
```

Expected process exit is 2. The partial audit fields should pass and the
whole-region field should remain INCOMPLETE. `--audit-partial` permits
exit 0 for the narrower audit question only; it does not change the
whole-region result. A C++17 compiler with UBSan is required for the new
complete matrix-tube replays.
