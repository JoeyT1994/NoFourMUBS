# The full kernel atlas run (rusty, 16–18 Oct 2026)

**Result.** All 12,021 atlas Records and Tao's Record were kernel-checked, then the 121 assembly chunks, then
`KernelAtlas/Atlas/Final.lean` (job 7276121, `final_7276121.log`, `final.json`):

```
'NoFourMUBs.KernelAtlas.Atlas.no_four_mubs_kernel' depends on axioms: [propext, Classical.choice, Quot.sound]
'NoFourMUBs.KernelAtlas.Atlas.atlasCert' depends on axioms: [propext, Classical.choice, Quot.sound]
NoFourMUBs.KernelAtlas.Atlas.no_four_mubs_kernel : ¬NoFourMUBs.FourMUBs
```

Every Record's `cert` and `boundaryT` depend on exactly these three axioms (`records.jsonl.gz`, fields `axioms_cert`
and `axioms_boundaryT`, from Record 100 on; the smoke Records 0–99 record their union, `axioms`).

## Files

| file | contents |
|---|---|
| `records.jsonl.gz` | one row per Record: `idx`, `status`, axioms, `cpu_s`, `peak_gb`, `gen_s`, `gen_commit`, `olean` and `src` hashes (`tar_sha256` of the tarball, `content_sha256` of the files inside, see below), `restored_modules` for Records resumed from a snapshot |
| `chunks.jsonl` | one row per chunk `Chunk<k>` (Records 100k … 100k + 99): compile time, memory, tarball size |
| `final.json`, `final_7276121.log` | the final job's report and log (`#print axioms`, `#check`) |
| `summary.json` | counts, CPU totals |
| `jobs.txt` | every Slurm allocation of the run (`nofour-katlas*`): job id, name, elapsed, allocated core-seconds |

Not in git (on rusty, `/mnt/ceph/users/jtindall/nofour_katlas`, 12,315 files, 87 GB): `src/Rec<n>.tar.gz` (each
Record's generated Lean sources and per-module logs), `chunks/Chunk<k>.tar` (the oleans of the chunk's Records and of
`Chunk<k>`), `rows/` (the drivers' rows), `logs/`.

## Hashes and regeneration

`content_sha256` is the SHA-256 of the lines `<file> <sha256 of the file>`, sorted, over the `.lean` files of the
Record's import closure of `Record2` and `BoundaryCover` (`chunk_run.tar_hashes`), resp. over its `.olean` files.
`kernel_atlas/generators/regen_check.py IDX …` regenerates Records from `proof/atlas/results/atlas_certificate.json.gz`
in a clean copy of the repository and compares the source content hash.

* `gen_commit` is the generators' commit for the Record (rows without it: `31c6d9d2`; the generators were unchanged
  from fcea9c1a to 31c6d9d2).
* Generators before cacef1a9 computed the joint-edge hints with numpy's least squares, whose last bits depend on
  BLAS/LAPACK: those Records regenerate byte for byte on rusty's x86-64 nodes with the run's environment (Python
  3.12.9, numpy 2.2.6, scipy-openblas 0.3.29; checked for Record 7). From cacef1a9 on the hints are platform
  independent (Record 146 byte-identical on macOS arm64 and rusty).
* Records with `restored_modules` were resumed from a node snapshot. Those finished after 17:15 EDT on 18 Oct had the
  long hex literals of their not yet compiled modules chunked (`kpack.split_text`, same values; Lean reads a numeral in
  quadratic time, and `Hints2` of the 343-label Records took 8–9 h). Their source tarball holds exactly the sources
  their oleans were compiled from; to compare a regeneration with it, apply `kpack.split_text` to both sides
  (not yet checked for these Records).

## Commands (repository copy on rusty, `kernel_atlas/generators/`)

```
sbatch run_katlas_setup.sh                                   # NoFourMUBs.Final, RecTao, Special; stage tarball
sbatch --array=0-15 --time=10:45:00 --export=ALL,NTASK=16 run_katlas_records.sh      # Records (atlas_run.py --archive)
#   … resumed with IDX_DIR (per-task index files), PARTIAL (snapshots), RETRY=1, MEM_OVERRIDE (largest Records)
sbatch --export=ALL,CHUNKS="…" run_katlas_chunks.sh          # chunks (chunk_run.py)
sbatch --export=ALL,NAME=final,NO_OLEAN_MMAP=1 run_katlas_final.sh                    # final_run.py
python3 full_manifest.py --archive /mnt/ceph/users/jtindall/nofour_katlas --out kernel_atlas/results/full
```

The final module imports 377,470 `.olean` files. Lean maps each at a fixed address, one memory mapping per file, which
exceeds rusty's `vm.max_map_count` (262,144; the plain compile failed at 262,092 mappings). `--no-olean-mmap`
preloads `nommap_olean.c`, which refuses exactly Lean's olean mappings, so Lean takes its own fallback and reads each
file into memory (`MALLOC_MMAP_THRESHOLD_` keeps those buffers in glibc's heaps): 428,693 mappings refused, the final
module compiled in 146 s at 85 GB, the axiom check in 124 s.

## Cost

53,675 core-hours over 97 allocations (`jobs.txt`; whole 128-core nodes), of which 30,772 CPU-hours went into the
Records' Lean and generation processes (`summary.json`). The difference: the first two jobs' time limits cut off
Records that had been in flight for hours (no snapshots yet), the `Hints2` tail before the literals were chunked
(single-threaded modules on mostly idle nodes), and out-of-memory kills of the largest Records (retried).
