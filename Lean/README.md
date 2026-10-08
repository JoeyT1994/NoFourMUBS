# Lean source snapshot — 8 October 2026

This archive preserves **19,386 distinct Lean source files (273,077,698 bytes)** from the no-four-MUB research program and classification pipeline. It maps **77,948 workspace paths**, and separately preserves all **1,116 Lean paths** at prior publication commit `ed8470c7d77e76121610492b3bed98b98a5f1b3b`.

**This is a source archive, not a completed no-four-MUB proof or a new Lean admission.** No compiler was run during collection. Historical drafts, unsuccessful experiments, probes, generated modules, and successful compile-source copies coexist. Every path is explicitly marked archival; a historical receipt does not confer new proof credit.

There are **17,052 unavailable cloud-only workspace paths**. Their names and sizes are retained; their bytes were not read or hydrated. 94 paths were reconstructed from an exact historical path/hash pin and identical resident bytes. Such reconstruction preserves the pinned historical version; it does not inspect or certify the current cloud placeholder. Canonical historical source gaps remain real and are not all asserted to be duplicate compile copies. See `GAP_REPORT.json` before describing completeness.

## Verify and restore

Requires Python 3.9 or later, with only its standard library. These commands are offline and do not invoke Lean, Git, downloads, or package installation:

```sh
python3 verify_restore.py
python3 verify_restore.py --restore /path/to/empty/restored-workspace --dry-run
python3 verify_restore.py --restore /path/to/empty/restored-workspace
python3 verify_restore.py --restore /path/to/empty/restored-workspace --include-prior-git
```

The restorer preserves each original workspace-relative source path, skips unavailable bytes, and refuses to overwrite differing files. `--prefix research_factory/classification_extensions/` selects a subtree. `--require-complete` fails when the selected subtree has missing bytes. Prior Git sources restore under `prior-publication/<commit>/`, keeping that historical layout separate from workspace paths.

## Contents and scope

- `SOURCE_INDEX.jsonl`: every discovered workspace Lean path, source availability, SHA256 and blob mapping.
- `BLOB_INDEX.jsonl` and `blobs/<prefix>/<sha256>/<filename>.lean`: one exact-byte copy per SHA256, retaining a Lean filename.
- `GIT_SOURCE_INDEX.jsonl`: all prior published Lean paths with Git blob IDs and SHA256 bindings.
- `SOURCE_RECOVERY.json`: exact path/hash evidence for recovered placeholders. Older `json_location_breadcrumb` values are human-readable locations, not RFC6901 pointers.
- `IMPORT_INDEX.json`: heuristic import-name candidates across historical versions; ambiguity is explicit. It is not a context-resolved build graph.
- `GAP_REPORT.json`: missing-path groups, unresolved historical import names, and exact-source checks against prior published inventories.
- `provenance/`: selected mathematical source, review, status, dependency and replay records from portable Lean packets. Their original claims retain their original limited scope; no arbitrary cluster logs or access files are included.
- `SUMMARY.json`: exact roots, exclusions, counts and admission limitations. `FILE_MANIFEST.json` binds the final archive files.

The bounded source roots include `mub6-numerical` prerequisites, evidence, importer, worker sources and runs; the classification-cover port; `research_factory/lean`; the interval/graph kernels and formal core; and `research_factory/classification_extensions`. No whole-project inventory was attempted. Compiler, mathlib/vendor trees, build/cache directories and the publication checkout were excluded from the workspace traversal. These are directory-policy exclusions, not a claim that every omitted authored byte was proved redundant.

## Dependencies, replay and licensing

Sources span historical Lean versions. Prior portable packets retain their `lean-toolchain`, mathlib revision/dependency manifests, source inventories and serial replay plans where published. The modern classification/physical packets use Lean `v4.33.0-rc2` and mathlib commit `51e6992efd06126df61a496bebf8f49482a4e129`; older source versions may require their own pinned environment. `LICENSE.mathlib` is reused for upstream material and does not assign a new license to authored research sources.

There is deliberately no universal `lake build`: modules with the same name have different historical source hashes, and many snapshots lack an exact selected import/object binding. Use a selected portable packet's inventory and replay order, preserving its source/cache authenticity caveat. The archive carries source only: no `.olean`, `.ilean`, compiler binaries or large numerical datasets.

Formal admission still requires guarded kernel checking, exact source/object/import/receipt pins, an explicit axiom audit, and independent statement/hypothesis review. Allowed standard axioms are `propext`, `Classical.choice`, and `Quot.sound`; sorry, custom research axioms and native decision shortcuts do not receive proof credit. Generated proof replay must preserve the trust-level and kernel-check restrictions. Local compilation, if later authorized, remains serialized through the unchanged resource guard (180 seconds/job, 2304 MiB heap, 2816 MiB RSS, 2 GiB free disk, `-j1`). This snapshot closes no physical sector; closure requires complete, correctly scoped Lean obligations to be admitted.
