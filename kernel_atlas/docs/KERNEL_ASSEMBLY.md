# Assembling the kernel atlas into one `AtlasCertificate` (design, 16 Oct 2026)

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
