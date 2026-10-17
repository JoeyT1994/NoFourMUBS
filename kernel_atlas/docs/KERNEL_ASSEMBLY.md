# Assembling the kernel atlas into one `AtlasCertificate` (design 16 Oct, route A implemented 17 Oct 2026)

**Optional side project, not part of the proof** (see `../README.md`). The proof is `NoFourMUBs.Final.no_four_mubs
(C : AtlasCertificate) : ¬ FourMUBs` with the certificate checked by Arb and Julia. This note designs the last step of
the kernel route: one Lean term `C : AtlasCertificate` built from the per-Record kernel checks, so that `¬ FourMUBs`
holds with no hypotheses and only `propext`, `Classical.choice`, `Quot.sound`. Nothing here has been run at scale;
the measurements are from Records 100, 146, 4015, 7 and the Tao Record on a laptop, and one small module-system
experiment.

## 1. What has to be assembled

```lean
structure AtlasCertificate where
  ι : Type
  [fin : Finite ι]
  A : ι → RecordCert
  boundary : ∀ l, Nonempty (BoundaryCover A l)
  tao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K
  anchor : Step2.CoveredMatrix (InAtlas A) BaseAnchor.H0
  fourier : Step2.FourierAnchorCertificate (InAtlas A)
```

Available per Record (all with standard axioms only):

| Piece | Lean | Depends on other Records? |
|---|---|---|
| `Rec<n>.cert : RecordCert` (Stage C v2 + normal bound) | `Rec<n>/Record2.lean` (`recordK`) | no |
| `Rec<n>.boundary : ∀ A l, A l = cert → (targets' centres and radii) → Nonempty (BoundaryCover A l)` | `Rec<n>/BoundaryCover.lean` (`boundaryK`) | yes: its ≈ 52 targets' `P` and `R` |
| `RecTao.cert` (zero-dimensional) and `RecTao.tao` | `RecTao/Record.lean` (`recordK0`) | no |
| `Special.fourier`, `Special.anchor` | `Special/Exact.lean`, `Special/Anchor.lean` | yes: Records 877 and 9319 |

