# The sharper kernel tangent test (v2)

**Status (15–16 October 2026).** Experimental, not part of the proof. `Rec146.coverT2` is kernel-checked: the
whole bin tree of atlas Record 146 (one of the 673 Records that the v1 kernel checker could not settle), with the
direct test, the hinted v2 tangent test, and label membership at the leaves. It uses only the standard axioms.
With the joint edge test (6.23) now in the kernel too, **`Rec146.stageC2` is a complete kernel-checked Stage C
certificate for Record 146** (`StageCCert`, standard axioms): the v2 bin cover, label membership, direct and joint
edge exclusions, and the two-clique search. With the kernel normal bound on top, **`Rec146.cert : RecordCert` is
kernel-checked** (standard axioms): the second complete Record after Record 100, and the first that v1 could not do.

## Why

The atlas survey found 673 Records (5.6%) whose kernel labels admit two cliques even with the support and joint
edge tests, while certify.py (Arb) passes them all. `explorations/hard_records/` traced this to the kernel's tangent
test (Lemma 6.3, `Tangent.lean`), which fixes the multiplier `y = c` and keeps only one branch of each remainder term.
With certify.py's least-squares multiplier and the full remainder, 671 of the 673 settle in floats, and all 673 with
the scalar test (6.12) added. **The atlas does not need to change.**

## Design

- **Real-number cores** (`Tangent2.lean`). `lin2_real` derives `StageC.leafRej_of_linear` for *any* multiplier `y`
  from integer bounds of every norm in the lemma: Jᵀy, Bᵀy, N_y, G_y, the three S∘y norms, |Σ y c|, with the
  table and rounding errors. `scal2_real` does the same for `leafRej_of_scalar`. New error lemmas: `C_err` (complex
  products), `S_le`, `N_bound` (Minkowski).
- **The kernel checker** (`Tangent2K.lean`). `Nat` only, computed directly from the six row values of a bin (no
  lane packing): signed integers are pairs `(p, m)` of naturals. Square roots are integer upper bounds `s` with
  `X ≤ s²`, computed by bisection and Newton (`isqU`, untrusted) and checked by one multiplication.
- **Hints.** Python (`ktangent2l.py`, the exact mirror) decides per bin which test the kernel runs: none, the scalar
  test on column i, or the linear test with a multiplier `y` (|y_i| ≤ 511, a least-squares direction solved on the
  complement of (1,…,1), the exact null direction of the normal matrix). The hint stream of each sub-slab is a Lean
  list threaded through the traversal (`binH`); every bin that survives the direct test consumes one hint. Hints are
  untrusted: the soundness theorems hold for every hint.
- **Soundness** (`Tangent2S.lean`): `lin2B_sound`, `scal2B_sound`, `tang2B_sound` (one bin), `binH_sound`,
  `subH_sound`, `topH_sound` (the traversal, any hints), all sorry-free with standard axioms. The per-Record rational
  conditions on the coefficients are `T2ParOK`, decided once per Record.
- **The joint edge test** (`Joint2.lean`, `Joint2K.lean`, `Joint2S.lean`). `labBnd` gives the real bounds of one label
  centre from integer node values; `joint_core` turns the bounds of two labels, an approximated pair vector and an
  edge term into the inequality of `edgeOExcl_of_joint` / `edgeUExcl_of_joint`; `jointO_excl` / `jointU_excl`
  instantiate it with the table values of `e(v_a − v_b)` (error `ε_U` each). The kernel checker computes the label
  centres from the tables (certified by `nodeB`, like tree nodes), each label's integer quantities as in the v2 test,
  and one exact rational comparison per pair (about 3,200 ordered pairs per Record, so rational arithmetic is
  affordable here). Multipliers `y₀, y₁, y_e` come from a per-pair hint (least-squares, `kjoint.py`).
  `jointOB_sound`, `jointUB_sound` and `stageCK2` (the certificate from `edgesOK2`) are sorry-free.
- **Exporter**: `kernel_atlas/generators/export_v2.py <idx> <dir> --all --labels` writes `T2Data.lean`,
  `L2Data.lean` (labels of the v2 survivors), `H2SlabNN.lean` (12 files, 12 sub-slabs each, with their hint lists)
  and `CoverH2.lean` (`T2ParOK` by kernel decision, and `coverT2` through `topH_sound`).

## Results

### Record 146

| | v1 (`Tangent.lean`) | v2 |
|---|---|---|
| depth-0 survivors | 11,065 | 7,498 |
| labels | 133 | 115 |
| graph passes with direct + joint edges | no | yes (390 O-pairs, 1,196 U-pairs excluded by the joint test) |
| hints | – | 132,368 (24,644 scalar, 88,023 linear, 19,701 none) |

Kernel check of `Rec146.coverT2` (18-core, 64 GB laptop, three slab files at a time):