So `ι = Fin 12022` (the 12,021 atlas Records and Tao's Record), `A i = Rec<i>.cert`, and the work is (a) building a
12,022-way family without a 12,022-way literal, (b) discharging every Record's target hypotheses, and (c) doing so
within memory and import limits.

## 2. Costs that shape the design (measured)

| Quantity | Value | Source |
|---|---|---|
| One Record, compile (Stage C v2 + normal bound) | ≈ 30 CPU-min, 13 GB peak (H2Slab modules up to ≈ 20 GB) | `atlas_run.py` pilot, Records 146 and 7 |
| One Record, boundary | ≈ 1.5 CPU-min, ≤ 11 GB | `KERNEL_BOUNDARY.md` §4 |
| Oleans per Record | 13 MB (v1, Record 100), **177 MB** (v2, Record 146: 12 slab modules of ≈ 15 MB, mostly hint lists stored as `List ℕ` literals) | `.lake/build` |
| Constants and modules per Record | ≈ 400–830 constants, ≈ 30 modules | `env.constants` count |
| Importing two whole Records (100 and 146) on top of `BoundaryK` | +20 MB resident, +0 s | oleans are memory-mapped; pages are touched lazily |
| Mathlib + NoFourMUBs baseline per process | ≈ 5.8 GB resident, 10,700 modules, 780k constants | same |

Extrapolated to the atlas: ≈ 6,300 CPU-hours of compilation, **≈ 2.1 TB of oleans with the v2 layout** (≈ 160 GB
with the v1 layout), and an environment of ≈ 10M constants in ≈ 360k modules if everything is imported into one
process.

## 3. The obstacle: one environment must contain every Record

Whatever the hierarchy, the final declaration `C` mentions `Rec<n>.cert` for every `n`, and plain Lean imports are
transitive: the module defining `C` loads every Record's oleans. Two ways through:

**(A) Plain imports with smaller oleans (no change to the proof).** Keep every per-Record olean and import them all in
the final job. Memory is not the problem (mmap; §2), but the size and count are: 2.1 TB of v2 oleans on ceph is too
much, and 360k modules is ≈ 35× Mathlib. Two preparatory changes make it reasonable:
* **pack the per-Record data** as big natural-number literals (as `BoundaryK`'s packed tree and v2's packed hint rows
  already do) instead of `List ℕ` literals; the 15 MB slab oleans are list literals, and packing should bring a v2
  Record to ≲ 10–20 MB (≈ 120–240 GB for the atlas);
* **fewer modules per Record** where memory allows (e.g. the 12 H2Slab files are split for peak memory during
  compilation, not for import).
A pilot importing 1,000 Records in one process measures the import time and memory before committing to this.

**(B) The module system (summaries hide the data).** Lean 4.33 has `module` files: a module's private `import` is not
loaded by its importers, and a `public def` exports its type but not its body. Measured with three toy modules
(`A` big data and an axiom, `B` a `module` importing `A` privately and exporting a summary theorem, `C` a `module`
importing `B`): in `C`, `A` and its constants are **not loaded**, and `#print axioms` on the summary **still reports
`A`'s axiom**, so the axiom audit survives. A per-Record summary module could then export only
`Rec<n>.cert : RecordCert` (body hidden) with small theorems about its `P`, `R` and boundary, and the final job would
load ≈ 50 KB per Record (≈ 600 MB). **But a `module` cannot import a non-module file** (also measured), and
`NoFourMUBs` and `hadamard6_formal` are not modules (Mathlib is). So (B) needs `NoFourMUBs`, `hadamard6_formal` and
`KernelAtlas` converted to the module system: mechanical (`module`, `public import`, `public`/`@[expose]`), no
mathematical change, but it touches the proof's sources and a pinned external dependency. **That is the user's
decision**; (A) needs no such change.

Recommendation: plan for (A), with packed data, and run the 1,000-Record import pilot first; fall back to (B) if the
pilot shows the full import is impractical.

## 4. Discharging the cross-Record hypotheses

`Rec<n>.boundary` needs, for each target `t` of the data, `(A (tg j)).P = Pmat t.pt` and `t.Rt ≤ (A (tg j)).R`;
`Special.fourier`/`anchor` need the same for Records 877 and 9319, `RecTao.tao` needs `A l = RecTao.cert`.

**A shared atlas table makes the links definitional.** Generate once `AtlasTable.lean`: the 12,021 binary64 centres and
radii (packed; ≈ 3.5 MB of rationals as source, less packed), with accessors `centre : ℕ → List (List ℚ)` and
`radius : ℕ → ℚ`. Then:
* every Record's `Data.lean` sets `tab.PqL := centre n` and `bars.R := radius n`, so `(Rec<n>.cert).P = Pmat
  (pqOf (centre n))` and `(Rec<n>.cert).R = radius n` hold by `rfl`;
* every boundary's targets store the target **index** and set `Pt := centre t`, `Rt := radius t`, so `htP`, `htR` hold
  by `rfl` once `A t = Rec<t>.cert`.
Without the table, each link is one `decide` on 36 rationals (≈ 630k links, a few CPU-minutes in total), placed in the
chunk modules below. The table is the cleaner design; it changes only the generators (`export_record.py`,
`export_boundary.py`, `export_v2.py`), not the checkers.

**The family without a 12,022-way literal.** Chunks of 100: `Atlas/Chunk<k>.lean` (k = 0…120) imports its 100
Records and defines `certK k : Fin 100 → RecordCert` by a 100-way `match`; the final `A i := certK (i / 100)
(i % 100)` (a 121-way `match` on `i / 100`), and `A ⟨n, _⟩ = Rec<n>.cert` reduces by `rfl`. Each chunk also proves,
for an arbitrary family satisfying the table (so before `A` exists):

```lean
theorem chunkBoundary (A : Fin 12022 → RecordCert) (hA : ∀ i : Fin 100, A ⟨100 k + i, _⟩ = certK k i)
    (hP : ∀ t, (A t).P = Pmat (pqOf (centre t))) (hR : ∀ t, radius t ≤ (A t).R) :
    ∀ i : Fin 100, Nonempty (BoundaryCover A ⟨100 k + i, _⟩)
```

by 100 instances of `Rec<n>.boundary`. The final module proves `hP`, `hR` for its `A` from the chunks' `rfl`
lemmas, and `boundary l` by the chunk of `l`.

## 5. The final module

```lean
noncomputable def A : Fin 12022 → RecordCert := fun i => certK (i / 100) (i % 100)     -- Tao at 12021
noncomputable def atlasCert : AtlasCertificate where
  ι := Fin 12022
  A := A
  boundary l := chunkBoundary (l / 100) A … l
  tao := RecTao.tao A ⟨12021, _⟩ rfl
  anchor := Special.anchor A ⟨9319, _⟩ (A_P 9319) (A_R 9319)
  fourier := Special.fourier A ⟨877, _⟩ (A_P 877) (A_R 877)
theorem no_four_mubs_kernel : ¬ FourMUBs := NoFourMUBs.Final.no_four_mubs atlasCert
#print axioms no_four_mubs_kernel     -- expect [propext, Classical.choice, Quot.sound]
```

(`Final.lean`'s statement is unchanged; this module imports it like any other.)

## 6. The cluster run on rusty

| Phase | Jobs | Work | Est. cost | Output |
|---|---|---|---|---|
| 0. Shared | 1 | build CORE + `BoundaryK`, `ExactK`, `AnchorK`, `RecordK0`; generate `AtlasTable` | < 1 h | oleans on ceph |
| 1. Records | array over 12,021 Records, ≈ 40–60 per 1 TB node (memory-bound at 13–22 GB) | `atlas_run.py` extended with the boundary modules (`export_boundary.py --v2`) and `--keep` | ≈ 6,300 CPU-h (≈ 2 days on 50 nodes) | per Record: oleans, `rows.jsonl` (CPU, peak memory, axioms of `cert` and `boundary`) |
| 1b. Special | 1 | `RecTao`, `Special.Exact`, `Special.Anchor` | ≈ 10 CPU-min | oleans |
| 2. Chunks | 121 | `Atlas/Chunk<k>`: import 100 Records, 100-way `match`, `chunkBoundary` | minutes each; memory ≈ baseline + imports | oleans |
| 3. Final | 1 | import the 121 chunks (hence all Records), `atlasCert`, `no_four_mubs_kernel`, `#print axioms` | import-dominated; to be measured by the pilot (estimate tens of minutes, ≤ 64 GB) | the theorem and its axiom list |
| 4. Replay (optional) | per module | `leanchecker` re-checks every declaration from the oleans | ≈ Phase 1 kernel time | an independent re-check |

Before Phase 1: pack the v2 data (§3 A), add the table (§4), keep oleans in `atlas_run.py`, and run the 1,000-Record
import pilot (Phase 3 on a subset). The user runs everything on rusty; nothing here assumes access from this machine.

## 7. Open points

* Records with a clustering variant (26 of them, `KERNEL_TANGENT_V2.md`) and Records needing the bitset clique search
  (e.g. 4015) are ordinary Phase 1 jobs; `atlas_run.py` already handles both.
* The boundary cost is dominated by ≈ 20 ms per transfer leaf (`KERNEL_BOUNDARY.md` §4), unexplained; it is ≈ 5% of
  Phase 1 and not on the critical path.
* (B) also shrinks Phase 1 storage (only summaries need to survive), but needs the module-system conversion of the
  proof's sources (§3), which only the user can approve.

## 8. Route A, implemented (17 Oct 2026)

**Why the v2 oleans were large.** Not the hint literals themselves: every generated `def` was computable, so Lean
stored compiled code for each data literal. Record 146's slab module: 15.6 MB of olean with computable definitions,
1.1 MB with `noncomputable` (same source).

**Generators** (checkers unchanged):
* `kpack.py` post-processes every generated file: all `def`s `noncomputable`, and each long `List ℕ` literal packed
  into one big ℕ, read back by `unpackL w n x` (`Pack.lean`, a decoder the kernel runs once per list). `atlas_run.py`
  and the `export_*` scripts call it.
* `export_table.py`: the shared atlas table `Table/T<k>.lean` (`c<n>`, `r<n>` for 100 Records each) and `Table/All.lean`
  (`N`, `cen t`, `rad t`); generated, not committed (22 MB of source, 121 modules, ≈ 65 s to build in parallel).
  `Data.lean` sets `tab.PqL := Table.c<n>`, `Record*.lean` sets `bars.R := Table.r<n>`, and the boundary data name
  their targets as `Pt := Table.c<t>`, `Rt := Table.r<t>`.
* `Assembly.lean`: `pqL`, `linkOK` (target `j` of the boundary data is atlas Record `tgIdx[j] < N` with the table's
  centre and radius; one `decide` per Record) and `boundary_of_links`; `boundary_zero` (Tao's Record: `T = 0`,
  `n < R`, empty shell). Each `BoundaryCover.lean` now ends with `tgIdx`, `linkOK_` and
  `boundaryT : A l = cert → (∀ t < N, (A (idx t)).P = Pmat (pqL (cen t))) → (∀ t < N, rad t ≤ (A (idx t)).R) →
  Nonempty (BoundaryCover A l)`; `RecTao.boundary` gives Tao's.
* `export_assembly.py`: `Atlas/Chunk<k>.lean` (`cert<k>`, `cert<k>_P`, `cert<k>_R` by `rfl`, `bnd<k>`: the chunk's
  boundaries for any family with the table's centres and radii) and `Atlas/Final.lean` (`ι = Fin (N + 1)`, Tao's Record
  last; `A`, `boundaryAll`, `atlasCert`, `no_four_mubs_kernel := Final.no_four_mubs atlasCert`). The statements do not
  depend on `N`. `Final.lean` can only be built once every Record is: its `boundary` field needs all targets.
* `atlas_run.py` now generates and compiles the boundary modules too, seals the data, checks the axioms of both
  `cert` and `boundaryT`, and has `--max-procs` (one Lean process at a time locally).

**Local re-verification** (MacBook, one Lean process at a time, standard axioms for every `cert` and `boundaryT`):

| Record | olean before | olean after | CPU | peak |
|---|---|---|---|---|
| 146 (v2) | ≈ 177 MB | 5.4 MB | 29 min | 13.2 GB |
| 4015 (v2, bitset cliques) | — (not built here before) | 6.4 MB | 68 min | 33.2 GB (`Graph2`) |
| 7 (v2) | — | 5.2 MB | 30 min | 13.2 GB |
| 100 (v1, with its boundary) | 12.2 MB | 2.9 MB | 16 min | 14.7 GB |
| Tao's Record (with `RecTao.boundary`) | 7.6 MB | 1.3 MB | 8 min | 13.1 GB |
| `Special.Exact`, `Special.Anchor` | 2.9 MB | 1.5 MB | < 1 min | 6.0 GB |

So a v2 Record is ≈ 5–6.5 MB of olean (≈ 70 GB for the atlas instead of ≈ 2.1 TB).

**Rusty: what it took** (all in `generators/`):
* `/mnt/ceph` is a FUSE mount. Lean memory-maps several GB of oleans per process, and over FUSE these pages were
  neither cached nor fast: ~100 Lean processes sat at ≈ 4% CPU, and a module importing nothing took > 16 min.
  `rusty_stage.sh` runs every job from the node's local SSD (`/tmp`, 1.8 TB): `stage_in` unpacks one tarball of the
  toolchain and `lean/.lake` (`/mnt/ceph/users/$USER/nofour_stage.tar`, 13 GB, written by the setup job; ≈ 100 s to
  stage, against 58 min for copying the same files one by one, ≈ 4 MB/s), and copies results back.
* `nproc` honours `OMP_NUM_THREADS`, which the job scripts set to 1 just before: the driver saw one core. Fixed in
  `run_atlas_rusty.sh` and `run_pilot_rusty.sh` (`env -u OMP_NUM_THREADS nproc`).
* ccq allocates whole nodes (128 cores) whatever `--cpus-per-task` says, so jobs should use all of them; and
  `--cpus-per-task=128` is needed for the batch step to see them.

### The rusty pilot (17 Oct 2026; `results/pilot/rusty/`)

Planned: Records 0–999. Run: **Records 0–499 on 2 nodes with a 1 h 20 min cap**, because ≈ 255 of the ≈ 600
core-hours went into the setup job's FUSE problem (above) before it was found. **556 core-hours** were allocated in
all (11 jobs, `jobs.txt`), within the budget.

| Phase | Result |
|---|---|
| 0. Setup (core, `BoundaryK`, `Assembly`, table) | built; the stage tarball (13 GB) written in 161 s |
| 1. Records (`run_pilot_rusty.sh`, 2 × 128 cores, 65 min) | **50 Records kernel-checked** (0–51; all `ok`, `cert` and `boundaryT` with exactly `propext`, `Classical.choice`, `Quot.sound`), about 130 more in flight at the cutoff |
| per Record on rusty | **80.5 CPU-min** (median 79.6, max 97), generation 275 s, peak 14.3 GB (`Sigma`; H2Slab ≤ 13.7 GB), 40 min wall |
| oleans | **4.9 MB per Record** (max 5.4), 29 module oleans per Record |
| 3. Import (`run_import_rusty.sh`) | one process importing all 50 Records: **4.2 s wall, 6.9 GB peak**, against 3.9 s and 6.7 GB for the shared modules alone; +42k constants and +1,460 modules |
| chunks | none tested on rusty (no chunk of 100 was complete); see below |

**Extrapolation to the atlas.**
* Imports: per Record +0.006 s, +4 MB resident, +840 constants, +29 modules, linearly: the final process imports
  ≈ 350k modules and ≈ 10M constants in **≈ 1–2 min and ≈ 50 GB**, from ≈ 59 GB of oleans. Route A is feasible: no
  module-system conversion is needed.
* Compilation: 80.5 CPU-min per Record on rusty (2.7× the laptop's 29–30) gives **≈ 16,000 CPU-hours** plus ≈ 900 for
  generation, against the 6,300 estimated from laptop timings. Utilisation was ≈ 50% (load ≈ 50–65 on 128 cores): the
  driver's memory budgets (H2Slab 22 GB, `Graph2` 35 GB) are above the measured peaks (≤ 14 GB on rusty), and
  `--max-records 60` caps the Records in flight. With budgets from the measured peaks and more Records in flight, a
  full run is ≈ 17,000–20,000 core-hours (≈ 140 node-hours of 128 cores, e.g. ≈ 1 day on 6 nodes); at the pilot's utilisation, ≈ 34,000.
* Each job should stage from the tarball (≈ 100–290 s) and copy its outputs back.

**The chunk and final modules, tested locally.** No chunk of 100 Records was complete, so the generated `Final.lean`
was compiled locally against stub chunks: 121 modules holding exactly the generated statements of `cert<k>`,
`cert<k>_P`, `cert<k>_R` and `bnd<k>`, proved by `sorry`. It compiles (10 s), `atlasCert : AtlasCertificate`
type-checks, and its axioms are the standard three plus the stubs' `sorryAx`. So everything in `Final.lean` except
the chunks' own proofs is checked. Each chunk's proofs (100 `rfl`s per lemma, 100 `boundaryT` instances) were not
compiled, only the patterns they use (`Table.cen0 (n + 100) = c0 := rfl`, the literal `match` on `k`). The real
`Final.lean` also imports `NoFourMUBs.Final` (the proof's `--lean-full` build, hours on a first build); the stub
test used `NoFourMUBs.MainTheorem`, where `AtlasCertificate` is defined.

**Next for a full run.** (1) Set `mem_gb` in `atlas_run.py` from the measured peaks and raise `--max-records`; (2) run
Records in chunk order so whole chunks finish together, and compile each chunk as soon as it is complete;
(3) build `NoFourMUBs.Final` once in the setup job; (4) the final job imports the 121 chunks.