| | |
|---|---|
| 12 slab files (144 sub-slabs) | 153–203 s each; **2,183 s CPU in total (36 min)** |
| peak resident memory | about 15 GB per Lean process |
| `CoverH2` (`T2ParOK`, assembly) | 3 s |
| `#print axioms Rec146.coverT2` | `propext`, `Classical.choice`, `Quot.sound` |
| source | 4.1 MB, mostly hint lists |

Stage C with the joint edge test (`export_joint.py`, `Graph2.lean`, `StageC2.lean`):

| | |
|---|---|
| ordered label pairs | 13,225 |
| excluded by the direct test | 10,205 (O), 4,555 (U) |
| excluded by the joint test | 780 (O), 2,392 (U) |
| edges kept | 2,240 (O), 6,278 (U); no two cliques (39,028 calls in the mirror) |
| `Graph2` (labels small, `noTwo`, `edgesOK2` in 12 row chunks) | 217 s CPU, 12 GB peak |
| `StageC2` (assembly via `stageCK2`) | 3 s |
| `#print axioms Rec146.stageC2` | `propext`, `Classical.choice`, `Quot.sound` |

The whole `RecordCert` (`Rec146/Frame.lean`, `Sigma.lean`, `Record2.lean`, from `knormal.py 146 … --v2`):

| | |
|---|---|
| `Frame` (g = 1.0000000007, λ, t = 0.6022) | 3 s |
| `Sigma` (σ = 17/10, e₀ = 6.6e-11, j₁ = 1.0e-8) | 46 s, 14 GB peak |
| `Record2` (radii ≤ bars, assembly via `recordK` and `stageC2`) | 3 s |
| `#print axioms Rec146.cert` | `propext`, `Classical.choice`, `Quot.sound` |

`edgesOK2` as one kernel decision exhausts memory (24 GB, reduction aborted); split into twelve chunks of ten rows
(`allNat_of_ranges`) it passes in 217 s.

Checks that the checker computes what the mirror predicts (`Rec146/H2Test.lean`): with leaves rejected outright,
sub-slab (3, 7) passes with its 404 hints (`pos_3_7`), and fails when one depth-0 hint is removed (`neg_3_7`).

### Record 100 (a typical Record)

v2 survivors 7,599 (v1: 11,057), 108 labels (v1: 131), 128,608 hints (longest list 3,415, which needs
`set_option maxRecDepth` to elaborate). `Rec100.coverT2` is kernel-checked (standard axioms): 12 slab files at
140–213 s each, **about 2,100 s CPU in total (35 min)**, 15–18 GB peak per process. For comparison, v1's
`Rec100.coverT` takes 681 s: v2 rejects more bins but each test is more expensive (no lane packing), and the hint
lists add elaboration time.

### The whole atlas (exact mirror, rusty)

All 12,021 Records with the exact v2 mirror (`check_v2.py --out`, rusty jobs 7251153 and 7251213, one ccq node,
2 h 53 min in all; per-Record rows in `kernel_atlas/results/v2/v2_all.jsonl.gz`, report in
`kernel_atlas/results/v2/SUMMARY.md`). Which edge tests the label graph needs, with the kernel labels:

| edge tests needed | v1 kernel labels (atlas survey) | v2 labels |
|---|---|---|
| direct | 6,447 | 7,641 |
| support | 2,314 | 1,891 |
| joint | 2,587 | 2,463 |
| **fail** | **673** | **26** |

650 of the 673 v1 failures settle with v2 (9 direct, 56 support, 585 joint); 23 still fail, and 3 Records that v1
settled with the joint test now fail. **All 26 failures are genuine two-clique graphs of the greedy kernel labels**
(none hits the search cap; median 118 labels, median δ₃ = 0.047), while certify.py (Arb, its own labels) passes them:
the remaining gap is the labelling, not the tests. Medians per Record: depth-0 survivors 15,032 → 10,280, direct
tests 1,021,376 → 770,176, tangent tests 216,038 → 175,425. The v2 rejections split 36% scalar test, 63%
least-squares linear test, 1% linear test with y = c.

### Clustering variants and the support test (floats, then exact)

`graph_v2.py` re-clusters the v2 survivors under *variants*: survivor order (traversal, reversed, sorted, seeded
shuffles) × label radius (1, 0.8, 1.2, 0.9 × the Record's radius), and checks the graph with **direct + joint edges
only** (the tests now in the kernel). Any variant is sound: label membership and the label radii are checked by the
kernel. `export_v2.py --labels --search` exports the first passing variant (`graph_v2.choose`), and `export_joint.py`
re-checks its graph in the exact model.

| Records | default labels pass with direct + joint | a variant passes | none of the variants |
|---|---|---|---|
| 4,350 that needed the support or joint test (rusty job 7252826) | 4,258 | 79 | 13 (of 21 variants tried) |
| those 13, with 60 variants | – | 13 (13–16 variants each) | 0 |
| the 26 that failed | – | 26 | 0 |

So **with the variant search no Record needs the support edge test**: direct + joint suffices for the whole atlas
(118 Records need a variant, mostly the radius 0.8 or 0.9 × R). Rows: `kernel_atlas/results/graph_v2/`.

### Large clique searches: the bitset search (`CliqueB.lean`)

Some of the rescued Records have large two-clique searches. Record 4015 (164 labels, variant traversal × 0.9) needs
80.7 million calls of the list search `noTwo` (`Clique.lean`); one branch of 88k calls costs 12 s and 10 GB in the
kernel, and the whole search as one decision exhausts memory. `CliqueB.lean` searches on bitsets: the lowest element
is removed with `x &&& (x − 1)`, the rows are looked up by `2^j` in a generated comparison tree (the graph is defined
through it, so no index is recovered), and `popGE` prunes candidate sets smaller than `need` and accumulators that
cannot hold the second clique. `cbT_complete` and `noTwo_of_chunks` (standard axioms) give `NoTwoCliques` from
kernel decisions split by the two smallest elements `j < j₂` of the first clique; `noTwo_of_pairs` flattens the pairs
to ranges of `p = j·n + j₂` (`StageCK2B.lean`, with `stageCK2B` taking the clique step as a statement). Record 4015:
19.6 million calls in 74 decisions of about 300k calls (about 120 µs and 20 KB of kernel cache per call). The 13
Records above need 1.0–6.0 million steps in the float search, so they are in the same class. `export_joint.py` uses
the bitset search when the list search exceeds 200,000 calls (or with `--bitset`).

## Cost estimate

Measured on the laptop (18 cores, 64 GB):

| per Record | Record 146 | Record 100 |
|---|---|---|
| v2 bin tree with label leaves | 36 min | 35 min |
| graph: direct + joint edges, two-clique search | 3.6 min | not measured (direct edges suffice) |
| peak memory per Lean process | 15 GB | 18 GB |

Adding the rest of a Record certificate (labels, edges, normal bound: about 6 min in Record 100's v1 `RecordCert`, 17 min
in all with its 11 min v1 bin tree), a Record costs about **45 CPU-min,
so about 9,000 CPU-hours for the atlas**, twice the survey's v1 estimate. Memory, not cores, limits the run on rusty:
at 15–18 GB per process a 1 TB node takes about 55 processes, so 30 ccq nodes would run the atlas in about 5–6 hours.
Restoring v1's lane packing in the v2 checker (the tests are computed directly from the rows today, which keeps the
proofs short) should cut the bin tree about 3×; storing each sub-slab's hints as one packed natural instead of a list
literal should cut elaboration time and memory.

### Where the kernel time goes

One sub-slab of Record 146 (3, 7: 404 hints), timed with timing-only copies of the traversal in which a test is
replaced by a constant (not sound, for measurement only):

| variant | kernel time |
|---|---|
| full check | 6.1 s |
| linear test free | 1.9 s |
| scalar test free | 5.9 s |
| both free (direct tests, traversal, leaves) | 1.6 s |

So the linear test is about 70% of the bin tree, the scalar test 4%. Inside the linear test: the 36 entries `Jt_ij`
cost 1.5 s, of which 0.7 s is just reading the 72 row values (`(row j).re i`, a match on `I6`); `Bt` adds 0.7 s,
the ten square roots `isqU` about 1.2 s; the products with the multiplier (`GJ`, `GR`, `Bk`) are cheap once `Jt` is
cached (0.05 s). A match-free accessor saves only a third of the access cost (about 10% of the linear test), and
`Nat.log2` is not accelerated by the kernel (slower than the bisection). The cost is the kernel's per-step overhead
(about 10–40 µs per reduction) over many small operations, not the size of the numbers: only lane packing (one GMP
operation for many values, as in v1) cuts it substantially.

## What remains

1. **The 26 Records that failed** pass with a clustering variant (above); Record 4015 is being built as the test case.
2. **The support edge test** is not needed: with the variant search, direct + joint edges suffice for every Record.
3. **Full Records**: done for Record 146 (`Rec146.cert`). Boundary transfers, the Tao exclusion and the
   anchor/Fourier fields are not in the kernel yet (see `KERNEL_RECORD100.md`).
4. **Performance**: lane packing in the linear test (above: 70% of the time). Packed hints would not help: the hint
   lists are 4 MB of source per Record and their elaboration is a small part of the time. The 15 GB per process is
   about 6 GB of imported environment plus the kernel's reduction cache.

## Reproduce

```bash
python3 kernel_atlas/generators/export_record.py 146 kernel_atlas/lean/KernelAtlas/Rec146   # Data.lean (remove its Slab/Cover files)
python3 kernel_atlas/generators/export_v2.py 146 kernel_atlas/lean/KernelAtlas/Rec146 --all --labels
cd lean && lake build KernelAtlas.Rec146.CoverH2
python3 kernel_atlas/generators/check_v2.py 146 --v1                                        # v1 vs v2 in the mirror
sbatch kernel_atlas/generators/run_v2_rusty.sh                                              # the whole atlas on rusty
```
